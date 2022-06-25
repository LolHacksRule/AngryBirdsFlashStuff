package § !@§
{
   import §#P§.§ !=§;
   import §#P§.§@7§;
   import §#X§.§,!F§;
   import §%4§.§0!I§;
   import §%4§.§4!=§;
   import §%4§.§7-§;
   import §%4§.§]q§;
   import §%4§.§`a§;
   import §-!D§.§4!,§;
   import §-!D§.§5A§;
   import §0!#§.§'!,§;
   import §0!#§.§-P§;
   import §0!#§.§0K§;
   import §0,§.§4V§;
   import §1!-§.§2n§;
   import §1!-§.§[4§;
   import §5!L§.§=w§;
   import §7g§.§1Q§;
   import com.rovio.assets.§]!>§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §6!@§ extends §1Q§
   {
      
      public static const §>9§:String = "LevelSelectionState";
      
      protected static const §<m§:Number = 0.5;
      
      public static var §]t§:String = "";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §>9§ = "LevelSelectionState";
            if(_loc1_)
            {
               §<m§ = 0.5;
               if(!(_loc2_ && §6!@§))
               {
                  §]t§ = "";
               }
            }
         }
      }
      
      protected var §5!5§:Boolean = false;
      
      protected var §4=§:§4!=§;
      
      protected var §4!@§:§4!=§;
      
      protected var §1[§:MovieClip;
      
      protected var §'N§:Array;
      
      protected var §[!1§:Array;
      
      protected var §,r§:int = 0;
      
      protected var §6M§:int = 0;
      
      protected var §1x§:int = 0;
      
      protected var §3t§:Boolean = false;
      
      protected var §8!K§:§ !=§ = null;
      
      protected var §;O§:Dictionary;
      
      protected var §0#§:Array;
      
      protected var §-W§:Array;
      
      protected var §+f§:§4V§;
      
      protected var §0]§:Number = 0;
      
      public function §6!@§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super.init();
            if(!_loc1_)
            {
               this.§!!>§();
            }
         }
         loop0:
         while(true)
         {
            §§push(this.§4!@§);
            while(true)
            {
               if(§§pop().mClip.numChildren <= 0)
               {
                  if(!_loc1_)
                  {
                     this.§[!1§ = [];
                     if(_loc2_)
                     {
                        break;
                     }
                  }
                  §§goto(addr77);
               }
               §§push(this.§4!@§);
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
            this.§'N§ = [];
            addr77:
            return;
         }
      }
      
      protected function §!!>§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §]F§ = new §4!,§(this);
            if(_loc1_)
            {
               §]F§.init(§5A§.§;L§.Views.View_LevelSelection[0]);
               if(!_loc2_)
               {
                  this.§4!@§ = §]F§.getItemByName("Container_LevelRepeaters") as §4!=§;
                  if(_loc1_)
                  {
                     addr64:
                     this.§4=§ = §]F§.getItemByName("Container_LevelSelection") as §4!=§;
                  }
               }
            }
            return;
         }
         §§goto(addr64);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         super.activate();
         §§push(§=w§.§ o§);
         if(_loc1_ || _loc2_)
         {
            §§pop().clearLevel();
            if(!(_loc2_ && _loc2_))
            {
               addr37:
               §=w§.§ o§.§7!E§(false);
               this.§-F§();
               if(!_loc2_)
               {
                  this.§ x§();
                  if(_loc1_ || _loc2_)
                  {
                     if(this.§[!1§.length == 1)
                     {
                        if(!(_loc2_ && _loc1_))
                        {
                           (§]F§.getItemByName("Button_Prev") as §7-§).setVisibility(false);
                           if(!(_loc2_ && _loc1_))
                           {
                              addr88:
                              (§]F§.getItemByName("Button_Next") as §7-§).setVisibility(false);
                              if(!_loc2_)
                              {
                                 (§]F§.getItemByName("TextField_LevelNumberSmall") as §`a§).setVisibility(false);
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    addr154:
                                    this.§0]§ = this.§4!@§.x;
                                 }
                                 §§goto(addr162);
                              }
                              else
                              {
                                 addr140:
                                 (§]F§.getItemByName("TextField_LevelNumberSmall") as §`a§).setVisibility(true);
                                 if(_loc1_ || this)
                                 {
                                    §§goto(addr154);
                                 }
                              }
                              if(!§]F§.stage)
                              {
                              }
                              §§goto(addr162);
                           }
                        }
                        §§goto(addr154);
                     }
                     else
                     {
                        (§]F§.getItemByName("Button_Prev") as §7-§).setVisibility(true);
                        if(!_loc2_)
                        {
                           (§]F§.getItemByName("Button_Next") as §7-§).setVisibility(true);
                           if(!_loc2_)
                           {
                              §§goto(addr140);
                           }
                           §§goto(addr154);
                        }
                        §§goto(addr162);
                     }
                  }
                  §§goto(addr88);
               }
               §§goto(addr162);
            }
            addr162:
            §]F§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§7!8§);
            return;
         }
         §§goto(addr37);
      }
      
      protected function § x§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            AngryBirdsFP11.§ x§();
         }
      }
      
      protected function §7!8§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(this.§[!1§.length <= 1)
         {
            if(!(_loc3_ && _loc2_))
            {
               return;
            }
            addr63:
            this.§&`§();
            if(_loc3_ && param1)
            {
               addr78:
               this.§;`§();
            }
         }
         else if(param1.keyCode == Keyboard.LEFT)
         {
            if(_loc2_)
            {
               §§goto(addr63);
            }
            §§goto(addr78);
         }
         else if(param1.keyCode == Keyboard.RIGHT)
         {
            §§goto(addr78);
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.run(param1));
         if(_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && _loc3_))
         {
            §§push(_loc2_);
            if(!_loc4_)
            {
               if(§§pop() != §1Q§.STATE_STATUS_RUNNING)
               {
                  return _loc2_;
               }
               else
               {
                  this.§-U§();
                  if(_loc3_)
                  {
                     this.§7]§();
                     if(!(_loc4_ && param1))
                     {
                        if(mNextState.length > 0)
                        {
                           §§goto(addr75);
                        }
                        else
                        {
                           return §1Q§.STATE_STATUS_RUNNING;
                        }
                     }
                  }
                  §§goto(addr75);
               }
            }
            return §§pop();
         }
         addr75:
         return §1Q§.STATE_STATUS_COMPLETED;
      }
      
      protected function §-U§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = 0;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(_loc3_)
            {
               §§push(this.§'N§);
               loop1:
               while(true)
               {
                  if(§§pop() >= §§pop().length)
                  {
                     if(!(_loc4_ && _loc2_))
                     {
                        §§push(this.§1x§);
                        if(_loc3_)
                        {
                           addr332:
                           §§push(this.§,r§);
                           if(!(_loc4_ && _loc3_))
                           {
                              if(§§pop() != §§pop())
                              {
                                 break;
                              }
                              §§goto(addr428);
                           }
                           §§goto(addr369);
                        }
                        addr346:
                        §§push(this.§1x§);
                        if(_loc3_)
                        {
                           if(§§pop() <= §§pop())
                           {
                              §§push(this.§,r§);
                              break loop0;
                           }
                           this.§6M§ = this.§1x§ + 1;
                           if(_loc4_ && _loc3_)
                           {
                           }
                           §§goto(addr389);
                        }
                        addr369:
                        if(§§pop() < §§pop())
                        {
                           if(_loc3_ || _loc1_)
                           {
                              addr377:
                              this.§6M§ = this.§1x§ - 1;
                              §§goto(addr389);
                           }
                           this.§+f§.§@!?§(this.§0#§[this.§6M§].red,this.§0#§[this.§6M§].green,this.§0#§[this.§6M§].blue);
                        }
                        else
                        {
                           this.§6M§ = this.§1x§;
                           if(!_loc4_)
                           {
                              addr389:
                              if(this.§0#§[this.§6M§])
                              {
                                 if(_loc4_)
                                 {
                                 }
                              }
                              §§goto(addr428);
                           }
                        }
                        §§goto(addr428);
                     }
                     §§goto(addr377);
                  }
                  else
                  {
                     §§push(this.§4!@§);
                     if(_loc3_)
                     {
                        §§push(-§§pop().x);
                        if(_loc3_ || _loc2_)
                        {
                           §§push(this.§[!1§);
                           if(_loc3_)
                           {
                              §§push(_loc1_);
                              if(_loc3_)
                              {
                                 §§push(§§pop() >= §§pop()[§§pop()].x);
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    §§push(§§pop());
                                    if(_loc3_)
                                    {
                                       if(§§pop())
                                       {
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             §§pop();
                                             if(!(_loc4_ && _loc1_))
                                             {
                                                §§push(this.§0]§);
                                                if(_loc3_)
                                                {
                                                   §§push(-§§pop());
                                                   if(!(_loc4_ && _loc2_))
                                                   {
                                                      §§push(this.§[!1§);
                                                      if(!(_loc4_ && _loc1_))
                                                      {
                                                         §§push(_loc1_);
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            §§push(§§pop() < §§pop()[§§pop()].x);
                                                            if(!(_loc4_ && _loc2_))
                                                            {
                                                               addr110:
                                                               if(§§pop())
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§push(0);
                                                                     if(!_loc4_)
                                                                     {
                                                                        _loc2_ = §§pop();
                                                                        addr117:
                                                                        loop2:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc2_);
                                                                           if(!(_loc3_ || _loc3_))
                                                                           {
                                                                              break;
                                                                              addr143:
                                                                           }
                                                                           loop6:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§'N§);
                                                                              if(_loc3_)
                                                                              {
                                                                                 if(§§pop() >= §§pop().length)
                                                                                 {
                                                                                    this.§1x§ = _loc1_;
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       §§push(this.§'N§);
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          §§push(_loc1_);
                                                                                          if(_loc3_ || _loc2_)
                                                                                          {
                                                                                             §§pop()[§§pop()].gotoAndStop("Selected");
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                (§]F§.getItemByName("TextField_LevelNumberSmall") as §`a§).x = this.§'N§[_loc1_].x;
                                                                                             }
                                                                                             this.§,!D§(_loc1_);
                                                                                             addr185:
                                                                                             §§push(-this.§4!@§.x);
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                §§push(this.§[!1§);
                                                                                                if(!(_loc4_ && _loc1_))
                                                                                                {
                                                                                                   addr200:
                                                                                                   §§push(_loc1_);
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      §§push(§§pop() <= §§pop()[§§pop()].x);
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         addr218:
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               addr222:
                                                                                                               §§pop();
                                                                                                               §§push(this.§0]§);
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  addr228:
                                                                                                                  addr234:
                                                                                                                  addr231:
                                                                                                                  addr230:
                                                                                                                  addr227:
                                                                                                                  if(-§§pop() > this.§[!1§[_loc1_].x)
                                                                                                                  {
                                                                                                                     addr235:
                                                                                                                     §§push(0);
                                                                                                                     if(_loc3_)
                                                                                                                     {
                                                                                                                        break loop2;
                                                                                                                     }
                                                                                                                     §§goto(addr332);
                                                                                                                  }
                                                                                                                  _loc1_++;
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     break loop1;
                                                                                                                  }
                                                                                                                  continue loop0;
                                                                                                               }
                                                                                                               §§goto(addr228);
                                                                                                            }
                                                                                                            §§goto(addr234);
                                                                                                         }
                                                                                                         §§goto(addr228);
                                                                                                      }
                                                                                                      §§goto(addr222);
                                                                                                   }
                                                                                                   §§goto(addr231);
                                                                                                }
                                                                                                §§goto(addr230);
                                                                                             }
                                                                                             §§goto(addr228);
                                                                                          }
                                                                                          §§goto(addr377);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc2_);
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                _loc2_++;
                                                                                                addr266:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc2_);
                                                                                                   §§push(this.§'N§);
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      break loop6;
                                                                                                   }
                                                                                                   continue loop1;
                                                                                                }
                                                                                                addr266:
                                                                                             }
                                                                                             addr280:
                                                                                             §§push(this.§'N§);
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                addr284:
                                                                                                §§push(_loc1_);
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   §§pop()[§§pop()].gotoAndStop("Selected");
                                                                                                   if(_loc3_ || _loc3_)
                                                                                                   {
                                                                                                      (§]F§.getItemByName("TextField_LevelNumberSmall") as §`a§).x = this.§'N§[_loc1_].x;
                                                                                                      this.§,!D§(_loc1_);
                                                                                                      §§goto(addr228);
                                                                                                   }
                                                                                                   addr428:
                                                                                                   this.§0]§ = this.§4!@§.x;
                                                                                                   return;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr377);
                                                                                       }
                                                                                       addr257:
                                                                                    }
                                                                                    §§goto(addr235);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(this.§'N§);
                                                                                    if(_loc3_ || _loc2_)
                                                                                    {
                                                                                       §§push(_loc2_);
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          continue loop2;
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr284);
                                                                                    }
                                                                                    §§goto(addr377);
                                                                                 }
                                                                              }
                                                                              break;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(§§pop() >= §§pop().length)
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    addr275:
                                                                                    this.§1x§ = _loc1_;
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       continue loop0;
                                                                                    }
                                                                                    §§goto(addr280);
                                                                                 }
                                                                                 §§goto(addr377);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(this.§'N§);
                                                                                 if(!(_loc4_ && _loc3_))
                                                                                 {
                                                                                    §§goto(addr257);
                                                                                 }
                                                                              }
                                                                              §§goto(addr284);
                                                                              §§goto(addr266);
                                                                           }
                                                                           continue loop1;
                                                                        }
                                                                        _loc2_ = §§pop();
                                                                        if(!(_loc4_ && _loc1_))
                                                                        {
                                                                           §§goto(addr266);
                                                                        }
                                                                        §§goto(addr275);
                                                                        addr135:
                                                                     }
                                                                     §§goto(addr143);
                                                                  }
                                                                  §§goto(addr117);
                                                               }
                                                               §§goto(addr185);
                                                            }
                                                            §§goto(addr218);
                                                         }
                                                      }
                                                      §§goto(addr228);
                                                   }
                                                   §§goto(addr227);
                                                }
                                                §§goto(addr228);
                                             }
                                             §§goto(addr135);
                                          }
                                          §§goto(addr222);
                                       }
                                       §§goto(addr110);
                                    }
                                    §§goto(addr218);
                                 }
                              }
                              §§goto(addr228);
                           }
                           §§goto(addr200);
                        }
                        §§goto(addr228);
                     }
                     §§goto(addr185);
                  }
               }
               §§push(this.§,r§);
               if(_loc3_)
               {
                  §§goto(addr346);
               }
               break;
            }
            break;
         }
         §§goto(addr332);
         §§push(this.§1x§);
      }
      
      protected function §7]§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            while(§§pop() < this.§[!1§.length)
            {
               §§push(Number(this.§4!@§.x + this.§[!1§[_loc1_].x));
               if(!_loc3_)
               {
                  _loc2_ = §§pop();
                  §§push(Number(Math.abs(_loc2_)));
                  if(!_loc3_)
                  {
                     _loc2_ = §§pop();
                     §§push(_loc2_);
                     if(_loc4_)
                     {
                        if(§§pop() > 1000)
                        {
                           §§push(1000);
                           if(!_loc4_)
                           {
                              continue;
                           }
                           addr52:
                           _loc2_ = Number(§§pop());
                        }
                        if(Math.abs(this.§[!1§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
                        {
                           if(_loc4_)
                           {
                              §§push(this.§[!1§);
                              if(_loc4_ || _loc1_)
                              {
                                 §§push(_loc1_);
                                 if(!_loc3_)
                                 {
                                    §§pop()[§§pop()].mClip.alpha = 1 - _loc2_ / 1000;
                                    if(_loc4_)
                                    {
                                       addr103:
                                       §§push(this.§[!1§);
                                       if(_loc4_ || _loc1_)
                                       {
                                          addr112:
                                          §§push(_loc1_);
                                          if(!(_loc3_ && _loc1_))
                                          {
                                             if(§§pop()[§§pop()].mClip.alpha < 1)
                                             {
                                                §§push(this.§[!1§);
                                                if(!_loc3_)
                                                {
                                                   addr139:
                                                   §§push(_loc1_);
                                                   if(!_loc3_)
                                                   {
                                                      addr142:
                                                      (§§pop()[§§pop()] as §'!,§).setEnabled(false);
                                                   }
                                                   else
                                                   {
                                                      addr151:
                                                      (§§pop()[§§pop()] as §'!,§).setEnabled(true);
                                                      if(!_loc4_)
                                                      {
                                                         continue loop0;
                                                      }
                                                   }
                                                   _loc1_++;
                                                   if(_loc3_)
                                                   {
                                                      break;
                                                   }
                                                   continue loop0;
                                                }
                                                §§goto(addr151);
                                             }
                                             else
                                             {
                                                §§push(this.§[!1§);
                                             }
                                             §§goto(addr151);
                                             §§push(_loc1_);
                                          }
                                          §§goto(addr142);
                                       }
                                       §§goto(addr139);
                                    }
                                    §§goto(addr142);
                                 }
                                 §§goto(addr151);
                              }
                              §§goto(addr112);
                           }
                           break;
                        }
                        §§goto(addr103);
                     }
                  }
               }
               §§goto(addr52);
            }
            return;
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            if(§]F§.stage)
            {
               §]F§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§7!8§);
            }
            super.deActivate();
            this.§+3§();
            if(_loc1_)
            {
               (§]F§.getItemByName("Button_Back") as §7-§).setComponentVisualState(§0K§.COMPONENT_STATE_ACTIVE_DEFAULT);
               if(_loc1_)
               {
                  addr69:
                  §[4§.§ !7§ = null;
               }
            }
            return;
         }
         §§goto(addr69);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§8!K§);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     addr57:
                     this.§8!K§.stop();
                     if(!(_loc2_ && _loc1_))
                     {
                        addr65:
                        this.§8!K§ = null;
                        if(_loc1_)
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
            §§goto(addr57);
         }
         §§goto(addr65);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-P§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param2.length > 0);
         §§push(param2.length > 0);
         if(!_loc5_)
         {
            if(§§pop())
            {
               if(!_loc5_)
               {
                  §§pop();
                  addr31:
                  if(param3 is §0!I§)
                  {
                     addr40:
                     §§push((param3 as §0!I§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection");
                     if(!((param3 as §0!I§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection"))
                     {
                        §§pop();
                        §§push((param3 as §0!I§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15");
                        if(!(_loc5_ && param2))
                        {
                           addr58:
                           if(§§pop())
                           {
                              addr81:
                              if(_loc6_ || param3)
                              {
                                 §§push(this.§3t§);
                              }
                              var _loc4_:* = param2;
                              if(!(_loc5_ && param3))
                              {
                                 §§push("BACK");
                                 if(!_loc5_)
                                 {
                                    §§push(_loc4_);
                                    if(_loc6_ || param3)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(!_loc5_)
                                          {
                                             §§push(0);
                                             if(!_loc6_)
                                             {
                                             }
                                          }
                                          else
                                          {
                                             addr214:
                                             §§push(2);
                                             if(!_loc6_)
                                             {
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §§push("NEXT");
                                          if(_loc6_ || this)
                                          {
                                             addr170:
                                             §§push(_loc4_);
                                             if(_loc6_ || param2)
                                             {
                                                addr178:
                                                if(§§pop() === §§pop())
                                                {
                                                   if(_loc6_)
                                                   {
                                                      §§push(1);
                                                      if(!(_loc6_ || param2))
                                                      {
                                                         addr229:
                                                      }
                                                      §§goto(addr234);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr214);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push("PREV");
                                                   if(!_loc5_)
                                                   {
                                                      addr193:
                                                      §§push(_loc4_);
                                                      if(_loc6_ || param2)
                                                      {
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               §§goto(addr214);
                                                            }
                                                            else
                                                            {
                                                               addr221:
                                                               §§push(3);
                                                               if(!(_loc5_ && param1))
                                                               {
                                                                  §§goto(addr229);
                                                               }
                                                               §§goto(addr234);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push("FULLSCREEN_BUTTON");
                                                         }
                                                         §§goto(addr221);
                                                      }
                                                      addr220:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         §§goto(addr221);
                                                      }
                                                      else
                                                      {
                                                         addr234:
                                                         switch(§§pop())
                                                         {
                                                            case 0:
                                                               §,!F§.§;v§("Menu_Back");
                                                               if(_loc6_ || param2)
                                                               {
                                                                  mNextState = §for §.§>9§;
                                                                  if(!(_loc5_ && param3))
                                                                  {
                                                                     break;
                                                                  }
                                                                  addr120:
                                                                  break;
                                                               }
                                                               addr132:
                                                               break;
                                                            case 1:
                                                               this.§;`§();
                                                               if(_loc6_)
                                                               {
                                                                  §§goto(addr120);
                                                               }
                                                               else
                                                               {
                                                                  addr129:
                                                                  AngryBirdsFP11.§ y§.§-!$§();
                                                                  §§goto(addr132);
                                                               }
                                                            case 2:
                                                               this.§&`§();
                                                               break;
                                                            case 3:
                                                               §,!F§.§;v§("Menu_Confirm");
                                                               §§goto(addr129);
                                                         }
                                                         return;
                                                         §§push(4);
                                                      }
                                                      §§goto(addr234);
                                                   }
                                                   §§push(_loc4_);
                                                }
                                                §§goto(addr234);
                                             }
                                             §§goto(addr220);
                                          }
                                          §§goto(addr193);
                                       }
                                       §§goto(addr234);
                                    }
                                    §§goto(addr178);
                                 }
                                 §§goto(addr170);
                              }
                              §§goto(addr221);
                           }
                           §§goto(addr81);
                        }
                        if(!§§pop())
                        {
                           if(!_loc5_)
                           {
                              §[4§.§]a§(§[4§.§![§(param2.toLowerCase()));
                           }
                           mNextState = StateCutScene.§>9§;
                        }
                        §§goto(addr81);
                     }
                     §§goto(addr58);
                  }
                  §§goto(addr81);
               }
               §§goto(addr40);
            }
            §§goto(addr31);
         }
         §§goto(addr40);
      }
      
      protected function §;`§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc2_))
         {
            §,!F§.§;v§("Menu_Confirm");
            if(!(_loc4_ && _loc1_))
            {
               if(!this.§3t§)
               {
                  if(_loc3_)
                  {
                     var _loc1_:*;
                     §§push((_loc1_ = this).§,r§);
                     if(_loc3_ || _loc3_)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc2_:* = §§pop();
                     if(!_loc4_)
                     {
                        _loc1_.§,r§ = _loc2_;
                     }
                     if(!(_loc4_ && _loc1_))
                     {
                        this.§%H§(this.§,r§);
                     }
                  }
               }
            }
         }
      }
      
      protected function §&`§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc2_))
         {
            §,!F§.§;v§("Menu_Confirm");
            if(_loc4_ || _loc1_)
            {
               if(!this.§3t§)
               {
                  if(_loc4_ || _loc1_)
                  {
                     var _loc1_:*;
                     §§push((_loc1_ = this).§,r§);
                     if(_loc4_ || _loc2_)
                     {
                        §§push(§§pop() - 1);
                     }
                     var _loc2_:* = §§pop();
                     if(!(_loc3_ && _loc3_))
                     {
                        _loc1_.§,r§ = _loc2_;
                     }
                     if(!_loc3_)
                     {
                        addr91:
                        this.§%H§(this.§,r§);
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr91);
      }
      
      public function §-F§() : void
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
            this.§0#§ = [];
            if(_loc9_)
            {
               this.§-W§ = [];
               if(_loc9_)
               {
                  addr46:
                  this.§,r§ = §[4§.§2A§(§[4§.§ m§).§>!=§;
                  if(_loc9_ || this)
                  {
                     this.§6M§ = this.§,r§;
                     if(!_loc9_)
                     {
                     }
                     addr70:
                     var _loc2_:§2n§ = §[4§.§2A§(§[4§.§ m§);
                     var _loc3_:* = Number(0);
                     while(_loc3_ < _loc2_.pageIndexes.length)
                     {
                        _loc4_ = _loc2_.§1M§(_loc2_.pageIndexes[_loc3_]);
                        if(_loc9_)
                        {
                           §§push(this.§0#§);
                           if(_loc9_ || _loc3_)
                           {
                              §§pop().push(_loc2_.§7=§(_loc3_));
                              if(_loc10_ && this)
                              {
                                 continue;
                              }
                              addr111:
                              §§push(this.§-W§);
                           }
                           §§pop().push(_loc2_.§"Q§(_loc3_));
                           if(_loc10_)
                           {
                              continue;
                           }
                           §§push(this.§0!"§(_loc4_,_loc3_,_loc1_,_loc2_));
                           if(!_loc10_)
                           {
                              §§push(Number(§§pop()));
                              if(_loc9_ || this)
                              {
                                 addr135:
                                 _loc1_ = §§pop();
                                 if(_loc9_ || _loc1_)
                                 {
                                    §§push(_loc3_);
                                    if(_loc9_)
                                    {
                                       addr156:
                                       §§push(§§pop() + 1);
                                       if(_loc9_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    _loc3_ = §§pop();
                                 }
                                 continue;
                              }
                              §§goto(addr156);
                           }
                           §§goto(addr135);
                        }
                        §§goto(addr111);
                     }
                     if(_loc9_ || _loc2_)
                     {
                        this.§+f§ = new §4V§(this.§0#§[this.§,r§].red,this.§0#§[this.§,r§].green,this.§0#§[this.§,r§].blue,1);
                        if(!_loc10_)
                        {
                           §]F§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§+f§);
                           if(!_loc10_)
                           {
                              if(_loc2_.§-!'§)
                              {
                                 if(_loc10_)
                                 {
                                 }
                                 addr242:
                                 if(_loc2_.§6!>§)
                                 {
                                    if(!_loc10_)
                                    {
                                       §§goto(addr247);
                                    }
                                 }
                                 else
                                 {
                                    §]F§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
                                 }
                                 §§goto(addr286);
                              }
                              else
                              {
                                 §]F§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
                                 §§goto(addr242);
                              }
                           }
                           _loc6_ = new (_loc5_ = §]!>§.§8!@§(_loc2_.§-!'§))();
                           if(!(_loc10_ && _loc1_))
                           {
                              §]F§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
                              if(_loc9_)
                              {
                                 §§goto(addr242);
                              }
                              addr247:
                              _loc8_ = new (_loc7_ = §]!>§.§8!@§(_loc2_.§6!>§))();
                              §]F§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
                              if(!(_loc10_ && this))
                              {
                                 addr286:
                                 this.§6c§();
                              }
                              if(§]t§ == StateCutScene.§>9§)
                              {
                                 §]t§ = "";
                                 this.§%H§(this.§1x§);
                              }
                              else
                              {
                                 this.§%H§(this.§,r§,true);
                              }
                              return;
                           }
                           §§goto(addr286);
                        }
                     }
                     §§goto(addr242);
                  }
                  §§goto(addr70);
               }
               this.§1x§ = this.§,r§;
               §§goto(addr70);
            }
            §§goto(addr46);
         }
         §§goto(addr70);
      }
      
      protected function §0!"§(param1:Array, param2:int, param3:Number, param4:§2n§) : Number
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
         var _loc6_:Class = §]!>§.§8!@§(this.§-W§[param2]);
         var _loc7_:* = Number(0);
         while(_loc7_ < param1.length)
         {
            _loc10_ = param1[_loc7_];
            if(_loc15_ || param2)
            {
               §§push(AngryBirdsFP11.sUserProgress.isLevelOpen(_loc10_));
               if(_loc15_)
               {
                  §§push(Boolean(§§pop()));
               }
               _loc11_ = §§pop();
               if(!(_loc15_ || param3))
               {
                  break;
               }
            }
            _loc12_ = this.§=P§(_loc10_,_loc11_,_loc6_,_loc7_,param2);
            (_loc13_ = <Button/>).@name = _loc10_;
            if(_loc14_)
            {
               continue;
            }
            §§push(_loc11_);
            if(!_loc14_)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc14_ && param3))
               {
                  if(!§§pop())
                  {
                     if(_loc15_)
                     {
                        §§pop();
                        if(_loc15_ || param2)
                        {
                           §§push(AngryBirdsFP11.§%Z§);
                           if(_loc15_ || param1)
                           {
                              addr131:
                              §§push(Boolean(§§pop()));
                              if(!_loc14_)
                              {
                                 addr134:
                                 if(§§pop())
                                 {
                                    addr135:
                                    _loc13_.@MouseUp = _loc10_;
                                    if(!_loc14_)
                                    {
                                       addr140:
                                       _loc13_.@scaleOnMouseOver = "True";
                                       if(!(_loc14_ && param2))
                                       {
                                          _loc5_[0].push(new Array(_loc13_,null,_loc12_));
                                          if(!(_loc14_ && param1))
                                          {
                                             addr176:
                                             addr177:
                                             if(_loc11_)
                                             {
                                                addr178:
                                                _loc12_.MovieClip_Stars.mouseEnabled = false;
                                             }
                                             _loc12_.TextField_LevelNum.text.mouseEnabled = false;
                                             if(_loc15_ || param1)
                                             {
                                                §§push(_loc7_);
                                                if(_loc15_)
                                                {
                                                   §§push(§§pop() + 1);
                                                   if(_loc15_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                                _loc7_ = §§pop();
                                             }
                                             continue;
                                          }
                                          §§goto(addr178);
                                       }
                                    }
                                    §§goto(addr176);
                                 }
                                 §§goto(addr140);
                              }
                              §§goto(addr177);
                           }
                           §§goto(addr176);
                        }
                        §§goto(addr135);
                     }
                     §§goto(addr176);
                  }
                  §§goto(addr134);
               }
               §§goto(addr176);
            }
            §§goto(addr131);
         }
         _loc8_ = <Repeater/>;
         §§push(param1);
         if(!(_loc14_ && this))
         {
            §§push(§§pop().length == 15);
            if(!(_loc14_ && param1))
            {
               if(!§§pop())
               {
                  if(!_loc14_)
                  {
                     §§pop();
                     if(_loc15_ || param1)
                     {
                        addr245:
                        if(param1.length == 10)
                        {
                           _loc8_.@name = "Repeater_LevelSelection15";
                           if(_loc15_)
                           {
                              addr255:
                              _loc8_.@button = this.§-W§[param2];
                              _loc8_.@enabled = "True";
                              if(_loc15_)
                              {
                                 addr266:
                                 _loc8_.@buttonSelectionType = "NO_SELECTION";
                              }
                           }
                           _loc8_.@fromLibrary = "true";
                           var _loc9_:§]q§;
                           (_loc9_ = new §]q§(_loc8_,this.§4!@§,null,null)).§=i§(_loc5_);
                           if(!_loc14_)
                           {
                              _loc9_.setVisibility(true);
                              if(_loc15_)
                              {
                                 _loc9_.x += param3;
                                 if(_loc15_ || param2)
                                 {
                                    this.§4!@§.§9!@§(_loc9_);
                                    if(!_loc14_)
                                    {
                                       this.§[!1§.push(_loc9_);
                                       if(_loc15_)
                                       {
                                          addr326:
                                          §§push(param3);
                                          if(_loc15_)
                                          {
                                             §§push(§§pop() + AngryBirdsFP11.screenWidth);
                                             if(!_loc14_)
                                             {
                                                §§push(Number(§§pop()));
                                                if(_loc15_)
                                                {
                                                   addr337:
                                                   param3 = §§pop();
                                                   §§push(param3);
                                                }
                                             }
                                             return §§pop();
                                          }
                                          §§goto(addr337);
                                       }
                                    }
                                    §§goto(addr326);
                                 }
                              }
                              §§goto(addr337);
                           }
                           §§goto(addr326);
                        }
                        else
                        {
                           _loc8_.@name = "Repeater_LevelSelection";
                        }
                        §§goto(addr255);
                     }
                     §§goto(addr266);
                  }
               }
            }
         }
         §§goto(addr245);
      }
      
      protected function §=P§(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:Number = NaN;
         var _loc6_:MovieClip;
         (_loc6_ = new param3()).TextField_LevelNum.text.text = (param4 + 1).toString();
         if(!(_loc8_ && param2))
         {
            §§push(param2);
            if(_loc9_ || param3)
            {
               if(§§pop())
               {
                  if(_loc9_ || param1)
                  {
                     _loc6_.gotoAndStop("Open");
                     addr57:
                     _loc6_.MovieClip_MEInUse.visible = false;
                     if(_loc9_)
                     {
                        §§push(AngryBirdsFP11.sUserProgress);
                        if(_loc9_ || param2)
                        {
                           §§push(param1);
                           if(!(_loc8_ && param3))
                           {
                              §§push(§§pop().§3I§(§§pop()));
                              if(!(_loc8_ && param2))
                              {
                                 if(§§pop() == 100)
                                 {
                                    if(_loc9_ || param2)
                                    {
                                       _loc6_.MovieClip_Feather.gotoAndStop("Visible");
                                    }
                                    _loc6_.MovieClip_Feather.mouseEnabled = false;
                                    if(_loc9_)
                                    {
                                       addr117:
                                    }
                                 }
                                 else
                                 {
                                    _loc6_.MovieClip_Feather.gotoAndStop("Hidden");
                                    _loc6_.MovieClip_Feather.mouseEnabled = false;
                                 }
                                 §§goto(addr147);
                              }
                           }
                        }
                        §§goto(addr156);
                     }
                     §§goto(addr117);
                  }
                  §§goto(addr57);
               }
               else
               {
                  _loc6_.gotoAndStop("Locked");
                  if(!(_loc8_ && param1))
                  {
                     addr147:
                     _loc6_.isOpen = param2;
                     §§goto(addr151);
                  }
               }
               §§goto(addr156);
            }
            addr151:
            if(param2)
            {
               addr156:
               _loc7_ = AngryBirdsFP11.sUserProgress.§%i§(param1);
               _loc6_.MovieClip_Stars.gotoAndStop(_loc7_.toString() + "_stars");
            }
            return _loc6_;
         }
         §§goto(addr57);
      }
      
      protected function §6c§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(_loc5_)
         {
            if(this.§[!1§.length == 1)
            {
               if(!(_loc6_ && _loc1_))
               {
                  §§goto(addr36);
               }
            }
            var _loc3_:* = Number(0);
            if(_loc5_)
            {
               this.§;O§ = new Dictionary();
            }
            var _loc4_:int = 0;
            while(_loc4_ < this.§[!1§.length)
            {
               _loc1_ = §]!>§.§8!@§("Button_Dot");
               _loc2_ = new _loc1_();
               _loc2_.x = AngryBirdsFP11.screenWidth / 2 + _loc3_ - this.§[!1§.length * _loc2_.width / 2;
               _loc2_.y = (§]F§.getItemByName("Button_Next") as §7-§).y - _loc2_.height / 2;
               if(_loc4_ == this.§,r§)
               {
                  if(!_loc6_)
                  {
                     _loc2_.gotoAndStop("Selected");
                     (§]F§.getItemByName("TextField_LevelNumberSmall") as §`a§).x = _loc2_.x;
                     if(_loc5_)
                     {
                        (§]F§.getItemByName("TextField_LevelNumberSmall") as §`a§).y = _loc2_.y - _loc2_.height;
                        if(!(_loc6_ && _loc2_))
                        {
                           this.§,!D§(_loc4_);
                           if(!(_loc6_ && _loc3_))
                           {
                              addr140:
                              this.§4=§.mClip.addChild(_loc2_);
                              this.§;O§[_loc2_] = _loc4_;
                              addr145:
                              if(_loc5_ || _loc1_)
                              {
                                 addr167:
                                 this.§'N§.push(_loc2_);
                                 if(_loc5_)
                                 {
                                    addr173:
                                    §§push(_loc3_);
                                    if(_loc5_ || _loc2_)
                                    {
                                       §§push(Number(§§pop() + _loc2_.width));
                                    }
                                    _loc3_ = §§pop();
                                    if(!_loc6_)
                                    {
                                       addr188:
                                       _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§80§);
                                       if(!(_loc5_ || _loc2_))
                                       {
                                          continue;
                                       }
                                    }
                                    _loc2_.buttonMode = true;
                                 }
                                 _loc4_++;
                                 continue;
                              }
                              §§goto(addr188);
                              addr136:
                           }
                           §§goto(addr167);
                        }
                        §§goto(addr173);
                     }
                     §§goto(addr145);
                  }
                  §§goto(addr136);
               }
               else
               {
                  _loc2_.gotoAndStop("UnSelected");
               }
               §§goto(addr140);
            }
            if(_loc5_ || _loc2_)
            {
               §§push(this.§[!1§.length * _loc2_.width);
               if(!(_loc6_ && _loc2_))
               {
                  §§push(§§pop() / 2);
                  if(!(_loc6_ && _loc1_))
                  {
                     addr239:
                     §§push(§§pop() + _loc2_.width * 1.5);
                     if(!(_loc6_ && _loc2_))
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  _loc3_ = §§pop();
                  if(_loc5_)
                  {
                     (§]F§.getItemByName("Button_Next") as §7-§).x = AngryBirdsFP11.screenWidth / 2;
                     if(_loc5_)
                     {
                        §§goto(addr267);
                     }
                     §§goto(addr312);
                  }
                  §§goto(addr267);
               }
               §§goto(addr239);
            }
            addr267:
            (§]F§.getItemByName("Button_Prev") as §7-§).x = AngryBirdsFP11.screenWidth / 2;
            if(!_loc6_)
            {
               (§]F§.getItemByName("Button_Next") as §7-§).x = (§]F§.getItemByName("Button_Next") as §7-§).x + (_loc3_ + 10);
               if(_loc5_ || _loc2_)
               {
                  addr312:
                  (§]F§.getItemByName("Button_Prev") as §7-§).x = (§]F§.getItemByName("Button_Prev") as §7-§).x - (_loc3_ + 10);
               }
            }
            return;
         }
         addr36:
      }
      
      protected function §+3§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§+f§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  addr34:
                  if(_loc3_ || this)
                  {
                     §§push(this.§+f§);
                  }
                  var _loc1_:int = 0;
                  while(true)
                  {
                     if(_loc1_ >= this.§'N§.length)
                     {
                        if(!_loc2_)
                        {
                           this.§'N§ = [];
                           break;
                        }
                        break;
                     }
                     §§push(this.§4=§);
                     if(!(_loc2_ && this))
                     {
                        if(!§§pop().mClip.contains(this.§'N§[_loc1_]))
                        {
                           continue;
                        }
                        if(!(_loc3_ || _loc1_))
                        {
                           break;
                        }
                        this.§'N§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§80§);
                        §§push(this.§4=§);
                     }
                     §§pop().mClip.removeChild(this.§'N§[_loc1_]);
                  }
                  loop1:
                  while(true)
                  {
                     §§push(this.§4!@§);
                     while(§§pop().mClip.numChildren > 0)
                     {
                        §§push(this.§4!@§);
                        if(_loc3_ || this)
                        {
                           continue loop1;
                        }
                     }
                     this.§[!1§ = [];
                     return;
                  }
               }
               §§goto(addr34);
            }
            §§pop().clean();
         }
         §§goto(addr34);
      }
      
      protected function §80§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            if(!this.§3t§)
            {
               if(_loc2_)
               {
                  this.§%H§(this.§;O§[param1.target]);
               }
            }
         }
      }
      
      protected function §'B§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if(!this.§3t§)
            {
               if(!_loc3_)
               {
                  addr28:
                  mNextState = §6!@§.§>9§;
               }
            }
            return;
         }
         §§goto(addr28);
      }
      
      protected function §%H§(param1:int, param2:Boolean = false) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && param2))
         {
            this.§3t§ = true;
            if(_loc6_)
            {
               §§push(param1);
               if(_loc6_)
               {
                  if(§§pop() > this.§[!1§.length - 1)
                  {
                     if(_loc6_ || _loc3_)
                     {
                        §§push(this.§[!1§);
                        if(_loc6_)
                        {
                           §§push(§§pop().length - 1);
                           if(_loc6_)
                           {
                              §§push(int(§§pop()));
                              if(!(_loc7_ && _loc3_))
                              {
                                 param1 = §§pop();
                                 if(_loc6_)
                                 {
                                    addr81:
                                    this.§,r§ = param1;
                                    addr84:
                                    §§push(this.§,r§);
                                    if(_loc6_)
                                    {
                                       §§push(this.§1x§);
                                       if(_loc6_ || _loc3_)
                                       {
                                          if(§§pop() > §§pop())
                                          {
                                             if(_loc6_ || param1)
                                             {
                                                this.§6M§ = this.§1x§ + 1;
                                                if(!(_loc7_ && param1))
                                                {
                                                   addr129:
                                                   §§push(-this.§[!1§[param1].x);
                                                   if(!(_loc7_ && _loc3_))
                                                   {
                                                      addr152:
                                                      §§push(Number(§§pop()));
                                                   }
                                                   var _loc3_:* = §§pop();
                                                   var _loc4_:Number = this.§[!1§[param1].x + this.§4!@§.x;
                                                   var _loc5_:*;
                                                   §§push(_loc5_ = Number(Math.abs(_loc4_)));
                                                   if(_loc6_)
                                                   {
                                                      §§push(§§pop() / 1024);
                                                      if(!(_loc7_ && this))
                                                      {
                                                         §§push(Number(§§pop()));
                                                         if(_loc6_ || param1)
                                                         {
                                                            §§push(§§pop());
                                                            if(!_loc7_)
                                                            {
                                                               _loc5_ = §§pop();
                                                               addr201:
                                                               if(_loc6_)
                                                               {
                                                                  §§push(§<m§);
                                                               }
                                                               _loc5_ = §§pop();
                                                               if(!(_loc7_ && param1))
                                                               {
                                                                  §§push(this.§8!K§);
                                                                  if(!(_loc7_ && param2))
                                                                  {
                                                                     if(§§pop() != null)
                                                                     {
                                                                        if(!(_loc7_ && _loc3_))
                                                                        {
                                                                           §§push(this.§8!K§);
                                                                           if(!_loc7_)
                                                                           {
                                                                              §§pop().stop();
                                                                              addr232:
                                                                              §§push(param2);
                                                                              if(_loc6_)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       this.§4!@§.x = _loc3_;
                                                                                       if(_loc6_ || param2)
                                                                                       {
                                                                                          addr288:
                                                                                          if(param2)
                                                                                          {
                                                                                             if(_loc6_ || _loc3_)
                                                                                             {
                                                                                                addr297:
                                                                                                this.§&!2§();
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr302:
                                                                                             this.§8!K§.play();
                                                                                          }
                                                                                          §§goto(addr303);
                                                                                          addr249:
                                                                                       }
                                                                                       §§goto(addr297);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr276:
                                                                                       §§push(this.§8!K§);
                                                                                       if(_loc6_ || this)
                                                                                       {
                                                                                          addr285:
                                                                                          §§pop().onComplete = this.§&!2§;
                                                                                          §§goto(addr288);
                                                                                       }
                                                                                       §§goto(addr302);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    this.§8!K§ = §@7§.§@6§.§3!%§(this.§4!@§,{"x":_loc3_},null,_loc5_,§@7§.§[^§);
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       §§goto(addr276);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr303);
                                                                              }
                                                                              §§goto(addr288);
                                                                           }
                                                                           §§goto(addr302);
                                                                        }
                                                                        §§goto(addr288);
                                                                     }
                                                                     §§goto(addr232);
                                                                  }
                                                                  §§goto(addr285);
                                                               }
                                                               §§goto(addr249);
                                                            }
                                                            §§push(§§pop() * §§pop());
                                                            if(!_loc6_)
                                                            {
                                                            }
                                                            §§goto(addr201);
                                                         }
                                                         §§push(Number(§§pop()));
                                                      }
                                                   }
                                                   §§goto(addr201);
                                                }
                                                §§goto(addr129);
                                             }
                                             addr124:
                                             this.§6M§ = this.§1x§ - 1;
                                          }
                                          else
                                          {
                                             addr123:
                                             if(this.§,r§ < this.§1x§)
                                             {
                                                §§goto(addr124);
                                             }
                                          }
                                          §§goto(addr129);
                                       }
                                       §§goto(addr123);
                                    }
                                 }
                                 §§goto(addr84);
                              }
                              §§goto(addr123);
                           }
                           §§goto(addr152);
                        }
                        §§goto(addr129);
                     }
                  }
                  else
                  {
                     §§push(param1);
                     if(_loc6_ || param2)
                     {
                        addr71:
                        §§push(0);
                        if(!_loc7_)
                        {
                           if(§§pop() < §§pop())
                           {
                              addr75:
                              §§push(0);
                              if(_loc6_)
                              {
                                 addr78:
                                 param1 = §§pop();
                                 if(_loc7_)
                                 {
                                 }
                                 §§goto(addr81);
                              }
                              §§goto(addr123);
                           }
                           §§goto(addr81);
                        }
                        §§goto(addr123);
                     }
                     §§goto(addr78);
                  }
                  §§goto(addr81);
               }
               §§goto(addr71);
            }
            §§goto(addr81);
         }
         §§goto(addr75);
      }
      
      protected function §&!2§() : void
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
               if(§§pop() >= this.§'N§.length)
               {
                  if(_loc3_ || this)
                  {
                     this.§3t§ = false;
                     §[4§.§2A§(§[4§.§ m§).§>!=§ = this.§,r§;
                     break;
                  }
                  break;
               }
               §§push(_loc1_);
               if(_loc2_)
               {
                  continue;
               }
               if(§§pop() == this.§,r§)
               {
                  if(_loc2_ && _loc1_)
                  {
                     break;
                  }
                  §§push(this.§'N§);
                  if(!(_loc2_ && _loc3_))
                  {
                     §§push(_loc1_);
                     if(!_loc2_)
                     {
                        §§pop()[§§pop()].gotoAndStop("Selected");
                        (§]F§.getItemByName("TextField_LevelNumberSmall") as §`a§).x = this.§'N§[_loc1_].x;
                        this.§,!D§(_loc1_);
                        continue loop0;
                     }
                  }
                  else
                  {
                     addr76:
                     §§push(_loc1_);
                  }
                  §§pop()[§§pop()].gotoAndStop("UnSelected");
                  if(!(_loc3_ || _loc1_))
                  {
                     break;
                  }
                  continue loop0;
               }
               §§push(this.§'N§);
               §§goto(addr76);
            }
            return;
         }
      }
      
      protected function §,!D§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            (§]F§.getItemByName("TextField_LevelNumberSmall") as §`a§).§@w§.text = §[4§.§2A§(§[4§.§ m§).pageIndexes[param1];
         }
      }
   }
}
