package §1!F§
{
   import § !r§.§%s§;
   import §!y§.§2U§;
   import §!y§.§=!Z§;
   import §"!E§.§#!'§;
   import §"!E§.§%O§;
   import §"!E§.§;!j§;
   import §"!E§.§[!s§;
   import §#!4§.§+!S§;
   import §#!4§.§<f§;
   import §-!0§.§1^§;
   import §1?§.§+!§;
   import §8!Q§.§2!7§;
   import §9!n§.§0Y§;
   import §9!n§.§@!T§;
   import §<!<§.§;§;
   import §=!3§.§;!!§;
   import §?!-§.§'!V§;
   import §false§.§!!o§;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   
   public class StatePlay extends §@!D§
   {
      
      public static const STATE_NAME:String = "StatePlay";
      
      public static const §@f§:int = 50;
      
      protected static const §=!5§:String = "MightyEagleButtonVisible";
      
      protected static const §6!6§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §%3§:String = "MightyEagleButtonHide";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            STATE_NAME = "StatePlay";
            if(_loc1_)
            {
               §@f§ = 50;
               if(_loc1_ || _loc1_)
               {
                  addr53:
                  §=!5§ = "MightyEagleButtonVisible";
                  if(_loc2_ && StatePlay)
                  {
                  }
                  §§goto(addr68);
               }
               §6!6§ = "MightyEagleButtonPrepareHide";
               if(_loc1_)
               {
                  §§goto(addr68);
               }
               addr68:
               §%3§ = "MightyEagleButtonHide";
               return;
            }
         }
         §§goto(addr53);
      }
      
      protected var §1!l§:§2!7§;
      
      protected var §6!P§:§0Y§;
      
      protected var §+b§:String;
      
      protected var §0P§:Boolean;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§1!l§ = new §2!7§();
            if(!(_loc3_ && _loc3_))
            {
               super(param1,param2);
            }
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.init();
            if(!_loc1_)
            {
               §+!$§ = new §2U§(this);
               if(!_loc1_)
               {
                  §+!$§.init(§=!Z§.§;K§.Views.View_LevelPlay[0]);
               }
            }
         }
      }
      
      protected function §'I§() : void
      {
      }
      
      private function §>j§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            (§+!$§.getItemByName("TextField_METimer") as §;!j§).setVisibility(false);
         }
      }
      
      override protected function levelStarted() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §+!§.§'!Q§();
         }
         super.levelStarted();
         if(§+!$§.getItemByName("Button_MightyEagle"))
         {
            if(!(_loc1_ && _loc1_))
            {
               §+!$§.getItemByName("Button_MightyEagle").setVisibility(true);
               if(_loc2_ || _loc2_)
               {
                  addr71:
                  §§push(§+!§);
                  §§push("LevelStartsBirdsMilitary");
                  if(_loc2_)
                  {
                     §§push(§§pop() + (1 + int(Math.random() * 2)));
                  }
                  §§pop().§4c§(§§pop());
                  if(_loc1_)
                  {
                  }
                  §§goto(addr90);
               }
               this.§8!^§();
            }
            addr90:
            return;
         }
         §§goto(addr71);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super.activate();
         }
      }
      
      protected function initMightyEagleButton() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §+!$§.getItemByName("TextField_METimer").setVisibility(false);
            if(_loc2_)
            {
               §+!$§.getItemByName("Container_MEScore").setVisibility(false);
               if(_loc2_)
               {
                  §+!$§.getItemByName("Container_MightyEagle").mClip.scaleX = 1;
                  if(_loc2_ || _loc1_)
                  {
                     addr71:
                     §+!$§.getItemByName("Container_MightyEagle").mClip.scaleY = 1;
                  }
               }
               §§goto(addr71);
            }
            return;
         }
         §§goto(addr71);
      }
      
      protected function §8!^§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:Bitmap = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = NaN;
         if(_loc6_)
         {
            this.§1!l§.assign(0);
            if(!(_loc5_ && _loc3_))
            {
               this.updateCurrentScore(0);
               this.initMightyEagleButton();
               if(!_loc5_)
               {
                  if(§#!@§.§,!;§ != null)
                  {
                     addr49:
                     _loc1_ = new Bitmap(§#!@§.§,!;§,"auto",true);
                     if(_loc6_)
                     {
                        _loc1_.x = -_loc1_.width / 2;
                        if(_loc6_ || _loc2_)
                        {
                           _loc1_.y = -_loc1_.height / 2;
                        }
                     }
                     _loc2_ = new MovieClip();
                     if(_loc6_)
                     {
                        _loc2_.addChild(_loc1_);
                        if(!(_loc5_ && this))
                        {
                           _loc3_ = Math.min(100 / _loc1_.width,80 / _loc1_.height);
                           if(_loc6_ || _loc2_)
                           {
                           }
                           §§goto(addr170);
                        }
                        _loc2_.scaleX = _loc2_.scaleY = _loc3_;
                        if(_loc6_ || _loc3_)
                        {
                           (§+!$§.getItemByName("MovieClip_AvatarPlaceholder") as §%O§).changeMovieClip(_loc2_);
                           if(!(_loc5_ && _loc1_))
                           {
                              §+!$§.getItemByName("MovieClip_AvatarPlaceholder").setVisibility(true);
                           }
                        }
                     }
                  }
                  addr170:
                  this.§+b§ = §=!5§;
                  if(_loc6_ || this)
                  {
                     addr180:
                     this.§6!P§ = null;
                     this.§0P§ = false;
                  }
                  return;
               }
               §§goto(addr49);
            }
         }
         §§goto(addr180);
      }
      
      public function deactivateMightyEagleButton() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            (§+!$§.getItemByName("Button_MightyEagle") as §#!'§).setComponentVisualState(§<f§.COMPONENT_STATE_ACTIVE_DEFAULT);
            if(!_loc2_)
            {
               (§+!$§.getItemByName("Button_MightyEagle") as §#!'§).setComponentState(§<f§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.deActivate();
            (§+!$§.getItemByName("Button_Pause") as §#!'§).setComponentVisualState(§<f§.COMPONENT_STATE_ACTIVE_DEFAULT);
            this.deactivateMightyEagleButton();
            if(_loc1_ || this)
            {
               §§push(this.§6!P§);
               if(!(_loc2_ && this))
               {
                  if(§§pop() != null)
                  {
                     if(_loc1_ || _loc2_)
                     {
                        addr77:
                        this.§6!P§.stop();
                     }
                     this.§6!P§ = null;
                  }
                  §§goto(addr81);
               }
               §§goto(addr77);
            }
         }
         addr81:
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            §§push(§!!o§.isOpen);
            if(!(_loc3_ && this))
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     return §;!!§.STATE_STATUS_RUNNING;
                  }
                  addr48:
                  (§+!$§.getItemByName("Container_MEScore") as §[!s§).setVisibility(true);
               }
               else
               {
                  addr45:
                  if(§'!V§.§1!2§.objects.mSardineCanAdded)
                  {
                     if(!_loc3_)
                     {
                        §§goto(addr48);
                     }
                  }
               }
               §§push(super.run(param1));
               if(_loc4_)
               {
                  §§push(int(§§pop()));
               }
               var _loc2_:* = §§pop();
               §§push(_loc2_);
               if(_loc4_)
               {
                  if(§§pop() != §;!!§.STATE_STATUS_RUNNING)
                  {
                     §§push(_loc2_);
                     if(_loc4_ || _loc2_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     this.updateCurrentScore(param1);
                     if(!_loc3_)
                     {
                        §§push(this.§+b§);
                        if(_loc4_)
                        {
                           §§push(§=!5§);
                           if(_loc4_)
                           {
                              §§push(§§pop() == §§pop());
                              §§push(§§pop() == §§pop());
                              if(_loc4_ || _loc2_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc4_)
                                    {
                                       §§pop();
                                       §§push(§'!V§.§1!2§);
                                       if(_loc4_ || param1)
                                       {
                                          §§push(§§pop().objects.isPigsAlive());
                                          if(_loc4_ || _loc2_)
                                          {
                                             addr138:
                                             if(!§§pop())
                                             {
                                                if(_loc4_)
                                                {
                                                   this.§!!C§();
                                                }
                                             }
                                             §§push(this.§+b§);
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                §§push(§=!5§);
                                                if(!_loc3_)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   if(!(_loc3_ && this))
                                                   {
                                                      addr163:
                                                      §§push(§§pop());
                                                      if(!_loc3_)
                                                      {
                                                         addr166:
                                                         if(!§§pop())
                                                         {
                                                            §§pop();
                                                            addr181:
                                                            addr180:
                                                            addr178:
                                                            §§push(this.§+b§ == §6!6§);
                                                            if(_loc4_ || this)
                                                            {
                                                               addr189:
                                                               addr190:
                                                               if(§§pop())
                                                               {
                                                               }
                                                               §§goto(addr199);
                                                            }
                                                            §§pop();
                                                            addr199:
                                                            if(§§pop())
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  this.hideMightyEagleButton();
                                                               }
                                                            }
                                                            return §;!!§.STATE_STATUS_RUNNING;
                                                            §§push(§'!V§.§1!2§.slingshot.mSlingShotState == §;§.§#!f§);
                                                         }
                                                         §§goto(addr189);
                                                      }
                                                      §§goto(addr190);
                                                   }
                                                   §§goto(addr189);
                                                }
                                                §§goto(addr181);
                                             }
                                             §§goto(addr180);
                                          }
                                          §§goto(addr163);
                                       }
                                       §§goto(addr181);
                                    }
                                    §§goto(addr189);
                                 }
                                 §§goto(addr138);
                              }
                              §§goto(addr166);
                           }
                        }
                        §§goto(addr181);
                     }
                     §§goto(addr178);
                  }
               }
               §§goto(addr181);
            }
         }
         §§goto(addr45);
      }
      
      protected function §!!C§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§+b§ = §6!6§;
         }
      }
      
      protected function hideMightyEagleButton() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         (§+!$§.getItemByName("Button_MightyEagle") as §#!'§).setComponentState(§<f§.§!`§);
         if(!_loc1_)
         {
            (§+!$§.getItemByName("Button_MightyEagle") as §#!'§).setComponentVisualState(§<f§.COMPONENT_STATE_ACTIVE_DEFAULT);
            if(!(_loc1_ && _loc2_))
            {
               §§push(this.§6!P§);
               if(!(_loc1_ && this))
               {
                  if(§§pop() == null)
                  {
                     if(_loc2_)
                     {
                        this.§6!P§ = §@!T§.§`!t§.§8!"§(§+!$§.getItemByName("Container_MightyEagle").mClip,{
                           "scaleX":1,
                           "scaleY":1
                        },null,0.5);
                        addr91:
                        this.§+b§ = §%3§;
                        if(_loc2_)
                        {
                           addr96:
                           §§push(this.§6!P§);
                           if(!_loc1_)
                           {
                              §§pop().onComplete = this.§11§;
                           }
                           §§goto(addr105);
                        }
                     }
                     addr105:
                     §§pop().play();
                     return;
                     §§push(this.§6!P§);
                  }
                  §§goto(addr91);
               }
            }
            §§goto(addr105);
         }
         §§goto(addr96);
      }
      
      protected function §11§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§6!P§ = §@!T§.§`!t§.§8!"§(§+!$§.getItemByName("Container_MightyEagle").mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.5);
            if(!_loc1_)
            {
               this.§6!P§.play();
               if(!(_loc1_ && _loc2_))
               {
                  addr67:
                  this.§+b§ = §%3§;
               }
               return;
            }
         }
         §§goto(addr67);
      }
      
      override public function getVictoryState() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(§'!V§.§1!2§.objects.mMightyEagleAdded)
            {
               if(!(_loc1_ && this))
               {
                  §§push(§<!`§.STATE_NAME);
                  if(_loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr46:
                  §§push(§0k§.STATE_NAME);
               }
               return §§pop();
            }
         }
         §§goto(addr46);
      }
      
      protected function §0H§() : String
      {
         return §26§.STATE_NAME;
      }
      
      override public function getLoserState() : String
      {
         return §0x§.STATE_NAME;
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            super.keyDown(param1);
         }
         var _loc2_:* = param1.keyCode;
         if(!(_loc3_ && this))
         {
            §§push(82);
            if(_loc4_)
            {
               if(§§pop() === _loc2_)
               {
                  addr87:
                  §§push(0);
                  if(!(_loc3_ && _loc2_))
                  {
                     addr95:
                  }
               }
               else
               {
                  §§push(1);
               }
               switch(§§pop())
               {
                  case 0:
                     §26§.§!=§();
                     if(_loc4_ || this)
                     {
                        mNextState = this.§0H§();
                        if(_loc4_ || _loc3_)
                        {
                           break;
                        }
                        break;
                     }
               }
               return;
            }
            §§goto(addr95);
         }
         §§goto(addr87);
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            if(§'!V§.§>!q§)
            {
               var _loc2_:* = param1.keyCode;
               if(49 === _loc2_)
               {
                  §§push(0);
               }
               else if(50 === _loc2_)
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     §§push(1);
                  }
                  else
                  {
                     addr146:
                     §§push(4);
                     if(!(_loc3_ || _loc3_))
                     {
                        addr163:
                        if(§§pop() === _loc2_)
                        {
                           if(!(_loc4_ && this))
                           {
                              addr182:
                              §§push(5);
                              if(_loc3_ || param1)
                              {
                                 addr190:
                              }
                           }
                           else
                           {
                              addr196:
                              §§push(6);
                           }
                        }
                        else
                        {
                           §§push(55);
                           if(!_loc4_)
                           {
                              if(§§pop() === _loc2_)
                              {
                                 §§goto(addr196);
                              }
                              else
                              {
                                 §§push(7);
                              }
                           }
                        }
                     }
                  }
               }
               else if(51 === _loc2_)
               {
                  if(!_loc4_)
                  {
                     §§push(2);
                     if(_loc3_ || _loc2_)
                     {
                        §§goto(addr202);
                     }
                     else
                     {
                        addr137:
                        if(§§pop() === _loc2_)
                        {
                           if(!(_loc4_ && this))
                           {
                              §§goto(addr146);
                           }
                           §§goto(addr182);
                        }
                        else
                        {
                           §§push(54);
                           if(_loc3_ || this)
                           {
                              §§goto(addr163);
                           }
                        }
                        §§goto(addr190);
                     }
                  }
                  §§goto(addr182);
               }
               else if(52 === _loc2_)
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     §§push(3);
                     if(_loc3_)
                     {
                        §§goto(addr202);
                     }
                     else
                     {
                        §§goto(addr137);
                     }
                  }
                  §§goto(addr196);
               }
               else
               {
                  §§push(53);
                  if(!_loc4_)
                  {
                     §§goto(addr137);
                  }
               }
               addr202:
               switch(§§pop())
               {
                  case 0:
                     break;
                  case 1:
                     break;
                  case 2:
                     break;
                  case 3:
                  case 4:
                     §26§.§!=§();
                     if(_loc3_ || param1)
                     {
                        mNextState = §26§.STATE_NAME;
                        if(_loc3_ || param1)
                        {
                           break;
                        }
                     }
                     addr71:
                     break;
                  case 5:
                     §26§.§=0§();
                     if(!_loc4_)
                     {
                        mNextState = §26§.STATE_NAME;
                        if(_loc3_ || this)
                        {
                        }
                        break;
                     }
                     §§goto(addr71);
                  case 6:
               }
               return;
               addr26:
            }
            §§goto(addr202);
         }
         §§goto(addr26);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!S§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            if(param3 is §#!'§)
            {
               if(!(_loc5_ && param3))
               {
                  §§push(param1);
                  if(!(_loc5_ && param2))
                  {
                     §§push(§+!S§.LISTENER_EVENT_MOUSE_DOWN);
                     if(_loc6_)
                     {
                        if(§§pop() == §§pop())
                        {
                           if(!(_loc5_ && param2))
                           {
                              addr50:
                              §%s§.§[!@§();
                              if(_loc6_ || param3)
                              {
                                 var _loc4_:* = param2;
                                 addr68:
                                 if(!_loc5_)
                                 {
                                    §§push("CLOSE_TUTORIAL");
                                    if(_loc6_)
                                    {
                                       §§push(_loc4_);
                                       if(_loc6_)
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(_loc6_)
                                             {
                                                §§push(0);
                                                if(_loc5_)
                                                {
                                                }
                                                §§goto(addr263);
                                             }
                                             else
                                             {
                                                §§goto(addr167);
                                             }
                                          }
                                          else
                                          {
                                             §§push("PAUSE");
                                             if(_loc6_ || param2)
                                             {
                                                §§push(_loc4_);
                                                if(_loc6_ || param1)
                                                {
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(!(_loc5_ && param2))
                                                      {
                                                         addr167:
                                                         §§push(1);
                                                         if(!_loc6_)
                                                         {
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr238:
                                                         §§push(3);
                                                         if(_loc6_ || this)
                                                         {
                                                            §§goto(addr246);
                                                         }
                                                      }
                                                      §§goto(addr263);
                                                   }
                                                   else
                                                   {
                                                      §§push("RESTART_LEVEL");
                                                      if(_loc6_ || param2)
                                                      {
                                                         addr179:
                                                         §§push(_loc4_);
                                                         if(_loc6_ || this)
                                                         {
                                                            addr187:
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(!(_loc5_ && param2))
                                                               {
                                                                  §§push(2);
                                                                  if(_loc5_ && this)
                                                                  {
                                                                     addr258:
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr250:
                                                                  §§push(4);
                                                                  if(_loc6_ || param1)
                                                                  {
                                                                     §§goto(addr258);
                                                                  }
                                                               }
                                                               §§goto(addr263);
                                                            }
                                                            else
                                                            {
                                                               §§push("MIGHTY_EAGLE");
                                                               if(_loc6_ || param3)
                                                               {
                                                                  §§push(_loc4_);
                                                                  if(!(_loc5_ && param2))
                                                                  {
                                                                     addr220:
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        if(_loc6_ || param1)
                                                                        {
                                                                           §§goto(addr238);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr250);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr248:
                                                                        §§push("FULLSCREEN_BUTTON");
                                                                        §§push(_loc4_);
                                                                     }
                                                                     §§goto(addr250);
                                                                  }
                                                               }
                                                               §§goto(addr248);
                                                            }
                                                         }
                                                         if(§§pop() === §§pop())
                                                         {
                                                            §§goto(addr250);
                                                         }
                                                         else
                                                         {
                                                            addr263:
                                                            switch(§§pop())
                                                            {
                                                               case 0:
                                                                  §!!o§.§7§();
                                                                  if(_loc6_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  addr93:
                                                                  mNextState = §26§.STATE_NAME;
                                                                  if(!(_loc5_ && param3))
                                                                  {
                                                                     break;
                                                                  }
                                                                  break;
                                                               case 1:
                                                                  mNextState = this.§!!b§();
                                                                  if(!_loc5_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  break;
                                                               case 2:
                                                                  §26§.§!=§();
                                                                  if(_loc6_ || this)
                                                                  {
                                                                     §§goto(addr93);
                                                                  }
                                                                  break;
                                                               case 3:
                                                                  break;
                                                               case 4:
                                                                  AngryBirdsFP11.§`!d§.§!5§();
                                                                  if(_loc6_)
                                                                  {
                                                                     break;
                                                                  }
                                                            }
                                                            return;
                                                            §§push(5);
                                                         }
                                                         §§goto(addr263);
                                                      }
                                                      §§goto(addr248);
                                                   }
                                                }
                                                §§goto(addr220);
                                             }
                                             §§goto(addr179);
                                          }
                                          §§goto(addr263);
                                       }
                                       §§goto(addr187);
                                    }
                                    §§goto(addr248);
                                 }
                                 §§goto(addr250);
                                 addr68:
                                 addr59:
                              }
                           }
                           else
                           {
                              addr66:
                              §%s§.§<1§();
                           }
                           §§goto(addr68);
                        }
                        else
                        {
                           addr61:
                           §§push(param1);
                           §§push(§+!S§.LISTENER_EVENT_MOUSE_UP);
                        }
                        §§goto(addr68);
                     }
                     if(§§pop() == §§pop())
                     {
                        if(!_loc5_)
                        {
                           §§goto(addr66);
                        }
                     }
                     §§goto(addr68);
                  }
                  §§goto(addr61);
               }
               §§goto(addr50);
            }
            §§goto(addr68);
         }
         §§goto(addr59);
      }
      
      protected function §!!b§() : String
      {
         return §^r§.STATE_NAME;
      }
      
      protected function §+!9§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §'!V§.§1!2§.§+!9§();
         }
         §§push(AngryBirdsFP11.sUserProgress.§8!O§(§1^§.§ ]§));
         if(!(_loc3_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(!_loc3_)
         {
            §+!$§.setText(_loc1_.toString() + "%","TextField_MEPercentage");
            if(_loc2_)
            {
               this.§0P§ = true;
               if(_loc3_)
               {
               }
               §§goto(addr78);
            }
            this.hideMightyEagleButton();
         }
         addr78:
      }
      
      protected function updateCurrentScore(param1:Number) : void
      {
      }
   }
}
