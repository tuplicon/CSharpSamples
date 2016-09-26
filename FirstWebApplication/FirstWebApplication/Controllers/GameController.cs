﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FirstWebApplication.Entities;
using FirstWebApplication.Services;

namespace FirstWebApplication.Controllers
{
    public class GameController : Controller
    {
        public ActionResult Create()
        {
            return View(
                new Game()
                {
                    RealeseDate = DateTime.Today,
                    Played = false
                }
            );
        }

        [HttpPost]
        public ActionResult Create(Game game)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    var gameService=new GameService();
                    gameService.Create(game);
                    return RedirectToAction("Index");
                }
                return View();
            }
            catch (Exception)
            {
                
                return View();
            }
        }

        public ActionResult Index()
        {
            var gameService=new GameService();
            var gameDetails = gameService.GetGamesDetails(5, 0);
            return View(gameDetails);
        }
    }
}