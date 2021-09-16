using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Description;
using RPA_API.Models;

namespace RPA_API.Controllers
{
    public class ActivitiesController : ApiController
    {
        private RPA_EDModel db = new RPA_EDModel();

        // GET: api/Activities
        public IQueryable<Activities> GetActivities()
        {
            return db.Activities;
        }

        // GET: api/Activities/5
        [ResponseType(typeof(Activities))]
        public IHttpActionResult GetActivities(int id)
        {
            Activities activities = db.Activities.Find(id);
            if (activities == null)
            {
                return NotFound();
            }

            return Ok(activities);
        }

        // PUT: api/Activities/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutActivities(int id, Activities activities)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != activities.id_act)
            {
                return BadRequest();
            }

            db.Entry(activities).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!ActivitiesExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return StatusCode(HttpStatusCode.NoContent);
        }

        // POST: api/Activities
        [ResponseType(typeof(Activities))]
        public IHttpActionResult PostActivities(Activities activities)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.Activities.Add(activities);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = activities.id_act }, activities);
        }

        // DELETE: api/Activities/5
        [ResponseType(typeof(Activities))]
        public IHttpActionResult DeleteActivities(int id)
        {
            Activities activities = db.Activities.Find(id);
            if (activities == null)
            {
                return NotFound();
            }

            db.Activities.Remove(activities);
            db.SaveChanges();

            return Ok(activities);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool ActivitiesExists(int id)
        {
            return db.Activities.Count(e => e.id_act == id) > 0;
        }
    }
}