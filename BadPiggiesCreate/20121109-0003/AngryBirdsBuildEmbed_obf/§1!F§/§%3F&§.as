package §1!F§
{
   import §!y§.§2U§;
   import §!y§.§=!Z§;
   import §"!E§.§ else§;
   import §"!E§.§#!'§;
   import §"!E§.§;!j§;
   import §"!E§.§?j§;
   import §"!E§.§[!s§;
   import §#!4§.§+!S§;
   import §#!4§.§<f§;
   import §-!0§.§1^§;
   import §-!0§.§4!N§;
   import §1?§.§+!§;
   import §5!`§.§%!Y§;
   import §9!n§.§0Y§;
   import §9!n§.§@!T§;
   import §=!3§.§;!!§;
   import §?!-§.§'!V§;
   import com.rovio.assets.§1F§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §?&§ extends §;!!§
   {
      
      public static const STATE_NAME:String = "LevelSelectionState";
      
      protected static const §%!V§:Number = 0.5;
      
      public static var §3d§:String = "";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            STATE_NAME = "LevelSelectionState";
            if(!_loc1_)
            {
               §%!V§ = 0.5;
               if(_loc2_ || _loc2_)
               {
                  addr49:
                  §3d§ = "";
               }
            }
            return;
         }
         §§goto(addr49);
      }
      
      protected var §#!<§:Boolean = false;
      
      protected var §+Q§:§[!s§;
      
      protected var §&!l§:§[!s§;
      
      protected var §%!B§:MovieClip;
      
      protected var §<!^§:Array;
      
      protected var §0![§:Array;
      
      protected var §#!2§:int = 0;
      
      protected var §,!@§:int = 0;
      
      protected var §%<§:int = 0;
      
      protected var §<!v§:Boolean = false;
      
      protected var §7!Z§:§0Y§ = null;
      
      protected var §>!5§:Dictionary;
      
      protected var §>i§:Array;
      
      protected var §%U§:Array;
      
      protected var §7H§:§%!Y§;
      
      protected var §"!d§:Number = 0;
      
      public function §?&§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
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
            if(!(_loc1_ && this))
            {
               this.§=!c§();
            }
         }
         loop0:
         while(true)
         {
            §§push(this.§&!l§);
            while(true)
            {
               if(§§pop().mClip.numChildren <= 0)
               {
                  if(_loc2_)
                  {
                     this.§0![§ = [];
                     if(!(_loc1_ && _loc1_))
                     {
                        this.§<!^§ = [];
                        break;
                     }
                     break;
                  }
                  break;
               }
               §§push(this.§&!l§);
               if(_loc2_)
               {
                  §§pop().mClip.removeChildAt(0);
                  if(!_loc2_)
                  {
                     break;
                  }
                  continue loop0;
               }
            }
            return;
         }
      }
      
      protected function §=!c§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §+!$§ = new §2U§(this);
            if(_loc1_ || _loc1_)
            {
               §+!$§.init(§=!Z§.§;K§.Views.View_LevelSelection[0]);
               addr40:
               if(!(_loc2_ && _loc1_))
               {
                  this.§&!l§ = §+!$§.getItemByName("Container_LevelRepeaters") as §[!s§;
                  if(_loc1_)
                  {
                     addr74:
                     this.§+Q§ = §+!$§.getItemByName("Container_LevelSelection") as §[!s§;
                  }
                  return;
               }
            }
            §§goto(addr74);
         }
         §§goto(addr40);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         super.activate();
         §§push(§'!V§.§1!2§);
         if(!(_loc2_ && _loc1_))
         {
            §§pop().clearLevel();
            if(_loc1_ || _loc1_)
            {
               addr37:
               §'!V§.§1!2§.§-I§(false);
               if(_loc1_)
               {
                  this.each();
                  AngryBirdsFP11.§?!7§();
                  if(this.§0![§.length == 1)
                  {
                     if(_loc1_)
                     {
                        (§+!$§.getItemByName("Button_Prev") as §#!'§).setVisibility(false);
                        if(_loc1_)
                        {
                           (§+!$§.getItemByName("Button_Next") as §#!'§).setVisibility(false);
                           (§+!$§.getItemByName("TextField_LevelNumberSmall") as §;!j§).setVisibility(false);
                           if(_loc1_ || _loc2_)
                           {
                           }
                           §§goto(addr148);
                        }
                        addr133:
                        this.§"!d§ = this.§&!l§.x;
                        if(!§+!$§.stage)
                        {
                        }
                     }
                     §§goto(addr148);
                  }
                  else
                  {
                     (§+!$§.getItemByName("Button_Prev") as §#!'§).setVisibility(true);
                     if(_loc1_ || _loc1_)
                     {
                        (§+!$§.getItemByName("Button_Next") as §#!'§).setVisibility(true);
                        addr107:
                        if(!_loc2_)
                        {
                           (§+!$§.getItemByName("TextField_LevelNumberSmall") as §;!j§).setVisibility(true);
                           §§goto(addr133);
                        }
                     }
                  }
                  §+!$§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§3!7§);
                  §§goto(addr148);
               }
               §§goto(addr107);
            }
            addr148:
            return;
         }
         §§goto(addr37);
      }
      
      protected function §3!7§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(param1.keyCode == Keyboard.LEFT)
            {
               if(!(_loc2_ && this))
               {
                  §§goto(addr51);
               }
            }
            else if(param1.keyCode == Keyboard.RIGHT)
            {
               if(!(_loc2_ && param1))
               {
                  §§goto(addr73);
               }
            }
            §§goto(addr73);
         }
         addr51:
         this.§<o§();
         if(!(_loc3_ || param1))
         {
            addr73:
            this.§0!N§();
            §§goto(addr75);
         }
         addr75:
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.run(param1));
         if(_loc4_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(_loc4_ || _loc2_)
         {
            if(§§pop() != §;!!§.STATE_STATUS_RUNNING)
            {
               return _loc2_;
            }
            else
            {
               this.§7!>§();
               if(!(_loc3_ && this))
               {
                  this.§]!8§();
               }
               if(mNextState.length > 0)
               {
                  return §;!!§.STATE_STATUS_COMPLETED;
               }
               return §;!!§.STATE_STATUS_RUNNING;
            }
         }
      }
      
      protected function §7!>§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(true)
         {
            §§push(_loc1_);
            if(!(_loc4_ && _loc3_))
            {
               §§push(this.§<!^§);
               loop1:
               while(true)
               {
                  if(§§pop() < §§pop().length)
                  {
                     §§push(this.§&!l§);
                     if(_loc3_ || _loc2_)
                     {
                        §§push(-§§pop().x);
                        if(!(_loc4_ && _loc2_))
                        {
                           §§push(this.§0![§);
                           if(!_loc4_)
                           {
                              §§push(_loc1_);
                              if(!(_loc4_ && _loc3_))
                              {
                                 §§push(§§pop() >= §§pop()[§§pop()].x);
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    §§push(§§pop());
                                    if(!_loc4_)
                                    {
                                       if(§§pop())
                                       {
                                          if(!(_loc4_ && this))
                                          {
                                             addr73:
                                             §§pop();
                                             if(!_loc4_)
                                             {
                                                §§push(this.§"!d§);
                                                if(!_loc4_)
                                                {
                                                   §§push(-§§pop());
                                                   if(!_loc4_)
                                                   {
                                                      §§push(this.§0![§);
                                                      if(!_loc4_)
                                                      {
                                                         addr87:
                                                         §§push(_loc1_);
                                                         if(_loc3_)
                                                         {
                                                            §§push(§§pop() < §§pop()[§§pop()].x);
                                                            if(!_loc4_)
                                                            {
                                                               addr95:
                                                               if(§§pop())
                                                               {
                                                                  if(_loc3_ || this)
                                                                  {
                                                                     _loc2_ = 0;
                                                                     if(!(_loc4_ && this))
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc2_);
                                                                           §§push(this.§<!^§);
                                                                           if(!(_loc3_ || this))
                                                                           {
                                                                              continue loop1;
                                                                           }
                                                                           if(§§pop() >= §§pop().length)
                                                                           {
                                                                              this.§%<§ = _loc1_;
                                                                              addr152:
                                                                              §§push(this.§<!^§);
                                                                              if(_loc3_)
                                                                              {
                                                                                 §§push(_loc1_);
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    addr159:
                                                                                    §§pop()[§§pop()].gotoAndStop("Selected");
                                                                                    if(_loc3_ || _loc3_)
                                                                                    {
                                                                                       (§+!$§.getItemByName("TextField_LevelNumberSmall") as §;!j§).x = this.§<!^§[_loc1_].x;
                                                                                       this.§4!k§(_loc1_);
                                                                                       addr183:
                                                                                       §§push(-this.§&!l§.x);
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          addr189:
                                                                                          §§push(this.§0![§);
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             §§push(_loc1_);
                                                                                             if(_loc3_ || _loc1_)
                                                                                             {
                                                                                                addr211:
                                                                                                §§push(§§pop() <= §§pop()[§§pop()].x);
                                                                                                if(!(_loc4_ && _loc3_))
                                                                                                {
                                                                                                   addr222:
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         addr225:
                                                                                                         §§pop();
                                                                                                         if(_loc3_ || _loc2_)
                                                                                                         {
                                                                                                            addr249:
                                                                                                            §§push(this.§"!d§);
                                                                                                            if(!(_loc4_ && this))
                                                                                                            {
                                                                                                               addr242:
                                                                                                               §§push(-§§pop());
                                                                                                            }
                                                                                                            if(§§pop() > this.§0![§[_loc1_].x)
                                                                                                            {
                                                                                                               _loc2_ = 0;
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc2_);
                                                                                                                  if(!(_loc4_ && _loc1_))
                                                                                                                  {
                                                                                                                     §§push(this.§<!^§);
                                                                                                                     if(_loc4_)
                                                                                                                     {
                                                                                                                        continue loop1;
                                                                                                                     }
                                                                                                                     if(§§pop() >= §§pop().length)
                                                                                                                     {
                                                                                                                        if(!_loc4_)
                                                                                                                        {
                                                                                                                           this.§%<§ = _loc1_;
                                                                                                                           if(_loc3_ || _loc1_)
                                                                                                                           {
                                                                                                                              §§push(this.§<!^§);
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           addr342:
                                                                                                                           addr340:
                                                                                                                           addr342:
                                                                                                                           §§push(this.§%<§);
                                                                                                                           §§push(this.§#!2§);
                                                                                                                           if(!_loc4_)
                                                                                                                           {
                                                                                                                              if(§§pop() != §§pop())
                                                                                                                              {
                                                                                                                                 §§push(this.§#!2§);
                                                                                                                                 if(!_loc4_)
                                                                                                                                 {
                                                                                                                                    §§push(this.§%<§);
                                                                                                                                    if(!(_loc4_ && this))
                                                                                                                                    {
                                                                                                                                       addr360:
                                                                                                                                       if(§§pop() > §§pop())
                                                                                                                                       {
                                                                                                                                          addr361:
                                                                                                                                          this.§,!@§ = this.§%<§ + 1;
                                                                                                                                          if(_loc3_)
                                                                                                                                          {
                                                                                                                                             addr395:
                                                                                                                                             this.§7H§.§+8§(this.§>i§[this.§,!@§].red,this.§>i§[this.§,!@§].green,this.§>i§[this.§,!@§].blue);
                                                                                                                                             this.§"!d§ = this.§&!l§.x;
                                                                                                                                             return;
                                                                                                                                             addr369:
                                                                                                                                          }
                                                                                                                                          addr375:
                                                                                                                                          this.§,!@§ = this.§%<§ - 1;
                                                                                                                                          §§goto(addr395);
                                                                                                                                          §§goto(addr395);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr372:
                                                                                                                                          §§push(this.§#!2§);
                                                                                                                                          §§push(this.§%<§);
                                                                                                                                       }
                                                                                                                                       §§goto(addr375);
                                                                                                                                    }
                                                                                                                                    if(§§pop() < §§pop())
                                                                                                                                    {
                                                                                                                                       §§goto(addr375);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       this.§,!@§ = this.§%<§;
                                                                                                                                       §§goto(addr395);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr372);
                                                                                                                              }
                                                                                                                              §§goto(addr395);
                                                                                                                           }
                                                                                                                           §§goto(addr360);
                                                                                                                        }
                                                                                                                        §§goto(addr361);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§push(this.§<!^§);
                                                                                                                        if(_loc4_ && _loc1_)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        §§push(_loc2_);
                                                                                                                        if(_loc3_ || this)
                                                                                                                        {
                                                                                                                           §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                                                                           if(_loc3_)
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           §§goto(addr395);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr306:
                                                                                                                           §§pop()[§§pop()].gotoAndStop("Selected");
                                                                                                                           (§+!$§.getItemByName("TextField_LevelNumberSmall") as §;!j§).x = this.§<!^§[_loc1_].x;
                                                                                                                           if(!_loc4_)
                                                                                                                           {
                                                                                                                              this.§4!k§(_loc1_);
                                                                                                                              break loop1;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr395);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr342);
                                                                                                               }
                                                                                                               addr305:
                                                                                                               §§goto(addr306);
                                                                                                               §§push(_loc1_);
                                                                                                            }
                                                                                                            break loop1;
                                                                                                         }
                                                                                                         §§goto(addr306);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr249);
                                                                                                }
                                                                                                §§goto(addr225);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr249);
                                                                                       }
                                                                                       §§goto(addr242);
                                                                                    }
                                                                                    §§goto(addr395);
                                                                                 }
                                                                                 §§goto(addr306);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(this.§<!^§);
                                                                              if(_loc3_)
                                                                              {
                                                                                 §§push(_loc2_);
                                                                                 if(_loc3_ || _loc2_)
                                                                                 {
                                                                                    §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                                    if(_loc3_ || this)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    §§goto(addr152);
                                                                                 }
                                                                                 §§goto(addr159);
                                                                              }
                                                                           }
                                                                           §§goto(addr305);
                                                                        }
                                                                     }
                                                                     §§goto(addr369);
                                                                  }
                                                               }
                                                               §§goto(addr183);
                                                            }
                                                            §§goto(addr225);
                                                         }
                                                      }
                                                      §§goto(addr249);
                                                   }
                                                }
                                                §§goto(addr189);
                                             }
                                             §§goto(addr136);
                                          }
                                          §§goto(addr249);
                                       }
                                       §§goto(addr95);
                                    }
                                    §§goto(addr222);
                                 }
                                 §§goto(addr73);
                              }
                              §§goto(addr211);
                           }
                           §§goto(addr87);
                        }
                        §§goto(addr189);
                     }
                     §§goto(addr183);
                  }
                  §§goto(addr340);
               }
               _loc1_++;
               if(_loc3_)
               {
                  continue;
               }
               §§goto(addr361);
            }
            §§goto(addr342);
         }
      }
      
      protected function §]!8§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            while(§§pop() < this.§0![§.length)
            {
               §§push(Number(this.§&!l§.x + this.§0![§[_loc1_].x));
               if(_loc4_)
               {
                  _loc2_ = §§pop();
                  if(_loc4_)
                  {
                     §§push(Number(Math.abs(_loc2_)));
                     if(!(_loc3_ && this))
                     {
                        _loc2_ = §§pop();
                        if(_loc4_ || _loc2_)
                        {
                           §§push(_loc2_);
                           if(!_loc3_)
                           {
                              addr60:
                              if(§§pop() > 1000)
                              {
                                 if(!(_loc3_ && this))
                                 {
                                    §§push(1000);
                                    if(_loc4_)
                                    {
                                       addr73:
                                       _loc2_ = Number(§§pop());
                                       if(_loc3_)
                                       {
                                       }
                                       break;
                                    }
                                    continue;
                                 }
                                 addr191:
                                 _loc1_++;
                                 continue loop0;
                                 addr182:
                              }
                              if(Math.abs(this.§0![§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
                              {
                                 if(_loc4_ || _loc1_)
                                 {
                                    §§push(this.§0![§);
                                    if(_loc4_)
                                    {
                                       §§push(_loc1_);
                                       if(_loc4_ || _loc1_)
                                       {
                                          §§pop()[§§pop()].mClip.alpha = 1 - _loc2_ / 1000;
                                          addr129:
                                          §§push(this.§0![§);
                                          if(_loc4_)
                                          {
                                             §§push(_loc1_);
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                if(§§pop()[§§pop()].mClip.alpha < 1)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      break;
                                                   }
                                                   addr148:
                                                   §§push(this.§0![§);
                                                   if(!(_loc3_ && _loc1_))
                                                   {
                                                      addr157:
                                                      §§push(_loc1_);
                                                      if(!_loc3_)
                                                      {
                                                         addr170:
                                                         (§§pop()[§§pop()] as §?j§).setEnabled(false);
                                                         if(!(_loc4_ || _loc3_))
                                                         {
                                                            continue loop0;
                                                         }
                                                         §§goto(addr182);
                                                      }
                                                      else
                                                      {
                                                         addr186:
                                                         (§§pop()[§§pop()] as §?j§).setEnabled(true);
                                                      }
                                                      §§goto(addr191);
                                                   }
                                                   else
                                                   {
                                                      addr185:
                                                      §§push(_loc1_);
                                                   }
                                                   §§goto(addr186);
                                                }
                                                else
                                                {
                                                   §§push(this.§0![§);
                                                }
                                             }
                                             §§goto(addr170);
                                          }
                                          §§goto(addr185);
                                       }
                                       §§goto(addr170);
                                    }
                                    §§goto(addr157);
                                 }
                                 §§goto(addr148);
                              }
                              §§goto(addr129);
                           }
                           §§goto(addr73);
                        }
                        §§goto(addr191);
                     }
                     §§goto(addr60);
                  }
                  §§goto(addr129);
               }
               §§goto(addr60);
            }
            return;
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(§+!$§.stage)
         {
            §+!$§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§3!7§);
         }
         super.deActivate();
         this.§'![§();
         if(!_loc2_)
         {
            (§+!$§.getItemByName("Button_Back") as §#!'§).setComponentVisualState(§<f§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         §1^§.§3W§ = null;
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§7!Z§);
            if(_loc2_ || _loc1_)
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     §§goto(addr43);
                  }
               }
               §§goto(addr56);
            }
            addr43:
            this.§7!Z§.stop();
            §§goto(addr41);
         }
         addr41:
         if(_loc2_ || _loc1_)
         {
            this.§7!Z§ = null;
            if(!_loc1_)
            {
               addr56:
               super.cleanup();
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!S§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param3)
         {
            §§push(param2.length > 0);
            §§push(param2.length > 0);
            if(_loc6_)
            {
               if(§§pop())
               {
                  if(_loc6_)
                  {
                     §§pop();
                     §§push(param3 is § else§);
                     if(!_loc5_)
                     {
                        addr40:
                        if(§§pop())
                        {
                           if(!(_loc5_ && param1))
                           {
                              addr56:
                              if((param3 as § else§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (param3 as § else§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15")
                              {
                                 if(!this.§<!v§)
                                 {
                                    §1^§.loadLevel(§1^§.§=h§(param2.toLowerCase()));
                                 }
                                 var _loc4_:* = param2;
                                 addr81:
                                 if(!_loc5_)
                                 {
                                    §§push("BACK");
                                    if(_loc6_)
                                    {
                                       §§push(_loc4_);
                                       if(!_loc5_)
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(!_loc5_)
                                             {
                                                addr138:
                                                §§push(0);
                                                if(_loc5_ && param2)
                                                {
                                                   addr219:
                                                }
                                             }
                                             else
                                             {
                                                addr211:
                                                §§push(3);
                                                if(!(_loc5_ && param1))
                                                {
                                                   §§goto(addr219);
                                                }
                                             }
                                             §§goto(addr224);
                                          }
                                          else
                                          {
                                             §§push("NEXT");
                                             if(_loc6_)
                                             {
                                                §§push(_loc4_);
                                                if(!(_loc5_ && param1))
                                                {
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(!(_loc5_ && param3))
                                                      {
                                                         §§push(1);
                                                         if(!_loc6_)
                                                         {
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr199:
                                                         §§push(2);
                                                         if(_loc6_ || param1)
                                                         {
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push("PREV");
                                                      if(_loc6_ || param2)
                                                      {
                                                         §§push(_loc4_);
                                                         if(_loc6_)
                                                         {
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(_loc6_ || param2)
                                                               {
                                                                  §§goto(addr199);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr211);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr210:
                                                               if("FULLSCREEN_BUTTON" === _loc4_)
                                                               {
                                                                  §§goto(addr211);
                                                               }
                                                               else
                                                               {
                                                                  §§push(4);
                                                               }
                                                            }
                                                            §§goto(addr211);
                                                         }
                                                      }
                                                      §§goto(addr210);
                                                   }
                                                   addr224:
                                                   switch(§§pop())
                                                   {
                                                      case 0:
                                                         §+!§.§4c§("Menu_Back");
                                                         if(_loc6_)
                                                         {
                                                            mNextState = §9!h§.STATE_NAME;
                                                            break;
                                                         }
                                                         addr96:
                                                         break;
                                                      case 1:
                                                         this.§0!N§();
                                                         §§goto(addr96);
                                                      case 2:
                                                         this.§<o§();
                                                         if(!_loc5_)
                                                         {
                                                            break;
                                                         }
                                                         addr122:
                                                         break;
                                                      case 3:
                                                         §+!§.§4c§("Menu_Confirm");
                                                         if(_loc6_)
                                                         {
                                                            AngryBirdsFP11.§`!d§.§!5§();
                                                         }
                                                         §§goto(addr122);
                                                   }
                                                   return;
                                                }
                                             }
                                             §§goto(addr210);
                                          }
                                       }
                                    }
                                    §§goto(addr210);
                                 }
                                 §§goto(addr138);
                                 addr81:
                              }
                              §§goto(addr81);
                           }
                           mNextState = StateCutScene.STATE_NAME;
                        }
                        §§goto(addr81);
                     }
                     §§goto(addr56);
                  }
               }
               §§goto(addr40);
            }
            §§goto(addr56);
         }
         §§goto(addr59);
      }
      
      protected function §0!N§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            §+!§.§4c§("Menu_Confirm");
            if(_loc3_)
            {
               §§goto(addr28);
            }
            §§goto(addr85);
         }
         addr28:
         if(!this.§<!v§)
         {
            if(!(_loc4_ && this))
            {
               var _loc1_:*;
               §§push((_loc1_ = this).§#!2§);
               if(_loc3_ || this)
               {
                  §§push(§§pop() + 1);
               }
               var _loc2_:* = §§pop();
               if(_loc3_)
               {
                  _loc1_.§#!2§ = _loc2_;
               }
               if(!(_loc4_ && _loc2_))
               {
                  addr85:
                  this.§@!h§(this.§#!2§);
               }
            }
            §§goto(addr85);
         }
      }
      
      protected function §<o§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc1_)
         {
            §+!§.§4c§("Menu_Confirm");
            if(_loc3_)
            {
               if(!this.§<!v§)
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     var _loc1_:*;
                     §§push((_loc1_ = this).§#!2§);
                     if(_loc3_ || this)
                     {
                        §§push(§§pop() - 1);
                     }
                     var _loc2_:* = §§pop();
                     if(!(_loc4_ && _loc3_))
                     {
                        _loc1_.§#!2§ = _loc2_;
                     }
                     if(!(_loc4_ && _loc3_))
                     {
                        addr90:
                        this.§@!h§(this.§#!2§);
                     }
                  }
                  §§goto(addr90);
               }
               return;
            }
         }
         §§goto(addr90);
      }
      
      public function each() : void
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
            this.§>i§ = [];
            if(_loc9_ || _loc1_)
            {
               addr46:
               this.§%U§ = [];
               if(_loc9_)
               {
                  this.§#!2§ = §1^§.§?!0§(§1^§.§<J§).§2!%§;
                  if(_loc9_ || _loc3_)
                  {
                     addr65:
                     this.§,!@§ = this.§#!2§;
                     if(!_loc10_)
                     {
                        addr71:
                        this.§%<§ = this.§#!2§;
                     }
                     var _loc2_:§4!N§ = §1^§.§?!0§(§1^§.§<J§);
                     var _loc3_:* = Number(0);
                     while(_loc3_ < _loc2_.pageIndexes.length)
                     {
                        _loc4_ = _loc2_.§1S§(_loc2_.pageIndexes[_loc3_]);
                        if(!_loc10_)
                        {
                           §§push(this.§>i§);
                           if(_loc9_)
                           {
                              §§pop().push(_loc2_.§6!%§(_loc3_));
                              if(_loc10_ && _loc3_)
                              {
                                 continue;
                              }
                              §§push(this.§%U§);
                           }
                           §§pop().push(_loc2_.§,!X§(_loc3_));
                           if(!(_loc9_ || this))
                           {
                              continue;
                           }
                        }
                        §§push(this.§ ,§(_loc4_,_loc3_,_loc1_,_loc2_));
                        if(!_loc10_)
                        {
                           §§push(Number(§§pop()));
                           if(_loc9_ || _loc2_)
                           {
                              addr140:
                              _loc1_ = §§pop();
                              if(!(_loc9_ || this))
                              {
                                 continue;
                              }
                              §§push(_loc3_);
                              if(_loc9_)
                              {
                                 §§push(§§pop() + 1);
                                 if(_loc10_)
                                 {
                                 }
                                 addr165:
                                 _loc3_ = §§pop();
                                 continue;
                              }
                              §§push(Number(§§pop()));
                           }
                           §§goto(addr165);
                        }
                        §§goto(addr140);
                     }
                     if(!(_loc10_ && _loc2_))
                     {
                        this.§7H§ = new §%!Y§(this.§>i§[this.§#!2§].red,this.§>i§[this.§#!2§].green,this.§>i§[this.§#!2§].blue,1);
                        if(_loc9_)
                        {
                           §+!$§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§7H§);
                           if(!(_loc10_ && _loc1_))
                           {
                              addr216:
                              if(_loc2_.§!!6§)
                              {
                                 if(!_loc10_)
                                 {
                                    _loc6_ = new (_loc5_ = §1F§.§"!_§(_loc2_.§!!6§))();
                                    if(!(_loc10_ && _loc3_))
                                    {
                                       §+!$§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
                                       if(!_loc10_)
                                       {
                                          addr252:
                                          if(_loc2_.§1!§)
                                          {
                                             if(_loc9_ || _loc2_)
                                             {
                                                addr262:
                                                _loc8_ = new (_loc7_ = §1F§.§"!_§(_loc2_.§1!§))();
                                                §+!$§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
                                             }
                                          }
                                          else
                                          {
                                             §+!$§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
                                          }
                                          this.§"H§();
                                          if(!_loc10_)
                                          {
                                             if(§3d§ == StateCutScene.STATE_NAME)
                                             {
                                                §3d§ = "";
                                                this.§@!h§(this.§%<§);
                                             }
                                             else
                                             {
                                                this.§@!h§(this.§#!2§,true);
                                             }
                                          }
                                          return;
                                          addr245:
                                       }
                                       §§goto(addr262);
                                    }
                                    §§goto(addr245);
                                 }
                              }
                              else
                              {
                                 §+!$§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
                              }
                           }
                        }
                        §§goto(addr252);
                     }
                     §§goto(addr216);
                  }
                  §§goto(addr71);
               }
            }
            §§goto(addr65);
         }
         §§goto(addr46);
      }
      
      protected function § ,§(param1:Array, param2:int, param3:Number, param4:§4!N§) : Number
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
         var _loc6_:Class = §1F§.§"!_§(this.§%U§[param2]);
         var _loc7_:* = Number(0);
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            if(_loc15_ || param1)
            {
               §§push(AngryBirdsFP11.sUserProgress.isLevelOpen(_loc10_));
               if(_loc15_ || param2)
               {
                  §§push(Boolean(§§pop()));
               }
               _loc11_ = §§pop();
               if(!_loc15_)
               {
                  break;
               }
            }
            _loc12_ = this.§]!'§(_loc10_,_loc11_,_loc6_,_loc7_,param2);
            (_loc13_ = <Button/>).@name = _loc10_;
            if(!(_loc14_ && param2))
            {
               §§push(_loc11_);
               if(!_loc14_)
               {
                  §§push(Boolean(§§pop()));
                  if(!(_loc14_ && param3))
                  {
                     if(!§§pop())
                     {
                        if(!_loc14_)
                        {
                           addr119:
                           §§pop();
                           if(_loc15_)
                           {
                              addr122:
                              §§push(AngryBirdsFP11.§>!q§);
                              if(_loc15_)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(!_loc14_)
                                 {
                                    addr129:
                                    if(§§pop())
                                    {
                                       addr130:
                                       _loc13_.@MouseUp = _loc10_;
                                    }
                                    _loc13_.@scaleOnMouseOver = "True";
                                    _loc5_[0].push(new Array(_loc13_,null,_loc12_));
                                    if(!_loc14_)
                                    {
                                       addr148:
                                       if(_loc11_)
                                       {
                                          if(!(_loc14_ && this))
                                          {
                                             addr166:
                                             _loc12_.MovieClip_Stars.mouseEnabled = false;
                                             if(_loc15_ || this)
                                             {
                                                addr177:
                                                _loc12_.TextField_LevelNum.text.mouseEnabled = false;
                                                if(_loc14_)
                                                {
                                                   continue;
                                                }
                                             }
                                          }
                                          §§push(_loc7_);
                                          if(_loc15_ || this)
                                          {
                                             §§push(§§pop() + 1);
                                             if(!(_loc14_ && param2))
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          _loc7_ = §§pop();
                                          continue;
                                       }
                                       §§goto(addr177);
                                    }
                                    §§goto(addr166);
                                 }
                                 §§goto(addr148);
                              }
                              §§goto(addr129);
                           }
                           §§goto(addr130);
                        }
                     }
                     §§goto(addr129);
                  }
                  §§goto(addr148);
               }
               §§goto(addr119);
            }
            §§goto(addr122);
         }
         _loc8_ = <Repeater/>;
         if(_loc15_ || param1)
         {
            if(param1.length == 15)
            {
               if(!(_loc14_ && param3))
               {
                  _loc8_.@name = "Repeater_LevelSelection15";
                  if(!(_loc14_ && param1))
                  {
                     addr243:
                     _loc8_.@button = this.§%U§[param2];
                     addr239:
                  }
                  _loc8_.@enabled = "True";
                  _loc8_.@buttonSelectionType = "NO_SELECTION";
                  addr255:
                  _loc8_.@fromLibrary = "true";
                  var _loc9_:§?j§;
                  (_loc9_ = new §?j§(_loc8_,this.§&!l§,null,null)).§<!u§(_loc5_);
                  if(!(_loc14_ && param2))
                  {
                     _loc9_.setVisibility(true);
                     if(!_loc14_)
                     {
                        _loc9_.x += param3;
                        if(_loc15_)
                        {
                           this.§&!l§.§9!k§(_loc9_);
                           if(_loc15_)
                           {
                              this.§0![§.push(_loc9_);
                              if(_loc15_ || param1)
                              {
                                 addr317:
                                 §§push(param3);
                                 if(_loc15_ || this)
                                 {
                                    §§push(§§pop() + AngryBirdsFP11.screenWidth);
                                    if(!_loc14_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc15_ || param3)
                                       {
                                          addr338:
                                          param3 = §§pop();
                                          §§push(param3);
                                       }
                                       return §§pop();
                                    }
                                 }
                              }
                              §§goto(addr338);
                           }
                        }
                     }
                  }
                  §§goto(addr317);
               }
               §§goto(addr239);
            }
            else
            {
               _loc8_.@name = "Repeater_LevelSelection";
            }
            §§goto(addr243);
         }
         §§goto(addr255);
      }
      
      protected function §]!'§(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:Number = NaN;
         var _loc6_:MovieClip;
         (_loc6_ = new param3()).TextField_LevelNum.text.text = (param4 + 1).toString();
         §§push(param2);
         if(_loc8_ || param3)
         {
            if(§§pop())
            {
               if(_loc8_)
               {
                  _loc6_.gotoAndStop("Open");
                  if(_loc8_ || this)
                  {
                     _loc6_.MovieClip_MEInUse.visible = false;
                     §§push(AngryBirdsFP11.sUserProgress);
                     if(!_loc9_)
                     {
                        §§push(param1);
                        if(_loc8_ || param2)
                        {
                           §§push(§§pop().§8!O§(§§pop()));
                           if(_loc8_)
                           {
                              if(§§pop() == 100)
                              {
                                 addr82:
                                 _loc6_.MovieClip_Feather.gotoAndStop("Visible");
                                 _loc6_.MovieClip_Feather.mouseEnabled = false;
                                 if(!_loc9_)
                                 {
                                    addr124:
                                    _loc6_.isOpen = param2;
                                    if(_loc8_ || param2)
                                    {
                                       addr134:
                                       if(param2)
                                       {
                                          addr140:
                                          _loc7_ = AngryBirdsFP11.sUserProgress.§"!%§(param1);
                                          addr139:
                                          addr138:
                                          if(!_loc8_)
                                          {
                                          }
                                       }
                                       §§goto(addr151);
                                    }
                                    _loc6_.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
                                    addr151:
                                    return _loc6_;
                                    addr103:
                                 }
                                 §§goto(addr134);
                              }
                              else
                              {
                                 _loc6_.MovieClip_Feather.gotoAndStop("Hidden");
                                 if(_loc8_)
                                 {
                                    _loc6_.MovieClip_Feather.mouseEnabled = false;
                                    §§goto(addr103);
                                 }
                                 §§goto(addr151);
                              }
                           }
                           §§goto(addr140);
                        }
                        §§goto(addr139);
                     }
                     §§goto(addr138);
                  }
                  §§goto(addr82);
               }
               §§goto(addr124);
            }
            else
            {
               _loc6_.gotoAndStop("Locked");
               if(_loc8_ || this)
               {
                  §§goto(addr124);
               }
            }
            §§goto(addr140);
         }
         §§goto(addr134);
      }
      
      protected function §"H§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(_loc6_ || _loc3_)
         {
            if(this.§0![§.length == 1)
            {
               if(_loc6_)
               {
                  §§goto(addr37);
               }
            }
            var _loc3_:* = Number(0);
            if(_loc6_ || _loc3_)
            {
               this.§>!5§ = new Dictionary();
            }
            var _loc4_:int = 0;
            while(_loc4_ < this.§0![§.length)
            {
               _loc1_ = §1F§.§"!_§("Button_Dot");
               _loc2_ = new _loc1_();
               if(!(_loc5_ && _loc3_))
               {
                  _loc2_.x = AngryBirdsFP11.screenWidth / 2 + _loc3_ - this.§0![§.length * _loc2_.width / 2;
                  if(_loc6_)
                  {
                     _loc2_.y = (§+!$§.getItemByName("Button_Next") as §#!'§).y - _loc2_.height / 2;
                     if(_loc4_ == this.§#!2§)
                     {
                        _loc2_.gotoAndStop("Selected");
                        (§+!$§.getItemByName("TextField_LevelNumberSmall") as §;!j§).x = _loc2_.x;
                        if(_loc6_ || _loc3_)
                        {
                           addr126:
                           (§+!$§.getItemByName("TextField_LevelNumberSmall") as §;!j§).y = _loc2_.y - _loc2_.height;
                           if(_loc6_)
                           {
                              this.§4!k§(_loc4_);
                              addr156:
                              this.§+Q§.mClip.addChild(_loc2_);
                              this.§>!5§[_loc2_] = _loc4_;
                              this.§<!^§.push(_loc2_);
                              addr142:
                           }
                           §§goto(addr142);
                        }
                        §§push(_loc3_);
                        if(!_loc5_)
                        {
                           §§push(Number(§§pop() + _loc2_.width));
                        }
                        _loc3_ = §§pop();
                        if(!_loc5_)
                        {
                           _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§3!M§);
                           if(_loc6_)
                           {
                              _loc2_.buttonMode = true;
                              if(_loc6_)
                              {
                                 _loc4_++;
                              }
                           }
                        }
                        continue;
                     }
                     _loc2_.gotoAndStop("UnSelected");
                     §§goto(addr156);
                  }
                  §§goto(addr126);
               }
               §§goto(addr156);
            }
            if(_loc6_ || _loc1_)
            {
               §§push(this.§0![§.length * _loc2_.width);
               if(_loc6_)
               {
                  §§push(§§pop() / 2);
                  if(_loc6_)
                  {
                     §§push(§§pop() + _loc2_.width * 1.5);
                     if(_loc6_ || _loc1_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
               }
               _loc3_ = §§pop();
               if(!(_loc5_ && _loc2_))
               {
                  (§+!$§.getItemByName("Button_Next") as §#!'§).x = AngryBirdsFP11.screenWidth / 2;
                  if(_loc6_)
                  {
                     §§goto(addr251);
                  }
                  §§goto(addr268);
               }
            }
            addr251:
            (§+!$§.getItemByName("Button_Prev") as §#!'§).x = AngryBirdsFP11.screenWidth / 2;
            if(_loc6_ || _loc3_)
            {
               (§+!$§.getItemByName("Button_Next") as §#!'§).x = (§+!$§.getItemByName("Button_Next") as §#!'§).x + (_loc3_ + 10);
               addr268:
               if(!(_loc5_ && _loc1_))
               {
                  (§+!$§.getItemByName("Button_Prev") as §#!'§).x = (§+!$§.getItemByName("Button_Prev") as §#!'§).x - (_loc3_ + 10);
               }
            }
            return;
         }
         addr37:
      }
      
      protected function §'![§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§7H§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr28:
                     this.§7H§.clean();
                  }
               }
               var _loc1_:int = 0;
               for(; _loc1_ < this.§<!^§.length; _loc1_++)
               {
                  §§push(this.§+Q§);
                  if(!(_loc2_ && _loc3_))
                  {
                     if(!§§pop().mClip.contains(this.§<!^§[_loc1_]))
                     {
                        continue;
                     }
                     this.§<!^§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§3!M§);
                     §§push(this.§+Q§);
                  }
                  §§pop().mClip.removeChild(this.§<!^§[_loc1_]);
               }
               if(!_loc2_)
               {
                  this.§<!^§ = [];
                  if(_loc2_)
                  {
                  }
                  loop1:
                  while(true)
                  {
                     §§push(this.§&!l§);
                     while(§§pop().mClip.numChildren > 0)
                     {
                        §§push(this.§&!l§);
                        if(!_loc2_)
                        {
                           continue loop1;
                        }
                     }
                     if(_loc3_ || this)
                     {
                        addr121:
                        this.§0![§ = [];
                     }
                     return;
                  }
               }
               §§goto(addr121);
            }
         }
         §§goto(addr28);
      }
      
      protected function §3!M§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(!this.§<!v§)
            {
               if(!(_loc2_ && _loc2_))
               {
                  this.§@!h§(this.§>!5§[param1.target]);
               }
            }
         }
      }
      
      protected function §9!&§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(!this.§<!v§)
            {
               if(!_loc3_)
               {
                  mNextState = §?&§.STATE_NAME;
               }
            }
         }
      }
      
      protected function §@!h§(param1:int, param2:Boolean = false) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         this.§<!v§ = true;
         if(!(_loc7_ && param1))
         {
            §§push(param1);
            if(!_loc7_)
            {
               if(§§pop() > this.§0![§.length - 1)
               {
                  if(!(_loc7_ && _loc3_))
                  {
                     §§push(this.§0![§);
                     if(_loc6_ || param2)
                     {
                        §§push(§§pop().length - 1);
                        if(!_loc7_)
                        {
                           §§push(int(§§pop()));
                           if(!(_loc7_ && _loc3_))
                           {
                              param1 = §§pop();
                              if(_loc6_ || param1)
                              {
                                 addr94:
                                 this.§#!2§ = param1;
                                 §§push(this.§#!2§);
                                 if(_loc6_ || param2)
                                 {
                                    addr106:
                                    §§push(this.§%<§);
                                    if(_loc6_)
                                    {
                                       addr110:
                                       if(§§pop() > §§pop())
                                       {
                                          if(!_loc7_)
                                          {
                                             this.§,!@§ = this.§%<§ + 1;
                                             if(!(_loc7_ && _loc3_))
                                             {
                                                addr149:
                                                §§push(-this.§0![§[param1].x);
                                                if(!(_loc7_ && param1))
                                                {
                                                   addr163:
                                                   var _loc3_:Number = §§pop();
                                                   var _loc4_:Number = this.§0![§[param1].x + this.§&!l§.x;
                                                   var _loc5_:*;
                                                   §§push(_loc5_ = Number(Math.abs(_loc4_)));
                                                   if(!_loc7_)
                                                   {
                                                      §§push(§§pop() / 1024);
                                                      if(!_loc7_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         if(_loc6_)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc6_)
                                                            {
                                                               _loc5_ = §§pop();
                                                               if(!_loc7_)
                                                               {
                                                                  addr197:
                                                                  §§push(§§pop() * §%!V§);
                                                                  if(_loc6_ || _loc3_)
                                                                  {
                                                                     addr205:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  _loc5_ = §§pop();
                                                                  §§push(this.§7!Z§);
                                                                  if(_loc6_)
                                                                  {
                                                                     if(§§pop() != null)
                                                                     {
                                                                        if(_loc6_ || _loc3_)
                                                                        {
                                                                           §§push(this.§7!Z§);
                                                                           if(_loc6_)
                                                                           {
                                                                              §§pop().stop();
                                                                              addr225:
                                                                              §§push(param2);
                                                                              if(!(_loc7_ && _loc3_))
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       this.§&!l§.x = _loc3_;
                                                                                       if(_loc6_ || param1)
                                                                                       {
                                                                                          addr298:
                                                                                          if(param2)
                                                                                          {
                                                                                             this.§]!"§();
                                                                                             addr302:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr305:
                                                                                             this.§7!Z§.play();
                                                                                          }
                                                                                          addr247:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr279:
                                                                                          §§push(this.§7!Z§);
                                                                                          if(_loc6_ || param2)
                                                                                          {
                                                                                             addr288:
                                                                                             §§pop().onComplete = this.§]!"§;
                                                                                             if(_loc6_ || param1)
                                                                                             {
                                                                                                §§goto(addr298);
                                                                                             }
                                                                                             §§goto(addr302);
                                                                                          }
                                                                                          §§goto(addr305);
                                                                                       }
                                                                                       §§goto(addr305);
                                                                                    }
                                                                                    return;
                                                                                 }
                                                                                 this.§7!Z§ = §@!T§.§`!t§.§8!"§(this.§&!l§,{"x":_loc3_},null,_loc5_,§@!T§.§2,§);
                                                                                 if(_loc6_ || param2)
                                                                                 {
                                                                                    §§goto(addr279);
                                                                                 }
                                                                              }
                                                                              §§goto(addr298);
                                                                           }
                                                                           §§goto(addr305);
                                                                        }
                                                                        §§goto(addr247);
                                                                     }
                                                                     §§goto(addr225);
                                                                  }
                                                                  §§goto(addr288);
                                                               }
                                                               §§goto(addr205);
                                                            }
                                                            §§goto(addr197);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr197);
                                                }
                                                §§goto(addr163);
                                             }
                                             else
                                             {
                                                this.§,!@§ = this.§%<§ - 1;
                                                addr134:
                                                §§goto(addr149);
                                             }
                                          }
                                          §§goto(addr149);
                                       }
                                       else
                                       {
                                          addr129:
                                          §§push(this.§#!2§);
                                          §§push(this.§%<§);
                                       }
                                       §§goto(addr149);
                                    }
                                    if(§§pop() < §§pop())
                                    {
                                       if(!_loc7_)
                                       {
                                          §§goto(addr134);
                                       }
                                    }
                                    §§goto(addr149);
                                 }
                                 §§goto(addr129);
                              }
                              §§goto(addr149);
                           }
                           else
                           {
                              addr74:
                              §§push(0);
                              if(!(_loc7_ && param2))
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    if(_loc6_)
                                    {
                                       §§push(0);
                                       if(!(_loc7_ && param2))
                                       {
                                          addr93:
                                          param1 = §§pop();
                                          §§goto(addr94);
                                       }
                                       §§goto(addr106);
                                    }
                                    §§goto(addr134);
                                 }
                                 §§goto(addr94);
                              }
                           }
                           §§goto(addr110);
                        }
                        §§goto(addr163);
                     }
                     §§goto(addr149);
                  }
                  §§goto(addr94);
               }
               else
               {
                  §§push(param1);
                  if(_loc6_)
                  {
                     §§goto(addr74);
                  }
               }
               §§goto(addr93);
            }
            §§goto(addr74);
         }
         §§goto(addr94);
      }
      
      protected function §]!"§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            while(true)
            {
               if(§§pop() >= this.§<!^§.length)
               {
                  this.§<!v§ = false;
                  if(_loc3_)
                  {
                     §1^§.§?!0§(§1^§.§<J§).§2!%§ = this.§#!2§;
                     break;
                  }
                  break;
               }
               §§push(_loc1_);
               if(_loc2_)
               {
                  continue;
               }
               if(§§pop() == this.§#!2§)
               {
                  §§push(this.§<!^§);
                  if(_loc3_ || _loc2_)
                  {
                     §§push(_loc1_);
                     if(_loc3_)
                     {
                        §§pop()[§§pop()].gotoAndStop("Selected");
                        (§+!$§.getItemByName("TextField_LevelNumberSmall") as §;!j§).x = this.§<!^§[_loc1_].x;
                        this.§4!k§(_loc1_);
                        if(!_loc3_)
                        {
                           continue loop0;
                        }
                     }
                     else
                     {
                        addr82:
                        §§pop()[§§pop()].gotoAndStop("UnSelected");
                     }
                     _loc1_++;
                     if(!_loc3_)
                     {
                        break;
                     }
                     continue loop0;
                  }
                  addr81:
                  §§push(_loc1_);
                  §§goto(addr82);
               }
               else
               {
                  §§push(this.§<!^§);
               }
               §§goto(addr81);
            }
            return;
         }
      }
      
      protected function §4!k§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            (§+!$§.getItemByName("TextField_LevelNumberSmall") as §;!j§).§!D§.text = §1^§.§?!0§(§1^§.§<J§).pageIndexes[param1];
         }
      }
   }
}
