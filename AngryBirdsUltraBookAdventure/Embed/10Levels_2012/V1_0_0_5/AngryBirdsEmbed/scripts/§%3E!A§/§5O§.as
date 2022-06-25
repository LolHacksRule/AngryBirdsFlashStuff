package §>!A§
{
   import §"!&§.§#!,§;
   import §-!F§.§&!A§;
   import §-!F§.§^h§;
   import §-!F§.§`!&§;
   import §5H§.§[k§;
   import §6J§.§5j§;
   import §6J§.§?S§;
   import §87§.§<8§;
   import §<!G§.§!I§;
   import §<!G§.§^3§;
   import §@D§.§6I§;
   import §`F§.§,B§;
   import §`F§.§?!3§;
   import §class§.§'3§;
   import §class§.§3C§;
   import §class§.§3D§;
   import §class§.§?q§;
   import §class§.§use §;
   import com.rovio.assets.§'!H§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §5O§ extends §#!,§
   {
      
      public static const §?x§:String = "LevelSelectionState";
      
      protected static const §?!=§:Number = 0.5;
      
      public static var §-!A§:String = "";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §?x§ = "LevelSelectionState";
            if(!_loc1_)
            {
               addr24:
               §?!=§ = 0.5;
               if(!_loc1_)
               {
                  §-!A§ = "";
               }
            }
            return;
         }
         §§goto(addr24);
      }
      
      protected var §+o§:Boolean = false;
      
      protected var §6!1§:§3C§;
      
      protected var §>!$§:§3C§;
      
      protected var §`!=§:MovieClip;
      
      protected var §9]§:Array;
      
      protected var § K§:Array;
      
      protected var §7S§:int = 0;
      
      protected var §!!!§:int = 0;
      
      protected var §[!6§:int = 0;
      
      protected var §;!9§:Boolean = false;
      
      protected var §^!H§:§?!3§ = null;
      
      protected var §?!A§:Dictionary;
      
      protected var §`f§:Array;
      
      protected var § !A§:Array;
      
      protected var §<!4§:§<8§;
      
      protected var §6K§:Number = 0;
      
      public function §5O§(param1:Boolean = false, param2:String = "LevelSelectionState")
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
               this.§+#§();
            }
         }
         loop0:
         while(true)
         {
            §§push(this.§>!$§);
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
               §§push(this.§>!$§);
               if(_loc2_ || this)
               {
                  continue loop0;
               }
            }
            addr74:
            this.§ K§ = [];
            if(_loc2_)
            {
               this.§9]§ = [];
            }
            addr82:
            return;
         }
      }
      
      protected function §+#§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §[=§ = new §^3§(this);
            if(!_loc1_)
            {
               §[=§.init(§!I§.§7y§.Views.View_LevelSelection[0]);
               if(_loc2_ || this)
               {
                  this.§>!$§ = §[=§.getItemByName("Container_LevelRepeaters") as §3C§;
                  if(_loc1_ && _loc2_)
                  {
                  }
                  §§goto(addr87);
               }
            }
            this.§6!1§ = §[=§.getItemByName("Container_LevelSelection") as §3C§;
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
            §§push(§[k§.§&@§);
            if(_loc1_)
            {
               §§pop().clearLevel();
               if(_loc1_)
               {
                  addr29:
                  §[k§.§&@§.§`!G§(false);
                  this.§0w§();
                  if(!_loc2_)
                  {
                     AngryBirdsFP11.§<!#§();
                     if(this.§ K§.length == 1)
                     {
                        (§[=§.getItemByName("Button_Prev") as §?q§).setVisibility(false);
                        (§[=§.getItemByName("Button_Next") as §?q§).setVisibility(false);
                        (§[=§.getItemByName("TextField_LevelNumberSmall") as §3D§).setVisibility(false);
                        addr114:
                        this.§6K§ = this.§>!$§.x;
                     }
                     else
                     {
                        (§[=§.getItemByName("Button_Prev") as §?q§).setVisibility(true);
                        if(_loc1_ || _loc2_)
                        {
                           (§[=§.getItemByName("Button_Next") as §?q§).setVisibility(true);
                           if(!_loc2_)
                           {
                              addr107:
                              (§[=§.getItemByName("TextField_LevelNumberSmall") as §3D§).setVisibility(true);
                              §§goto(addr114);
                           }
                           §§goto(addr124);
                        }
                     }
                     if(§[=§.stage)
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
         §[=§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§"!#§);
      }
      
      protected function §"!#§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(this.§ K§.length <= 1)
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
               this.§9!8§();
               if(!(_loc2_ || _loc2_))
               {
                  addr68:
                  this.§3!!§();
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
            if(§§pop() != §#!,§.STATE_STATUS_RUNNING)
            {
               if(!_loc3_)
               {
                  §§goto(addr58);
               }
            }
            else
            {
               this.§+y§();
            }
            this.§2!G§();
            if(_loc4_)
            {
               if(mNextState.length > 0)
               {
                  if(!_loc3_)
                  {
                     return §#!,§.STATE_STATUS_COMPLETED;
                  }
               }
            }
            return §#!,§.STATE_STATUS_RUNNING;
         }
         addr58:
         return _loc2_;
      }
      
      protected function §+y§() : void
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
               §§push(this.§9]§);
               loop2:
               while(true)
               {
                  if(§§pop() < §§pop().length)
                  {
                     §§push(this.§>!$§);
                     if(_loc3_)
                     {
                        §§push(-§§pop().x);
                        if(_loc3_)
                        {
                           §§push(this.§ K§);
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
                                             §§push(this.§6K§);
                                             if(!_loc4_)
                                             {
                                                §§push(-§§pop());
                                                if(!(_loc4_ && this))
                                                {
                                                   addr76:
                                                   §§push(this.§ K§);
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
                                                                  §§push(this.§9]§);
                                                                  if(!_loc3_)
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                                  if(§§pop() >= §§pop().length)
                                                                  {
                                                                     this.§[!6§ = _loc1_;
                                                                     if(!(_loc4_ && this))
                                                                     {
                                                                        §§push(this.§9]§);
                                                                        if(!_loc4_)
                                                                        {
                                                                           §§push(_loc1_);
                                                                           if(!(_loc4_ && _loc3_))
                                                                           {
                                                                              §§pop()[§§pop()].gotoAndStop("Selected");
                                                                              if(_loc3_ || this)
                                                                              {
                                                                                 (§[=§.getItemByName("TextField_LevelNumberSmall") as §3D§).x = this.§9]§[_loc1_].x;
                                                                                 if(!(_loc4_ && _loc1_))
                                                                                 {
                                                                                    this.§=e§(_loc1_);
                                                                                    if(!(_loc4_ && this))
                                                                                    {
                                                                                       addr178:
                                                                                       §§push(-this.§>!$§.x);
                                                                                       if(!(_loc4_ && _loc1_))
                                                                                       {
                                                                                          §§push(this.§ K§);
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
                                                                                                            §§push(this.§6K§);
                                                                                                            if(!(_loc4_ && _loc1_))
                                                                                                            {
                                                                                                               addr243:
                                                                                                               if(-§§pop() > this.§ K§[_loc1_].x)
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
                                                                                                                     §§push(this.§9]§);
                                                                                                                     if(!(_loc3_ || _loc3_))
                                                                                                                     {
                                                                                                                        continue loop2;
                                                                                                                     }
                                                                                                                     if(§§pop() < §§pop().length)
                                                                                                                     {
                                                                                                                        §§push(this.§9]§);
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
                                                                                                                              (§[=§.getItemByName("TextField_LevelNumberSmall") as §3D§).x = this.§9]§[_loc1_].x;
                                                                                                                              if(_loc3_ || this)
                                                                                                                              {
                                                                                                                                 this.§=e§(_loc1_);
                                                                                                                                 break loop2;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     if(_loc3_)
                                                                                                                     {
                                                                                                                        this.§[!6§ = _loc1_;
                                                                                                                        if(_loc3_ || _loc1_)
                                                                                                                        {
                                                                                                                           addr298:
                                                                                                                           §§push(this.§9]§);
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        addr409:
                                                                                                                        addr409:
                                                                                                                        addr363:
                                                                                                                        this.§!!!§ = this.§[!6§ + 1;
                                                                                                                        this.§<!4§.§+J§(this.§`f§[this.§!!!§].red,this.§`f§[this.§!!!§].green,this.§`f§[this.§!!!§].blue);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr356:
                                                                                                                        §§push(this.§7S§);
                                                                                                                        §§push(this.§[!6§);
                                                                                                                        if(_loc3_)
                                                                                                                        {
                                                                                                                           if(§§pop() > §§pop())
                                                                                                                           {
                                                                                                                              §§goto(addr363);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr372:
                                                                                                                              §§push(this.§7S§);
                                                                                                                              §§push(this.§[!6§);
                                                                                                                           }
                                                                                                                           §§goto(addr430);
                                                                                                                        }
                                                                                                                        if(§§pop() < §§pop())
                                                                                                                        {
                                                                                                                           if(!(_loc4_ && _loc2_))
                                                                                                                           {
                                                                                                                              this.§!!!§ = this.§[!6§ - 1;
                                                                                                                              addr387:
                                                                                                                              §§goto(addr363);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           this.§!!!§ = this.§[!6§;
                                                                                                                           if(_loc3_ || _loc1_)
                                                                                                                           {
                                                                                                                              §§goto(addr363);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr430:
                                                                                                                     this.§6K§ = this.§>!$§.x;
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
                                                                                       §§push(this.§[!6§);
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          §§push(this.§7S§);
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
                                                                     §§push(this.§9]§);
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
      
      protected function §2!G§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            while(§§pop() < this.§ K§.length)
            {
               §§push(Number(this.§>!$§.x + this.§ K§[_loc1_].x));
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
                        if(Math.abs(this.§ K§[_loc1_].mClip.alpha - (1 - _loc2_ / 1000)) > 0.0001)
                        {
                           §§push(this.§ K§);
                           if(!(_loc3_ && this))
                           {
                              §§push(_loc1_);
                              if(_loc4_)
                              {
                                 §§pop()[§§pop()].mClip.alpha = 1 - _loc2_ / 1000;
                                 addr118:
                                 §§push(this.§ K§);
                                 if(_loc4_)
                                 {
                                    §§push(_loc1_);
                                    if(!(_loc3_ && this))
                                    {
                                       if(§§pop()[§§pop()].mClip.alpha < 1)
                                       {
                                          §§push(this.§ K§);
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             §§push(_loc1_);
                                             if(!_loc3_)
                                             {
                                                addr147:
                                                (§§pop()[§§pop()] as §&!A§).setEnabled(false);
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
                                          §§push(this.§ K§);
                                       }
                                       §§goto(addr172);
                                    }
                                    (§§pop()[§§pop()] as §&!A§).setEnabled(true);
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
         if(§[=§.stage)
         {
            if(!(_loc2_ && this))
            {
               §[=§.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§"!#§);
            }
         }
         super.deActivate();
         if(!(_loc2_ && _loc2_))
         {
            this.§#z§();
            if(!(_loc2_ && this))
            {
               §§goto(addr71);
            }
            §§goto(addr81);
         }
         addr71:
         (§[=§.getItemByName("Button_Back") as §?q§).setComponentVisualState(§`!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(!_loc2_)
         {
            addr81:
            §5j§.§>N§ = null;
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§^!H§);
            if(_loc1_ || this)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr52:
                     this.§^!H§.stop();
                     if(_loc1_ || this)
                     {
                        this.§^!H§ = null;
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
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^h§) : void
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
                           §§push(param3 is §'3§);
                           if(_loc6_ || this)
                           {
                              addr59:
                              if(§§pop())
                              {
                                 §§push((param3 as §'3§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection");
                                 if(!(_loc5_ && this))
                                 {
                                    addr76:
                                    if(§§pop() || (param3 as §'3§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15")
                                    {
                                       if(_loc6_)
                                       {
                                          addr91:
                                          if(!this.§;!9§)
                                          {
                                             if(_loc6_ || param2)
                                             {
                                                §5j§.§#8§(§5j§.§8[§(param2.toLowerCase()));
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
                                                                                       §6I§.§ ;§("Menu_Back");
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          mNextState = §^q§.§?x§;
                                                                                          if(_loc5_ && param2)
                                                                                          {
                                                                                             addr143:
                                                                                             break;
                                                                                          }
                                                                                       }
                                                                                       break;
                                                                                    case 1:
                                                                                       this.§3!!§();
                                                                                       §§goto(addr143);
                                                                                    case 2:
                                                                                       this.§9!8§();
                                                                                       break;
                                                                                    case 3:
                                                                                       §6I§.§ ;§("Menu_Confirm");
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          AngryBirdsFP11.§,s§.§8!1§();
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
                                       mNextState = StateCutScene.§?x§;
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
      
      protected function §3!!§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc2_))
         {
            §6I§.§ ;§("Menu_Confirm");
            if(!(_loc4_ && this))
            {
               if(!this.§;!9§)
               {
                  if(!(_loc4_ && _loc1_))
                  {
                     addr53:
                     var _loc1_:*;
                     §§push((_loc1_ = this).§7S§);
                     if(_loc3_)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc2_:* = §§pop();
                     if(_loc3_ || this)
                     {
                        _loc1_.§7S§ = _loc2_;
                     }
                     if(_loc3_ || _loc2_)
                     {
                        this.§2F§(this.§7S§);
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr53);
      }
      
      protected function §9!8§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §6I§.§ ;§("Menu_Confirm");
            if(_loc4_)
            {
               if(!this.§;!9§)
               {
                  if(_loc4_)
                  {
                     var _loc1_:*;
                     §§push((_loc1_ = this).§7S§);
                     if(!_loc3_)
                     {
                        §§push(§§pop() - 1);
                     }
                     var _loc2_:* = §§pop();
                     if(_loc4_)
                     {
                        _loc1_.§7S§ = _loc2_;
                     }
                     if(_loc4_ || this)
                     {
                     }
                     §§goto(addr75);
                  }
                  this.§2F§(this.§7S§);
               }
            }
         }
         addr75:
      }
      
      public function §0w§() : void
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
            this.§`f§ = [];
            if(_loc10_)
            {
               this.§ !A§ = [];
               if(_loc10_ || this)
               {
                  this.§7S§ = §5j§.§^!E§(§5j§.§0P§).§7E§;
                  if(_loc10_ || _loc2_)
                  {
                     addr66:
                     this.§!!!§ = this.§7S§;
                     if(!(_loc9_ && this))
                     {
                        addr77:
                        this.§[!6§ = this.§7S§;
                     }
                  }
               }
               var _loc2_:§?S§ = §5j§.§^!E§(§5j§.§0P§);
               var _loc3_:* = Number(0);
               while(_loc3_ < _loc2_.pageIndexes.length)
               {
                  _loc4_ = _loc2_.§81§(_loc2_.pageIndexes[_loc3_]);
                  if(_loc9_ && this)
                  {
                     continue;
                  }
                  §§push(this.§`f§);
                  if(!_loc9_)
                  {
                     §§pop().push(_loc2_.§7!D§(_loc3_));
                     if(!_loc9_)
                     {
                        addr119:
                        this.§ !A§.push(_loc2_.§#2§(_loc3_));
                        if(!(_loc9_ && _loc1_))
                        {
                           §§push(this.§'7§(_loc4_,_loc3_,_loc1_,_loc2_));
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
                  this.§<!4§ = new §<8§(this.§`f§[this.§7S§].red,this.§`f§[this.§7S§].green,this.§`f§[this.§7S§].blue,1);
                  if(_loc10_ || _loc1_)
                  {
                     §[=§.getItemByName("MovieClip_ColorFade").changeMovieClip(this.§<!4§);
                     if(!(_loc9_ && _loc2_))
                     {
                        addr222:
                        if(_loc2_.§7<§)
                        {
                           if(!_loc9_)
                           {
                              addr227:
                              _loc6_ = new (_loc5_ = §'!H§.§&!G§(_loc2_.§7<§))();
                              if(_loc10_ || _loc2_)
                              {
                                 §[=§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(_loc6_);
                                 if(!_loc9_)
                                 {
                                    addr258:
                                    if(_loc2_.§8S§)
                                    {
                                       if(_loc10_)
                                       {
                                          addr263:
                                          _loc8_ = new (_loc7_ = §'!H§.§&!G§(_loc2_.§8S§))();
                                          §[=§.getItemByName("MovieClip_ThemeRight").changeMovieClip(_loc8_);
                                          if(_loc10_ || _loc3_)
                                          {
                                             §§goto(addr292);
                                          }
                                          §§goto(addr331);
                                       }
                                    }
                                    else
                                    {
                                       §[=§.getItemByName("MovieClip_ThemeRight").changeMovieClip(new MovieClip());
                                    }
                                 }
                                 addr292:
                                 this.§&c§();
                                 if(_loc10_ || _loc1_)
                                 {
                                    if(§-!A§ == StateCutScene.§?x§)
                                    {
                                       §-!A§ = "";
                                       if(_loc10_ || _loc2_)
                                       {
                                          this.§2F§(this.§[!6§);
                                          if(!_loc9_)
                                          {
                                             addr331:
                                          }
                                       }
                                       §§goto(addr331);
                                    }
                                    else
                                    {
                                       this.§2F§(this.§7S§,true);
                                    }
                                 }
                                 return;
                              }
                              §§goto(addr263);
                           }
                        }
                        else
                        {
                           §[=§.getItemByName("MovieClip_ThemeLeft").changeMovieClip(new MovieClip());
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
      
      protected function §'7§(param1:Array, param2:int, param3:Number, param4:§?S§) : Number
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
         var _loc6_:Class = §'!H§.§&!G§(this.§ !A§[param2]);
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
               _loc12_ = this.§]d§(_loc10_,_loc11_,_loc6_,_loc7_,param2);
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
                              §§push(AngryBirdsFP11.§,#§);
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
                     _loc8_.@button = this.§ !A§[param2];
                  }
                  _loc8_.@enabled = "True";
                  _loc8_.@buttonSelectionType = "NO_SELECTION";
                  if(_loc14_)
                  {
                     addr244:
                     _loc8_.@fromLibrary = "true";
                  }
               }
               var _loc9_:§use §;
               (_loc9_ = new §use §(_loc8_,this.§>!$§,null,null)).§"!0§(_loc5_);
               if(_loc14_)
               {
                  _loc9_.setVisibility(true);
                  if(_loc14_ || param1)
                  {
                     _loc9_.x += param3;
                     if(!_loc15_)
                     {
                        addr279:
                        this.§>!$§.§5'§(_loc9_);
                        if(_loc14_ || param1)
                        {
                           this.§ K§.push(_loc9_);
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
      
      protected function §]d§(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
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
                     §§push(§§pop().§ !&§(§§pop()));
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
                                       _loc7_ = AngryBirdsFP11.sUserProgress.§7!"§(param1);
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
      
      protected function §&c§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         if(!_loc5_)
         {
            if(this.§ K§.length == 1)
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
            this.§?!A§ = new Dictionary();
         }
         var _loc4_:int = 0;
         while(_loc4_ < this.§ K§.length)
         {
            _loc1_ = §'!H§.§&!G§("Button_Dot");
            _loc2_ = new _loc1_();
            if(_loc6_ || _loc3_)
            {
               _loc2_.x = AngryBirdsFP11.screenWidth / 2 + _loc3_ - this.§ K§.length * _loc2_.width / 2;
               _loc2_.y = (§[=§.getItemByName("Button_Next") as §?q§).y - _loc2_.height / 2;
               if(_loc4_ == this.§7S§)
               {
                  if(!_loc6_)
                  {
                     continue;
                  }
                  _loc2_.gotoAndStop("Selected");
                  if(_loc6_)
                  {
                     (§[=§.getItemByName("TextField_LevelNumberSmall") as §3D§).x = _loc2_.x;
                     (§[=§.getItemByName("TextField_LevelNumberSmall") as §3D§).y = _loc2_.y - _loc2_.height;
                     addr127:
                     this.§=e§(_loc4_);
                     if(!_loc6_)
                     {
                     }
                     this.§6!1§.mClip.addChild(_loc2_);
                     this.§?!A§[_loc2_] = _loc4_;
                     this.§9]§.push(_loc2_);
                     addr138:
                     §§push(_loc3_);
                     if(_loc6_)
                     {
                        §§push(Number(§§pop() + _loc2_.width));
                     }
                     _loc3_ = §§pop();
                     _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§1!@§);
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
            §§push(this.§ K§.length * _loc2_.width);
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
               (§[=§.getItemByName("Button_Next") as §?q§).x = AngryBirdsFP11.screenWidth / 2;
               if(_loc6_ || _loc1_)
               {
                  §§goto(addr246);
               }
               §§goto(addr291);
            }
            §§goto(addr258);
         }
         addr246:
         (§[=§.getItemByName("Button_Prev") as §?q§).x = AngryBirdsFP11.screenWidth / 2;
         if(_loc6_)
         {
            (§[=§.getItemByName("Button_Next") as §?q§).x = (§[=§.getItemByName("Button_Next") as §?q§).x + (_loc3_ + 10);
            addr258:
            if(_loc6_ || _loc2_)
            {
               addr291:
               (§[=§.getItemByName("Button_Prev") as §?q§).x = (§[=§.getItemByName("Button_Prev") as §?q§).x - (_loc3_ + 10);
            }
         }
      }
      
      protected function §#z§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(this.§<!4§);
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
            §§push(this.§<!4§);
         }
         var _loc1_:int = 0;
         loop0:
         while(true)
         {
            if(_loc1_ < this.§9]§.length)
            {
               §§push(this.§6!1§);
               if(_loc3_ || this)
               {
                  if(!§§pop().mClip.contains(this.§9]§[_loc1_]))
                  {
                     continue;
                  }
                  if(!_loc2_)
                  {
                     this.§9]§[_loc1_].removeEventListener(MouseEvent.MOUSE_DOWN,this.§1!@§);
                     §§push(this.§6!1§);
                  }
                  else
                  {
                     addr116:
                     loop1:
                     while(true)
                     {
                        §§push(this.§>!$§);
                        while(true)
                        {
                           if(§§pop().mClip.numChildren <= 0)
                           {
                              this.§ K§ = [];
                              break loop0;
                           }
                           §§push(this.§>!$§);
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
               §§pop().mClip.removeChild(this.§9]§[_loc1_]);
               if(!(_loc3_ || _loc3_))
               {
                  break;
               }
               continue;
            }
            this.§9]§ = [];
            §§goto(addr116);
         }
      }
      
      protected function §1!@§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(!this.§;!9§)
            {
               if(_loc3_ || param1)
               {
                  this.§2F§(this.§?!A§[param1.target]);
               }
            }
         }
      }
      
      protected function §7b§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(!this.§;!9§)
            {
               if(_loc3_ || _loc2_)
               {
                  mNextState = §5O§.§?x§;
               }
            }
         }
      }
      
      protected function §2F§(param1:int, param2:Boolean = false) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         this.§;!9§ = true;
         §§push(param1);
         if(!(_loc7_ && param1))
         {
            if(§§pop() > this.§ K§.length - 1)
            {
               §§push(this.§ K§);
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
                        this.§7S§ = param1;
                        if(_loc6_ || this)
                        {
                           §§push(this.§7S§);
                           if(!(_loc7_ && param2))
                           {
                              §§push(this.§[!6§);
                              if(_loc6_ || param1)
                              {
                                 if(§§pop() > §§pop())
                                 {
                                    this.§!!!§ = this.§[!6§ + 1;
                                    if(!_loc7_)
                                    {
                                       addr119:
                                       §§push(-this.§ K§[param1].x);
                                       if(!(_loc7_ && param2))
                                       {
                                          addr143:
                                          var _loc3_:Number = §§pop();
                                          var _loc4_:Number = this.§ K§[param1].x + this.§>!$§.x;
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
                                                         §§push(§?!=§);
                                                      }
                                                      _loc5_ = Number(§§pop());
                                                      §§push(this.§^!H§);
                                                      if(!(_loc7_ && _loc3_))
                                                      {
                                                         if(§§pop() != null)
                                                         {
                                                            §§push(this.§^!H§);
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
                                                                        this.§>!$§.x = _loc3_;
                                                                        addr277:
                                                                        §§push(param2);
                                                                     }
                                                                     else
                                                                     {
                                                                        this.§^!H§ = §,B§.§^n§.§2E§(this.§>!$§,{"x":_loc3_},null,_loc5_,§,B§.§[!F§);
                                                                        §§push(this.§^!H§);
                                                                        if(_loc6_)
                                                                        {
                                                                           §§pop().onComplete = this.§%!'§;
                                                                           if(!(_loc7_ && param1))
                                                                           {
                                                                              §§goto(addr277);
                                                                           }
                                                                           addr279:
                                                                           this.§%!'§();
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
                                                                     §§push(this.§^!H§);
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
                                       this.§!!!§ = this.§[!6§ - 1;
                                       §§goto(addr119);
                                    }
                                 }
                                 else
                                 {
                                    §§push(this.§7S§);
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
                           §§push(this.§[!6§);
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
      
      protected function §%!'§() : void
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
               if(§§pop() >= this.§9]§.length)
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
               if(§§pop() == this.§7S§)
               {
                  if(_loc2_)
                  {
                     §§push(this.§9]§);
                     if(_loc2_)
                     {
                        §§push(_loc1_);
                        if(!_loc3_)
                        {
                           §§pop()[§§pop()].gotoAndStop("Selected");
                           if(!(_loc3_ && this))
                           {
                              (§[=§.getItemByName("TextField_LevelNumberSmall") as §3D§).x = this.§9]§[_loc1_].x;
                              this.§=e§(_loc1_);
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
               §§push(this.§9]§);
               §§goto(addr82);
            }
            this.§;!9§ = false;
            §5j§.§^!E§(§5j§.§0P§).§7E§ = this.§7S§;
            addr108:
            return;
         }
      }
      
      protected function §=e§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            (§[=§.getItemByName("TextField_LevelNumberSmall") as §3D§).§7=§.text = §5j§.§^!E§(§5j§.§0P§).pageIndexes[param1];
         }
      }
   }
}
