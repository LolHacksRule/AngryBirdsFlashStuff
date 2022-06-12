package §-!q§
{
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §'!s§.§!'§;
   import §1r§.§^!§;
   import §2!i§.§'M§;
   import §3!7§.§7J§;
   import §4!e§.§08§;
   import §8!v§.§"m§;
   import §8!v§.§>!+§;
   import §9"!§.§2K§;
   import §[!K§.§'!W§;
   import §]!A§.;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class §=p§ extends §'!W§
   {
       
      
      private var §]!"§:§"m§;
      
      private var § j§:Rectangle;
      
      public function §=p§(param1:Boolean = true, param2:String = "stateTournamentPlay")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super(param1,param2);
         }
      }
      
      override protected function levelStarted() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            super.levelStarted();
            loop0:
            while(true)
            {
               addr49:
               while(true)
               {
                  §6w§.getItemByName("Container_PowerUpButtons").mClip.alpha = 1;
                  while(true)
                  {
                     if(_loc2_)
                     {
                        §6w§.getItemByName("Container_PowerUpButtons").setVisibility(true);
                        if(_loc2_ || _loc1_)
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(false)
         {
            §§goto(addr49);
         }
         var _loc1_:MovieClip = §6w§.getItemByName("Movieclip_FrenzyAlert").mClip;
         if(_loc2_)
         {
            _loc1_.alpha = 1;
            do
            {
               this.§ j§ = null;
               do
               {
                  _loc1_.scrollRect = null;
               }
               while(_loc3_);
               
            }
            while(!_loc2_);
            
         }
      }
      
      override protected function showTutorials() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §!'§.showTutorials(§6w§,true);
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.activate();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'M§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || this)
         {
            super.uiInteractionHandler(param1,param2,param3);
         }
         var _loc4_:* = param2;
         if(!(_loc6_ && param2))
         {
            if("PAUSE" === _loc4_)
            {
               addr78:
               §§push(0);
               if(_loc6_ && param2)
               {
               }
            }
            else
            {
               §§push(1);
            }
            switch(§§pop())
            {
               case 0:
                  (§#6§.§6!z§ as §2K§).§-"#§.§<!2§();
                  if(_loc5_ || param2)
                  {
                     break;
                  }
            }
            return;
         }
         §§goto(addr78);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:MovieClip = null;
         if(!(_loc3_ && param1))
         {
            if(this.§ j§)
            {
               addr40:
               _loc2_ = §6w§.getItemByName("Movieclip_FrenzyAlert").mClip;
               if(!_loc3_)
               {
                  _loc2_.scrollRect = this.§ j§;
               }
            }
            return super.run(param1);
         }
         §§goto(addr40);
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            § J§ = true;
            while(true)
            {
               §6w§ = new §7!A§(this);
               loop1:
               while(true)
               {
                  §6w§.init(§ "A§.§4[§.Views.View_FacebookBrandedTournamentLevelPlay[0]);
                  addr131:
                  while(true)
                  {
                     § "B§ = new §^!§(§6w§);
                     continue loop1;
                  }
               }
            }
            addr142:
         }
         while(true)
         {
            §6w§.getItemByName("Button_Fullscreen").setVisibility(false);
            while(true)
            {
               if(_loc2_)
               {
                  continue;
               }
               §§goto(addr142);
            }
         }
         §§goto(addr42);
      }
      
      override protected function dimPowerUp() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§]!"§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  if(_loc1_ || _loc2_)
                  {
                     §§push(this.§]!"§);
                     loop1:
                     while(true)
                     {
                        §§pop().§?"3§();
                        addr46:
                        if(!(_loc1_ || _loc1_))
                        {
                           continue;
                        }
                        if(_loc2_)
                        {
                           continue loop0;
                        }
                        §§pop().play();
                        loop7:
                        while(!(_loc2_ && _loc1_))
                        {
                           while(true)
                           {
                              super.dimPowerUp();
                              if(!(_loc1_ || this))
                              {
                                 continue loop7;
                              }
                              if(!_loc2_)
                              {
                                 break;
                              }
                              addr107:
                              loop6:
                              while(_loc1_)
                              {
                                 addr81:
                                 §§push(this.§]!"§);
                                 if(!_loc1_)
                                 {
                                    while(true)
                                    {
                                       §§pop().delay = 2;
                                       continue loop6;
                                       §§goto(addr81);
                                    }
                                    continue loop1;
                                    addr77:
                                 }
                                 §§goto(addr46);
                              }
                              while(true)
                              {
                                 §§goto(addr77);
                              }
                           }
                           return;
                        }
                        while(true)
                        {
                           addr92:
                           while(true)
                           {
                              this.§]!"§ = §>!+§.§;"§.§^!K§(§6w§.getItemByName("Movieclip_FrenzyAlert").mClip,{"alpha":0},null,0.5);
                              §§goto(addr107);
                           }
                        }
                        addr121:
                     }
                  }
                  §§goto(addr121);
               }
               §§goto(addr92);
            }
         }
         §§goto(addr73);
      }
      
      override protected function hidePowerUp(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§]!"§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§]!"§);
                     addr96:
                     while(true)
                     {
                        §§pop().§?"3§();
                        addr97:
                        while(true)
                        {
                        }
                     }
                     addr81:
                     if(!(_loc2_ || _loc3_))
                     {
                        continue;
                     }
                     while(true)
                     {
                        §§push(this.§]!"§);
                        if(_loc2_ || param1)
                        {
                           §§pop().onComplete = this.§=A§;
                           while(!_loc3_)
                           {
                              super.hidePowerUp(param1);
                              if(_loc2_ || param1)
                              {
                                 return;
                              }
                           }
                           while(!(_loc3_ && _loc2_))
                           {
                              §§goto(addr81);
                           }
                           addr74:
                        }
                        else
                        {
                           §§goto(addr96);
                        }
                        §§goto(addr97);
                     }
                     addr88:
                  }
               }
               while(true)
               {
                  this.§9h§();
                  §§goto(addr74);
                  §§goto(addr97);
               }
            }
            §§goto(addr96);
         }
         §§goto(addr88);
      }
      
      private function §9h§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:MovieClip = §6w§.getItemByName("Movieclip_FrenzyAlert").mClip;
         if(_loc3_ || this)
         {
            this.§ j§ = new Rectangle(0,0,_loc1_.width,_loc1_.height);
            loop0:
            while(true)
            {
               _loc1_.scrollRect = this.§ j§;
               while(true)
               {
                  this.§]!"§ = §>!+§.§;"§.§^!K§(this.§ j§,{"x":this.§ j§.x + this.§ j§.width},null,0.5);
                  while(!(_loc2_ && _loc1_))
                  {
                     §§push(this.§]!"§);
                     loop3:
                     while(true)
                     {
                        §§pop().delay = 0;
                        addr66:
                        while(!_loc2_)
                        {
                           continue loop3;
                        }
                        continue loop0;
                     }
                     if(!(_loc3_ || _loc1_))
                     {
                        continue;
                     }
                     §§goto(addr60);
                  }
               }
            }
         }
         §§goto(addr68);
      }
      
      private function §=A§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §6w§.getItemByName("Movieclip_FrenzyAlert").mClip.visible = false;
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super.deActivate();
         }
      }
   }
}
