package §>!A§
{
   import §"!&§.§#!,§;
   import §#!;§.§;T§;
   import §-!F§.§^h§;
   import §4!H§.;
   import §4!H§.§["§;
   import §5H§.§[k§;
   import §6J§.§&!;§;
   import §6J§.§5j§;
   import §;!B§.§#f§;
   import §;!B§.§5U§;
   import §<!G§.§!I§;
   import §<!G§.§^3§;
   import §>!!§.§7>§;
   import §?b§.§7!,§;
   import §@!H§.§"E§;
   import §class§.§3D§;
   
   public class §=!$§ extends StatePlay
   {
      
      private static const §9J§:Number = -5000.0;
      
      private static const §9!B§:Number = 10000.0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §9J§ = -5 * 1000;
            if(_loc2_ || _loc2_)
            {
               §9!B§ = 10 * 1000;
            }
         }
      }
      
      private var §3Z§:int = 0;
      
      private var §"!;§:Number = -5000.0;
      
      private var §]l§:int = 0;
      
      private var §3L§:Number = 0;
      
      private var §8D§:Number = 0;
      
      public function §=!$§(param1:Boolean = true, param2:int = 0, param3:String = "StatePlay")
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            super(param1,param3);
            if(!_loc4_)
            {
               addr30:
               this.§3Z§ = param2;
            }
            return;
         }
         §§goto(addr30);
      }
      
      override protected function getGameLogicController(param1:§7!,§) : §"E§
      {
         return new §7>§(param1);
      }
      
      override protected function levelStarted() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super.levelStarted();
            if(!(_loc1_ && _loc2_))
            {
               §["§.§,9§(§#3§.§<J§,§5j§.§%V§);
            }
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §;!$§ = true;
            if(_loc2_)
            {
               addr39:
               §[=§ = new §^3§(this);
               if(!_loc1_)
               {
                  §[=§.init(§!I§.§7y§.Views.View_FacebookLevelPlay[0]);
               }
            }
            return;
         }
         §§goto(addr39);
      }
      
      override public function activate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = 0;
         if(_loc4_ || _loc2_)
         {
            super.activate();
            if(_loc4_ || this)
            {
               addr35:
               this.§"-§();
            }
            var _loc1_:§&!;§ = §5j§.§%!I§(§5j§.§%V§);
            if(_loc1_)
            {
               if(!_loc3_)
               {
                  §§push(_loc1_.§="§());
                  if(_loc4_)
                  {
                     §§push(int(§§pop()));
                     if(!_loc3_)
                     {
                        _loc2_ = §§pop();
                        if(§[k§.§&@§.slingshot)
                        {
                           §§push(_loc2_);
                           if(_loc4_ || _loc2_)
                           {
                              §§push(§[k§.§&@§.slingshot.§,!G§());
                              if(!(_loc3_ && _loc2_))
                              {
                                 §§push(int(§§pop() + §§pop()));
                                 if(_loc4_)
                                 {
                                    addr92:
                                    _loc2_ = §§pop();
                                    this.§3Z§ = Math.min(this.§3Z§,_loc2_);
                                    if(_loc4_ || _loc1_)
                                    {
                                       addr109:
                                       addr110:
                                       addr107:
                                       if(this.§3Z§ > 0)
                                       {
                                          (§[=§.getItemByName("TextField_HighScore") as §3D§).setText(this.§3Z§.toString());
                                          if(!(_loc3_ && _loc1_))
                                          {
                                             addr151:
                                             return;
                                             addr137:
                                          }
                                          §§goto(addr151);
                                       }
                                       else
                                       {
                                          §[=§.getItemByName("Container_HiscoreContainer").setVisibility(false);
                                       }
                                       §[=§.getItemByName("Container_LevelscoreContainer").y = §[=§.getItemByName("Container_HiscoreContainer").y;
                                    }
                                    §§goto(addr151);
                                 }
                                 §§goto(addr109);
                              }
                              §§goto(addr110);
                           }
                        }
                        §§goto(addr92);
                     }
                  }
                  §§goto(addr109);
               }
               §§goto(addr137);
            }
            §§goto(addr107);
         }
         §§goto(addr35);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super.deActivate();
            if(!(_loc2_ && _loc2_))
            {
               this.§6n§();
               if(_loc1_ || _loc1_)
               {
                  this.§"-§();
               }
            }
         }
      }
      
      private function §6n§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:int = 0;
         var _loc2_:* = null;
         if(_loc4_)
         {
            if(this.§"!;§ > §9!B§)
            {
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_ = Math.round(1000 / this.§"!;§ * this.§]l§);
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(§5j§.§%V§);
                     if(!_loc3_)
                     {
                        §§push(§§pop());
                     }
                     _loc2_ = §§pop();
                     if(_loc4_)
                     {
                        addr81:
                        §["§.§'w§(_loc1_,_loc2_,§;T§.§>!,§);
                     }
                  }
               }
               §§goto(addr81);
            }
            return;
         }
         §§goto(addr81);
      }
      
      private function §1d§(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            §§push(this);
            §§push(this.§"!;§);
            if(_loc5_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§"!;§ = §§pop();
            §§push(this.§"!;§);
            if(_loc5_ || _loc3_)
            {
               §§push(0);
               if(!_loc4_)
               {
                  if(§§pop() > §§pop())
                  {
                     if(!(_loc4_ && this))
                     {
                        var _loc2_:*;
                        §§push((_loc2_ = this).§]l§);
                        if(_loc5_ || _loc3_)
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc3_:* = §§pop();
                        if(_loc5_ || this)
                        {
                           _loc2_.§]l§ = _loc3_;
                        }
                        if(!_loc4_)
                        {
                           addr89:
                           §§push(this.§3L§);
                           if(!(_loc4_ && param1))
                           {
                              addr98:
                              §§push(§[k§.§>!2§());
                              if(_loc5_ || _loc3_)
                              {
                                 §§goto(addr117);
                              }
                              §§goto(addr139);
                           }
                           §§goto(addr137);
                        }
                        §§goto(addr144);
                     }
                  }
                  §§goto(addr89);
               }
               addr117:
               §§push(§§pop() == §§pop());
               if(!(_loc4_ && _loc2_))
               {
                  §§push(!§§pop());
                  if(!_loc4_)
                  {
                     if(!§§pop())
                     {
                        if(!_loc4_)
                        {
                           §§pop();
                           if(_loc5_)
                           {
                              addr139:
                              addr137:
                              §§push(this.§8D§ == §[k§.§`&§());
                              if(_loc4_)
                              {
                              }
                              §§goto(addr143);
                           }
                           §§goto(addr144);
                        }
                        §§push(!§§pop());
                     }
                  }
               }
               addr143:
               if(§§pop())
               {
                  addr144:
                  this.§"-§();
               }
               return;
            }
            §§goto(addr98);
         }
         §§goto(addr89);
      }
      
      private function §"-§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§"!;§ = §9J§;
            if(_loc1_)
            {
               this.§]l§ = 0;
               if(!(_loc2_ && _loc2_))
               {
                  this.§3L§ = §[k§.§>!2§();
                  if(!(_loc2_ && _loc2_))
                  {
                     addr69:
                     this.§8D§ = §[k§.§`&§();
                  }
               }
            }
            return;
         }
         §§goto(addr69);
      }
      
      override protected function initMightyEagleButton() : void
      {
      }
      
      override protected function hideMightyEagleButton() : void
      {
      }
      
      override public function deactivateMightyEagleButton() : void
      {
      }
      
      override protected function levelCompleted() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            super.levelCompleted();
         }
         §§push(§5j§.§%V§);
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:int = §7!9§.getScore();
         if(!(_loc3_ && _loc2_))
         {
            §["§.§,9§(§#3§.§break§,_loc1_,_loc2_);
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^h§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(!_loc5_)
         {
            §§push("CLOSE_TUTORIAL_POWERUP");
            if(!(_loc5_ && param1))
            {
               §§push(_loc4_);
               if(_loc6_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc5_ && param1))
                     {
                        §§push(0);
                        if(_loc5_)
                        {
                        }
                     }
                     else
                     {
                        addr139:
                        §§push(2);
                        if(_loc6_ || param3)
                        {
                        }
                     }
                     §§goto(addr182);
                  }
                  else
                  {
                     §§push("POWERUP");
                     if(!(_loc5_ && param1))
                     {
                        §§push(_loc4_);
                        if(_loc6_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc5_ && param1))
                              {
                                 addr121:
                                 §§push(1);
                                 if(!_loc6_)
                                 {
                                 }
                                 §§goto(addr182);
                              }
                              else
                              {
                                 §§goto(addr139);
                              }
                           }
                           else
                           {
                              §§push("FULLSCREEN_BUTTON");
                              if(!_loc5_)
                              {
                                 addr128:
                                 §§push(_loc4_);
                                 if(!_loc5_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc6_ || param1)
                                       {
                                          §§goto(addr139);
                                       }
                                       else
                                       {
                                          addr167:
                                          §§push(3);
                                          if(_loc5_)
                                          {
                                             addr177:
                                          }
                                          §§goto(addr182);
                                       }
                                    }
                                    else
                                    {
                                       §§push("ZOOM_IN");
                                       if(!_loc5_)
                                       {
                                          addr161:
                                          §§push(_loc4_);
                                          if(_loc5_)
                                          {
                                          }
                                          addr173:
                                          if(§§pop() === §§pop())
                                          {
                                             addr174:
                                             §§push(4);
                                             if(_loc6_)
                                             {
                                                §§goto(addr177);
                                             }
                                             §§goto(addr182);
                                          }
                                          else
                                          {
                                             addr182:
                                             switch(§§pop())
                                             {
                                                case 0:
                                                   §#f§.§!h§();
                                                   if(!_loc5_)
                                                   {
                                                      break;
                                                   }
                                                   addr47:
                                                   break;
                                                case 1:
                                                   §5U§.§+w§(true);
                                                   if(_loc6_ || param1)
                                                   {
                                                      break;
                                                   }
                                                   addr52:
                                                   break;
                                                case 2:
                                                   §5U§.§+w§(false);
                                                   if(_loc5_ && param1)
                                                   {
                                                      addr64:
                                                      break;
                                                   }
                                                   §§goto(addr47);
                                                   break;
                                                case 3:
                                                   §7!9§.doUserZoom(true);
                                                   §§goto(addr52);
                                                case 4:
                                                   §7!9§.doUserZoom(false);
                                                   break;
                                                default:
                                                   super.uiInteractionHandler(param1,param2,param3);
                                                   §§goto(addr64);
                                             }
                                             return;
                                             §§push(5);
                                          }
                                          §§goto(addr182);
                                       }
                                       addr172:
                                       §§goto(addr173);
                                       §§push(_loc4_);
                                    }
                                    §§goto(addr182);
                                 }
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc6_)
                                    {
                                       §§goto(addr167);
                                    }
                                    §§goto(addr182);
                                 }
                                 else
                                 {
                                    §§goto(addr172);
                                    §§push("ZOOM_OUT");
                                 }
                                 §§goto(addr174);
                              }
                              §§goto(addr172);
                           }
                           §§goto(addr182);
                        }
                        §§goto(addr173);
                     }
                     §§goto(addr128);
                  }
               }
               §§goto(addr173);
            }
            §§goto(addr161);
         }
         §§goto(addr121);
      }
      
      override protected function updateCurrentScore(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:int = §7!9§.getScore();
         var _loc3_:int = §>a§.getValue();
         if(_loc5_)
         {
            §§push(_loc3_);
            if(!_loc4_)
            {
               if(§§pop() < _loc2_)
               {
                  if(_loc5_ || _loc2_)
                  {
                     addr69:
                     _loc3_ = Math.min(_loc2_,§>a§.getValue() + param1 * §!!?§);
                     if(_loc4_)
                     {
                     }
                     addr77:
                     (§[=§.getItemByName("TextField_CurrentScore") as §3D§).setText(_loc3_.toString());
                     §§goto(addr85);
                  }
                  §>a§.assign(_loc3_);
                  if(!_loc5_)
                  {
                  }
                  addr85:
                  return;
               }
               §§goto(addr77);
            }
         }
         §§goto(addr69);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.run(param1);
            if(!(_loc3_ && param1))
            {
               addr38:
               this.§1d§(param1);
               if(_loc2_)
               {
                  §§goto(addr43);
               }
               §§goto(addr54);
            }
            addr43:
            if(mNextState.length > 0)
            {
               if(_loc2_ || this)
               {
                  addr54:
                  return §#!,§.STATE_STATUS_COMPLETED;
               }
            }
            return §#!,§.STATE_STATUS_RUNNING;
         }
         §§goto(addr38);
      }
   }
}
