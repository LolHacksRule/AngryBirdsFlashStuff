package § !@§
{
   import §#P§.§ !=§;
   import §#P§.§@7§;
   import §#X§.§,!F§;
   import §%4§.§4!=§;
   import §%4§.§7-§;
   import §%4§.§`a§;
   import §+!B§.§<!M§;
   import §+!B§.§[m§;
   import §-!D§.§4!,§;
   import §-!D§.§5A§;
   import §0!#§.§-P§;
   import §0!#§.§0K§;
   import §1!-§.§[4§;
   import §3a§.§'q§;
   import §5!L§.§=w§;
   import §6!C§.§!;§;
   import §6A§.§4!C§;
   import §7g§.§1Q§;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.getTimer;
   
   public class StatePlay extends §#<§
   {
      
      public static const §>9§:String = "StatePlay";
      
      public static const §9b§:int = 50;
      
      protected static const §[b§:String = "MightyEagleButtonVisible";
      
      protected static const §8!§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §`!$§:String = "MightyEagleButtonHide";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §>9§ = "StatePlay";
            if(_loc2_ || StatePlay)
            {
               §9b§ = 50;
               if(_loc2_ || _loc2_)
               {
                  addr59:
                  §[b§ = "MightyEagleButtonVisible";
                  if(!_loc1_)
                  {
                     §8!§ = "MightyEagleButtonPrepareHide";
                     if(!_loc2_)
                     {
                     }
                     §§goto(addr72);
                  }
                  §`!$§ = "MightyEagleButtonHide";
               }
               addr72:
               return;
            }
         }
         §§goto(addr59);
      }
      
      protected var §+y§:§<!M§;
      
      protected var §6`§:§ !=§;
      
      protected var §0;§:String;
      
      protected var §#m§:Boolean;
      
      private var §+[§:Vector.<int>;
      
      private var §&3§:Boolean;
      
      private var §+!§:Boolean;
      
      public function StatePlay(param1:Boolean = true, param2:String = "StatePlay")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§+y§ = new §<!M§();
            this.§+[§ = new Vector.<int>(32);
            super(param1,param2);
            this.§+[§[3] = 5000;
            this.§+[§[7] = 5000;
            if(_loc4_)
            {
               addr66:
               this.§+[§[8] = 5000;
               this.§+[§[9] = 5000;
            }
            this.§+[§[12] = 5000;
            return;
         }
         §§goto(addr66);
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super.init();
            if(!(_loc2_ && this))
            {
               §]F§ = new §4!,§(this);
               if(_loc1_ || this)
               {
                  addr64:
                  §]F§.init(§5A§.§;L§.Views.View_LevelPlay[0]);
               }
            }
            return;
         }
         §§goto(addr64);
      }
      
      protected function §'!3§() : void
      {
      }
      
      private function §`!1§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            (§]F§.getItemByName("TextField_METimer") as §`a§).setVisibility(false);
         }
      }
      
      override protected function levelStarted() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         this.§`R§();
         if(!(_loc1_ && this))
         {
            super.levelStarted();
            if(!_loc1_)
            {
               if(§]F§.getItemByName("Button_MightyEagle"))
               {
                  if(!(_loc1_ && this))
                  {
                     §]F§.getItemByName("Button_MightyEagle").setVisibility(true);
                  }
                  §§goto(addr85);
               }
            }
            §§push(§,!F§);
            §§push("LevelStartsBirdsMilitary");
            if(_loc2_)
            {
               §§push(§§pop() + (1 + int(Math.random() * 2)));
            }
            §§pop().§;v§(§§pop());
            if(_loc2_)
            {
               this.§#c§();
            }
         }
         addr85:
      }
      
      protected function §`R§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §,!F§.§?X§();
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super.activate();
         }
      }
      
      protected function initMightyEagleButton() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §]F§.getItemByName("TextField_METimer").setVisibility(false);
            if(_loc2_ || _loc2_)
            {
               §]F§.getItemByName("Container_MEScore").setVisibility(false);
               if(_loc2_ || _loc1_)
               {
                  §]F§.getItemByName("Container_MightyEagle").mClip.scaleX = 1;
                  if(_loc2_ || _loc2_)
                  {
                  }
                  §§goto(addr87);
               }
            }
            §]F§.getItemByName("Container_MightyEagle").mClip.scaleY = 1;
         }
         addr87:
      }
      
      protected function §#c§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§+y§.assign(0);
            this.updateCurrentScore(0);
            this.initMightyEagleButton();
            if(_loc2_ || this)
            {
               this.§0;§ = §[b§;
               if(_loc2_)
               {
                  this.§6`§ = null;
                  this.§#m§ = false;
               }
            }
         }
      }
      
      public function deactivateMightyEagleButton() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            (§]F§.getItemByName("Button_MightyEagle") as §7-§).setComponentVisualState(§0K§.COMPONENT_STATE_ACTIVE_DEFAULT);
            if(_loc1_)
            {
               (§]F§.getItemByName("Button_MightyEagle") as §7-§).setComponentState(§0K§.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         super.deActivate();
         if(!(_loc2_ && _loc1_))
         {
            (§]F§.getItemByName("Button_Pause") as §7-§).setComponentVisualState(§0K§.COMPONENT_STATE_ACTIVE_DEFAULT);
            if(!_loc2_)
            {
               this.deactivateMightyEagleButton();
               if(!(_loc2_ && this))
               {
                  addr64:
                  §§push(this.§6`§);
                  if(_loc1_ || _loc2_)
                  {
                     if(§§pop() != null)
                     {
                        addr77:
                        this.§6`§.stop();
                        this.§6`§ = null;
                     }
                     return;
                  }
               }
               §§goto(addr77);
            }
         }
         §§goto(addr64);
      }
      
      protected function §+!+§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         if(!_loc4_)
         {
            if(!this.§&3§)
            {
               if(_loc5_)
               {
                  §§push(0);
                  if(_loc5_)
                  {
                     _loc1_ = §§pop();
                     §§goto(addr38);
                  }
                  _loc2_ = §§pop();
                  §§goto(addr38);
               }
               addr38:
               if(!_loc4_)
               {
                  §§push(0);
               }
               loop1:
               while(true)
               {
                  §§push(_loc2_);
                  if(!(_loc4_ && _loc2_))
                  {
                     while(true)
                     {
                        if(§§pop() >= this.§+[§.length)
                        {
                           §§push(_loc1_);
                           if(!(_loc4_ && this))
                           {
                              break;
                           }
                           break loop1;
                        }
                        §§push(_loc1_);
                        if(!_loc5_)
                        {
                           break;
                        }
                        §§push(int(§§pop() + this.§+[§[_loc2_]));
                        if(!_loc5_)
                        {
                           continue;
                        }
                        _loc1_ = §§pop();
                        _loc2_++;
                        if(_loc5_)
                        {
                           continue loop1;
                        }
                        addr104:
                        §§push(int(_loc1_ / 1000) == 25);
                        if(_loc5_ || _loc2_)
                        {
                           addr118:
                           §§push(!§§pop());
                           if(_loc5_)
                           {
                              addr121:
                              if(§§pop())
                              {
                                 this.§&3§ = true;
                                 §[m§.§"!A§(§[m§.§-!2§,§[4§.§"!>§);
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    §§goto(addr148);
                                 }
                                 §§goto(addr151);
                              }
                           }
                           §§goto(addr148);
                        }
                        §§goto(addr121);
                     }
                     §§push(§§pop() % 1000);
                     if(_loc5_)
                     {
                        §§push(Boolean(§§pop()));
                        if(!_loc4_)
                        {
                           if(!§§pop())
                           {
                              if(!(_loc4_ && _loc1_))
                              {
                                 §§pop();
                                 if(!_loc4_)
                                 {
                                    §§goto(addr104);
                                 }
                                 §§goto(addr157);
                              }
                              §§goto(addr118);
                           }
                        }
                        §§goto(addr121);
                     }
                     §§goto(addr163);
                  }
                  break;
               }
               _loc3_ = §§pop();
               if(!_loc4_)
               {
                  addr157:
                  loop0:
                  while(true)
                  {
                     §§push(getTimer() - _loc3_);
                     addr163:
                     while(true)
                     {
                        if(§§pop() >= 1000)
                        {
                           break loop0;
                        }
                        continue loop0;
                     }
                  }
               }
               §§goto(addr148);
            }
            addr148:
            if(this.§+!§)
            {
               addr151:
               §§push(int(getTimer()));
               break loop1;
            }
            return;
         }
         §§goto(addr38);
      }
      
      protected function §<_§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:int = §!!&§.getScore();
         §§push(this.§+y§.getValue());
         if(_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || _loc2_)
         {
            §§push(_loc2_ < _loc1_);
            if(_loc4_ || this)
            {
               if(§§pop())
               {
                  if(_loc4_)
                  {
                     §§pop();
                     if(_loc4_ || _loc3_)
                     {
                        §§push(this.§&3§);
                        if(!_loc4_)
                        {
                        }
                        addr82:
                        if(§§pop())
                        {
                           if(!(_loc3_ && _loc1_))
                           {
                              this.§+!§ = true;
                           }
                        }
                     }
                     §§goto(addr93);
                  }
                  §§push(Boolean(§§pop()));
               }
            }
            §§goto(addr82);
         }
         addr93:
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(§!;§.isOpen);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     return §1Q§.STATE_STATUS_RUNNING;
                  }
               }
               else
               {
                  addr34:
                  if(§=w§.§ o§.objects.mSardineCanAdded)
                  {
                     if(_loc3_ || _loc2_)
                     {
                        addr42:
                        (§]F§.getItemByName("Container_MEScore") as §4!=§).setVisibility(true);
                        if(_loc4_ && _loc2_)
                        {
                        }
                        addr58:
                        §§push(super.run(param1));
                        if(!(_loc4_ && _loc3_))
                        {
                           §§push(int(§§pop()));
                        }
                        var _loc2_:* = §§pop();
                        if(!(_loc4_ && this))
                        {
                           §§push(_loc2_);
                           if(!_loc4_)
                           {
                              if(§§pop() != §1Q§.STATE_STATUS_RUNNING)
                              {
                                 §§push(_loc2_);
                                 if(_loc3_)
                                 {
                                    return §§pop();
                                 }
                                 addr206:
                                 §§push(§§pop() == §4!C§.§?!>§);
                              }
                              else
                              {
                                 this.updateCurrentScore(param1);
                                 §§push(this.§0;§);
                                 if(!_loc4_)
                                 {
                                    §§push(§[b§);
                                    if(!_loc4_)
                                    {
                                       §§push(§§pop() == §§pop());
                                       §§push(§§pop() == §§pop());
                                       if(_loc3_)
                                       {
                                          if(§§pop())
                                          {
                                             §§pop();
                                             if(!(_loc4_ && this))
                                             {
                                                §§push(§=w§.§ o§);
                                                if(!_loc4_)
                                                {
                                                   addr134:
                                                   if(!§§pop().objects.isPigsAlive())
                                                   {
                                                      if(_loc3_ || _loc3_)
                                                      {
                                                         addr142:
                                                         this.§;Q§();
                                                         if(_loc3_)
                                                         {
                                                            addr146:
                                                            §§push(this.§0;§);
                                                            if(!(_loc4_ && _loc2_))
                                                            {
                                                               §§push(§[b§);
                                                               if(_loc3_ || _loc2_)
                                                               {
                                                                  §§push(§§pop() == §§pop());
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(_loc3_ || this)
                                                                     {
                                                                        addr174:
                                                                        if(!§§pop())
                                                                        {
                                                                           §§pop();
                                                                           addr190:
                                                                           §§push(this.§0;§ == §8!§);
                                                                           §§push(this.§0;§ == §8!§);
                                                                        }
                                                                        §§goto(addr190);
                                                                     }
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc3_ || _loc3_)
                                                                        {
                                                                           §§pop();
                                                                           §§goto(addr212);
                                                                        }
                                                                     }
                                                                     §§goto(addr209);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr190);
                                                         }
                                                         §§goto(addr202);
                                                      }
                                                      §§goto(addr210);
                                                   }
                                                   §§goto(addr146);
                                                }
                                                §§goto(addr202);
                                             }
                                             §§goto(addr210);
                                          }
                                          §§goto(addr134);
                                       }
                                       §§goto(addr174);
                                    }
                                 }
                                 §§goto(addr190);
                              }
                              addr209:
                              if(§§pop())
                              {
                                 addr210:
                                 this.hideMightyEagleButton();
                              }
                              addr212:
                              if(!_loc4_)
                              {
                                 addr202:
                                 §§goto(addr206);
                                 §§push(§=w§.§ o§.slingshot.mSlingShotState);
                              }
                              return §1Q§.STATE_STATUS_RUNNING;
                           }
                           §§goto(addr206);
                        }
                        §§goto(addr142);
                     }
                  }
                  this.§+!+§();
               }
               §§goto(addr58);
            }
            §§goto(addr34);
         }
         §§goto(addr42);
      }
      
      protected function §;Q§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§0;§ = §8!§;
         }
      }
      
      protected function hideMightyEagleButton() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         (§]F§.getItemByName("Button_MightyEagle") as §7-§).setComponentState(§0K§.§]x§);
         (§]F§.getItemByName("Button_MightyEagle") as §7-§).setComponentVisualState(§0K§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §§push(this.§6`§);
         if(_loc1_)
         {
            if(§§pop() == null)
            {
               this.§6`§ = §@7§.§@6§.§3!%§(§]F§.getItemByName("Container_MightyEagle").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5);
               if(!_loc2_)
               {
                  §§goto(addr76);
               }
               §§goto(addr100);
            }
            addr76:
            this.§0;§ = §`!$§;
            if(!_loc2_)
            {
               §§push(this.§6`§);
               if(_loc1_ || _loc1_)
               {
                  addr90:
                  §§pop().onComplete = this.§`c§;
                  §§goto(addr103);
               }
               §§pop().play();
            }
            addr103:
            if(!(_loc2_ && this))
            {
               addr100:
               §§push(this.§6`§);
            }
            return;
         }
         §§goto(addr90);
      }
      
      protected function §`c§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§6`§ = §@7§.§@6§.§3!%§(§]F§.getItemByName("Container_MightyEagle").mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.5);
            if(_loc1_)
            {
               §§goto(addr51);
            }
            §§goto(addr56);
         }
         addr51:
         this.§6`§.play();
         if(!_loc2_)
         {
            addr56:
            this.§0;§ = §`!$§;
         }
      }
      
      override public function getVictoryState() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(§=w§.§ o§.objects.mMightyEagleAdded)
            {
               if(!_loc1_)
               {
                  §§push(§&b§.§>9§);
                  if(!_loc1_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr31:
                  §§push(§+W§.§>9§);
               }
               return §§pop();
            }
         }
         §§goto(addr31);
      }
      
      protected function §]!-§() : String
      {
         return §^!K§.§>9§;
      }
      
      override public function getLoserState() : String
      {
         return § !"§.§>9§;
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super.keyDown(param1);
         }
         var _loc2_:* = param1.keyCode;
         if(_loc3_ || this)
         {
            §§push(82);
            if(!_loc4_)
            {
               if(§§pop() === _loc2_)
               {
                  addr81:
                  §§push(0);
                  if(_loc3_ || _loc3_)
                  {
                     addr89:
                  }
               }
               else
               {
                  §§push(1);
               }
               switch(§§pop())
               {
                  case 0:
                     §^!K§.§@!<§();
                     if(_loc3_ || _loc3_)
                     {
                        mNextState = this.§]!-§();
                        if(_loc3_ || this)
                        {
                           break;
                        }
                        break;
                     }
               }
               return;
            }
            §§goto(addr89);
         }
         §§goto(addr81);
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            if(§=w§.§%Z§)
            {
               var _loc2_:* = param1.keyCode;
               if(49 === _loc2_)
               {
                  if(_loc3_)
                  {
                     §§push(0);
                     if(_loc4_)
                     {
                        addr111:
                     }
                  }
                  else
                  {
                     addr148:
                     §§push(3);
                  }
               }
               else
               {
                  §§push(50);
                  if(!(_loc4_ && _loc3_))
                  {
                     if(§§pop() === _loc2_)
                     {
                        §§push(1);
                        if(!_loc4_)
                        {
                           §§goto(addr111);
                        }
                        else
                        {
                           addr188:
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
                                 §^!K§.§@!<§();
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    mNextState = §^!K§.§>9§;
                                    if(_loc3_ || this)
                                    {
                                       break;
                                    }
                                    break;
                                 }
                                 addr60:
                                 mNextState = §^!K§.§>9§;
                                 if(_loc3_ || _loc2_)
                                 {
                                    addr71:
                                    break;
                                 }
                                 break;
                              case 5:
                                 §^!K§.§+!4§();
                                 if(!_loc4_)
                                 {
                                    §§goto(addr60);
                                 }
                                 §§goto(addr71);
                              case 6:
                           }
                           return;
                           addr183:
                        }
                        §§goto(addr188);
                     }
                     else
                     {
                        §§push(51);
                        if(!(_loc4_ && _loc3_))
                        {
                           if(§§pop() === _loc2_)
                           {
                              if(_loc3_ || this)
                              {
                                 §§push(2);
                                 if(!(_loc4_ && this))
                                 {
                                    addr137:
                                 }
                                 §§goto(addr188);
                              }
                              else
                              {
                                 addr165:
                                 §§push(4);
                              }
                              §§goto(addr188);
                           }
                           else
                           {
                              §§push(52);
                              if(!(_loc4_ && this))
                              {
                                 if(§§pop() === _loc2_)
                                 {
                                    §§goto(addr148);
                                 }
                                 else
                                 {
                                    if(53 === _loc2_)
                                    {
                                       if(!_loc4_)
                                       {
                                          §§goto(addr165);
                                       }
                                    }
                                    else
                                    {
                                       addr168:
                                       if(54 !== _loc2_)
                                       {
                                          §§push(55);
                                          if(_loc3_ || _loc2_)
                                          {
                                             if(§§pop() === _loc2_)
                                             {
                                                §§goto(addr183);
                                                §§push(6);
                                             }
                                             else
                                             {
                                                §§goto(addr188);
                                                §§push(7);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr188);
                                    §§push(5);
                                 }
                                 §§goto(addr188);
                              }
                              §§goto(addr168);
                           }
                        }
                        §§goto(addr148);
                     }
                  }
                  §§goto(addr137);
               }
               §§goto(addr188);
               addr26:
            }
            §§goto(addr188);
         }
         §§goto(addr26);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-P§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            if(param3 is §7-§)
            {
               if(_loc5_ || this)
               {
                  §§push(param1);
                  if(_loc5_ || param1)
                  {
                     §§push(§-P§.LISTENER_EVENT_MOUSE_DOWN);
                     if(_loc5_ || param1)
                     {
                        if(§§pop() == §§pop())
                        {
                           if(!(_loc6_ && param3))
                           {
                              §'q§.§3!4§();
                              if(_loc5_ || this)
                              {
                                 var _loc4_:* = param2;
                                 addr72:
                                 if(_loc5_ || this)
                                 {
                                    §§push("CLOSE_TUTORIAL");
                                    if(_loc5_ || param2)
                                    {
                                       §§push(_loc4_);
                                       if(!_loc6_)
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(_loc5_)
                                             {
                                                addr158:
                                                §§push(0);
                                                if(_loc6_)
                                                {
                                                   addr212:
                                                }
                                             }
                                             else
                                             {
                                                addr232:
                                                §§push(3);
                                                if(!(_loc6_ && param3))
                                                {
                                                   addr240:
                                                }
                                             }
                                          }
                                          else
                                          {
                                             §§push("PAUSE");
                                             if(_loc5_)
                                             {
                                                addr165:
                                                §§push(_loc4_);
                                                if(_loc5_ || param3)
                                                {
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         §§push(1);
                                                         if(!(_loc6_ && param2))
                                                         {
                                                            §§goto(addr252);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr240);
                                                         }
                                                      }
                                                      §§goto(addr252);
                                                   }
                                                   else
                                                   {
                                                      §§push("RESTART_LEVEL");
                                                      if(_loc5_ || this)
                                                      {
                                                         addr193:
                                                         §§push(_loc4_);
                                                         if(_loc5_)
                                                         {
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(!(_loc6_ && param3))
                                                               {
                                                                  §§push(2);
                                                                  if(!(_loc6_ && param2))
                                                                  {
                                                                     §§goto(addr212);
                                                                  }
                                                                  §§goto(addr252);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr232);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push("MIGHTY_EAGLE");
                                                               if(!_loc6_)
                                                               {
                                                                  addr226:
                                                                  §§push(_loc4_);
                                                                  if(_loc5_)
                                                                  {
                                                                     addr229:
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§goto(addr232);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr244:
                                                                           §§push(4);
                                                                           if(_loc6_)
                                                                           {
                                                                           }
                                                                           §§goto(addr252);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push("FULLSCREEN_BUTTON");
                                                                     }
                                                                     §§goto(addr244);
                                                                  }
                                                                  addr243:
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     §§goto(addr244);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr252:
                                                                     switch(§§pop())
                                                                     {
                                                                        case 0:
                                                                           §!;§.§?"§();
                                                                           if(!(_loc6_ && param1))
                                                                           {
                                                                              break;
                                                                           }
                                                                           addr108:
                                                                           break;
                                                                        case 1:
                                                                           mNextState = this.§9!3§();
                                                                           if(!_loc6_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           addr132:
                                                                           break;
                                                                        case 2:
                                                                           §^!K§.§@!<§();
                                                                           if(_loc5_ || param1)
                                                                           {
                                                                              mNextState = §^!K§.§>9§;
                                                                              if(_loc5_)
                                                                              {
                                                                                 §§goto(addr108);
                                                                              }
                                                                              break;
                                                                           }
                                                                           break;
                                                                        case 3:
                                                                           break;
                                                                        case 4:
                                                                           AngryBirdsFP11.§ y§.§-!$§();
                                                                           if(_loc5_ || param3)
                                                                           {
                                                                              §§goto(addr132);
                                                                           }
                                                                     }
                                                                     return;
                                                                     §§push(5);
                                                                  }
                                                                  §§goto(addr252);
                                                               }
                                                               §§goto(addr243);
                                                               §§push(_loc4_);
                                                            }
                                                            §§goto(addr252);
                                                         }
                                                         §§goto(addr243);
                                                      }
                                                      §§goto(addr226);
                                                   }
                                                }
                                                §§goto(addr229);
                                             }
                                             §§goto(addr193);
                                          }
                                          §§goto(addr252);
                                       }
                                       §§goto(addr226);
                                    }
                                    §§goto(addr165);
                                 }
                                 §§goto(addr158);
                                 addr72:
                                 addr63:
                              }
                              else
                              {
                                 addr70:
                                 §'q§.§5e§();
                                 §§goto(addr72);
                              }
                              §§goto(addr72);
                           }
                           §§goto(addr63);
                        }
                        else
                        {
                           addr65:
                           §§push(param1);
                           §§push(§-P§.LISTENER_EVENT_MOUSE_UP);
                        }
                        §§goto(addr72);
                     }
                     if(§§pop() == §§pop())
                     {
                        if(_loc5_)
                        {
                           §§goto(addr70);
                        }
                     }
                     §§goto(addr72);
                  }
                  §§goto(addr65);
               }
               §§goto(addr72);
            }
         }
         §§goto(addr72);
      }
      
      protected function §9!3§() : String
      {
         return §7§.§>9§;
      }
      
      protected function §9!6§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §=w§.§ o§.§9!6§();
         }
         §§push(AngryBirdsFP11.sUserProgress.§3I§(§[4§.§"!>§));
         if(!(_loc3_ && this))
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            §]F§.setText(_loc1_.toString() + "%","TextField_MEPercentage");
            if(_loc2_)
            {
               this.§#m§ = true;
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§<_§();
         }
      }
   }
}
