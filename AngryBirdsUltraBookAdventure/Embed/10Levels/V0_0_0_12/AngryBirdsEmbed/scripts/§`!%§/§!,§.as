package §`!%§
{
   import §"!&§.§ !5§;
   import §"!&§.§%!>§;
   import §"!5§.§,!!§;
   import §'X§.§9[§;
   import §,K§.§-!$§;
   import §1;§.§!!1§;
   import §1;§.§0!&§;
   import §=^§.§ p§;
   import §=^§.§"M§;
   import §=^§.§?o§;
   import §=^§.§]P§;
   import §=^§.§`f§;
   import §>!C§.§6M§;
   import §>!C§.§^h§;
   import §?!?§.§3!E§;
   import §@s§.§'!0§;
   import §@s§.§3!?§;
   import §@s§.§9$§;
   import com.rovio.assets.§,u§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §!,§ extends §9[§
   {
      
      public static const §0!7§:String = "LevelSelectionState";
      
      protected static const §7,§:Number = 0.5;
      
      public static var §^B§:String = "";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §0!7§ = "LevelSelectionState";
            if(!_loc1_)
            {
               addr24:
               §7,§ = 0.5;
               if(!_loc1_)
               {
                  §^B§ = "";
               }
            }
            return;
         }
         §§goto(addr24);
      }
      
      protected var §1!5§:Boolean = false;
      
      protected var §#$§:§`f§;
      
      protected var §]!&§:§`f§;
      
      protected var §%<§:MovieClip;
      
      protected var §^p§:Array;
      
      protected var § U§:Array;
      
      protected var §]!6§:int = 0;
      
      protected var §&#§:int = 0;
      
      protected var § try§:int = 0;
      
      protected var §-g§:Boolean = false;
      
      protected var §2%§:§ !5§ = null;
      
      protected var §6!D§:Dictionary;
      
      protected var §`k§:Array;
      
      protected var §^y§:Array;
      
      protected var §>!;§:§-!$§;
      
      protected var §1<§:Number = 0;
      
      public function §!,§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.init();
            if(_loc2_)
            {
               this.§&$§();
            }
         }
         loop0:
         while(true)
         {
            §§push(this.§]!&§);
            while(true)
            {
               if(§§pop().mClip.numChildren <= 0)
               {
                  if(_loc2_)
                  {
                     break;
                  }
                  §§goto(addr82);
               }
               §§push(this.§]!&§);
               if(_loc2_ || this)
               {
                  continue loop0;
               }
            }
            addr74:
            this.§ U§ = [];
            if(_loc2_)
            {
               this.§^p§ = [];
            }
            addr82:
            return;
         }
      }
      
      protected function §&$§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §#!4§ = new §!!1§(this);
            if(!_loc1_)
            {
               §#!4§.init(§0!&§.§'^§.Views.View_LevelSelection[0]);
               if(_loc2_ || this)
               {
                  this.§]!&§ = §#!4§.getItemByName("Container_LevelRepeaters") as §`f§;
                  if(_loc1_ && _loc2_)
                  {
                  }
                  §§goto(addr87);
               }
            }
            this.§#$§ = §#!4§.getItemByName("Container_LevelSelection") as §`f§;
         }
         addr87:
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         super.activate();
         if(!_loc2_)
         {
            §§push(§,!!§.§;4§);
            if(_loc1_)
            {
               §§pop().clearLevel();
               if(_loc1_)
               {
                  addr29:
                  §,!!§.§;4§.§69§(false);
                  this.§^d§();
                  if(!_loc2_)
                  {
                     AngryBirdsFP11.§'!F§();
                     if(this.§ U§.length == 1)
                     {
                        (§#!4§.getItemByName("Button_Prev") as §]P§).setVisibility(false);
                        (§#!4§.getItemByName("Button_Next") as §]P§).setVisibility(false);
                        (§#!4§.getItemByName("TextField_LevelNumberSmall") as § p§).setVisibility(false);
                        addr114:
                        this.§1<§ = this.§]!&§.x;
                     }
                     else
                     {
                        (§#!4§.getItemByName("Button_Prev") as §]P§).setVisibility(true);
                        if(_loc1_ || _loc2_)
                        {
                           (§#!4§.getItemByName("Button_Next") as §]P§).setVisibility(true);
                           if(!_loc2_)
                           {
                              addr107:
                              (§#!4§.getItemByName("TextField_LevelNumberSmall") as § p§).setVisibility(true);
                              §§goto(addr114);
                           }
                           §§goto(addr124);
                        }
                     }
                     if(§#!4§.stage)
                     {
                        if(_loc2_)
                        {
                        }
                     }
                     §§goto(addr124);
                  }
                  §§goto(addr107);
               }
               §§goto(addr124);
            }
            §§goto(addr29);
         }
         addr124:
         §#!4§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§-Q§);
      }
      
      protected function §-Q§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(this.§ U§.length <= 1)
         {
            if(!_loc3_)
            {
               return;
            }
         }
         else if(param1.keyCode == Keyboard.LEFT)
         {
            if(!_loc3_)
            {
               this.§%i§();
               if(!(_loc2_ || _loc2_))
               {
                  addr68:
                  this.§7R§();
                  §§goto(addr70);
               }
               addr70:
               return;
            }
         }
         else if(param1.keyCode == Keyboard.RIGHT)
         {
            §§goto(addr68);
         }
         §§goto(addr68);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.run(param1));
         if(!_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(!(_loc3_ && param1))
         {
            if(§§pop() != §9[§.STATE_STATUS_RUNNING)
            {
               if(!_loc3_)
               {
                  §§goto(addr58);
               }
            }
            else
            {
               this.§,;§();
            }
            this.§]L§();
            if(_loc4_)
            {
               if(mNextState.length > 0)
               {
                  if(!_loc3_)
                  {
                     return §9[§.STATE_STATUS_COMPLETED;
                  }
               }
            }
            return §9[§.STATE_STATUS_RUNNING;
         }
         addr58:
         return _loc2_;
      }
      
      protected function §,;§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            loop1:
            while(true)
            {
               §§push(this.§^p§);
               loop2:
               while(true)
               {
                  if(§§pop() < §§pop().length)
                  {
                     §§push(this.§]!&§);
                     if(_loc3_)
                     {
                        §§push(-§§pop().x);
                        if(_loc3_)
                        {
                           §§push(this.§ U§);
                           if(!(_loc4_ && this))
                           {
                              §§push(_loc1_);
                              if(_loc3_ || _loc1_)
                              {
                                 §§push(§§pop() >= §§pop()[§§pop()].x);
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    §§push(§§pop());
                                    if(!_loc4_)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc3_)
                                          {
                                             addr63:
                                             §§pop();
                                             §§push(this.§1<§);
                                             if(!_loc4_)
                                             {
                                                §§push(-§§pop());
                                                if(!(_loc4_ && this))
                                                {
                                                   addr76:
                                                   §§push(this.§ U§);
                                                   if(_loc3_)
                                                   {
                                                      §§push(_loc1_);
                                                      if(!_loc4_)
                                                      {
                                                         §§push(§§pop() < §§pop()[§§pop()].x);
                                                         if(_loc3_)
                                                         {
                                                            addr88:
                                                            if(§§pop())
                                                            {
                                                               _loc2_ = 0;
                                                               while(true)
                                                               {
                                                                  §§push(_loc2_);
                                                                  §§push(this.§^p§);
                                                                  if(!_loc3_)
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                                  if(§§pop() >= §§pop().length)
                                                                  {
                                                                     this.§ try§ = _loc1_;
                                                                     if(!(_loc4_ && this))
                                                                     {
                                                                        §§push(this.§^p§);
                                                                        if(!_loc4_)
                                                                        {
                                                                           §§push(_loc1_);
                                                                           if(!(_loc4_ && _loc3_))
                                                                           {
                                                                              §§pop()[§§pop()].gotoAndStop("Selected");
                                                                              if(_loc3_ || this)
                                                                              {
                                                                                 (§#!4§.getItemByName("TextField_LevelNumberSmall") as § p§).x = this.§^p§[_loc1_].x;
                                                                                 if(!(_loc4_ && _loc1_))
                                                                                 {
                                                                                    this.§4!C§(_loc1_);
                                                                                    if(!(_loc4_ && this))
                                                                                    {
                                                                                       addr178:
                                                                                       §§push(-this.§]!&§.x);
                                                                                       if(!(_loc4_ && _loc1_))
                                                                                       {
                                                                                          §§push(this.§ U§);
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             addr193:
                                                                                             §§push(_loc1_);
                                                                                             if(_loc3_ || _loc1_)
                                                                                             {
                                                                                                §§push(§§pop() <= §§pop()[§§pop()].x);
                                                                                                if(_loc3_ || _loc1_)
                                                                                                {
                                                                                                   addr221:
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         if(!(_loc4_ && this))
                                                                                                         {
                                                                                                            §§push(this.§1<§);
                                                                                                            if(!(_loc4_ && _loc1_))
                                                                                                            {
                                                                                                               addr243:
                                                                                                               if(-§§pop() > this.§ U§[_loc1_].x)
                                                                                                               {
                                                                                                                  _loc2_ = 0;
                                                                                                                  loop3:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc2_);
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        continue loop1;
                                                                                                                     }
                                                                                                                     §§push(this.§^p§);
                                                                                                                     if(!(_loc3_ || _loc3_))
                                                                                                                     {
                                                                                                                        continue loop2;
                                                                                                                     }
                                                                                                                     if(§§pop() < §§pop().length)
                                                                                                                     {
                                                                                                                        §§push(this.§^p§);
                                                                                                                        if(!_loc4_)
                                                                                                                        {
                                                                                                                           §§push(_loc2_);
                                                                                                                           if(_loc3_)
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                                                                                 if(!(_loc4_ && _loc1_))
                                                                                                                                 {
                                                                                                                                    continue loop3;
                                                                                                                                 }
                                                                                                                                 §§goto(addr298);
                                                                                                                              }
                                                                                                                              addr261:
                                                                                                                           }
                                                                                                                           addr301:
                                                                                                                           §§pop()[§§pop()].gotoAndStop("Selected");
                                                                                                                           if(!_loc4_)
                                                                                                                           {
                                                                                                                              addr306:
                                                                                                                              (§#!4§.getItemByName("TextField_LevelNumberSmall") as § p§).x = this.§^p§[_loc1_].x;
                                                                                                                              if(_loc3_ || this)
                                                                                                                              {
                                                                                                                                 this.§4!C§(_loc1_);
                                                                                                                                 break loop2;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     if(_loc3_)
                                                                                                                     {
                                                                                                                        this.§ try§ = _loc1_;
                                                                                                                        if(_loc3_ || _loc1_)
                                                                                                                        {
                                                                                                                           addr298:
                                                                                                                           §§push(this.§^p§);
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        addr409:
                                                                                                                        addr409:
                                                                                                                        addr363:
                                                                                                                        this.§&#§ = this.§ try§ + 1;
                                                                                                                        this.§>!;§.§%c§(this.§`k§[this.§&#§].red,this.§`k§[this.§&#§].green,this.§`k§[this.§&#§].blue);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr356:
                                                                                                                        §§push(this.§]!6§);
                                                                                                                        §§push(this.§ try§);
                                                                                                                        if(_loc3_)
                                                                                                                        {
                                                                                                                           if(§§pop() > §§pop())
                                                                                                                           {
                                                                                                                              §§goto(addr363);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr372:
                                                                                                                              §§push(this.§]!6§);
                                                                                                                              §§push(this.§ try§);
                                                                                                                           }
                                                                                                                           §§goto(addr430);
                                                                                                                        }
                                                                                                                        if(§§pop() < §§pop())
                                                                                                                        {
                                                                                                                           if(!(_loc4_ && _loc2_))
                                                                                                                           {
                                                                                                                              this.§&#§ = this.§ try§ - 1;
                                                                                                                              addr387:
                                                                                                                              §§goto(addr363);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           this.§&#§ = this.§ try§;
                                                                                                                           if(_loc3_ || _loc1_)
                                                                                                                           {
                                                                                                                              §§goto(addr363);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr430:
                                                                                                                     this.§1<§ = this.§]!&§.x;
                                                                                                                     return;
                                                                                                                     §§goto(addr430);
                                                                                                                  }
                                                                                                                  addr300:
                                                                                                                  §§goto(addr301);
                                                                                                                  §§push(_loc1_);
                                                                                                               }
                                                                                                               break loop2;
                                                                                                            }
                                                                                                            §§goto(addr243);
                                                                                                         }
                                                                                                         §§goto(addr356);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr243);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr335:
                                                                                       §§push(this.§ try§);
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          §§push(this.§]!6§);
                                                                                          if(_loc3_ || _loc1_)
                                                                                          {
                                                                                             if(§§pop() != §§pop())
                                                                                             {
                                                                                                if(_loc3_ || this)
                                                                                                {
                                                                                                   §§goto(addr356);
                                                                                                }
                                                                                                §§goto(addr409);
                                                                                             }
                                                                                             §§goto(addr430);
                                                                                          }
                                                                                          §§goto(addr356);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr372);
                                                                                 }
                                                                                 §§goto(addr387);
                                                                              }
                                                                              §§goto(addr306);
                                                                           }
                                                                           §§goto(addr301);
                                                                        }
                                                                        §§goto(addr300);
                                                                     }
                                                                     §§goto(addr387);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(this.§^p§);
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§push(_loc2_);
                                                                        if(_loc3_)
                                                                        {
                                                                           §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                           if(_loc3_ || _loc1_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           §§goto(addr178);
                                                                        }
                                                                        §§goto(addr261);
                                                                     }
                                                                  }
                                                                  §§goto(addr300);
                                                               }
                                                            }
                                                            §§goto(addr178);
                                                         }
                                                         §§goto(addr221);
                                                      }
                                                      §§goto(addr243);
                                                   }
                                                   §§goto(addr193);
                                                }
                                                §§goto(addr243);
                                             }
                                             §§goto(addr76);
                                          }
                                          §§goto(addr243);
                                       }
                                       §§goto(addr88);
                                    }
                                    §§goto(addr221);
                                 }
                                 §§goto(addr63);
                              }
                              §§goto(addr243);
                           }
                           §§goto(addr193);
                        }
                        §§goto(addr243);
                     }
                     §§goto(addr178);
                  }
                  §§goto(addr335);
               }
               _loc1_++;
               if(!_loc4_)
               {
                  continue loop0;
               }
               §§goto(addr409);
            }
         }
      }
      
      protected function §]L§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            while(§§pop() < this.§ U§.length)
            {
               §§push(Number(this.§]!&§.x + this.§ U§[_loc1_].x));
               if(_loc4_)
               {
                  _loc2_ = §§pop();
                  §§push(Number(Math.abs(_loc2_)));
                  if(!_loc3_)
                  {
                     _loc2_ = §§pop();
                     §§push(_loc2_);
                     if(_loc3_ && this)
                     {
                     }
                     addr69:
                     _loc2_ = §§pop();
                     if(_loc4_)
                     {
                        addr72:
                        if(Math.abs(this.§ U§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
                        {
                           §§push(this.§ U§);
                           if(!(_loc3_ && this))
                           {
                              §§push(_loc1_);
                              if(_loc4_)
                              {
                                 §§pop()[§§pop()].mClip.alpha = 1 - _loc2_ / 1000;
                                 addr118:
                                 §§push(this.§ U§);
                                 if(_loc4_)
                                 {
                                    §§push(_loc1_);
                                    if(!(_loc3_ && this))
                                    {
                                       if(§§pop()[§§pop()].mClip.alpha < 1)
                                       {
                                          §§push(this.§ U§);
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             §§push(_loc1_);
                                             if(!_loc3_)
                                             {
                                                addr147:
                                                (§§pop()[§§pop()] as §3!?§).setEnabled(false);
                                                if(_loc4_ || _loc3_)
                                                {
                                                   addr185:
                                                   _loc1_++;
                                                   if(!_loc4_)
                                                   {
                                                      break;
                                                   }
                                                }
                                                continue loop0;
                                             }
                                             §§goto(addr185);
                                          }
                                          else
                                          {
                                             addr172:
                                             §§push(_loc1_);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr172);
                                          §§push(this.§ U§);
                                       }
                                       §§goto(addr172);
                                    }
                                    (§§pop()[§§pop()] as §3!?§).setEnabled(true);
                                    if(!(_loc4_ || _loc3_))
                                    {
                                       continue loop0;
                                    }
                                    §§goto(addr185);
                                 }
                                 §§goto(addr172);
                              }
                              §§goto(addr147);
                           }
                           §§goto(addr172);
                        }
                        §§goto(addr118);
                     }
                     §§goto(addr185);
                  }
                  if(§§pop() > 1000)
                  {
                     if(_loc3_ && _loc3_)
                     {
                        continue loop0;
                     }
                     §§push(1000);
                     if(_loc3_ && this)
                     {
                        continue;
                     }
                     §§goto(addr69);
                     §§push(Number(§§pop()));
                  }
                  §§goto(addr72);
               }
               §§goto(addr69);
            }
            return;
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(§#!4§.stage)
         {
            if(!(_loc2_ && this))
            {
               §#!4§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§-Q§);
            }
         }
         super.deActivate();
         if(!(_loc2_ && _loc2_))
         {
            this.§`!H§();
            if(!(_loc2_ && this))
            {
               §§goto(addr71);
            }
            §§goto(addr81);
         }
         addr71:
         (§#!4§.getItemByName("Button_Back") as §]P§).setComponentVisualState(§9$§.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(!_loc2_)
         {
            addr81:
            §6M§.§>D§ = null;
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§2%§);
            if(_loc1_ || this)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr52:
                     this.§2%§.stop();
                     if(_loc1_ || this)
                     {
                        this.§2%§ = null;
                        if(!(_loc2_ && _loc1_))
                        {
                           addr70:
                           super.cleanup();
                        }
                     }
                     §§goto(addr70);
                  }
                  return;
               }
               §§goto(addr70);
            }
         }
         §§goto(addr52);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'!0§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            §§push(param2.length > 0);
            if(!(_loc5_ && this))
            {
               §§push(§§pop());
               if(_loc6_ || param2)
               {
                  if(§§pop())
                  {
                     if(!(_loc5_ && this))
                     {
                        addr46:
                        §§pop();
                        if(!_loc5_)
                        {
                           §§push(param3 is §?o§);
                           if(_loc6_ || this)
                           {
                              addr59:
                              if(§§pop())
                              {
                                 §§push((param3 as §?o§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection");
                                 if(!(_loc5_ && this))
                                 {
                                    addr76:
                                    if(§§pop() || (param3 as §?o§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15")
                                    {
                                       if(_loc6_)
                                       {
                                          addr91:
                                          if(!this.§-g§)
                                          {
                                             if(_loc6_ || param2)
                                             {
                                                §6M§.§<H§(§6M§.§&q§(param2.toLowerCase()));
                                                if(!_loc6_)
                                                {
                                                }
                                                var _loc4_:* = param2;
                                                addr121:
                                                if(_loc6_ || this)
                                                {
                                                   §§push("BACK");
                                                   if(_loc6_)
                                                   {
                                                      §§push(_loc4_);
                                                      if(_loc6_ || this)
                                                      {
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               addr183:
                                                               §§push(0);
                                                               if(_loc5_)
                                                               {
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr196:
                                                               §§push(1);
                                                               if(!_loc6_)
                                                               {
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push("NEXT");
                                                            if(!_loc5_)
                                                            {
                                                               §§push(_loc4_);
                                                               if(!_loc5_)
                                                               {
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        §§goto(addr196);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr219:
                                                                        §§push(2);
                                                                        if(!(_loc6_ || param2))
                                                                        {
                                                                           addr234:
                                                                        }
                                                                        §§goto(addr239);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push("PREV");
                                                                     if(_loc6_)
                                                                     {
                                                                        addr213:
                                                                        §§push(_loc4_);
                                                                        if(_loc6_)
                                                                        {
                                                                           if(§§pop() === §§pop())
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 §§goto(addr219);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr230:
                                                                              if("FULLSCREEN_BUTTON" !== _loc4_)
                                                                              {
                                                                                 addr239:
                                                                                 switch(§§pop())
                                                                                 {
                                                                                    case 0:
                                                                                       §3!E§.§<!,§("Menu_Back");
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          mNextState = §-7§.§0!7§;
                                                                                          if(_loc5_ && param2)
                                                                                          {
                                                                                             addr143:
                                                                                             break;
                                                                                          }
                                                                                       }
                                                                                       break;
                                                                                    case 1:
                                                                                       this.§7R§();
                                                                                       §§goto(addr143);
                                                                                    case 2:
                                                                                       this.§%i§();
                                                                                       break;
                                                                                    case 3:
                                                                                       §3!E§.§<!,§("Menu_Confirm");
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          AngryBirdsFP11.§@t§.§"&§();
                                                                                          break;
                                                                                       }
                                                                                 }
                                                                                 return;
                                                                                 §§push(4);
                                                                              }
                                                                           }
                                                                           §§goto(addr239);
                                                                           §§goto(addr239);
                                                                        }
                                                                        §§goto(addr230);
                                                                     }
                                                                  }
                                                                  §§goto(addr239);
                                                               }
                                                            }
                                                            §§goto(addr230);
                                                         }
                                                         §§goto(addr239);
                                                      }
                                                      §§goto(addr230);
                                                   }
                                                   §§goto(addr213);
                                                }
                                                §§goto(addr183);
                                                addr121:
                                             }
                                          }
                                          §§goto(addr121);
                                       }
                                       mNextState = StateCutScene.§0!7§;
                                    }
                                 }
                                 §§goto(addr91);
                              }
                              §§goto(addr121);
                           }
                        }
                        §§goto(addr77);
                     }
                     §§goto(addr91);
                  }
                  §§goto(addr59);
               }
               §§goto(addr76);
            }
            §§goto(addr46);
         }
         §§goto(addr77);
      }
      
      protected function §7R§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc2_))
         {
            §3!E§.§<!,§("Menu_Confirm");
            if(!(_loc4_ && this))
            {
               if(!this.§-g§)
               {
                  if(!(_loc4_ && _loc1_))
                  {
                     addr53:
                     var _loc1_:*;
                     §§push((_loc1_ = this).§]!6§);
                     if(_loc3_)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc2_:* = §§pop();
                     if(_loc3_ || this)
                     {
                        _loc1_.§]!6§ = _loc2_;
                     }
                     if(_loc3_ || _loc2_)
                     {
                        this.§;"§(this.§]!6§);
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr53);
      }
      
      protected function §%i§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §3!E§.§<!,§("Menu_Confirm");
            if(_loc4_)
            {
               if(!this.§-g§)
               {
                  if(_loc4_)
                  {
                     var _loc1_:*;
                     §§push((_loc1_ = this).§]!6§);
                     if(!_loc3_)
                     {
                        §§push(§§pop() - 1);
                     }
                     var _loc2_:* = §§pop();
                     if(_loc4_)
                     {
                        _loc1_.§]!6§ = _loc2_;
                     }
                     if(_loc4_ || this)
                     {
                     }
                     §§goto(addr75);
                  }
                  this.§;"§(this.§]!6§);
               }
            }
         }
         addr75:
      }
      
      public function §^d§() : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:Array = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc1_:* = Number(0);
         if(_loc10_)
         {
            this.§`k§ = [];
            if(_loc10_)
            {
               this.§^y§ = [];
               if(_loc10_ || this)
               {
                  this.§]!6§ = §6M§.§6[§(§6M§.§'0§).§8H§;
                  if(_loc10_ || _loc2_)
                  {
                     addr66:
                     this.§&#§ = this.§]!6§;
                     if(!(_loc9_ && this))
                     {
                        addr77:
                        this.§ try§ = this.§]!6§;
                     }
                  }
               }
               var _loc2_:§^h§ = §6M§.§6[§(§6M§.§'0§);
               var _loc3_:* = Number(0);
               while(_loc3_ < _loc2_.pageIndexes.length)
               {
                  _loc4_ = _loc2_.§?h§(_loc2_.pageIndexes[_loc3_]);
                  if(_loc9_ && this)
                  {
                     continue;
                  }
                  §§push(this.§`k§);
                  if(!_loc9_)
                  {
                     §§pop().push(_loc2_.§!f§(_loc3_));
                     if(!_loc9_)
                     {
                        addr119:
                        this.§^y§.push(_loc2_.§1! §(_loc3_));
                        if(!(_loc9_ && _loc1_))
                        {
                           §§push(this.§`!8§(_loc4_,_loc3_,_loc1_,_loc2_));
                           if(!(_loc9_ && _loc1_))
                           {
                              §§push(Number(§§pop()));
                              if(_loc10_)
                              {
                                 _loc1_ = §§pop();
                                 if(!_loc9_)
                                 {
                                    addr149:
                                    §§push(_loc3_);
                                    if(!_loc10_)
                                    {
                                    }
                                    addr166:
                                    _loc3_ = §§pop();
                                 }
                                 continue;
                              }
                              §§push(§§pop() + 1);
                              if(_loc10_)
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           §§goto(addr166);
                        }
                     }
                     §§goto(addr149);
                  }
                  §§goto(addr119);
               }
               if(!(_loc9_ && _loc1_))
               {
                  this.§>!;§ = new §-!$§(this.§`k§[this.§]!6§].red,this.§`k§[this.§]!6§].green,this.§`k§[this.§]!6§].blue,1);
                  if(_loc10_ || _loc1_)
                  {
                     §#!4§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§>!;§);
                     if(!(_loc9_ && _loc2_))
                     {
                        addr222:
                        if(_loc2_.§;!%§)
                        {
                           if(!_loc9_)
                           {
                              addr227:
                              _loc6_ = new (_loc5_ = §,u§.§'[§(_loc2_.§;!%§))();
                              if(_loc10_ || _loc2_)
                              {
                                 §#!4§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
                                 if(!_loc9_)
                                 {
                                    addr258:
                                    if(_loc2_.§<-§)
                                    {
                                       if(_loc10_)
                                       {
                                          addr263:
                                          _loc8_ = new (_loc7_ = §,u§.§'[§(_loc2_.§<-§))();
                                          §#!4§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
                                          if(_loc10_ || _loc3_)
                                          {
                                             §§goto(addr292);
                                          }
                                          §§goto(addr331);
                                       }
                                    }
                                    else
                                    {
                                       §#!4§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
                                    }
                                 }
                                 addr292:
                                 this.§'!2§();
                                 if(_loc10_ || _loc1_)
                                 {
                                    if(§^B§ == StateCutScene.§0!7§)
                                    {
                                       §^B§ = "";
                                       if(_loc10_ || _loc2_)
                                       {
                                          this.§;"§(this.§ try§);
                                          if(!_loc9_)
                                          {
                                             addr331:
                                          }
                                       }
                                       §§goto(addr331);
                                    }
                                    else
                                    {
                                       this.§;"§(this.§]!6§,true);
                                    }
                                 }
                                 return;
                              }
                              §§goto(addr263);
                           }
                        }
                        else
                        {
                           §#!4§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
                        }
                        §§goto(addr258);
                     }
                  }
                  §§goto(addr227);
               }
               §§goto(addr222);
            }
            §§goto(addr77);
         }
         §§goto(addr66);
      }
      
      protected function §`!8§(param1:Array, param2:int, param3:Number, param4:§^h§) : Number
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:* = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §,u§.§'[§(this.§^y§[param2]);
         var _loc7_:* = Number(0);
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            if(_loc14_ || param1)
            {
               §§push(AngryBirdsFP11.sUserProgress.isLevelOpen(_loc10_));
               if(_loc14_ || param3)
               {
                  §§push(Boolean(§§pop()));
               }
               _loc11_ = §§pop();
               if(!(_loc14_ || param1))
               {
                  break;
               }
               _loc12_ = this.§"!-§(_loc10_,_loc11_,_loc6_,_loc7_,param2);
               (_loc13_ = <Button/>).@name = _loc10_;
               §§push(_loc11_);
               if(!(_loc15_ && this))
               {
                  §§push(Boolean(§§pop()));
                  if(_loc14_)
                  {
                     if(!§§pop())
                     {
                        if(!_loc15_)
                        {
                           addr116:
                           §§pop();
                           if(!_loc15_)
                           {
                              §§push(AngryBirdsFP11.§[!2§);
                              if(!(_loc15_ && this))
                              {
                                 §§push(Boolean(§§pop()));
                                 if(!_loc15_)
                                 {
                                    addr131:
                                    if(§§pop())
                                    {
                                       if(_loc14_)
                                       {
                                          _loc13_.@MouseUp = _loc10_;
                                       }
                                       addr160:
                                       addr159:
                                       if(_loc11_)
                                       {
                                          _loc12_.MovieClip_Stars.mouseEnabled = false;
                                          if(_loc15_)
                                          {
                                             continue;
                                          }
                                       }
                                       _loc12_.TextField_LevelNum.text.mouseEnabled = false;
                                       §§push(_loc7_);
                                       if(!_loc15_)
                                       {
                                          §§push(§§pop() + 1);
                                          if(_loc14_)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       _loc7_ = §§pop();
                                       continue;
                                    }
                                    _loc13_.@scaleOnMouseOver = "True";
                                    _loc5_[0].push(new Array(_loc13_,null,_loc12_));
                                 }
                                 §§goto(addr160);
                              }
                              §§goto(addr131);
                           }
                           §§goto(addr159);
                        }
                     }
                     §§goto(addr131);
                  }
                  §§goto(addr160);
               }
               §§goto(addr116);
            }
            break;
         }
         _loc8_ = <Repeater/>;
         §§push(param1);
         if(_loc14_ || param2)
         {
            §§push(§§pop().length == 15);
            if(_loc14_)
            {
               if(!§§pop())
               {
                  if(_loc14_)
                  {
                     §§pop();
                     addr208:
                     §§push(param1.length == 10);
                  }
               }
            }
            if(§§pop())
            {
               if(!_loc15_)
               {
                  _loc8_.@name = "Repeater_LevelSelection15";
                  if(_loc14_)
                  {
                     addr230:
                     _loc8_.@button = this.§^y§[param2];
                  }
                  _loc8_.@enabled = "True";
                  _loc8_.@buttonSelectionType = "NO_SELECTION";
                  if(_loc14_)
                  {
                     addr244:
                     _loc8_.@fromLibrary = "true";
                  }
               }
               var _loc9_:§"M§;
               (_loc9_ = new §"M§(_loc8_,this.§]!&§,null,null)).§"C§(_loc5_);
               if(_loc14_)
               {
                  _loc9_.setVisibility(true);
                  if(_loc14_ || param1)
                  {
                     _loc9_.x += param3;
                     if(!_loc15_)
                     {
                        addr279:
                        this.§]!&§.§?b§(_loc9_);
                        if(_loc14_ || param1)
                        {
                           this.§ U§.push(_loc9_);
                           if(!_loc15_)
                           {
                              addr306:
                              §§push(param3);
                              if(_loc14_)
                              {
                                 §§push(§§pop() + AngryBirdsFP11.screenWidth);
                                 if(!(_loc15_ && param3))
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc14_)
                                    {
                                       addr322:
                                       param3 = §§pop();
                                       §§push(param3);
                                    }
                                 }
                                 return §§pop();
                              }
                              §§goto(addr322);
                           }
                        }
                        §§goto(addr306);
                     }
                     §§goto(addr322);
                  }
                  §§goto(addr306);
               }
               §§goto(addr279);
            }
            else
            {
               _loc8_.@name = "Repeater_LevelSelection";
               if(_loc14_ || param3)
               {
                  §§goto(addr230);
               }
            }
            §§goto(addr244);
         }
         §§goto(addr208);
      }
      
      protected function §"!-§(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:Number = NaN;
         var _loc6_:MovieClip;
         (_loc6_ = new param3()).TextField_LevelNum.text.text = (param4 + 1).toString();
         §§push(param2);
         if(!(_loc8_ && param3))
         {
            if(§§pop())
            {
               if(_loc9_ || param2)
               {
                  _loc6_.gotoAndStop("Open");
                  _loc6_.MovieClip_MEInUse.visible = false;
                  if(_loc8_)
                  {
                  }
                  §§goto(addr127);
               }
               §§push(AngryBirdsFP11.sUserProgress);
               if(_loc9_)
               {
                  §§push(param1);
                  if(_loc9_)
                  {
                     §§push(§§pop().§^z§(§§pop()));
                     if(_loc9_ || param3)
                     {
                        if(§§pop() == 100)
                        {
                           if(!_loc8_)
                           {
                              _loc6_.MovieClip_Feather.gotoAndStop("Visible");
                              if(!(_loc8_ && param2))
                              {
                                 _loc6_.MovieClip_Feather.mouseEnabled = false;
                                 if(_loc9_)
                                 {
                                    addr113:
                                    addr127:
                                    _loc6_.isOpen = param2;
                                    addr130:
                                    addr131:
                                    if(param2)
                                    {
                                       addr136:
                                       _loc7_ = AngryBirdsFP11.sUserProgress.§-U§(param1);
                                       if(_loc9_ || param1)
                                       {
                                          _loc6_.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
                                       }
                                    }
                                    return _loc6_;
                                    addr102:
                                 }
                                 §§goto(addr130);
                              }
                              §§goto(addr127);
                           }
                           §§goto(addr102);
                        }
                        else
                        {
                           _loc6_.MovieClip_Feather.gotoAndStop("Hidden");
                           if(!_loc8_)
                           {
                              _loc6_.MovieClip_Feather.mouseEnabled = false;
                              §§goto(addr113);
                           }
                        }
                        §§goto(addr127);
                     }
                  }
               }
               §§goto(addr136);
            }
            else
            {
               _loc6_.gotoAndStop("Locked");
            }
            §§goto(addr127);
         }
         §§goto(addr131);
      }
      
      protected function §'!2§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(!_loc5_)
         {
            if(this.§ U§.length == 1)
            {
               if(!(_loc5_ && this))
               {
                  return;
               }
            }
         }
         var _loc3_:* = Number(0);
         if(!_loc5_)
         {
            this.§6!D§ = new Dictionary();
         }
         var _loc4_:int = 0;
         while(_loc4_ < this.§ U§.length)
         {
            _loc1_ = §,u§.§'[§("Button_Dot");
            _loc2_ = new _loc1_();
            if(_loc6_ || _loc3_)
            {
               _loc2_.x = AngryBirdsFP11.screenWidth / 2 + _loc3_ - this.§ U§.length * _loc2_.width / 2;
               _loc2_.y = (§#!4§.getItemByName("Button_Next") as §]P§).y - _loc2_.height / 2;
               if(_loc4_ == this.§]!6§)
               {
                  if(!_loc6_)
                  {
                     continue;
                  }
                  _loc2_.gotoAndStop("Selected");
                  if(_loc6_)
                  {
                     (§#!4§.getItemByName("TextField_LevelNumberSmall") as § p§).x = _loc2_.x;
                     (§#!4§.getItemByName("TextField_LevelNumberSmall") as § p§).y = _loc2_.y - _loc2_.height;
                     addr127:
                     this.§4!C§(_loc4_);
                     if(!_loc6_)
                     {
                     }
                     this.§#$§.mClip.addChild(_loc2_);
                     this.§6!D§[_loc2_] = _loc4_;
                     this.§^p§.push(_loc2_);
                     addr138:
                     §§push(_loc3_);
                     if(_loc6_)
                     {
                        §§push(Number(§§pop() + _loc2_.width));
                     }
                     _loc3_ = §§pop();
                     _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§7!6§);
                     if(!_loc5_)
                     {
                        addr178:
                        _loc2_.buttonMode = true;
                        if(_loc5_ && _loc2_)
                        {
                           continue;
                        }
                     }
                     _loc4_++;
                     continue;
                  }
               }
               else
               {
                  _loc2_.gotoAndStop("UnSelected");
                  if(!_loc5_)
                  {
                     §§goto(addr138);
                  }
               }
               §§goto(addr178);
            }
            §§goto(addr127);
         }
         if(_loc6_)
         {
            §§push(this.§ U§.length * _loc2_.width);
            if(!_loc5_)
            {
               §§push(§§pop() / 2);
               if(!(_loc5_ && this))
               {
                  §§push(§§pop() + _loc2_.width * 1.5);
                  if(_loc6_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
            }
            _loc3_ = §§pop();
            if(!(_loc5_ && _loc3_))
            {
               (§#!4§.getItemByName("Button_Next") as §]P§).x = AngryBirdsFP11.screenWidth / 2;
               if(_loc6_ || _loc1_)
               {
                  §§goto(addr246);
               }
               §§goto(addr291);
            }
            §§goto(addr258);
         }
         addr246:
         (§#!4§.getItemByName("Button_Prev") as §]P§).x = AngryBirdsFP11.screenWidth / 2;
         if(_loc6_)
         {
            (§#!4§.getItemByName("Button_Next") as §]P§).x = (§#!4§.getItemByName("Button_Next") as §]P§).x + (_loc3_ + 10);
            addr258:
            if(_loc6_ || _loc2_)
            {
               addr291:
               (§#!4§.getItemByName("Button_Prev") as §]P§).x = (§#!4§.getItemByName("Button_Prev") as §]P§).x - (_loc3_ + 10);
            }
         }
      }
      
      protected function §`!H§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(this.§>!;§);
            if(!_loc2_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr39);
            }
            §§pop().clean();
         }
         addr39:
         if(_loc3_ || _loc3_)
         {
            §§push(this.§>!;§);
         }
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            if(_loc1_ < this.§^p§.length)
            {
               §§push(this.§#$§);
               if(_loc3_ || this)
               {
                  if(!§§pop().mClip.contains(this.§^p§[_loc1_]))
                  {
                     continue;
                  }
                  if(!_loc2_)
                  {
                     this.§^p§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§7!6§);
                     §§push(this.§#$§);
                  }
                  else
                  {
                     addr116:
                     loop1:
                     while(true)
                     {
                        §§push(this.§]!&§);
                        while(true)
                        {
                           if(§§pop().mClip.numChildren <= 0)
                           {
                              this.§ U§ = [];
                              break loop0;
                           }
                           §§push(this.§]!&§);
                           if(!_loc2_)
                           {
                              §§pop().mClip.removeChildAt(0);
                              if(_loc2_)
                              {
                                 break loop0;
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
               }
               §§pop().mClip.removeChild(this.§^p§[_loc1_]);
               if(!(_loc3_ || _loc3_))
               {
                  break;
               }
               continue;
            }
            this.§^p§ = [];
            §§goto(addr116);
         }
      }
      
      protected function §7!6§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(!this.§-g§)
            {
               if(_loc3_ || param1)
               {
                  this.§;"§(this.§6!D§[param1.target]);
               }
            }
         }
      }
      
      protected function §3x§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(!this.§-g§)
            {
               if(_loc3_ || _loc2_)
               {
                  mNextState = §!,§.§0!7§;
               }
            }
         }
      }
      
      protected function §;"§(param1:int, param2:Boolean = false) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         this.§-g§ = true;
         §§push(param1);
         if(!(_loc7_ && param1))
         {
            if(§§pop() > this.§ U§.length - 1)
            {
               §§push(this.§ U§);
               if(!(_loc7_ && param2))
               {
                  §§push(§§pop().length - 1);
                  if(!_loc7_)
                  {
                     §§push(int(§§pop()));
                     if(!(_loc7_ && this))
                     {
                        addr53:
                        param1 = §§pop();
                        addr71:
                        this.§]!6§ = param1;
                        if(_loc6_ || this)
                        {
                           §§push(this.§]!6§);
                           if(!(_loc7_ && param2))
                           {
                              §§push(this.§ try§);
                              if(_loc6_ || param1)
                              {
                                 if(§§pop() > §§pop())
                                 {
                                    this.§&#§ = this.§ try§ + 1;
                                    if(!_loc7_)
                                    {
                                       addr119:
                                       §§push(-this.§ U§[param1].x);
                                       if(!(_loc7_ && param2))
                                       {
                                          addr143:
                                          var _loc3_:Number = §§pop();
                                          var _loc4_:Number = this.§ U§[param1].x + this.§]!&§.x;
                                          var _loc5_:*;
                                          §§push(_loc5_ = Number(Math.abs(_loc4_)));
                                          if(!(_loc7_ && _loc3_))
                                          {
                                             §§push(§§pop() / 1024);
                                             if(_loc6_)
                                             {
                                                addr172:
                                                §§push(Number(§§pop()));
                                                if(_loc6_ || param2)
                                                {
                                                   addr180:
                                                   §§push(§§pop());
                                                   if(_loc6_)
                                                   {
                                                      _loc5_ = §§pop();
                                                      addr195:
                                                      if(!(_loc7_ && _loc3_))
                                                      {
                                                         §§push(§7,§);
                                                      }
                                                      _loc5_ = Number(§§pop());
                                                      §§push(this.§2%§);
                                                      if(!(_loc7_ && _loc3_))
                                                      {
                                                         if(§§pop() != null)
                                                         {
                                                            §§push(this.§2%§);
                                                            if(_loc6_ || _loc3_)
                                                            {
                                                               §§pop().stop();
                                                               if(_loc6_ || param2)
                                                               {
                                                                  addr225:
                                                                  §§push(param2);
                                                                  if(_loc6_ || this)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        this.§]!&§.x = _loc3_;
                                                                        addr277:
                                                                        §§push(param2);
                                                                     }
                                                                     else
                                                                     {
                                                                        this.§2%§ = §%!>§.§-]§.§?U§(this.§]!&§,{"x":_loc3_},null,_loc5_,§%!>§.§4G§);
                                                                        §§push(this.§2%§);
                                                                        if(_loc6_)
                                                                        {
                                                                           §§pop().onComplete = this.§?S§;
                                                                           if(!(_loc7_ && param1))
                                                                           {
                                                                              §§goto(addr277);
                                                                           }
                                                                           addr279:
                                                                           this.§?S§();
                                                                           §§goto(addr285);
                                                                        }
                                                                        §§goto(addr284);
                                                                     }
                                                                     §§goto(addr284);
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     §§goto(addr279);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr284:
                                                                     §§pop().play();
                                                                     addr285:
                                                                     return;
                                                                     §§push(this.§2%§);
                                                                  }
                                                               }
                                                               §§goto(addr279);
                                                            }
                                                            §§goto(addr284);
                                                         }
                                                         §§goto(addr225);
                                                      }
                                                      §§goto(addr284);
                                                   }
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc7_)
                                                   {
                                                   }
                                                }
                                                §§goto(addr195);
                                             }
                                             §§goto(addr180);
                                          }
                                          §§goto(addr172);
                                       }
                                       §§goto(addr143);
                                    }
                                    else
                                    {
                                       addr114:
                                       this.§&#§ = this.§ try§ - 1;
                                       §§goto(addr119);
                                    }
                                 }
                                 else
                                 {
                                    §§push(this.§]!6§);
                                 }
                                 §§goto(addr119);
                              }
                              addr113:
                              if(§§pop() < §§pop())
                              {
                                 §§goto(addr114);
                              }
                              §§goto(addr119);
                           }
                           addr111:
                           §§goto(addr113);
                           §§push(this.§ try§);
                        }
                        §§goto(addr119);
                     }
                     else
                     {
                        addr58:
                        §§push(0);
                        if(!_loc7_)
                        {
                           if(§§pop() < §§pop())
                           {
                              §§push(0);
                              if(!(_loc7_ && _loc3_))
                              {
                                 addr70:
                                 param1 = §§pop();
                                 §§goto(addr71);
                              }
                              §§goto(addr111);
                           }
                           §§goto(addr71);
                        }
                     }
                     §§goto(addr113);
                  }
                  §§goto(addr143);
               }
               §§goto(addr119);
            }
            else
            {
               §§push(param1);
               if(_loc6_)
               {
                  §§goto(addr58);
               }
            }
            §§goto(addr70);
         }
         §§goto(addr53);
      }
      
      protected function §?S§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            while(true)
            {
               if(§§pop() >= this.§^p§.length)
               {
                  if(!_loc3_)
                  {
                     break;
                  }
                  §§goto(addr108);
               }
               §§push(_loc1_);
               if(!_loc2_)
               {
                  continue;
               }
               if(§§pop() == this.§]!6§)
               {
                  if(_loc2_)
                  {
                     §§push(this.§^p§);
                     if(_loc2_)
                     {
                        §§push(_loc1_);
                        if(!_loc3_)
                        {
                           §§pop()[§§pop()].gotoAndStop("Selected");
                           if(!(_loc3_ && this))
                           {
                              (§#!4§.getItemByName("TextField_LevelNumberSmall") as § p§).x = this.§^p§[_loc1_].x;
                              this.§4!C§(_loc1_);
                           }
                           break;
                        }
                        addr83:
                        §§pop()[§§pop()].gotoAndStop("UnSelected");
                        if(!_loc2_)
                        {
                           continue loop0;
                        }
                        _loc1_++;
                        if(_loc3_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                     addr82:
                     §§push(_loc1_);
                     §§goto(addr83);
                  }
                  break;
               }
               §§push(this.§^p§);
               §§goto(addr82);
            }
            this.§-g§ = false;
            §6M§.§6[§(§6M§.§'0§).§8H§ = this.§]!6§;
            addr108:
            return;
         }
      }
      
      protected function §4!C§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            (§#!4§.getItemByName("TextField_LevelNumberSmall") as § p§).§!"§.text = §6M§.§6[§(§6M§.§'0§).pageIndexes[param1];
         }
      }
   }
}
