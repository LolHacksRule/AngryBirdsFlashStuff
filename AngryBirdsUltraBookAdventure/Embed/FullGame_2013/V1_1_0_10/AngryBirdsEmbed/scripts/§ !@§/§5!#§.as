package § !@§
{
   import §#X§.§,!F§;
   import §%4§.§4!=§;
   import §%4§.§7-§;
   import §%4§.§9O§;
   import §+!B§.§6P§;
   import §-!D§.§4!,§;
   import §-!D§.§5A§;
   import §0!#§.§-P§;
   import §0!#§.§0K§;
   import §5!L§.§=w§;
   import §7g§.§1Q§;
   import §>!7§.§&V§;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §5!#§ extends §1Q§
   {
      
      public static const §>9§:String = "LevelStartState";
      
      private static var §06§:BitmapData = null;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §>9§ = "LevelStartState";
            if(!_loc2_)
            {
               §06§ = null;
            }
         }
      }
      
      private var §5!5§:Boolean = false;
      
      private var §;c§:Boolean = false;
      
      private var §]!"§:§&V§ = null;
      
      private var §`!9§:Boolean = false;
      
      private var §!-§:Boolean = false;
      
      private var §;m§:Number = 0;
      
      private var §4!E§:Number = 0;
      
      private var §>1§:Number = 0;
      
      private var §,d§:Number = 0;
      
      private var §7E§:Number;
      
      private var §7m§:Number;
      
      private var §00§:Number;
      
      private var §6!6§:Number;
      
      private var §?K§:§6P§;
      
      public function §5!#§(param1:Boolean = false, param2:String = "LevelStartState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            super(param1,param2);
         }
      }
      
      public static function get §^k§() : BitmapData
      {
         return §06§;
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.init();
            §]F§ = new §4!,§(this);
         }
         §]F§.init(§5A§.§;L§.Views.View_LevelStart[0]);
         if(_loc1_ || _loc2_)
         {
            this.§]!"§ = new §&V§(§=w§.§ o§);
            this.§7E§ = (§]F§.getItemByName("Container_MenuLeftButtons") as §4!=§).height;
            this.§7m§ = (§]F§.getItemByName("Container_MenuRightButtons") as §4!=§).height;
            this.§00§ = §]F§.getItemByName("Button_LeftMenuOpen").y - 50;
            if(_loc1_)
            {
               this.§6!6§ = §]F§.getItemByName("Button_RightMenuOpen").y - 50;
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.activate();
         }
         §=w§.§ o§.§7!E§(true);
         §=w§.§>@§(this.§]!"§);
         if(_loc1_)
         {
            this.§]!"§.init();
            this.§ x§();
            §]F§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§<!G§());
            if(_loc1_ || this)
            {
               §]F§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§=w§.§-!;§());
               if(_loc1_)
               {
                  §]F§.getItemByName("Button_MEBuy").setVisibility(!!AngryBirdsFP11.sUserProgress.§^3§ ? false : true);
                  addr78:
               }
            }
            return;
         }
         §§goto(addr78);
      }
      
      protected function § x§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            AngryBirdsFP11.§ x§();
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.run(param1));
         if(!(_loc3_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(!(_loc3_ && this))
         {
            if(§§pop() == §1Q§.STATE_STATUS_RUNNING)
            {
               this.§00§ = §]F§.getItemByName("Button_LeftMenuOpen").y - 50;
               if(!(_loc3_ && param1))
               {
                  this.§6!6§ = §]F§.getItemByName("Button_RightMenuOpen").y - 50;
                  this.§=!#§(param1);
                  if(!this.§;c§)
                  {
                     if(!(_loc3_ && param1))
                     {
                        §=w§.controller.update(param1);
                        if(_loc3_)
                        {
                        }
                        §§goto(addr115);
                     }
                  }
                  if(mNextState.length > 0)
                  {
                     if(_loc4_ || _loc2_)
                     {
                        §§goto(addr115);
                     }
                  }
                  return §1Q§.STATE_STATUS_RUNNING;
               }
               addr115:
               return §1Q§.STATE_STATUS_COMPLETED;
            }
            return _loc2_;
         }
      }
      
      private function §=!#§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            (§]F§.getItemByName("Container_MenuLeftButtons") as §4!=§).mClip.scrollRect = new Rectangle(0,0,(§]F§.getItemByName("Container_MenuLeftButtons") as §4!=§).width,this.§7E§ + 20 - (this.§7E§ - this.§>1§));
            if(!(_loc3_ && _loc2_))
            {
               (§]F§.getItemByName("Container_MenuRightButtons") as §4!=§).mClip.scrollRect = new Rectangle(0,0,(§]F§.getItemByName("Container_MenuRightButtons") as §4!=§).width,this.§7m§ + 20 - (this.§7m§ - this.§,d§));
               §§push(this.§`!9§);
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     (§]F§.getItemByName("Container_MenuLeftButtons") as §4!=§).setVisibility(true);
                     §§push(this.§;m§);
                     if(!_loc3_)
                     {
                        if(§§pop() < 90)
                        {
                           if(_loc2_ || _loc3_)
                           {
                              §§push(this);
                              §§push(this.§;m§);
                              if(!_loc3_)
                              {
                                 §§push(0.3);
                                 if(!_loc3_)
                                 {
                                    §§push(§§pop() * param1);
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              §§pop().§;m§ = §§pop();
                              if(_loc2_)
                              {
                                 addr118:
                                 §§push(this.§;m§);
                                 if(!_loc3_)
                                 {
                                    §§push(90);
                                    if(_loc2_)
                                    {
                                       if(§§pop() > §§pop())
                                       {
                                          this.§;m§ = 90;
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             addr136:
                                             §§push(this.§>1§);
                                             if(_loc2_)
                                             {
                                                §§push(this.§7E§);
                                                if(_loc2_)
                                                {
                                                   if(§§pop() < §§pop())
                                                   {
                                                      §§push(this);
                                                      §§push(this.§>1§);
                                                      if(!(_loc3_ && _loc2_))
                                                      {
                                                         §§push(0.5);
                                                         if(!(_loc3_ && this))
                                                         {
                                                            §§push(§§pop() * param1);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                      }
                                                      §§pop().§>1§ = §§pop();
                                                      if(!(_loc3_ && _loc2_))
                                                      {
                                                         addr174:
                                                         §§push(this.§>1§);
                                                         §§push(this.§7E§);
                                                         if(!(_loc3_ && _loc2_))
                                                         {
                                                            addr185:
                                                            if(§§pop() > §§pop())
                                                            {
                                                               if(_loc2_ || this)
                                                               {
                                                                  this.§>1§ = this.§7E§;
                                                                  addr317:
                                                                  if(this.§!-§)
                                                                  {
                                                                     (§]F§.getItemByName("Container_MenuRightButtons") as §4!=§).setVisibility(true);
                                                                     addr337:
                                                                     §§push(this.§4!E§);
                                                                     if(_loc2_)
                                                                     {
                                                                        addr341:
                                                                        §§push(180);
                                                                        if(!_loc3_)
                                                                        {
                                                                           if(§§pop() < §§pop())
                                                                           {
                                                                              addr345:
                                                                              §§push(this);
                                                                              §§push(this.§4!E§);
                                                                              if(!(_loc3_ && this))
                                                                              {
                                                                                 §§push(0.5);
                                                                                 if(!(_loc3_ && _loc2_))
                                                                                 {
                                                                                    §§push(§§pop() * param1);
                                                                                 }
                                                                                 §§push(§§pop() + §§pop());
                                                                              }
                                                                              §§pop().§4!E§ = §§pop();
                                                                              if(!_loc3_)
                                                                              {
                                                                                 (§]F§.getItemByName("Container_MenuRightButtons") as §4!=§).y = (§]F§.getItemByName("Container_MenuRightButtons") as §4!=§).y - 0.5 * param1;
                                                                                 addr385:
                                                                                 if(this.§4!E§ > 180)
                                                                                 {
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       addr391:
                                                                                       this.§4!E§ = 180;
                                                                                       addr394:
                                                                                       §§push(this.§,d§);
                                                                                       §§push(this.§7m§);
                                                                                       if(!(_loc3_ && _loc3_))
                                                                                       {
                                                                                          addr405:
                                                                                          if(§§pop() < §§pop())
                                                                                          {
                                                                                             if(_loc2_ || this)
                                                                                             {
                                                                                                addr413:
                                                                                                §§push(this);
                                                                                                §§push(this.§,d§);
                                                                                                if(_loc2_)
                                                                                                {
                                                                                                   §§push(0.5);
                                                                                                   if(_loc2_)
                                                                                                   {
                                                                                                      §§push(§§pop() * param1);
                                                                                                   }
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                }
                                                                                                §§pop().§,d§ = §§pop();
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   addr427:
                                                                                                   if(this.§,d§ > this.§7m§)
                                                                                                   {
                                                                                                      if(_loc2_ || this)
                                                                                                      {
                                                                                                         addr439:
                                                                                                         this.§,d§ = this.§7m§;
                                                                                                         if(!(_loc3_ && _loc2_))
                                                                                                         {
                                                                                                            addr585:
                                                                                                            (§]F§.getItemByName("Button_LeftMenuOpen") as §7-§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
                                                                                                            (§]F§.getItemByName("Button_RightMenuOpen") as §7-§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
                                                                                                            (§]F§.getItemByName("Button_LeftMenuOpen") as §7-§).mClip.MovieClip_LeftMenuImage.rotation = this.§;m§;
                                                                                                            if(_loc2_ || this)
                                                                                                            {
                                                                                                               §§goto(addr620);
                                                                                                            }
                                                                                                            §§goto(addr632);
                                                                                                            addr450:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr464:
                                                                                                            §§push(this);
                                                                                                            §§push(this.§4!E§);
                                                                                                            if(_loc2_ || _loc2_)
                                                                                                            {
                                                                                                               §§push(0.5);
                                                                                                               if(_loc2_)
                                                                                                               {
                                                                                                                  §§push(§§pop() * param1);
                                                                                                               }
                                                                                                               §§push(§§pop() - §§pop());
                                                                                                            }
                                                                                                            §§pop().§4!E§ = §§pop();
                                                                                                            if(_loc2_ || this)
                                                                                                            {
                                                                                                               §§goto(addr488);
                                                                                                            }
                                                                                                            §§goto(addr506);
                                                                                                         }
                                                                                                         §§goto(addr585);
                                                                                                      }
                                                                                                      §§goto(addr566);
                                                                                                   }
                                                                                                   §§goto(addr450);
                                                                                                }
                                                                                                §§goto(addr488);
                                                                                             }
                                                                                             §§goto(addr464);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr427);
                                                                                    }
                                                                                    §§goto(addr506);
                                                                                 }
                                                                                 §§goto(addr394);
                                                                              }
                                                                              §§goto(addr427);
                                                                           }
                                                                           §§goto(addr385);
                                                                        }
                                                                        §§goto(addr539);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(this.§4!E§);
                                                                     if(_loc2_ || _loc3_)
                                                                     {
                                                                        if(§§pop() > 0)
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              §§goto(addr464);
                                                                           }
                                                                           addr488:
                                                                           (§]F§.getItemByName("Container_MenuRightButtons") as §4!=§).y = (§]F§.getItemByName("Container_MenuRightButtons") as §4!=§).y + 0.5 * param1;
                                                                           if(_loc2_)
                                                                           {
                                                                              addr506:
                                                                              §§push(this.§4!E§);
                                                                              if(_loc2_ || param1)
                                                                              {
                                                                                 addr515:
                                                                                 if(§§pop() < 0)
                                                                                 {
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       addr519:
                                                                                       this.§4!E§ = 0;
                                                                                       if(_loc2_ || _loc3_)
                                                                                       {
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr620);
                                                                                 }
                                                                                 §§push(this.§,d§);
                                                                                 if(_loc2_ || _loc2_)
                                                                                 {
                                                                                    addr539:
                                                                                    if(§§pop() > 0)
                                                                                    {
                                                                                       addr540:
                                                                                       §§push(this);
                                                                                       §§push(this.§,d§);
                                                                                       if(_loc2_ || this)
                                                                                       {
                                                                                          §§push(0.5);
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             §§push(§§pop() * param1);
                                                                                          }
                                                                                          §§push(§§pop() - §§pop());
                                                                                       }
                                                                                       §§pop().§,d§ = §§pop();
                                                                                       if(!(_loc3_ && this))
                                                                                       {
                                                                                          addr566:
                                                                                          if(this.§,d§ < 0)
                                                                                          {
                                                                                             (§]F§.getItemByName("Container_MenuRightButtons") as §4!=§).setVisibility(false);
                                                                                             addr575:
                                                                                             this.§,d§ = 0;
                                                                                             if(!(_loc3_ && _loc3_))
                                                                                             {
                                                                                                §§goto(addr585);
                                                                                             }
                                                                                             §§goto(addr632);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr585);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr566);
                                                                           }
                                                                           §§goto(addr620);
                                                                        }
                                                                        §§goto(addr506);
                                                                     }
                                                                  }
                                                                  §§goto(addr515);
                                                                  addr197:
                                                               }
                                                               §§goto(addr620);
                                                            }
                                                            §§goto(addr197);
                                                         }
                                                         §§goto(addr405);
                                                      }
                                                      addr620:
                                                      (§]F§.getItemByName("Button_RightMenuOpen") as §7-§).mClip.MovieClip_RightMenuImage.rotation = this.§4!E§;
                                                      if(!_loc3_)
                                                      {
                                                         addr632:
                                                         §§push(§]F§.getItemByName("Container_MenuLeftButtons") as §4!=§);
                                                         §§push(this.§00§);
                                                         if(_loc2_)
                                                         {
                                                            §§push(§§pop() - this.§>1§);
                                                         }
                                                         §§pop().y = §§pop();
                                                      }
                                                      §§push(§]F§.getItemByName("Container_MenuRightButtons") as §4!=§);
                                                      §§push(this.§6!6§);
                                                      if(!(_loc3_ && param1))
                                                      {
                                                         §§push(§§pop() - this.§,d§);
                                                      }
                                                      §§pop().y = §§pop();
                                                      return;
                                                   }
                                                   §§goto(addr174);
                                                }
                                                §§goto(addr185);
                                             }
                                             §§goto(addr566);
                                          }
                                          §§goto(addr345);
                                       }
                                       §§goto(addr136);
                                    }
                                    §§goto(addr385);
                                 }
                                 §§goto(addr341);
                              }
                              §§goto(addr337);
                           }
                           §§goto(addr540);
                        }
                        §§goto(addr118);
                     }
                     §§goto(addr174);
                  }
                  else
                  {
                     §§push(this.§;m§);
                     if(!(_loc3_ && param1))
                     {
                        if(§§pop() > 0)
                        {
                           if(!(_loc3_ && this))
                           {
                              §§push(this);
                              §§push(this.§;m§);
                              if(!(_loc3_ && this))
                              {
                                 §§push(0.3);
                                 if(_loc2_ || _loc3_)
                                 {
                                    §§push(§§pop() * param1);
                                 }
                                 §§push(§§pop() - §§pop());
                              }
                              §§pop().§;m§ = §§pop();
                              addr238:
                              if(this.§;m§ < 0)
                              {
                                 if(_loc2_ || _loc3_)
                                 {
                                    this.§;m§ = 0;
                                    addr252:
                                    §§push(this.§>1§);
                                    §§push(0);
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       if(§§pop() > §§pop())
                                       {
                                          §§push(this);
                                          §§push(this.§>1§);
                                          if(!_loc3_)
                                          {
                                             §§push(0.5);
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                §§push(§§pop() * param1);
                                             }
                                             §§push(§§pop() - §§pop());
                                          }
                                          §§pop().§>1§ = §§pop();
                                          if(_loc2_)
                                          {
                                             addr282:
                                             §§push(this.§>1§);
                                             §§push(0);
                                             if(_loc2_ || _loc3_)
                                             {
                                                addr292:
                                                if(§§pop() < §§pop())
                                                {
                                                   (§]F§.getItemByName("Container_MenuLeftButtons") as §4!=§).setVisibility(false);
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      this.§>1§ = 0;
                                                      if(_loc2_ || param1)
                                                      {
                                                         §§goto(addr317);
                                                      }
                                                      §§goto(addr585);
                                                   }
                                                   §§goto(addr391);
                                                }
                                                §§goto(addr317);
                                             }
                                             §§goto(addr539);
                                          }
                                          §§goto(addr575);
                                       }
                                       §§goto(addr282);
                                    }
                                    §§goto(addr292);
                                 }
                                 §§goto(addr439);
                              }
                              §§goto(addr252);
                           }
                           §§goto(addr519);
                        }
                        §§goto(addr238);
                     }
                  }
                  §§goto(addr566);
               }
               §§goto(addr317);
            }
            §§goto(addr413);
         }
         §§goto(addr585);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            (§]F§.getItemByName("Button_Play") as §7-§).setComponentVisualState(§0K§.COMPONENT_STATE_ACTIVE_DEFAULT);
            if(!_loc1_)
            {
               §§goto(addr39);
            }
            §§goto(addr44);
         }
         addr39:
         this.§5!5§ = false;
         if(!_loc1_)
         {
            addr44:
            super.deActivate();
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-P§) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:* = param2;
         §§push("OPEN_LEFT_MENU");
         if(_loc8_)
         {
            if(§§pop() === _loc6_)
            {
               if(_loc8_ || param2)
               {
                  §§push(0);
                  if(!_loc8_)
                  {
                     addr310:
                  }
               }
               else
               {
                  addr280:
                  §§push(1);
               }
            }
            else
            {
               §§push("OPEN_RIGHT_MENU");
               if(!_loc7_)
               {
                  if(§§pop() === _loc6_)
                  {
                     §§goto(addr280);
                  }
                  else
                  {
                     addr283:
                     if("PLAY_LEVEL" !== _loc6_)
                     {
                        if("OPEN_MENU" === _loc6_)
                        {
                           addr419:
                           switch(2)
                           {
                              case 0:
                                 §§push(this.§`!9§);
                                 if(!(_loc7_ && this))
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc7_ && param2)
                                       {
                                          addr141:
                                          §]F§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
                                          break;
                                       }
                                       this.§`!9§ = false;
                                       if(!(_loc8_ || param3))
                                       {
                                          addr112:
                                          break;
                                       }
                                    }
                                    else
                                    {
                                       this.§`!9§ = true;
                                       if(!_loc8_)
                                       {
                                          addr84:
                                          break;
                                          addr78:
                                       }
                                    }
                                    break;
                                 }
                                 addr208:
                                 if(§§pop())
                                 {
                                    this.§ x§();
                                 }
                                 §]F§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
                                 if(!(_loc7_ && param1))
                                 {
                                    addr224:
                                    break;
                                 }
                                 addr232:
                                 this.§?K§ = new §6P§("http://www.youtube.com/v/-eyig_V-_5o");
                                 if(_loc8_)
                                 {
                                    (§]F§.getItemByName("MovieClip_YouTubeArea") as §9O§).changeMovieClip(this.§?K§);
                                    addr247:
                                    (§]F§.getItemByName("MovieClip_YouTubeArea") as §9O§).setVisibility(true);
                                 }
                                 addr254:
                                 break;
                              case 1:
                                 if(this.§!-§)
                                 {
                                    if(!(_loc7_ && this))
                                    {
                                       this.§!-§ = false;
                                       if(_loc8_ || param3)
                                       {
                                          §§goto(addr78);
                                       }
                                       else
                                       {
                                          addr178:
                                          this.§`!9§ = false;
                                       }
                                    }
                                    else
                                    {
                                       AngryBirdsFP11.§%!H§(_loc5_);
                                       addr194:
                                       §§goto(addr208);
                                       §§push(_loc5_);
                                    }
                                 }
                                 else
                                 {
                                    this.§!-§ = true;
                                    if(_loc8_)
                                    {
                                       §§goto(addr84);
                                    }
                                 }
                                 break;
                              case 2:
                                 §,!F§.§;v§("Menu_Confirm");
                                 if(_loc8_)
                                 {
                                    mNextState = §for §.§>9§;
                                    break;
                                 }
                                 addr162:
                                 break;
                              case 3:
                                 §]F§.setItemVisibility("Container_MenuButtons",!§]F§.getItemByName("Container_MenuButtons").visible);
                                 if(!(_loc7_ && param1))
                                 {
                                    §§goto(addr112);
                                 }
                                 else
                                 {
                                    §§goto(addr254);
                                 }
                              case 4:
                                 break;
                              case 5:
                                 break;
                              case 6:
                                 §§push(§=w§.§-!;§());
                                 if(!_loc7_)
                                 {
                                    §§push(!§§pop());
                                    if(!(_loc7_ && param2))
                                    {
                                       _loc4_ = §§pop();
                                       if(_loc8_ || param3)
                                       {
                                          §=w§.§9C§(_loc4_);
                                          §§goto(addr141);
                                       }
                                       else
                                       {
                                          §§goto(addr162);
                                       }
                                    }
                                 }
                                 addr193:
                                 _loc5_ = §§pop();
                                 §§goto(addr194);
                              case 7:
                                 §,!F§.§;v§("Menu_Confirm");
                                 AngryBirdsFP11.§ y§.§-!$§();
                                 if(!(_loc7_ && param2))
                                 {
                                    §§goto(addr162);
                                 }
                                 else
                                 {
                                    §§goto(addr247);
                                 }
                              case 8:
                                 §,!F§.§;v§("Menu_Confirm");
                                 break;
                              case 9:
                                 §,!F§.§;v§("Menu_Confirm");
                                 mNextState = §8!M§.§>9§;
                                 if(!_loc7_)
                                 {
                                    §§goto(addr178);
                                 }
                                 else
                                 {
                                    §§goto(addr194);
                                 }
                              case 10:
                                 §,!F§.§;v§("Menu_Confirm");
                                 if(_loc8_)
                                 {
                                    §§push(!AngryBirdsFP11.§<!G§());
                                    if(_loc8_)
                                    {
                                       §§goto(addr193);
                                    }
                                    §§goto(addr208);
                                 }
                                 §§goto(addr224);
                              case 11:
                                 break;
                              case 12:
                                 if(this.§?K§ == null)
                                 {
                                 }
                                 §§goto(addr232);
                           }
                           return;
                           §§push(3);
                        }
                        else
                        {
                           if("OPEN_AVATAR_CREATOR" === _loc6_)
                           {
                              §§push(4);
                              if(!_loc8_)
                              {
                                 addr414:
                              }
                              §§goto(addr419);
                           }
                           else
                           {
                              §§push("TOGGLE_SOUNDS");
                              if(!(_loc7_ && param2))
                              {
                                 if(§§pop() === _loc6_)
                                 {
                                    §§goto(addr310);
                                    §§push(5);
                                 }
                                 else
                                 {
                                    §§push("TOGGLE_PARTICLES");
                                    if(!_loc7_)
                                    {
                                       if(§§pop() === _loc6_)
                                       {
                                          §§push(6);
                                          if(!(_loc7_ && this))
                                          {
                                             §§goto(addr419);
                                          }
                                          else
                                          {
                                             §§goto(addr414);
                                          }
                                       }
                                       else
                                       {
                                          §§push("FULLSCREEN_BUTTON");
                                          if(_loc8_)
                                          {
                                             if(§§pop() === _loc6_)
                                             {
                                                if(!_loc7_)
                                                {
                                                   §§goto(addr419);
                                                   §§push(7);
                                                }
                                                §§goto(addr419);
                                             }
                                             else
                                             {
                                                addr335:
                                                if("OPEN_CREDITS" === _loc6_)
                                                {
                                                   if(!(_loc7_ && this))
                                                   {
                                                      §§goto(addr419);
                                                      §§push(8);
                                                   }
                                                   else
                                                   {
                                                      addr377:
                                                      §§goto(addr419);
                                                      §§push(10);
                                                   }
                                                   §§goto(addr419);
                                                }
                                                else
                                                {
                                                   §§push("CREDITS_BUTTON");
                                                   if(!(_loc7_ && param2))
                                                   {
                                                      addr354:
                                                      if(§§pop() === _loc6_)
                                                      {
                                                         §§goto(addr419);
                                                         §§push(9);
                                                      }
                                                      else
                                                      {
                                                         §§push("SOUNDS_BUTTON");
                                                         if(_loc8_ || param3)
                                                         {
                                                            §§push(_loc6_);
                                                            if(_loc8_)
                                                            {
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(_loc8_ || param3)
                                                                  {
                                                                     §§goto(addr377);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr406:
                                                                     §§push(12);
                                                                     if(_loc8_ || param3)
                                                                     {
                                                                        §§goto(addr414);
                                                                     }
                                                                     §§goto(addr419);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr380:
                                                                  §§push("POPUP_CREDITS_CLOSE");
                                                                  §§push(_loc6_);
                                                                  if(_loc8_)
                                                                  {
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        §§push(11);
                                                                        if(!(_loc7_ && this))
                                                                        {
                                                                           §§goto(addr419);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr414);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr404:
                                                                        §§push("ME_POPUP_VIDEO");
                                                                        §§push(_loc6_);
                                                                     }
                                                                     §§goto(addr419);
                                                                  }
                                                               }
                                                               §§goto(addr406);
                                                            }
                                                            if(§§pop() === §§pop())
                                                            {
                                                               §§goto(addr406);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr419);
                                                               §§push(13);
                                                            }
                                                            §§goto(addr419);
                                                         }
                                                      }
                                                      §§goto(addr419);
                                                   }
                                                   §§goto(addr404);
                                                }
                                             }
                                             §§goto(addr406);
                                          }
                                          §§goto(addr354);
                                       }
                                       §§goto(addr419);
                                    }
                                    §§goto(addr380);
                                 }
                                 §§goto(addr419);
                              }
                           }
                           §§goto(addr419);
                        }
                     }
                     §§goto(addr419);
                  }
               }
               §§goto(addr335);
            }
            §§goto(addr419);
         }
         §§goto(addr283);
      }
   }
}
