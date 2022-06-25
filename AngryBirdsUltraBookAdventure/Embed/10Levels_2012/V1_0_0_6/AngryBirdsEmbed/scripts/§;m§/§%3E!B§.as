package §;m§
{
   import §#h§.§ !H§;
   import §'o§.§`K§;
   import §+!?§.§"h§;
   import §0w§.§0#§;
   import §0w§.§06§;
   import §4C§.§";§;
   import §4C§.§->§;
   import §4C§.§1!=§;
   import §4C§.§6<§;
   import §4C§.§<k§;
   import §6H§.§>3§;
   import §=!B§.§59§;
   import §=!B§.§=e§;
   import §?!+§.§,!G§;
   import §?!+§.§3_§;
   import §`!0§.§"?§;
   import §`!0§.§4Y§;
   import §`!0§.§[4§;
   import com.rovio.assets.§!Q§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §>!B§ extends §>3§
   {
      
      public static const §-!A§:String = "LevelSelectionState";
      
      protected static const §<!@§:Number = 0.5;
      
      public static var §@!D§:String = "";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §-!A§ = "LevelSelectionState";
            if(!_loc1_)
            {
               addr24:
               §<!@§ = 0.5;
               if(!_loc1_)
               {
                  §@!D§ = "";
               }
            }
            return;
         }
         §§goto(addr24);
      }
      
      protected var §4=§:Boolean = false;
      
      protected var §>6§:§1!=§;
      
      protected var §`p§:§1!=§;
      
      protected var §,g§:MovieClip;
      
      protected var §!V§:Array;
      
      protected var §4!;§:Array;
      
      protected var §1Q§:int = 0;
      
      protected var §3$§:int = 0;
      
      protected var §<,§:int = 0;
      
      protected var §,'§:Boolean = false;
      
      protected var §]!0§:§3_§ = null;
      
      protected var § "§:Dictionary;
      
      protected var §>u§:Array;
      
      protected var § M§:Array;
      
      protected var §=@§:§`K§;
      
      protected var §^!B§:Number = 0;
      
      public function §>!B§(param1:Boolean = false, param2:String = "LevelSelectionState")
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
               this.§'?§();
            }
         }
         loop0:
         while(true)
         {
            §§push(this.§`p§);
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
               §§push(this.§`p§);
               if(_loc2_ || this)
               {
                  continue loop0;
               }
            }
            addr74:
            this.§4!;§ = [];
            if(_loc2_)
            {
               this.§!V§ = [];
            }
            addr82:
            return;
         }
      }
      
      protected function §'?§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §-f§ = new §0#§(this);
            if(!_loc1_)
            {
               §-f§.init(§06§.§-`§.Views.View_LevelSelection[0]);
               if(_loc2_ || this)
               {
                  this.§`p§ = §-f§.getItemByName("Container_LevelRepeaters") as §1!=§;
                  if(_loc1_ && _loc2_)
                  {
                  }
                  §§goto(addr87);
               }
            }
            this.§>6§ = §-f§.getItemByName("Container_LevelSelection") as §1!=§;
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
            §§push(§"h§.§1C§);
            if(_loc1_)
            {
               §§pop().clearLevel();
               if(_loc1_)
               {
                  addr29:
                  §"h§.§1C§.§]!!§(false);
                  this.§@<§();
                  if(!_loc2_)
                  {
                     this.§'!!§();
                     if(this.§4!;§.length == 1)
                     {
                        (§-f§.getItemByName("Button_Prev") as §6<§).setVisibility(false);
                        (§-f§.getItemByName("Button_Next") as §6<§).setVisibility(false);
                        (§-f§.getItemByName("TextField_LevelNumberSmall") as §<k§).setVisibility(false);
                        addr114:
                        this.§^!B§ = this.§`p§.x;
                     }
                     else
                     {
                        (§-f§.getItemByName("Button_Prev") as §6<§).setVisibility(true);
                        if(_loc1_ || _loc2_)
                        {
                           (§-f§.getItemByName("Button_Next") as §6<§).setVisibility(true);
                           if(!_loc2_)
                           {
                              addr107:
                              (§-f§.getItemByName("TextField_LevelNumberSmall") as §<k§).setVisibility(true);
                              §§goto(addr114);
                           }
                           §§goto(addr124);
                        }
                     }
                     if(§-f§.stage)
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
         §-f§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§!!3§);
      }
      
      protected function §'!!§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            AngryBirdsFP11.§'!!§();
         }
      }
      
      protected function §!!3§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(this.§4!;§.length <= 1)
         {
            if(_loc2_)
            {
               return;
            }
            addr48:
            this.§>!3§();
         }
         else if(param1.keyCode == Keyboard.LEFT)
         {
            if(_loc2_ || _loc2_)
            {
               §§goto(addr48);
            }
            else
            {
               addr56:
               this.§,I§();
            }
         }
         else if(param1.keyCode == Keyboard.RIGHT)
         {
            §§goto(addr56);
         }
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
         if(!_loc3_)
         {
            §§push(_loc2_);
            if(_loc4_ || param1)
            {
               if(§§pop() != §>3§.STATE_STATUS_RUNNING)
               {
                  if(_loc4_)
                  {
                     §§goto(addr60);
                  }
               }
               else
               {
                  this.§#v§();
                  if(_loc4_)
                  {
                     addr65:
                     this.§-9§();
                     if(!_loc3_)
                     {
                        if(mNextState.length > 0)
                        {
                           if(!_loc3_)
                           {
                              §§goto(addr75);
                           }
                        }
                     }
                  }
                  return §>3§.STATE_STATUS_RUNNING;
               }
               addr75:
               return §>3§.STATE_STATUS_COMPLETED;
            }
            addr60:
            return _loc2_;
         }
         §§goto(addr65);
      }
      
      protected function §#v§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(!(_loc4_ || this))
            {
               break;
            }
            §§push(this.§!V§);
            loop1:
            while(true)
            {
               if(§§pop() >= §§pop().length)
               {
                  addr373:
                  §§push(this.§<,§);
                  §§push(this.§1Q§);
                  if(!(_loc3_ && _loc3_))
                  {
                     if(§§pop() != §§pop())
                     {
                        if(_loc4_ || _loc2_)
                        {
                           §§push(this.§1Q§);
                           §§push(this.§<,§);
                           if(_loc4_ || _loc1_)
                           {
                              if(§§pop() <= §§pop())
                              {
                                 §§push(this.§1Q§);
                                 break loop0;
                              }
                              addr402:
                              this.§3$§ = this.§<,§ + 1;
                              if(!(_loc3_ && _loc1_))
                              {
                                 addr431:
                                 if(this.§>u§[this.§3$§])
                                 {
                                    addr447:
                                    this.§=@§.§69§(this.§>u§[this.§3$§].red,this.§>u§[this.§3$§].green,this.§>u§[this.§3$§].blue);
                                    if(!_loc3_)
                                    {
                                       addr470:
                                       this.§^!B§ = this.§`p§.x;
                                    }
                                    return;
                                 }
                                 addr415:
                              }
                           }
                           addr420:
                           if(§§pop() < §§pop())
                           {
                              this.§3$§ = this.§<,§ - 1;
                              addr426:
                           }
                           else
                           {
                              this.§3$§ = this.§<,§;
                           }
                        }
                        §§goto(addr431);
                     }
                     §§goto(addr470);
                  }
                  §§goto(addr420);
               }
               else
               {
                  §§push(this.§`p§);
                  if(_loc4_)
                  {
                     §§push(-§§pop().x);
                     if(_loc4_)
                     {
                        §§push(this.§4!;§);
                        if(!_loc3_)
                        {
                           §§push(_loc1_);
                           if(_loc4_)
                           {
                              §§push(§§pop() >= §§pop()[§§pop()].x);
                              if(!_loc3_)
                              {
                                 §§push(§§pop());
                                 if(!_loc3_)
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc3_)
                                       {
                                          addr49:
                                          §§pop();
                                          if(!(_loc3_ && _loc1_))
                                          {
                                             §§push(this.§^!B§);
                                             if(!_loc3_)
                                             {
                                                §§push(-§§pop());
                                                if(_loc4_ || _loc1_)
                                                {
                                                   addr69:
                                                   §§push(this.§4!;§);
                                                   if(_loc4_)
                                                   {
                                                      §§push(_loc1_);
                                                      if(!(_loc3_ && _loc1_))
                                                      {
                                                         §§push(§§pop() < §§pop()[§§pop()].x);
                                                         if(!(_loc3_ && _loc1_))
                                                         {
                                                            addr91:
                                                            if(§§pop())
                                                            {
                                                               _loc2_ = 0;
                                                               while(true)
                                                               {
                                                                  §§push(_loc2_);
                                                                  if(_loc4_)
                                                                  {
                                                                     §§push(this.§!V§);
                                                                     if(!(_loc4_ || _loc3_))
                                                                     {
                                                                        continue loop1;
                                                                     }
                                                                     if(§§pop() >= §§pop().length)
                                                                     {
                                                                        if(_loc4_ || _loc1_)
                                                                        {
                                                                           addr152:
                                                                           this.§<,§ = _loc1_;
                                                                           if(_loc4_ || this)
                                                                           {
                                                                              §§push(this.§!V§);
                                                                              if(!_loc3_)
                                                                              {
                                                                                 §§push(_loc1_);
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    §§pop()[§§pop()].gotoAndStop("Selected");
                                                                                    if(_loc4_ || this)
                                                                                    {
                                                                                       (§-f§.getItemByName("TextField_LevelNumberSmall") as §<k§).x = this.§!V§[_loc1_].x;
                                                                                       this.§^!=§(_loc1_);
                                                                                       addr193:
                                                                                       §§push(-this.§`p§.x);
                                                                                       if(_loc4_ || _loc1_)
                                                                                       {
                                                                                          §§push(this.§4!;§);
                                                                                          if(!(_loc3_ && _loc1_))
                                                                                          {
                                                                                             addr213:
                                                                                             §§push(_loc1_);
                                                                                             if(_loc4_ || _loc3_)
                                                                                             {
                                                                                                addr221:
                                                                                                §§push(§§pop() <= §§pop()[§§pop()].x);
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   addr237:
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         if(_loc4_ || _loc1_)
                                                                                                         {
                                                                                                            addr248:
                                                                                                            §§push(this.§^!B§);
                                                                                                            if(_loc4_ || this)
                                                                                                            {
                                                                                                               addr258:
                                                                                                               if(-§§pop() <= this.§4!;§[_loc1_].x)
                                                                                                               {
                                                                                                                  break loop1;
                                                                                                               }
                                                                                                               _loc2_ = 0;
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  loop2:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc2_);
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        §§push(this.§!V§);
                                                                                                                        if(!(_loc4_ || _loc3_))
                                                                                                                        {
                                                                                                                           continue loop1;
                                                                                                                        }
                                                                                                                        if(§§pop() >= §§pop().length)
                                                                                                                        {
                                                                                                                           if(!(_loc3_ && this))
                                                                                                                           {
                                                                                                                              this.§<,§ = _loc1_;
                                                                                                                              §§push(this.§!V§);
                                                                                                                              if(!(_loc3_ && _loc3_))
                                                                                                                              {
                                                                                                                                 §§push(_loc1_);
                                                                                                                                 if(_loc4_)
                                                                                                                                 {
                                                                                                                                    addr332:
                                                                                                                                    §§pop()[§§pop()].gotoAndStop("Selected");
                                                                                                                                    if(_loc4_)
                                                                                                                                    {
                                                                                                                                       addr337:
                                                                                                                                       (§-f§.getItemByName("TextField_LevelNumberSmall") as §<k§).x = this.§!V§[_loc1_].x;
                                                                                                                                       this.§^!=§(_loc1_);
                                                                                                                                       if(!(_loc3_ && this))
                                                                                                                                       {
                                                                                                                                          break loop1;
                                                                                                                                       }
                                                                                                                                       §§goto(addr426);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr402);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr431);
                                                                                                                           }
                                                                                                                           §§goto(addr470);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§push(this.§!V§);
                                                                                                                           if(_loc4_ || this)
                                                                                                                           {
                                                                                                                              addr280:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc2_);
                                                                                                                                 if(!_loc3_)
                                                                                                                                 {
                                                                                                                                    §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                                                                                    if(!(_loc3_ && _loc1_))
                                                                                                                                    {
                                                                                                                                       _loc2_++;
                                                                                                                                       if(_loc4_)
                                                                                                                                       {
                                                                                                                                          continue loop2;
                                                                                                                                       }
                                                                                                                                       §§goto(addr415);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr426);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr332);
                                                                                                                                 }
                                                                                                                                 §§goto(addr431);
                                                                                                                              }
                                                                                                                              addr280:
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr431);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr373);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr431);
                                                                                                                  addr296:
                                                                                                               }
                                                                                                               §§goto(addr431);
                                                                                                            }
                                                                                                            §§goto(addr258);
                                                                                                         }
                                                                                                         §§goto(addr402);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr258);
                                                                                    }
                                                                                    §§goto(addr337);
                                                                                 }
                                                                                 §§goto(addr332);
                                                                              }
                                                                              §§goto(addr280);
                                                                           }
                                                                           §§goto(addr248);
                                                                        }
                                                                        §§goto(addr431);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(this.§!V§);
                                                                        if(_loc4_ || _loc2_)
                                                                        {
                                                                           §§push(_loc2_);
                                                                           if(!(_loc3_ && _loc1_))
                                                                           {
                                                                              §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                              if(_loc4_ || this)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              §§goto(addr152);
                                                                           }
                                                                           §§goto(addr431);
                                                                        }
                                                                     }
                                                                     §§goto(addr280);
                                                                  }
                                                                  §§goto(addr373);
                                                               }
                                                            }
                                                            §§goto(addr193);
                                                         }
                                                         §§goto(addr258);
                                                      }
                                                      §§goto(addr221);
                                                   }
                                                   §§goto(addr213);
                                                }
                                             }
                                             §§goto(addr258);
                                          }
                                          §§goto(addr296);
                                       }
                                       §§goto(addr258);
                                    }
                                    §§goto(addr91);
                                 }
                                 §§goto(addr237);
                              }
                              §§goto(addr49);
                           }
                           §§goto(addr221);
                        }
                        §§goto(addr213);
                     }
                     §§goto(addr69);
                  }
                  §§goto(addr193);
               }
            }
            _loc1_++;
         }
         §§goto(addr420);
         §§push(this.§<,§);
      }
      
      protected function §-9§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            while(true)
            {
               if(§§pop() < this.§4!;§.length)
               {
                  §§push(Number(this.§`p§.x + this.§4!;§[_loc1_].x));
                  if(_loc3_)
                  {
                     _loc2_ = §§pop();
                     if(!_loc3_)
                     {
                        continue loop0;
                     }
                     §§push(Number(Math.abs(_loc2_)));
                     if(!(_loc4_ && _loc3_))
                     {
                        _loc2_ = §§pop();
                        if(!_loc4_)
                        {
                           §§push(_loc2_);
                           if(_loc3_)
                           {
                              addr54:
                              if(§§pop() > 1000)
                              {
                                 if(_loc4_)
                                 {
                                    §§goto(addr175);
                                 }
                                 §§push(1000);
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    addr67:
                                    _loc2_ = Number(§§pop());
                                    break;
                                 }
                                 continue;
                              }
                              break;
                           }
                           §§goto(addr67);
                        }
                        addr160:
                        continue loop0;
                     }
                     §§goto(addr67);
                  }
                  §§goto(addr54);
               }
               addr175:
               return;
            }
            if(Math.abs(this.§4!;§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
            {
               §§push(this.§4!;§);
               if(!_loc4_)
               {
                  §§push(_loc1_);
                  if(_loc3_)
                  {
                     §§pop()[§§pop()].mClip.alpha = 1 - _loc2_ / 1000;
                     addr109:
                     §§push(this.§4!;§);
                     if(!(_loc4_ && _loc2_))
                     {
                        §§push(_loc1_);
                        if(_loc3_)
                        {
                           if(§§pop()[§§pop()].mClip.alpha < 1)
                           {
                              §§push(this.§4!;§);
                              if(!(_loc4_ && _loc3_))
                              {
                                 addr135:
                                 §§push(_loc1_);
                                 if(!_loc4_)
                                 {
                                    addr148:
                                    (§§pop()[§§pop()] as §4Y§).setEnabled(false);
                                    if(!(_loc3_ || _loc3_))
                                    {
                                       continue;
                                    }
                                    §§goto(addr160);
                                 }
                              }
                              else
                              {
                                 addr163:
                                 §§push(_loc1_);
                              }
                           }
                           else
                           {
                              §§goto(addr163);
                              §§push(this.§4!;§);
                           }
                           §§goto(addr163);
                        }
                        (§§pop()[§§pop()] as §4Y§).setEnabled(true);
                        continue;
                     }
                     §§goto(addr135);
                  }
                  §§goto(addr148);
               }
               §§goto(addr163);
            }
            §§goto(addr109);
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(§-f§.stage)
         {
            if(_loc2_)
            {
               §-f§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§!!3§);
               addr39:
               super.deActivate();
               if(_loc2_)
               {
                  this.§0!!§();
               }
               (§-f§.getItemByName("Button_Back") as §6<§).setComponentVisualState(§[4§.COMPONENT_STATE_ACTIVE_DEFAULT);
               §59§.§72§ = null;
            }
            return;
         }
         §§goto(addr39);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§]!0§);
            if(_loc2_ || _loc1_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr76);
            }
            §§pop().stop();
            if(!_loc1_)
            {
               this.§]!0§ = null;
               if(!(_loc1_ && this))
               {
                  §§goto(addr76);
               }
            }
            §§goto(addr76);
         }
         addr76:
         if(_loc2_ || this)
         {
            §§push(this.§]!0§);
         }
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§"?§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param2.length > 0);
         if(!(_loc6_ && this))
         {
            §§push(§§pop());
            if(!_loc6_)
            {
               if(§§pop())
               {
                  if(_loc5_ || this)
                  {
                     §§pop();
                     §§push(param3 is §";§);
                  }
               }
               if(§§pop())
               {
                  if(!_loc6_)
                  {
                     addr54:
                     §§push((param3 as §";§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection");
                     if(!((param3 as §";§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection"))
                     {
                        addr55:
                        §§pop();
                        if(!(_loc6_ && param2))
                        {
                           §§push((param3 as §";§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15");
                           if(_loc5_ || param3)
                           {
                              addr78:
                              if(§§pop())
                              {
                                 if(!_loc6_)
                                 {
                                    addr83:
                                    if(!this.§,'§)
                                    {
                                       if(_loc5_ || this)
                                       {
                                       }
                                       addr104:
                                       mNextState = StateCutScene.§-!A§;
                                       var _loc4_:* = param2;
                                       if(!_loc6_)
                                       {
                                          §§push("BACK");
                                          if(!(_loc6_ && this))
                                          {
                                             §§push(_loc4_);
                                             if(_loc5_)
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!(_loc6_ && param1))
                                                   {
                                                      addr187:
                                                      §§push(0);
                                                      if(!_loc5_)
                                                      {
                                                         addr238:
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr228:
                                                      §§push(2);
                                                      if(!_loc5_)
                                                      {
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   §§push("NEXT");
                                                   if(_loc5_)
                                                   {
                                                      §§push(_loc4_);
                                                      if(!_loc6_)
                                                      {
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               §§push(1);
                                                               if(_loc6_)
                                                               {
                                                               }
                                                            }
                                                            §§goto(addr243);
                                                         }
                                                         else
                                                         {
                                                            §§push("PREV");
                                                            if(!_loc6_)
                                                            {
                                                               §§push(_loc4_);
                                                               if(!(_loc6_ && param2))
                                                               {
                                                                  addr225:
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§goto(addr228);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr234:
                                                                     if("FULLSCREEN_BUTTON" !== _loc4_)
                                                                     {
                                                                        addr243:
                                                                        switch(§§pop())
                                                                        {
                                                                           case 0:
                                                                              § !H§.§ !%§("Menu_Back");
                                                                              if(!(_loc6_ && param1))
                                                                              {
                                                                                 mNextState = §8R§.§-!A§;
                                                                                 break;
                                                                              }
                                                                              addr161:
                                                                              break;
                                                                           case 1:
                                                                              this.§,I§();
                                                                              if(_loc5_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              break;
                                                                           case 2:
                                                                              this.§>!3§();
                                                                              break;
                                                                           case 3:
                                                                              § !H§.§ !%§("Menu_Confirm");
                                                                              if(!_loc6_)
                                                                              {
                                                                                 AngryBirdsFP11.§0P§.§<h§();
                                                                                 if(_loc5_ || param1)
                                                                                 {
                                                                                    §§goto(addr161);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                        }
                                                                        return;
                                                                        §§push(4);
                                                                     }
                                                                  }
                                                                  §§goto(addr243);
                                                               }
                                                            }
                                                            §§goto(addr234);
                                                         }
                                                         §§goto(addr243);
                                                      }
                                                   }
                                                   §§goto(addr234);
                                                }
                                                §§goto(addr243);
                                             }
                                             §§goto(addr225);
                                          }
                                          §§goto(addr234);
                                       }
                                       §§goto(addr187);
                                       addr118:
                                    }
                                    §§goto(addr118);
                                 }
                                 §59§.§6!9§(§59§.§7?§(param2.toLowerCase()));
                                 if(_loc5_ || this)
                                 {
                                 }
                              }
                              §§goto(addr104);
                           }
                           §§goto(addr83);
                        }
                        §§goto(addr104);
                     }
                     §§goto(addr78);
                  }
               }
               §§goto(addr104);
            }
            §§goto(addr54);
         }
         §§goto(addr55);
      }
      
      protected function §,I§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            § !H§.§ !%§("Menu_Confirm");
            if(_loc3_ || _loc2_)
            {
               if(!this.§,'§)
               {
                  if(_loc3_)
                  {
                     addr43:
                     var _loc1_:*;
                     §§push((_loc1_ = this).§1Q§);
                     if(_loc3_ || this)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc2_:* = §§pop();
                     if(!_loc4_)
                     {
                        _loc1_.§1Q§ = _loc2_;
                     }
                     if(_loc3_ || this)
                     {
                        addr80:
                        this.§0e§(this.§1Q§);
                     }
                  }
               }
               return;
            }
            §§goto(addr43);
         }
         §§goto(addr80);
      }
      
      protected function §>!3§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            § !H§.§ !%§("Menu_Confirm");
            if(!_loc4_)
            {
               addr33:
               if(!this.§,'§)
               {
                  if(_loc3_)
                  {
                     var _loc1_:*;
                     §§push((_loc1_ = this).§1Q§);
                     if(_loc3_ || this)
                     {
                        §§push(§§pop() - 1);
                     }
                     var _loc2_:* = §§pop();
                     if(!_loc4_)
                     {
                        _loc1_.§1Q§ = _loc2_;
                     }
                     if(_loc4_)
                     {
                     }
                     §§goto(addr74);
                  }
                  this.§0e§(this.§1Q§);
               }
            }
            addr74:
            return;
         }
         §§goto(addr33);
      }
      
      public function §@<§() : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:Array = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc1_:* = Number(0);
         if(!_loc10_)
         {
            this.§>u§ = [];
            if(!(_loc10_ && _loc2_))
            {
               this.§ M§ = [];
               if(_loc9_ || this)
               {
                  this.§1Q§ = §59§.§+!!§(§59§.§2>§).§6!%§;
                  if(_loc9_ || this)
                  {
                     this.§3$§ = this.§1Q§;
                     if(_loc9_)
                     {
                        addr76:
                        this.§<,§ = this.§1Q§;
                     }
                  }
                  var _loc2_:§=e§ = §59§.§+!!§(§59§.§2>§);
                  var _loc3_:Number = 0;
                  while(_loc3_ < _loc2_.pageIndexes.length)
                  {
                     _loc4_ = _loc2_.§3p§(_loc2_.pageIndexes[_loc3_]);
                     if(_loc9_ || _loc1_)
                     {
                        §§push(this.§>u§);
                        if(!_loc10_)
                        {
                           §§pop().push(_loc2_.§&!;§(_loc3_));
                           addr124:
                           if(_loc9_)
                           {
                              §§push(this.§ M§);
                           }
                           §§push(this.§00§(_loc4_,_loc3_,_loc1_,_loc2_));
                           if(!_loc10_)
                           {
                              §§push(Number(§§pop()));
                              if(!_loc10_)
                              {
                                 _loc1_ = §§pop();
                                 if(_loc9_ || _loc1_)
                                 {
                                    addr143:
                                    §§push(_loc3_);
                                    if(_loc9_ || _loc1_)
                                    {
                                    }
                                    addr170:
                                    _loc3_ = §§pop();
                                    addr169:
                                 }
                                 continue;
                              }
                              §§push(§§pop() + 1);
                              if(!(_loc10_ && _loc1_))
                              {
                                 §§goto(addr169);
                              }
                           }
                           §§goto(addr170);
                        }
                        §§pop().push(_loc2_.§;!;§(_loc3_));
                        if(_loc9_)
                        {
                           §§goto(addr124);
                        }
                        §§goto(addr143);
                     }
                     §§goto(addr124);
                  }
                  if(_loc9_ || _loc2_)
                  {
                     this.§=@§ = new §`K§(this.§>u§[this.§1Q§].red,this.§>u§[this.§1Q§].green,this.§>u§[this.§1Q§].blue,1);
                     if(_loc9_)
                     {
                        §-f§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§=@§);
                        if(!(_loc10_ && _loc2_))
                        {
                           addr221:
                           if(_loc2_.§2L§)
                           {
                              if(_loc9_)
                              {
                                 _loc6_ = new (_loc5_ = §!Q§.§^!H§(_loc2_.§2L§))();
                                 if(!_loc10_)
                                 {
                                    §-f§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
                                    if(_loc9_)
                                    {
                                       addr252:
                                       if(_loc2_.§%!%§)
                                       {
                                          if(!(_loc10_ && _loc1_))
                                          {
                                             addr262:
                                             _loc8_ = new (_loc7_ = §!Q§.§^!H§(_loc2_.§%!%§))();
                                             if(_loc9_)
                                             {
                                                §-f§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
                                                addr286:
                                                this.§-z§();
                                                if(!(_loc10_ && _loc2_))
                                                {
                                                   if(§@!D§ == StateCutScene.§-!A§)
                                                   {
                                                      if(_loc9_)
                                                      {
                                                         addr311:
                                                         §@!D§ = "";
                                                         if(_loc9_ || _loc1_)
                                                         {
                                                            addr321:
                                                            this.§0e§(this.§<,§);
                                                         }
                                                      }
                                                      §§goto(addr321);
                                                   }
                                                   else
                                                   {
                                                      this.§0e§(this.§1Q§,true);
                                                   }
                                                   return;
                                                }
                                                §§goto(addr311);
                                             }
                                             §§goto(addr321);
                                          }
                                       }
                                       else
                                       {
                                          §-f§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
                                       }
                                    }
                                    §§goto(addr286);
                                 }
                                 §§goto(addr262);
                              }
                           }
                           else
                           {
                              §-f§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
                           }
                        }
                     }
                     §§goto(addr252);
                  }
                  §§goto(addr221);
               }
            }
         }
         §§goto(addr76);
      }
      
      protected function §00§(param1:Array, param2:int, param3:Number, param4:§=e§) : Number
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc8_:XML = null;
         var _loc10_:String = null;
         var _loc11_:* = false;
         var _loc12_:MovieClip = null;
         var _loc13_:XML = null;
         var _loc5_:Array;
         (_loc5_ = new Array())[0] = new Array();
         var _loc6_:Class = §!Q§.§^!H§(this.§ M§[param2]);
         var _loc7_:* = Number(0);
         for(; _loc7_ < param1.length; §§push(_loc7_),if(_loc15_)
         {
            §§push(§§pop() + 1);
            if(!_loc14_)
            {
               §§push(Number(§§pop()));
            }
         },_loc7_ = §§pop())
         {
            _loc10_ = param1[_loc7_];
            if(!(_loc14_ && param3))
            {
               §§push(AngryBirdsFP11.sUserProgress.isLevelOpen(_loc10_));
               if(_loc15_)
               {
                  §§push(Boolean(§§pop()));
               }
               _loc11_ = §§pop();
               if(_loc14_)
               {
                  break;
               }
            }
            _loc12_ = this.§[j§(_loc10_,_loc11_,_loc6_,_loc7_,param2);
            (_loc13_ = <Button/>).@name = _loc10_;
            §§push(_loc11_);
            if(!_loc14_)
            {
               §§push(Boolean(§§pop()));
               if(!_loc14_)
               {
                  if(!§§pop())
                  {
                     if(_loc15_)
                     {
                        §§pop();
                        if(!_loc14_)
                        {
                           §§push(AngryBirdsFP11.§0b§);
                           if(_loc15_ || this)
                           {
                              addr114:
                              §§push(Boolean(§§pop()));
                              if(_loc15_)
                              {
                                 addr117:
                                 if(§§pop())
                                 {
                                    _loc13_.@MouseUp = _loc10_;
                                 }
                              }
                              addr134:
                              if(§§pop())
                              {
                                 if(!_loc15_)
                                 {
                                    continue;
                                 }
                                 _loc12_.MovieClip_Stars.mouseEnabled = false;
                              }
                              _loc12_.TextField_LevelNum.text.mouseEnabled = false;
                              continue;
                           }
                           §§goto(addr117);
                        }
                        _loc13_.@scaleOnMouseOver = "True";
                        _loc5_[0].push(new Array(_loc13_,null,_loc12_));
                        §§goto(addr134);
                        §§push(_loc11_);
                     }
                  }
                  §§goto(addr117);
               }
               §§goto(addr134);
            }
            §§goto(addr114);
         }
         _loc8_ = <Repeater/>;
         §§push(param1);
         if(!(_loc14_ && param2))
         {
            §§push(§§pop().length == 15);
            if(!_loc14_)
            {
               if(!§§pop())
               {
                  if(!_loc14_)
                  {
                     §§pop();
                     addr192:
                     §§push(param1.length == 10);
                  }
               }
            }
            if(§§pop())
            {
               if(_loc15_)
               {
                  _loc8_.@name = "Repeater_LevelSelection15";
                  if(!_loc14_)
                  {
                     addr214:
                     _loc8_.@button = this.§ M§[param2];
                  }
                  _loc8_.@enabled = "True";
                  _loc8_.@buttonSelectionType = "NO_SELECTION";
                  if(!_loc14_)
                  {
                     addr228:
                     _loc8_.@fromLibrary = "true";
                  }
               }
               var _loc9_:§->§;
               (_loc9_ = new §->§(_loc8_,this.§`p§,null,null)).§7N§(_loc5_);
               if(!_loc14_)
               {
                  _loc9_.setVisibility(true);
                  if(!(_loc14_ && param1))
                  {
                     _loc9_.x += param3;
                     if(_loc15_)
                     {
                        addr263:
                        this.§`p§.§^!I§(_loc9_);
                        if(!(_loc14_ && param1))
                        {
                           this.§4!;§.push(_loc9_);
                           if(_loc15_)
                           {
                              addr290:
                              §§push(param3);
                              if(!_loc14_)
                              {
                                 §§push(§§pop() + AngryBirdsFP11.screenWidth);
                                 if(_loc15_ || param3)
                                 {
                                    §§push(Number(§§pop()));
                                    if(!_loc14_)
                                    {
                                       addr306:
                                       param3 = §§pop();
                                       §§push(param3);
                                    }
                                 }
                                 return §§pop();
                              }
                              §§goto(addr306);
                           }
                        }
                        §§goto(addr290);
                     }
                     §§goto(addr306);
                  }
                  §§goto(addr290);
               }
               §§goto(addr263);
            }
            else
            {
               _loc8_.@name = "Repeater_LevelSelection";
               if(!(_loc14_ && param3))
               {
                  §§goto(addr214);
               }
            }
            §§goto(addr228);
         }
         §§goto(addr192);
      }
      
      protected function §[j§(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
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
                     §§push(§§pop().§4a§(§§pop()));
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
                                       _loc7_ = AngryBirdsFP11.sUserProgress.§1!,§(param1);
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
      
      protected function §-z§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(!_loc5_)
         {
            if(this.§4!;§.length == 1)
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
            this.§ "§ = new Dictionary();
         }
         var _loc4_:int = 0;
         while(_loc4_ < this.§4!;§.length)
         {
            _loc1_ = §!Q§.§^!H§("Button_Dot");
            _loc2_ = new _loc1_();
            if(_loc6_ || _loc3_)
            {
               _loc2_.x = AngryBirdsFP11.screenWidth / 2 + _loc3_ - this.§4!;§.length * _loc2_.width / 2;
               _loc2_.y = (§-f§.getItemByName("Button_Next") as §6<§).y - _loc2_.height / 2;
               if(_loc4_ == this.§1Q§)
               {
                  if(!_loc6_)
                  {
                     continue;
                  }
                  _loc2_.gotoAndStop("Selected");
                  if(_loc6_)
                  {
                     (§-f§.getItemByName("TextField_LevelNumberSmall") as §<k§).x = _loc2_.x;
                     (§-f§.getItemByName("TextField_LevelNumberSmall") as §<k§).y = _loc2_.y - _loc2_.height;
                     addr127:
                     this.§^!=§(_loc4_);
                     if(!_loc6_)
                     {
                     }
                     this.§>6§.mClip.addChild(_loc2_);
                     this.§ "§[_loc2_] = _loc4_;
                     this.§!V§.push(_loc2_);
                     addr138:
                     §§push(_loc3_);
                     if(_loc6_)
                     {
                        §§push(Number(§§pop() + _loc2_.width));
                     }
                     _loc3_ = §§pop();
                     _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§%1§);
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
            §§push(this.§4!;§.length * _loc2_.width);
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
               (§-f§.getItemByName("Button_Next") as §6<§).x = AngryBirdsFP11.screenWidth / 2;
               if(_loc6_ || _loc1_)
               {
                  §§goto(addr246);
               }
               §§goto(addr291);
            }
            §§goto(addr258);
         }
         addr246:
         (§-f§.getItemByName("Button_Prev") as §6<§).x = AngryBirdsFP11.screenWidth / 2;
         if(_loc6_)
         {
            (§-f§.getItemByName("Button_Next") as §6<§).x = (§-f§.getItemByName("Button_Next") as §6<§).x + (_loc3_ + 10);
            addr258:
            if(_loc6_ || _loc2_)
            {
               addr291:
               (§-f§.getItemByName("Button_Prev") as §6<§).x = (§-f§.getItemByName("Button_Prev") as §6<§).x - (_loc3_ + 10);
            }
         }
      }
      
      protected function §0!!§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(this.§=@§);
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
            §§push(this.§=@§);
         }
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            if(_loc1_ < this.§!V§.length)
            {
               §§push(this.§>6§);
               if(_loc3_ || this)
               {
                  if(!§§pop().mClip.contains(this.§!V§[_loc1_]))
                  {
                     continue;
                  }
                  if(!_loc2_)
                  {
                     this.§!V§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§%1§);
                     §§push(this.§>6§);
                  }
                  else
                  {
                     addr116:
                     loop1:
                     while(true)
                     {
                        §§push(this.§`p§);
                        while(true)
                        {
                           if(§§pop().mClip.numChildren <= 0)
                           {
                              this.§4!;§ = [];
                              break loop0;
                           }
                           §§push(this.§`p§);
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
               §§pop().mClip.removeChild(this.§!V§[_loc1_]);
               if(!(_loc3_ || _loc3_))
               {
                  break;
               }
               continue;
            }
            this.§!V§ = [];
            §§goto(addr116);
         }
      }
      
      protected function §%1§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(!this.§,'§)
            {
               if(_loc3_ || param1)
               {
                  this.§0e§(this.§ "§[param1.target]);
               }
            }
         }
      }
      
      protected function §0B§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(!this.§,'§)
            {
               if(_loc3_ || _loc2_)
               {
                  mNextState = §>!B§.§-!A§;
               }
            }
         }
      }
      
      protected function §0e§(param1:int, param2:Boolean = false) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         this.§,'§ = true;
         §§push(param1);
         if(!(_loc7_ && param1))
         {
            if(§§pop() > this.§4!;§.length - 1)
            {
               §§push(this.§4!;§);
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
                        this.§1Q§ = param1;
                        if(_loc6_ || this)
                        {
                           §§push(this.§1Q§);
                           if(!(_loc7_ && param2))
                           {
                              §§push(this.§<,§);
                              if(_loc6_ || param1)
                              {
                                 if(§§pop() > §§pop())
                                 {
                                    this.§3$§ = this.§<,§ + 1;
                                    if(!_loc7_)
                                    {
                                       addr119:
                                       §§push(-this.§4!;§[param1].x);
                                       if(!(_loc7_ && param2))
                                       {
                                          addr143:
                                          var _loc3_:Number = §§pop();
                                          var _loc4_:Number = this.§4!;§[param1].x + this.§`p§.x;
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
                                                         §§push(§<!@§);
                                                      }
                                                      _loc5_ = Number(§§pop());
                                                      §§push(this.§]!0§);
                                                      if(!(_loc7_ && _loc3_))
                                                      {
                                                         if(§§pop() != null)
                                                         {
                                                            §§push(this.§]!0§);
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
                                                                        this.§`p§.x = _loc3_;
                                                                        addr277:
                                                                        §§push(param2);
                                                                     }
                                                                     else
                                                                     {
                                                                        this.§]!0§ = §,!G§.§@j§.§47§(this.§`p§,{"x":_loc3_},null,_loc5_,§,!G§.§,&§);
                                                                        §§push(this.§]!0§);
                                                                        if(_loc6_)
                                                                        {
                                                                           §§pop().onComplete = this.§9Y§;
                                                                           if(!(_loc7_ && param1))
                                                                           {
                                                                              §§goto(addr277);
                                                                           }
                                                                           addr279:
                                                                           this.§9Y§();
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
                                                                     §§push(this.§]!0§);
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
                                       this.§3$§ = this.§<,§ - 1;
                                       §§goto(addr119);
                                    }
                                 }
                                 else
                                 {
                                    §§push(this.§1Q§);
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
                           §§push(this.§<,§);
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
      
      protected function §9Y§() : void
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
               if(§§pop() >= this.§!V§.length)
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
               if(§§pop() == this.§1Q§)
               {
                  if(_loc2_)
                  {
                     §§push(this.§!V§);
                     if(_loc2_)
                     {
                        §§push(_loc1_);
                        if(!_loc3_)
                        {
                           §§pop()[§§pop()].gotoAndStop("Selected");
                           if(!(_loc3_ && this))
                           {
                              (§-f§.getItemByName("TextField_LevelNumberSmall") as §<k§).x = this.§!V§[_loc1_].x;
                              this.§^!=§(_loc1_);
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
               §§push(this.§!V§);
               §§goto(addr82);
            }
            this.§,'§ = false;
            §59§.§+!!§(§59§.§2>§).§6!%§ = this.§1Q§;
            addr108:
            return;
         }
      }
      
      protected function §^!=§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            (§-f§.getItemByName("TextField_LevelNumberSmall") as §<k§).§5+§.text = §59§.§+!!§(§59§.§2>§).pageIndexes[param1];
         }
      }
   }
}
