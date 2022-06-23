package §>!A§
{
   import §"!&§.§#!,§;
   import §-!F§.§^h§;
   import §-!F§.§`!&§;
   import §4!H§.§&!H§;
   import §5H§.§[k§;
   import §<!G§.§!I§;
   import §<!G§.§^3§;
   import §@!H§.§`L§;
   import §@D§.§6I§;
   import §class§.§3C§;
   import §class§.§?q§;
   import §class§.§`!6§;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §!!=§ extends §#!,§
   {
      
      public static const §?x§:String = "LevelStartState";
      
      private static var §-i§:BitmapData = null;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §?x§ = "LevelStartState";
            if(!(_loc1_ && _loc1_))
            {
               §-i§ = null;
            }
         }
      }
      
      private var §+o§:Boolean = false;
      
      private var §?! §:Boolean = false;
      
      private var §6=§:§`L§ = null;
      
      private var §&!'§:Boolean = false;
      
      private var §[@§:Boolean = false;
      
      private var §1f§:Number = 0;
      
      private var §3h§:Number = 0;
      
      private var §[n§:Number = 0;
      
      private var §&W§:Number = 0;
      
      private var §;!,§:Number;
      
      private var §@x§:Number;
      
      private var §=h§:Number;
      
      private var §88§:Number;
      
      private var §+!F§:§&!H§;
      
      public function §!!=§(param1:Boolean = false, param2:String = "LevelStartState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            super(param1,param2);
         }
      }
      
      public static function get §]2§() : BitmapData
      {
         return §-i§;
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.init();
            if(!(_loc1_ && _loc2_))
            {
               §[=§ = new §^3§(this);
            }
            §[=§.init(§!I§.§7y§.Views.View_LevelStart[0]);
            this.§6=§ = new §`L§(§[k§.§&@§);
            this.§;!,§ = (§[=§.getItemByName("Container_MenuLeftButtons") as §3C§).height;
            if(_loc2_ || this)
            {
               this.§@x§ = (§[=§.getItemByName("Container_MenuRightButtons") as §3C§).height;
               if(!(_loc1_ && this))
               {
                  addr102:
                  this.§=h§ = §[=§.getItemByName("Button_LeftMenuOpen").y - 50;
                  if(_loc2_)
                  {
                     addr112:
                     this.§88§ = §[=§.getItemByName("Button_RightMenuOpen").y - 50;
                  }
               }
               return;
            }
            §§goto(addr102);
         }
         §§goto(addr112);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.activate();
            if(_loc2_ || this)
            {
               addr28:
               §[k§.§&@§.§`!G§(true);
               if(_loc2_ || this)
               {
                  §[k§.§^L§(this.§6=§);
                  this.§6=§.init();
                  if(!(_loc1_ && this))
                  {
                     addr73:
                     AngryBirdsFP11.§<!#§();
                     §[=§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§,`§());
                  }
                  §[=§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§[k§.§,V§());
                  if(!_loc1_)
                  {
                     §[=§.getItemByName("Button_MEBuy").setVisibility(!!AngryBirdsFP11.sUserProgress.§`i§ ? false : true);
                     addr91:
                  }
                  return;
               }
               §§goto(addr73);
            }
            §§goto(addr91);
         }
         §§goto(addr28);
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
         if(_loc4_)
         {
            if(§§pop() != §#!,§.STATE_STATUS_RUNNING)
            {
               if(!_loc3_)
               {
                  §§goto(addr38);
               }
               else
               {
                  addr101:
                  if(mNextState.length > 0)
                  {
                     return §#!,§.STATE_STATUS_COMPLETED;
                  }
               }
            }
            else
            {
               this.§=h§ = §[=§.getItemByName("Button_LeftMenuOpen").y - 50;
               if(!_loc3_)
               {
                  this.§88§ = §[=§.getItemByName("Button_RightMenuOpen").y - 50;
                  if(!(_loc3_ && _loc3_))
                  {
                     this.§8a§(param1);
                     if(!this.§?! §)
                     {
                        §[k§.controller.update(param1);
                        if(_loc4_ || _loc2_)
                        {
                        }
                        §§goto(addr108);
                     }
                     §§goto(addr101);
                  }
               }
            }
            addr108:
            return §#!,§.STATE_STATUS_RUNNING;
         }
         addr38:
         return _loc2_;
      }
      
      private function §8a§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         (§[=§.getItemByName("Container_MenuLeftButtons") as §3C§).mClip.scrollRect = new Rectangle(0,0,(§[=§.getItemByName("Container_MenuLeftButtons") as §3C§).width,this.§;!,§ + 20 - (this.§;!,§ - this.§[n§));
         if(_loc3_)
         {
            (§[=§.getItemByName("Container_MenuRightButtons") as §3C§).mClip.scrollRect = new Rectangle(0,0,(§[=§.getItemByName("Container_MenuRightButtons") as §3C§).width,this.§@x§ + 20 - (this.§@x§ - this.§&W§));
            if(!_loc2_)
            {
               §§push(this.§&!'§);
               if(!(_loc2_ && _loc3_))
               {
                  if(§§pop())
                  {
                     (§[=§.getItemByName("Container_MenuLeftButtons") as §3C§).setVisibility(true);
                     §§push(this.§1f§);
                     if(!(_loc2_ && _loc2_))
                     {
                        §§push(90);
                        if(_loc3_ || param1)
                        {
                           if(§§pop() < §§pop())
                           {
                              if(!_loc2_)
                              {
                                 §§push(this);
                                 §§push(this.§1f§);
                                 if(!(_loc2_ && param1))
                                 {
                                    §§push(0.3);
                                    if(_loc3_ || param1)
                                    {
                                       §§push(§§pop() * param1);
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§pop().§1f§ = §§pop();
                              }
                              else
                              {
                                 addr241:
                                 §§push(this.§1f§);
                                 §§push(0);
                                 if(_loc3_ || _loc2_)
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       this.§1f§ = 0;
                                       if(_loc3_ || _loc3_)
                                       {
                                          addr260:
                                          §§push(this.§[n§);
                                          if(!(_loc2_ && this))
                                          {
                                             §§push(0);
                                             if(_loc3_ || _loc2_)
                                             {
                                                if(§§pop() > §§pop())
                                                {
                                                   if(_loc3_)
                                                   {
                                                      §§push(this);
                                                      §§push(this.§[n§);
                                                      if(_loc3_)
                                                      {
                                                         §§push(0.5);
                                                         if(!(_loc2_ && _loc3_))
                                                         {
                                                            §§push(§§pop() * param1);
                                                         }
                                                         §§push(§§pop() - §§pop());
                                                      }
                                                      §§pop().§[n§ = §§pop();
                                                      if(!(_loc2_ && this))
                                                      {
                                                         addr304:
                                                         §§push(this.§[n§);
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            if(§§pop() < 0)
                                                            {
                                                               (§[=§.getItemByName("Container_MenuLeftButtons") as §3C§).setVisibility(false);
                                                               if(_loc3_)
                                                               {
                                                                  this.§[n§ = 0;
                                                                  if(!_loc2_)
                                                                  {
                                                                     addr339:
                                                                     if(this.§[@§)
                                                                     {
                                                                        if(!(_loc2_ && this))
                                                                        {
                                                                           (§[=§.getItemByName("Container_MenuRightButtons") as §3C§).setVisibility(true);
                                                                           if(!(_loc2_ && _loc2_))
                                                                           {
                                                                              §§push(this.§3h§);
                                                                              if(_loc3_)
                                                                              {
                                                                                 addr367:
                                                                                 §§push(180);
                                                                                 if(_loc3_ || _loc2_)
                                                                                 {
                                                                                    addr375:
                                                                                    if(§§pop() < §§pop())
                                                                                    {
                                                                                       §§push(this);
                                                                                       §§push(this.§3h§);
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          §§push(0.5);
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             §§push(§§pop() * param1);
                                                                                          }
                                                                                          §§push(§§pop() + §§pop());
                                                                                       }
                                                                                       §§pop().§3h§ = §§pop();
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          addr390:
                                                                                          (§[=§.getItemByName("Container_MenuRightButtons") as §3C§).y = (§[=§.getItemByName("Container_MenuRightButtons") as §3C§).y - 0.5 * param1;
                                                                                          addr406:
                                                                                          §§push(this.§3h§);
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             addr410:
                                                                                             if(§§pop() > 180)
                                                                                             {
                                                                                                if(_loc3_ || _loc3_)
                                                                                                {
                                                                                                   this.§3h§ = 180;
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr531:
                                                                                                   this.§3h§ = 0;
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      addr536:
                                                                                                      §§push(this.§&W§);
                                                                                                      if(_loc3_ || param1)
                                                                                                      {
                                                                                                         addr545:
                                                                                                         if(§§pop() > 0)
                                                                                                         {
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               addr549:
                                                                                                               §§push(this);
                                                                                                               §§push(this.§&W§);
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  §§push(0.5);
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * param1);
                                                                                                                  }
                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                               }
                                                                                                               §§pop().§&W§ = §§pop();
                                                                                                               addr561:
                                                                                                               if(this.§&W§ < 0)
                                                                                                               {
                                                                                                                  if(!_loc2_)
                                                                                                                  {
                                                                                                                     addr567:
                                                                                                                     (§[=§.getItemByName("Container_MenuRightButtons") as §3C§).setVisibility(false);
                                                                                                                     §§goto(addr574);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr584);
                                                                                                            }
                                                                                                            §§goto(addr659);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr561);
                                                                                                   }
                                                                                                   §§goto(addr574);
                                                                                                }
                                                                                                addr574:
                                                                                                this.§&W§ = 0;
                                                                                                if(_loc3_ || this)
                                                                                                {
                                                                                                   addr584:
                                                                                                   (§[=§.getItemByName("Button_LeftMenuOpen") as §?q§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
                                                                                                   (§[=§.getItemByName("Button_RightMenuOpen") as §?q§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
                                                                                                }
                                                                                                (§[=§.getItemByName("Button_LeftMenuOpen") as §?q§).mClip.MovieClip_LeftMenuImage.rotation = this.§1f§;
                                                                                                if(!(_loc2_ && _loc3_))
                                                                                                {
                                                                                                   (§[=§.getItemByName("Button_RightMenuOpen") as §?q§).mClip.MovieClip_RightMenuImage.rotation = this.§3h§;
                                                                                                   addr629:
                                                                                                   §§push(§[=§.getItemByName("Container_MenuLeftButtons") as §3C§);
                                                                                                   §§push(this.§=h§);
                                                                                                   if(!(_loc2_ && _loc3_))
                                                                                                   {
                                                                                                      §§push(§§pop() - this.§[n§);
                                                                                                   }
                                                                                                   §§pop().y = §§pop();
                                                                                                   if(!_loc2_)
                                                                                                   {
                                                                                                      addr659:
                                                                                                      §§push(§[=§.getItemByName("Container_MenuRightButtons") as §3C§);
                                                                                                      §§push(this.§88§);
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         §§push(§§pop() - this.§&W§);
                                                                                                      }
                                                                                                      §§pop().y = §§pop();
                                                                                                   }
                                                                                                }
                                                                                                return;
                                                                                             }
                                                                                             §§push(this.§&W§);
                                                                                             §§push(this.§@x§);
                                                                                             if(_loc3_ || this)
                                                                                             {
                                                                                                if(§§pop() < §§pop())
                                                                                                {
                                                                                                   if(_loc3_ || param1)
                                                                                                   {
                                                                                                      addr441:
                                                                                                      §§push(this);
                                                                                                      §§push(this.§&W§);
                                                                                                      if(_loc3_ || _loc3_)
                                                                                                      {
                                                                                                         §§push(0.5);
                                                                                                         if(!_loc2_)
                                                                                                         {
                                                                                                            §§push(§§pop() * param1);
                                                                                                         }
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                      }
                                                                                                      §§pop().§&W§ = §§pop();
                                                                                                      addr458:
                                                                                                      §§push(this.§&W§);
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         addr464:
                                                                                                         if(§§pop() > this.§@x§)
                                                                                                         {
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               addr467:
                                                                                                               this.§&W§ = this.§@x§;
                                                                                                               addr471:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr549);
                                                                                                            }
                                                                                                            §§goto(addr584);
                                                                                                         }
                                                                                                         §§goto(addr471);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr545);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr659);
                                                                                                }
                                                                                                §§goto(addr458);
                                                                                             }
                                                                                             §§goto(addr464);
                                                                                          }
                                                                                          §§goto(addr545);
                                                                                       }
                                                                                       §§goto(addr441);
                                                                                    }
                                                                                    §§goto(addr406);
                                                                                 }
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr507:
                                                                              (§[=§.getItemByName("Container_MenuRightButtons") as §3C§).y = (§[=§.getItemByName("Container_MenuRightButtons") as §3C§).y + 0.5 * param1;
                                                                              §§push(this.§3h§);
                                                                              §§push(0);
                                                                              if(_loc3_)
                                                                              {
                                                                                 if(§§pop() < §§pop())
                                                                                 {
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       §§goto(addr531);
                                                                                    }
                                                                                    §§goto(addr567);
                                                                                 }
                                                                                 §§goto(addr536);
                                                                              }
                                                                           }
                                                                           §§goto(addr545);
                                                                        }
                                                                        §§goto(addr629);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(this.§3h§);
                                                                        if(_loc3_ || param1)
                                                                        {
                                                                           §§push(0);
                                                                           if(_loc3_ || _loc3_)
                                                                           {
                                                                              addr489:
                                                                              if(§§pop() > §§pop())
                                                                              {
                                                                                 §§push(this);
                                                                                 §§push(this.§3h§);
                                                                                 if(_loc3_ || _loc3_)
                                                                                 {
                                                                                    §§push(0.5);
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       §§push(§§pop() * param1);
                                                                                    }
                                                                                    §§push(§§pop() - §§pop());
                                                                                 }
                                                                                 §§pop().§3h§ = §§pop();
                                                                              }
                                                                              §§goto(addr507);
                                                                           }
                                                                           §§goto(addr545);
                                                                        }
                                                                     }
                                                                     §§goto(addr545);
                                                                  }
                                                                  §§goto(addr536);
                                                               }
                                                               §§goto(addr467);
                                                            }
                                                            §§goto(addr339);
                                                         }
                                                         §§goto(addr507);
                                                      }
                                                      §§goto(addr467);
                                                   }
                                                   §§goto(addr567);
                                                }
                                                §§goto(addr304);
                                             }
                                             §§goto(addr545);
                                          }
                                          §§goto(addr367);
                                       }
                                       §§goto(addr304);
                                    }
                                    §§goto(addr260);
                                 }
                                 §§goto(addr375);
                              }
                              §§goto(addr375);
                           }
                           §§push(this.§1f§);
                           if(_loc3_)
                           {
                              §§push(90);
                              if(_loc3_ || _loc2_)
                              {
                                 if(§§pop() > §§pop())
                                 {
                                    this.§1f§ = 90;
                                 }
                                 §§push(this.§[n§);
                                 if(!_loc2_)
                                 {
                                    §§push(this.§;!,§);
                                    if(_loc3_)
                                    {
                                       if(§§pop() < §§pop())
                                       {
                                          if(!_loc2_)
                                          {
                                             §§push(this);
                                             §§push(this.§[n§);
                                             if(!_loc2_)
                                             {
                                                §§push(0.5);
                                                if(!(_loc2_ && param1))
                                                {
                                                   §§push(§§pop() * param1);
                                                }
                                                §§push(§§pop() + §§pop());
                                             }
                                             §§pop().§[n§ = §§pop();
                                             addr178:
                                             §§push(this.§[n§);
                                             if(!(_loc2_ && param1))
                                             {
                                                §§push(this.§;!,§);
                                                if(_loc3_ || param1)
                                                {
                                                   addr196:
                                                   if(§§pop() > §§pop())
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         this.§[n§ = this.§;!,§;
                                                         addr203:
                                                         §§goto(addr339);
                                                      }
                                                      §§goto(addr467);
                                                   }
                                                   §§goto(addr203);
                                                }
                                                §§goto(addr464);
                                             }
                                             §§goto(addr367);
                                          }
                                          §§goto(addr406);
                                       }
                                       §§goto(addr178);
                                    }
                                    §§goto(addr196);
                                 }
                                 §§goto(addr464);
                              }
                              §§goto(addr489);
                           }
                           §§goto(addr410);
                        }
                        §§goto(addr375);
                     }
                     §§goto(addr241);
                  }
                  else if(this.§1f§ > 0)
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        §§push(this);
                        §§push(this.§1f§);
                        if(!(_loc2_ && this))
                        {
                           §§push(0.3);
                           if(_loc3_ || _loc3_)
                           {
                              §§push(§§pop() * param1);
                           }
                           §§push(§§pop() - §§pop());
                        }
                        §§pop().§1f§ = §§pop();
                        if(!_loc2_)
                        {
                           §§goto(addr241);
                        }
                        §§goto(addr260);
                     }
                     §§goto(addr467);
                  }
                  §§goto(addr241);
               }
               §§goto(addr339);
            }
            §§goto(addr390);
         }
         §§goto(addr584);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            (§[=§.getItemByName("Button_Play") as §?q§).setComponentVisualState(§`!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
            if(_loc2_ || _loc1_)
            {
               §§goto(addr44);
            }
            §§goto(addr54);
         }
         addr44:
         this.§+o§ = false;
         if(_loc2_ || _loc2_)
         {
            addr54:
            super.deActivate();
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^h§) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:* = param2;
         if(_loc7_)
         {
            §§push("OPEN_LEFT_MENU");
            if(_loc7_ || this)
            {
               if(§§pop() === _loc6_)
               {
                  §§push(0);
               }
               else
               {
                  §§push("OPEN_RIGHT_MENU");
                  if(!(_loc8_ && param2))
                  {
                     if(§§pop() === _loc6_)
                     {
                        if(!(_loc8_ && param3))
                        {
                           §§goto(addr476);
                        }
                        else
                        {
                           addr371:
                           addr476:
                           switch(1)
                           {
                              case 0:
                                 if(this.§&!'§)
                                 {
                                    this.§&!'§ = false;
                                 }
                                 else
                                 {
                                    this.§&!'§ = true;
                                    if(!(_loc7_ || param1))
                                    {
                                       addr65:
                                       break;
                                    }
                                 }
                                 break;
                              case 1:
                                 §§push(this.§[@§);
                                 if(_loc7_ || param1)
                                 {
                                    if(§§pop())
                                    {
                                       this.§[@§ = false;
                                    }
                                    else
                                    {
                                       this.§[@§ = true;
                                       if(!(_loc7_ || param1))
                                       {
                                          addr256:
                                          (§[=§.getItemByName("MovieClip_YouTubeArea") as §`!6§).setVisibility(true);
                                          break;
                                       }
                                    }
                                    §§goto(addr65);
                                 }
                                 else
                                 {
                                    addr175:
                                    §§push(!§§pop());
                                    if(!(_loc8_ && param3))
                                    {
                                       addr183:
                                       _loc5_ = §§pop();
                                       AngryBirdsFP11.§4C§(_loc5_);
                                       if(!(_loc8_ && param2))
                                       {
                                          §§push(_loc5_);
                                       }
                                       else
                                       {
                                          addr236:
                                          this.§+!F§ = new §&!H§("http://www.youtube.com/v/-eyig_V-_5o");
                                          if(_loc7_ || param3)
                                          {
                                             (§[=§.getItemByName("MovieClip_YouTubeArea") as §`!6§).changeMovieClip(this.§+!F§);
                                          }
                                          §§goto(addr256);
                                       }
                                       §§goto(addr256);
                                    }
                                    addr195:
                                    if(§§pop())
                                    {
                                       if(_loc7_ || this)
                                       {
                                          AngryBirdsFP11.§<!#§();
                                       }
                                       §§goto(addr256);
                                    }
                                    §[=§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
                                    if(!(_loc8_ && this))
                                    {
                                       break;
                                    }
                                 }
                                 §§goto(addr256);
                              case 2:
                                 §6I§.§ ;§("Menu_Confirm");
                                 if(_loc7_)
                                 {
                                    mNextState = §^q§.§?x§;
                                    if(!(_loc8_ && param2))
                                    {
                                       break;
                                    }
                                    addr158:
                                    this.§&!'§ = false;
                                    break;
                                 }
                                 addr114:
                                 §[=§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
                                 if(!(_loc8_ && param2))
                                 {
                                    break;
                                 }
                                 §§goto(addr256);
                                 break;
                              case 3:
                                 §[=§.setItemVisibility("Container_MenuButtons",!§[=§.getItemByName("Container_MenuButtons").visible);
                                 if(!_loc8_)
                                 {
                                    break;
                                 }
                                 addr152:
                                 mNextState = §3!G§.§?x§;
                                 if(_loc7_)
                                 {
                                    §§goto(addr158);
                                 }
                                 else
                                 {
                                    §§goto(addr256);
                                 }
                                 break;
                              case 4:
                                 break;
                              case 5:
                                 break;
                              case 6:
                                 §§push(§[k§.§,V§());
                                 if(_loc7_)
                                 {
                                    §§push(!§§pop());
                                    if(_loc7_)
                                    {
                                       _loc4_ = §§pop();
                                       if(_loc8_)
                                       {
                                          addr135:
                                          break;
                                       }
                                       §[k§.§^v§(_loc4_);
                                       §§goto(addr114);
                                    }
                                    else
                                    {
                                       §§goto(addr195);
                                    }
                                    §§goto(addr256);
                                 }
                                 else
                                 {
                                    §§goto(addr183);
                                 }
                              case 7:
                                 §6I§.§ ;§("Menu_Confirm");
                                 AngryBirdsFP11.§,s§.§8!1§();
                                 §§goto(addr135);
                              case 8:
                                 §6I§.§ ;§("Menu_Confirm");
                                 break;
                              case 9:
                                 §6I§.§ ;§("Menu_Confirm");
                                 if(_loc7_ || param3)
                                 {
                                    §§goto(addr152);
                                 }
                                 else
                                 {
                                    §§goto(addr183);
                                 }
                              case 10:
                                 §6I§.§ ;§("Menu_Confirm");
                                 if(!(_loc8_ && param2))
                                 {
                                    §§goto(addr175);
                                    §§push(AngryBirdsFP11.§,`§());
                                 }
                                 §§goto(addr236);
                              case 11:
                                 break;
                              case 12:
                                 if(this.§+!F§ == null)
                                 {
                                    §§goto(addr236);
                                 }
                                 §§goto(addr256);
                           }
                           return;
                           §§push(6);
                        }
                        §§goto(addr476);
                     }
                     else
                     {
                        §§push("PLAY_LEVEL");
                        if(!_loc8_)
                        {
                           addr304:
                           §§push(_loc6_);
                           if(_loc7_ || this)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc7_ || param1)
                                 {
                                    §§goto(addr476);
                                    §§push(2);
                                 }
                                 else
                                 {
                                    addr334:
                                    §§push(3);
                                    if(!_loc7_)
                                    {
                                       addr471:
                                    }
                                    §§goto(addr476);
                                 }
                                 §§goto(addr476);
                              }
                              else
                              {
                                 §§push("OPEN_MENU");
                                 if(_loc7_ || this)
                                 {
                                    addr330:
                                    §§push(_loc6_);
                                    if(!_loc8_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          §§goto(addr334);
                                       }
                                       else
                                       {
                                          §§push("OPEN_AVATAR_CREATOR");
                                          if(_loc7_)
                                          {
                                             addr341:
                                             if(§§pop() === _loc6_)
                                             {
                                                §§goto(addr476);
                                                §§push(4);
                                             }
                                             else
                                             {
                                                §§push("TOGGLE_SOUNDS");
                                                if(_loc7_)
                                                {
                                                   addr348:
                                                   §§push(_loc6_);
                                                   if(!(_loc8_ && this))
                                                   {
                                                      if(§§pop() === §§pop())
                                                      {
                                                         §§goto(addr476);
                                                         §§push(5);
                                                      }
                                                      else
                                                      {
                                                         §§push("TOGGLE_PARTICLES");
                                                         if(_loc7_ || param3)
                                                         {
                                                            addr368:
                                                            if(§§pop() === _loc6_)
                                                            {
                                                               if(!_loc8_)
                                                               {
                                                                  §§goto(addr371);
                                                               }
                                                               else
                                                               {
                                                                  addr463:
                                                                  §§push(11);
                                                                  if(_loc7_)
                                                                  {
                                                                     addr466:
                                                                  }
                                                                  §§goto(addr476);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr374:
                                                               if("FULLSCREEN_BUTTON" === _loc6_)
                                                               {
                                                                  addr376:
                                                                  §§push(7);
                                                                  if(!(_loc7_ || param3))
                                                                  {
                                                                     addr407:
                                                                  }
                                                                  §§goto(addr476);
                                                               }
                                                               else
                                                               {
                                                                  §§push("OPEN_CREDITS");
                                                                  if(!(_loc8_ && this))
                                                                  {
                                                                     addr393:
                                                                     §§push(_loc6_);
                                                                     if(!_loc8_)
                                                                     {
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(!_loc8_)
                                                                           {
                                                                              §§push(8);
                                                                              if(_loc7_ || param1)
                                                                              {
                                                                                 §§goto(addr407);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr433:
                                                                                 §§goto(addr476);
                                                                              }
                                                                           }
                                                                           §§goto(addr476);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push("CREDITS_BUTTON");
                                                                           §§push(_loc6_);
                                                                           if(_loc7_)
                                                                           {
                                                                              addr412:
                                                                              if(§§pop() === §§pop())
                                                                              {
                                                                                 §§push(9);
                                                                                 if(_loc7_ || param2)
                                                                                 {
                                                                                    §§goto(addr476);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr466);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr424:
                                                                                 if("SOUNDS_BUTTON" === _loc6_)
                                                                                 {
                                                                                    if(_loc7_ || this)
                                                                                    {
                                                                                       §§goto(addr433);
                                                                                       §§push(10);
                                                                                    }
                                                                                    §§goto(addr476);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push("POPUP_CREDITS_CLOSE");
                                                                                    if(!(_loc8_ && param3))
                                                                                    {
                                                                                       addr452:
                                                                                       §§push(_loc6_);
                                                                                       if(!(_loc8_ && param1))
                                                                                       {
                                                                                          if(§§pop() === §§pop())
                                                                                          {
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                §§goto(addr463);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr470:
                                                                                                §§goto(addr471);
                                                                                                §§push(12);
                                                                                             }
                                                                                             §§goto(addr476);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr468:
                                                                                             §§push("ME_POPUP_VIDEO");
                                                                                             §§push(_loc6_);
                                                                                          }
                                                                                          §§goto(addr470);
                                                                                       }
                                                                                       if(§§pop() === §§pop())
                                                                                       {
                                                                                          §§goto(addr470);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr476);
                                                                                          §§push(13);
                                                                                       }
                                                                                       §§goto(addr476);
                                                                                    }
                                                                                    §§goto(addr468);
                                                                                 }
                                                                              }
                                                                              §§goto(addr476);
                                                                           }
                                                                           §§goto(addr424);
                                                                        }
                                                                     }
                                                                     §§goto(addr424);
                                                                  }
                                                                  §§goto(addr452);
                                                               }
                                                            }
                                                            §§goto(addr476);
                                                         }
                                                         §§goto(addr393);
                                                      }
                                                      §§goto(addr476);
                                                   }
                                                   §§goto(addr368);
                                                }
                                                §§goto(addr374);
                                             }
                                             §§goto(addr476);
                                          }
                                          §§goto(addr348);
                                       }
                                    }
                                    §§goto(addr412);
                                 }
                                 §§goto(addr341);
                              }
                           }
                           §§goto(addr341);
                        }
                        §§goto(addr330);
                     }
                  }
                  §§goto(addr424);
               }
               §§goto(addr476);
            }
            §§goto(addr304);
         }
         §§goto(addr376);
      }
   }
}
