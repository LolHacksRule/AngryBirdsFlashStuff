package §1!F§
{
   import §!y§.§2U§;
   import §!y§.§=!Z§;
   import §"!E§.§#!'§;
   import §"!E§.§%O§;
   import §"!E§.§[!s§;
   import §#!4§.§+!S§;
   import §#!4§.§<f§;
   import §1?§.§+!§;
   import §5#§.§]]§;
   import §8!Q§.§`!n§;
   import §=!3§.§;!!§;
   import §?!-§.§'!V§;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §#!@§ extends §;!!§
   {
      
      public static const STATE_NAME:String = "LevelStartState";
      
      private static var §5!&§:BitmapData = null;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            STATE_NAME = "LevelStartState";
            if(!(_loc2_ && _loc2_))
            {
               addr43:
               §5!&§ = null;
            }
            return;
         }
         §§goto(addr43);
      }
      
      private var §#!<§:Boolean = false;
      
      private var §5!i§:Boolean = false;
      
      private var §7!D§:§]]§ = null;
      
      private var §<U§:Boolean = false;
      
      private var §]=§:Boolean = false;
      
      private var §9]§:Number = 0;
      
      private var §!V§:Number = 0;
      
      private var §9w§:Number = 0;
      
      private var §=o§:Number = 0;
      
      private var §6t§:Number;
      
      private var §9!e§:Number;
      
      private var §=!0§:Number;
      
      private var §"!G§:Number;
      
      private var §-U§:§`!n§;
      
      public function §#!@§(param1:Boolean = false, param2:String = "LevelStartState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super(param1,param2);
         }
      }
      
      public static function get §,!;§() : BitmapData
      {
         return §5!&§;
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.init();
            §+!$§ = new §2U§(this);
         }
         §+!$§.init(§=!Z§.§;K§.Views.View_LevelStart[0]);
         this.§7!D§ = new §]]§(§'!V§.§1!2§);
         if(_loc2_ || _loc2_)
         {
            this.§6t§ = (§+!$§.getItemByName("Container_MenuLeftButtons") as §[!s§).height;
            if(!(_loc1_ && this))
            {
               this.§9!e§ = (§+!$§.getItemByName("Container_MenuRightButtons") as §[!s§).height;
            }
            this.§=!0§ = §+!$§.getItemByName("Button_LeftMenuOpen").y - 50;
         }
         this.§"!G§ = §+!$§.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         super.activate();
         §'!V§.§1!2§.§-I§(true);
         if(_loc2_)
         {
            §'!V§.§>_§(this.§7!D§);
            if(!_loc1_)
            {
               this.§7!D§.init();
               if(_loc2_)
               {
                  AngryBirdsFP11.§?!7§();
                  if(_loc2_ || _loc1_)
                  {
                     §+!$§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§;!f§());
                     addr72:
                     §+!$§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§'!V§.§'V§());
                  }
                  §§goto(addr72);
               }
               §+!$§.getItemByName("Button_MEBuy").setVisibility(!!AngryBirdsFP11.sUserProgress.§throw§ ? false : true);
            }
            return;
         }
         §§goto(addr72);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.run(param1));
         if(!(_loc4_ && _loc2_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            §§push(_loc2_);
            if(_loc3_)
            {
               if(§§pop() != §;!!§.STATE_STATUS_RUNNING)
               {
                  if(!_loc4_)
                  {
                     §§goto(addr49);
                  }
               }
               else
               {
                  this.§=!0§ = §+!$§.getItemByName("Button_LeftMenuOpen").y - 50;
               }
               this.§"!G§ = §+!$§.getItemByName("Button_RightMenuOpen").y - 50;
               this.§5[§(param1);
               if(!this.§5!i§)
               {
                  if(_loc3_)
                  {
                     §'!V§.§?!G§.update(param1);
                     if(_loc3_)
                     {
                        addr97:
                        if(mNextState.length > 0)
                        {
                           §§goto(addr101);
                        }
                     }
                     §§goto(addr101);
                  }
                  return §;!!§.STATE_STATUS_RUNNING;
               }
               §§goto(addr97);
            }
            addr49:
            return _loc2_;
         }
         addr101:
         return §;!!§.STATE_STATUS_COMPLETED;
      }
      
      private function §5[§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            (§+!$§.getItemByName("Container_MenuLeftButtons") as §[!s§).mClip.scrollRect = new Rectangle(0,0,(§+!$§.getItemByName("Container_MenuLeftButtons") as §[!s§).width,this.§6t§ + 20 - (this.§6t§ - this.§9w§));
            if(!(_loc2_ && param1))
            {
               addr53:
               (§+!$§.getItemByName("Container_MenuRightButtons") as §[!s§).mClip.scrollRect = new Rectangle(0,0,(§+!$§.getItemByName("Container_MenuRightButtons") as §[!s§).width,this.§9!e§ + 20 - (this.§9!e§ - this.§=o§));
               if(!_loc2_)
               {
                  §§push(this.§<U§);
                  if(!_loc2_)
                  {
                     if(§§pop())
                     {
                        if(!_loc2_)
                        {
                           (§+!$§.getItemByName("Container_MenuLeftButtons") as §[!s§).setVisibility(true);
                           if(this.§9]§ < 90)
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 §§push(this);
                                 §§push(this.§9]§);
                                 if(_loc3_ || param1)
                                 {
                                    §§push(0.3);
                                    if(_loc3_ || this)
                                    {
                                       §§push(§§pop() * param1);
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§pop().§9]§ = §§pop();
                                 addr129:
                                 §§push(this.§9]§);
                                 if(!(_loc2_ && param1))
                                 {
                                    §§push(90);
                                    if(_loc3_ || this)
                                    {
                                       if(§§pop() > §§pop())
                                       {
                                          this.§9]§ = 90;
                                          if(!(_loc2_ && param1))
                                          {
                                             addr157:
                                             §§push(this.§9w§);
                                             if(!(_loc2_ && this))
                                             {
                                                §§push(this.§6t§);
                                                if(!(_loc2_ && _loc3_))
                                                {
                                                   if(§§pop() < §§pop())
                                                   {
                                                      addr176:
                                                      §§push(this);
                                                      §§push(this.§9w§);
                                                      if(!(_loc2_ && _loc3_))
                                                      {
                                                         §§push(0.5);
                                                         if(!_loc2_)
                                                         {
                                                            §§push(§§pop() * param1);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                      }
                                                      §§pop().§9w§ = §§pop();
                                                   }
                                                   §§push(this.§9w§);
                                                   if(!_loc2_)
                                                   {
                                                      §§push(this.§6t§);
                                                      if(!(_loc2_ && _loc3_))
                                                      {
                                                         addr206:
                                                         if(§§pop() > §§pop())
                                                         {
                                                            if(!(_loc2_ && param1))
                                                            {
                                                               this.§9w§ = this.§6t§;
                                                               if(!_loc2_)
                                                               {
                                                                  addr349:
                                                                  if(this.§]=§)
                                                                  {
                                                                     if(!_loc2_)
                                                                     {
                                                                        (§+!$§.getItemByName("Container_MenuRightButtons") as §[!s§).setVisibility(true);
                                                                        if(this.§!V§ < 180)
                                                                        {
                                                                           if(_loc3_ || _loc2_)
                                                                           {
                                                                              §§push(this);
                                                                              §§push(this.§!V§);
                                                                              if(!_loc2_)
                                                                              {
                                                                                 §§push(0.5);
                                                                                 if(_loc3_ || this)
                                                                                 {
                                                                                    §§push(§§pop() * param1);
                                                                                 }
                                                                                 §§push(§§pop() + §§pop());
                                                                              }
                                                                              §§pop().§!V§ = §§pop();
                                                                              (§+!$§.getItemByName("Container_MenuRightButtons") as §[!s§).y = (§+!$§.getItemByName("Container_MenuRightButtons") as §[!s§).y - 0.5 * param1;
                                                                              if(_loc3_ || _loc2_)
                                                                              {
                                                                                 addr412:
                                                                                 §§push(this.§!V§);
                                                                                 §§push(180);
                                                                                 if(_loc3_ || param1)
                                                                                 {
                                                                                    if(§§pop() > §§pop())
                                                                                    {
                                                                                       if(!(_loc2_ && this))
                                                                                       {
                                                                                          addr430:
                                                                                          this.§!V§ = 180;
                                                                                          addr433:
                                                                                          §§push(this.§=o§);
                                                                                          if(_loc3_ || _loc3_)
                                                                                          {
                                                                                             §§push(this.§9!e§);
                                                                                             if(_loc3_ || param1)
                                                                                             {
                                                                                                if(§§pop() < §§pop())
                                                                                                {
                                                                                                   if(_loc3_ || this)
                                                                                                   {
                                                                                                      §§push(this);
                                                                                                      §§push(this.§=o§);
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         §§push(0.5);
                                                                                                         if(!_loc2_)
                                                                                                         {
                                                                                                            §§push(§§pop() * param1);
                                                                                                         }
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                      }
                                                                                                      §§pop().§=o§ = §§pop();
                                                                                                      addr471:
                                                                                                      §§push(this.§=o§);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr601:
                                                                                                      this.§=o§ = 0;
                                                                                                      addr604:
                                                                                                      (§+!$§.getItemByName("Button_LeftMenuOpen") as §#!'§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         addr615:
                                                                                                         (§+!$§.getItemByName("Button_RightMenuOpen") as §#!'§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
                                                                                                         (§+!$§.getItemByName("Button_LeftMenuOpen") as §#!'§).mClip.MovieClip_LeftMenuImage.rotation = this.§9]§;
                                                                                                         if(!(_loc2_ && this))
                                                                                                         {
                                                                                                            §§goto(addr641);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr688);
                                                                                                   }
                                                                                                   §§goto(addr604);
                                                                                                }
                                                                                                §§goto(addr471);
                                                                                             }
                                                                                             addr475:
                                                                                             if(§§pop() > §§pop())
                                                                                             {
                                                                                                if(!(_loc2_ && _loc3_))
                                                                                                {
                                                                                                   addr483:
                                                                                                   this.§=o§ = this.§9!e§;
                                                                                                   addr487:
                                                                                                   §§goto(addr604);
                                                                                                }
                                                                                                §§goto(addr615);
                                                                                             }
                                                                                             §§goto(addr487);
                                                                                          }
                                                                                          §§goto(addr475);
                                                                                          §§push(this.§9!e§);
                                                                                       }
                                                                                       §§goto(addr653);
                                                                                    }
                                                                                    §§goto(addr433);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr591:
                                                                                    if(§§pop() < §§pop())
                                                                                    {
                                                                                       addr592:
                                                                                       (§+!$§.getItemByName("Container_MenuRightButtons") as §[!s§).setVisibility(false);
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          §§goto(addr601);
                                                                                       }
                                                                                       §§goto(addr688);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr601);
                                                                              }
                                                                           }
                                                                           §§goto(addr688);
                                                                        }
                                                                        §§goto(addr412);
                                                                     }
                                                                     §§goto(addr430);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr490:
                                                                     if(this.§!V§ > 0)
                                                                     {
                                                                        §§push(this);
                                                                        §§push(this.§!V§);
                                                                        if(_loc3_ || _loc2_)
                                                                        {
                                                                           §§push(0.5);
                                                                           if(_loc3_ || _loc3_)
                                                                           {
                                                                              §§push(§§pop() * param1);
                                                                           }
                                                                           §§push(§§pop() - §§pop());
                                                                        }
                                                                        §§pop().§!V§ = §§pop();
                                                                        if(!_loc2_)
                                                                        {
                                                                           (§+!$§.getItemByName("Container_MenuRightButtons") as §[!s§).y = (§+!$§.getItemByName("Container_MenuRightButtons") as §[!s§).y + 0.5 * param1;
                                                                           addr532:
                                                                           §§push(this.§!V§);
                                                                           if(!(_loc2_ && this))
                                                                           {
                                                                              addr542:
                                                                              if(§§pop() < 0)
                                                                              {
                                                                                 if(_loc3_ || _loc3_)
                                                                                 {
                                                                                    this.§!V§ = 0;
                                                                                    if(!(_loc2_ && param1))
                                                                                    {
                                                                                       addr560:
                                                                                       §§push(this.§=o§);
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          addr564:
                                                                                          if(§§pop() > 0)
                                                                                          {
                                                                                             §§push(this);
                                                                                             §§push(this.§=o§);
                                                                                             if(_loc3_ || _loc2_)
                                                                                             {
                                                                                                §§push(0.5);
                                                                                                if(_loc3_ || this)
                                                                                                {
                                                                                                   §§push(§§pop() * param1);
                                                                                                }
                                                                                                §§push(§§pop() - §§pop());
                                                                                             }
                                                                                             §§pop().§=o§ = §§pop();
                                                                                             addr588:
                                                                                             §§goto(addr591);
                                                                                             §§push(this.§=o§);
                                                                                             §§push(0);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr588);
                                                                                    }
                                                                                    §§goto(addr615);
                                                                                 }
                                                                                 §§goto(addr588);
                                                                              }
                                                                              §§goto(addr560);
                                                                           }
                                                                           §§goto(addr588);
                                                                        }
                                                                        addr641:
                                                                        (§+!$§.getItemByName("Button_RightMenuOpen") as §#!'§).mClip.MovieClip_RightMenuImage.rotation = this.§!V§;
                                                                        if(_loc3_)
                                                                        {
                                                                           addr653:
                                                                           §§push(§+!$§.getItemByName("Container_MenuLeftButtons") as §[!s§);
                                                                           §§push(this.§=!0§);
                                                                           if(_loc3_ || this)
                                                                           {
                                                                              §§push(§§pop() - this.§9w§);
                                                                           }
                                                                           §§pop().y = §§pop();
                                                                           if(!(_loc2_ && this))
                                                                           {
                                                                              addr688:
                                                                              §§push(§+!$§.getItemByName("Container_MenuRightButtons") as §[!s§);
                                                                              §§push(this.§"!G§);
                                                                              if(!(_loc2_ && _loc3_))
                                                                              {
                                                                                 §§push(§§pop() - this.§=o§);
                                                                              }
                                                                              §§pop().y = §§pop();
                                                                           }
                                                                           §§goto(addr706);
                                                                        }
                                                                        addr706:
                                                                        return;
                                                                     }
                                                                     §§goto(addr532);
                                                                  }
                                                                  addr220:
                                                               }
                                                               §§goto(addr471);
                                                            }
                                                            §§goto(addr532);
                                                         }
                                                         §§goto(addr220);
                                                      }
                                                      §§goto(addr475);
                                                   }
                                                   §§goto(addr588);
                                                }
                                                §§goto(addr206);
                                             }
                                             §§goto(addr564);
                                          }
                                          §§goto(addr483);
                                       }
                                       §§goto(addr157);
                                    }
                                    §§goto(addr542);
                                 }
                                 §§goto(addr490);
                              }
                              §§goto(addr592);
                           }
                           §§goto(addr129);
                        }
                        §§goto(addr176);
                     }
                     else
                     {
                        §§push(this.§9]§);
                        if(!_loc2_)
                        {
                           if(§§pop() > 0)
                           {
                              if(_loc3_ || _loc2_)
                              {
                                 §§push(this);
                                 §§push(this.§9]§);
                                 if(_loc3_ || param1)
                                 {
                                    §§push(0.3);
                                    if(!(_loc2_ && this))
                                    {
                                       §§push(§§pop() * param1);
                                    }
                                    §§push(§§pop() - §§pop());
                                 }
                                 §§pop().§9]§ = §§pop();
                                 if(_loc3_)
                                 {
                                    addr258:
                                    §§push(this.§9]§);
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       if(§§pop() < 0)
                                       {
                                          if(_loc3_)
                                          {
                                             addr271:
                                             this.§9]§ = 0;
                                             addr274:
                                             §§push(this.§9w§);
                                             §§push(0);
                                             if(_loc3_)
                                             {
                                                if(§§pop() > §§pop())
                                                {
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      §§push(this);
                                                      §§push(this.§9w§);
                                                      if(!(_loc2_ && _loc3_))
                                                      {
                                                         §§push(0.5);
                                                         if(!(_loc2_ && this))
                                                         {
                                                            §§push(§§pop() * param1);
                                                         }
                                                         §§push(§§pop() - §§pop());
                                                      }
                                                      §§pop().§9w§ = §§pop();
                                                      addr309:
                                                      §§push(this.§9w§);
                                                      if(_loc3_ || this)
                                                      {
                                                         §§push(0);
                                                         if(!_loc2_)
                                                         {
                                                            if(§§pop() < §§pop())
                                                            {
                                                               addr322:
                                                               (§+!$§.getItemByName("Container_MenuLeftButtons") as §[!s§).setVisibility(false);
                                                               this.§9w§ = 0;
                                                               if(!(_loc2_ && _loc3_))
                                                               {
                                                                  §§goto(addr349);
                                                               }
                                                               §§goto(addr430);
                                                            }
                                                            §§goto(addr349);
                                                         }
                                                      }
                                                      §§goto(addr542);
                                                   }
                                                   §§goto(addr322);
                                                }
                                                §§goto(addr309);
                                             }
                                             §§goto(addr591);
                                          }
                                          §§goto(addr430);
                                       }
                                       §§goto(addr274);
                                    }
                                    §§goto(addr430);
                                 }
                              }
                              §§goto(addr271);
                           }
                           §§goto(addr258);
                        }
                     }
                     §§goto(addr490);
                  }
               }
               §§goto(addr349);
            }
            §§goto(addr560);
         }
         §§goto(addr53);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            (§+!$§.getItemByName("Button_Play") as §#!'§).setComponentVisualState(§<f§.COMPONENT_STATE_ACTIVE_DEFAULT);
            if(!(_loc2_ && this))
            {
               this.§#!<§ = false;
               if(_loc1_)
               {
                  super.deActivate();
               }
            }
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!S§) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:* = param2;
         if("OPEN_LEFT_MENU" === _loc6_)
         {
            §§push(!_loc7_ ? 0 : 3);
         }
         else
         {
            §§push("OPEN_RIGHT_MENU");
            if(_loc8_ || param2)
            {
               §§push(_loc6_);
               if(_loc8_)
               {
                  if(§§pop() === §§pop())
                  {
                     §§goto(addr425);
                  }
                  else
                  {
                     §§push("PLAY_LEVEL");
                     §§push(_loc6_);
                     if(!_loc7_)
                     {
                        if(§§pop() === §§pop())
                        {
                           if(_loc8_)
                           {
                              addr425:
                              switch(1)
                              {
                                 case 0:
                                    if(this.§<U§)
                                    {
                                       if(!_loc8_)
                                       {
                                          addr61:
                                          mNextState = §9!h§.STATE_NAME;
                                          break;
                                       }
                                       this.§<U§ = false;
                                    }
                                    else
                                    {
                                       this.§<U§ = true;
                                    }
                                    break;
                                 case 1:
                                    §§push(this.§]=§);
                                    if(!(_loc7_ && param3))
                                    {
                                       if(§§pop())
                                       {
                                          this.§]=§ = false;
                                       }
                                       else
                                       {
                                          this.§]=§ = true;
                                       }
                                       break;
                                    }
                                    addr197:
                                    _loc5_ = §§pop();
                                    if(_loc8_)
                                    {
                                       AngryBirdsFP11.§;z§(_loc5_);
                                       addr214:
                                       if(_loc5_)
                                       {
                                          if(!(_loc7_ && param1))
                                          {
                                             addr222:
                                             AngryBirdsFP11.§?!7§();
                                             if(!(_loc8_ || param3))
                                             {
                                                addr272:
                                                break;
                                             }
                                          }
                                       }
                                       §+!$§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
                                       break;
                                    }
                                    §§goto(addr222);
                                    break;
                                 case 2:
                                    §+!§.§4c§("Menu_Confirm");
                                    if(!_loc8_)
                                    {
                                       addr145:
                                       break;
                                    }
                                    §§goto(addr61);
                                    break;
                                 case 3:
                                    §+!$§.setItemVisibility("Container_MenuButtons",!§+!$§.getItemByName("Container_MenuButtons").visible);
                                    if(!_loc7_)
                                    {
                                       break;
                                    }
                                    addr133:
                                    break;
                                 case 4:
                                    break;
                                 case 5:
                                    break;
                                 case 6:
                                    §§push(§'!V§.§'V§());
                                    if(!(_loc7_ && this))
                                    {
                                       §§push(!§§pop());
                                       if(_loc8_)
                                       {
                                          _loc4_ = §§pop();
                                          if(_loc8_)
                                          {
                                             §'!V§.§6!Y§(_loc4_);
                                             if(!_loc7_)
                                             {
                                                §+!$§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
                                                if(!(_loc7_ && param3))
                                                {
                                                   break;
                                                }
                                                break;
                                             }
                                          }
                                          addr250:
                                          (§+!$§.getItemByName("MovieClip_YouTubeArea") as §%O§).changeMovieClip(this.§-U§);
                                          if(!(_loc7_ && param2))
                                          {
                                             addr265:
                                             (§+!$§.getItemByName("MovieClip_YouTubeArea") as §%O§).setVisibility(true);
                                          }
                                          break;
                                       }
                                       §§goto(addr197);
                                       §§goto(addr272);
                                    }
                                    §§goto(addr214);
                                 case 7:
                                    §+!§.§4c§("Menu_Confirm");
                                    if(_loc8_)
                                    {
                                       AngryBirdsFP11.§`!d§.§!5§();
                                       if(!(_loc7_ && param2))
                                       {
                                          §§goto(addr133);
                                       }
                                       else
                                       {
                                          addr163:
                                          this.§<U§ = false;
                                          if(!(_loc8_ || param3))
                                          {
                                             §§goto(addr214);
                                          }
                                       }
                                    }
                                    addr173:
                                    break;
                                 case 8:
                                    §+!§.§4c§("Menu_Confirm");
                                    if(_loc8_ || param3)
                                    {
                                       §§goto(addr145);
                                    }
                                    else
                                    {
                                       §§goto(addr265);
                                    }
                                 case 9:
                                    §+!§.§4c§("Menu_Confirm");
                                    if(_loc8_)
                                    {
                                       mNextState = §?!M§.STATE_NAME;
                                       if(!(_loc7_ && this))
                                       {
                                          §§goto(addr163);
                                       }
                                       §§goto(addr214);
                                    }
                                    §§goto(addr173);
                                 case 10:
                                    §+!§.§4c§("Menu_Confirm");
                                    if(_loc8_)
                                    {
                                       §§push(AngryBirdsFP11.§;!f§());
                                       if(!(_loc7_ && param3))
                                       {
                                          §§push(!§§pop());
                                          if(_loc8_ || param1)
                                          {
                                             §§goto(addr197);
                                          }
                                          §§goto(addr214);
                                       }
                                       §§goto(addr197);
                                    }
                                    §§goto(addr222);
                                 case 11:
                                    break;
                                 case 12:
                                    if(this.§-U§ == null)
                                    {
                                       this.§-U§ = new §`!n§("http://www.youtube.com/v/-eyig_V-_5o");
                                       §§goto(addr250);
                                    }
                                    §§goto(addr272);
                              }
                              return;
                              §§push(2);
                           }
                           else
                           {
                              addr346:
                              §§goto(addr425);
                              §§push(7);
                           }
                           §§goto(addr425);
                        }
                        else if("OPEN_MENU" === _loc6_)
                        {
                           §§goto(addr310);
                        }
                        else
                        {
                           if("OPEN_AVATAR_CREATOR" === _loc6_)
                           {
                              §§goto(addr425);
                              §§push(4);
                           }
                           else
                           {
                              if("TOGGLE_SOUNDS" === _loc6_)
                              {
                                 §§goto(addr425);
                                 §§push(5);
                              }
                              else
                              {
                                 §§push("TOGGLE_PARTICLES");
                                 §§push(_loc6_);
                                 if(!(_loc7_ && param2))
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       §§goto(addr425);
                                       §§push(6);
                                    }
                                    else
                                    {
                                       §§push("FULLSCREEN_BUTTON");
                                       §§push(_loc6_);
                                       if(!_loc7_)
                                       {
                                          addr338:
                                          if(§§pop() === §§pop())
                                          {
                                             if(!(_loc7_ && param1))
                                             {
                                                §§goto(addr346);
                                             }
                                             else
                                             {
                                                addr355:
                                                §§goto(addr425);
                                                §§push(8);
                                             }
                                             §§goto(addr425);
                                          }
                                          else
                                          {
                                             §§push("OPEN_CREDITS");
                                             if(!_loc7_)
                                             {
                                                §§push(_loc6_);
                                                if(_loc8_)
                                                {
                                                   if(§§pop() === §§pop())
                                                   {
                                                      §§goto(addr355);
                                                   }
                                                   else
                                                   {
                                                      §§push("CREDITS_BUTTON");
                                                      if(!(_loc7_ && this))
                                                      {
                                                         if(§§pop() === _loc6_)
                                                         {
                                                            if(_loc8_)
                                                            {
                                                               §§goto(addr425);
                                                               §§push(9);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push("SOUNDS_BUTTON");
                                                            §§push(_loc6_);
                                                            if(!(_loc7_ && param2))
                                                            {
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  §§goto(addr425);
                                                                  §§push(10);
                                                               }
                                                               else
                                                               {
                                                                  §§push("POPUP_CREDITS_CLOSE");
                                                                  if(_loc8_ || param3)
                                                                  {
                                                                     addr401:
                                                                     §§push(_loc6_);
                                                                     if(_loc8_ || param3)
                                                                     {
                                                                     }
                                                                     addr416:
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        §§push(12);
                                                                        if(!_loc8_)
                                                                        {
                                                                        }
                                                                        §§goto(addr425);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr425);
                                                                        §§push(13);
                                                                     }
                                                                     §§goto(addr425);
                                                                  }
                                                                  addr415:
                                                                  §§goto(addr416);
                                                                  §§push(_loc6_);
                                                               }
                                                               §§goto(addr425);
                                                            }
                                                            if(§§pop() !== §§pop())
                                                            {
                                                               §§goto(addr415);
                                                               §§push("ME_POPUP_VIDEO");
                                                            }
                                                         }
                                                         §§goto(addr425);
                                                         §§goto(addr425);
                                                      }
                                                      §§goto(addr415);
                                                   }
                                                }
                                             }
                                             §§goto(addr401);
                                          }
                                       }
                                    }
                                    §§goto(addr425);
                                 }
                              }
                              §§goto(addr425);
                           }
                           §§goto(addr425);
                        }
                        §§goto(addr425);
                     }
                     §§goto(addr401);
                  }
               }
               §§goto(addr338);
            }
            §§goto(addr401);
         }
         §§goto(addr425);
      }
   }
}
