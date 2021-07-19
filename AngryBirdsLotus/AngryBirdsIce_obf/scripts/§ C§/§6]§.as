package § C§
{
   import §!F§.§#T§;
   import §!Y§.§[o§;
   import §-Z§.§?h§;
   import §0!!§.§,!@§;
   import §0!!§.§46§;
   import §2]§.§#H§;
   import §2]§.§set §;
   import §3"§.§0$§;
   import §3"§.§8+§;
   import §[v§.§'4§;
   import §[x§.§2^§;
   import §]4§.§-§;
   import §`W§.§-[§;
   import §var §.§<;§;
   
   public class §6]§ extends StatePlay
   {
      
      private static const §,@§:Number = -5000.0;
      
      private static const §5l§:Number = 10000.0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §6]§)
         {
            §,@§ = -5 * 1000;
         }
         do
         {
            §5l§ = 10 * 1000;
         }
         while(_loc1_);
         
      }
      
      private var §1T§:int = 0;
      
      private var §=y§:Number = -5000.0;
      
      private var § $§:int = 0;
      
      private var §5L§:Number = 0;
      
      private var §`!A§:Number = 0;
      
      public function §6]§(param1:Boolean = true, param2:int = 0, param3:String = "StatePlay")
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            super(param1,param3);
            do
            {
               this.§1T§ = param2;
            }
            while(_loc4_);
            
         }
      }
      
      override protected function getGameLogicController(param1:§2^§) : §#T§
      {
         return new §<;§(param1);
      }
      
      override protected function levelStarted() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.levelStarted();
         }
         do
         {
            §46§.§3!7§(§,!@§.§<K§,§0$§.§[C§);
         }
         while(_loc2_);
         
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §@!9§ = true;
            do
            {
               §,R§ = new §#H§(this);
               do
               {
                  §,R§.init(§set §.§&!1§.Views.View_FacebookLevelPlay[0]);
               }
               while(!(_loc2_ || this));
               
            }
            while(_loc1_);
            
         }
      }
      
      override public function activate() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = 0;
         if(_loc3_)
         {
            super.activate();
            if(_loc3_)
            {
               addr24:
               this.§0L§();
            }
            var _loc1_:§8+§ = §0$§.§2Q§(§0$§.§[C§);
            if(_loc3_ || _loc3_)
            {
               this.§1T§ = AngryBirdsFP11.§64§.§5!4§(§0$§.§[C§);
               if(_loc1_)
               {
                  loop0:
                  while(true)
                  {
                     §§push(_loc1_.§%!%§());
                     loop1:
                     while(true)
                     {
                        §§push(int(§§pop()));
                        loop2:
                        while(true)
                        {
                           _loc2_ = §§pop();
                           if(§[o§.§='§.slingshot)
                           {
                              loop3:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 if(!(_loc4_ && this))
                                 {
                                    §§push(§[o§.§='§.slingshot.§1!5§());
                                    while(true)
                                    {
                                       §§push(int(§§pop() + §§pop()));
                                    }
                                    addr178:
                                 }
                                 addr180:
                                 while(_loc3_ || _loc1_)
                                 {
                                    if(_loc4_ && this)
                                    {
                                       continue loop1;
                                    }
                                    _loc2_ = §§pop();
                                    loop6:
                                    while(true)
                                    {
                                       addr120:
                                       while(true)
                                       {
                                          (§,R§.getItemByName("TextField_HighScore") as §'4§).setText(this.§1T§.toString());
                                          if(_loc3_ || _loc3_)
                                          {
                                             §§goto(addr40);
                                          }
                                          continue loop6;
                                       }
                                    }
                                 }
                                 addr153:
                                 continue loop2;
                                 loop8:
                                 while(true)
                                 {
                                    if(_loc3_ || _loc1_)
                                    {
                                       while(true)
                                       {
                                          §,R§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§;9§());
                                          §§push(this.§1T§);
                                          if(_loc3_)
                                          {
                                             §§push(0);
                                             if(_loc3_)
                                             {
                                                if(§§pop() <= §§pop())
                                                {
                                                   §,R§.getItemByName("Container_HiscoreContainer").setVisibility(false);
                                                   if(_loc3_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   continue loop8;
                                                }
                                                §,R§.getItemByName("Container_HiscoreContainer").setVisibility(true);
                                                §,R§.getItemByName("Container_LevelscoreContainer").y = §,R§.getItemByName("Container_HiscoreContainer").y + 27;
                                                §§goto(addr120);
                                             }
                                             else
                                             {
                                                §§goto(addr178);
                                             }
                                          }
                                          break loop8;
                                       }
                                       addr40:
                                    }
                                    continue loop3;
                                    return;
                                 }
                                 §§goto(addr180);
                              }
                           }
                           while(true)
                           {
                              this.§1T§ = Math.min(this.§1T§,_loc2_);
                              §§goto(addr153);
                              §§goto(addr205);
                           }
                        }
                     }
                  }
               }
               §§goto(addr136);
            }
            §§goto(addr120);
         }
         §§goto(addr24);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.deActivate();
         }
         while(true)
         {
            this.§?k§();
            while(!_loc2_)
            {
               this.§0L§();
               if(_loc1_ || this)
               {
                  return;
               }
            }
         }
      }
      
      private function §?k§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:int = 0;
         var _loc2_:* = null;
         if(_loc3_)
         {
            if(this.§=y§ > §5l§)
            {
               if(_loc3_ || _loc3_)
               {
                  addr84:
                  _loc1_ = Math.round(1000 / this.§=y§ * this.§ $§);
               }
               do
               {
                  §§push(§0$§.§[C§);
                  if(!(_loc4_ && _loc3_))
                  {
                     §§push(§§pop());
                  }
                  _loc2_ = §§pop();
                  do
                  {
                     §46§.§!m§(_loc1_,_loc2_,§?h§.§7"§);
                  }
                  while(!_loc3_);
                  
               }
               while(!_loc3_);
               
            }
            return;
         }
         §§goto(addr84);
      }
      
      private function §>@§(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            §§push(this);
            §§push(this.§=y§);
            if(!(_loc4_ && param1))
            {
               §§push(§§pop() + param1);
            }
            §§pop().§=y§ = §§pop();
            §§push(this.§=y§);
            if(_loc5_ || _loc2_)
            {
               §§push(0);
               if(_loc5_)
               {
                  if(§§pop() > §§pop())
                  {
                     var _loc2_:*;
                     §§push((_loc2_ = this).§ $§);
                     if(!_loc4_)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc3_:* = §§pop();
                     if(!(_loc4_ && _loc2_))
                     {
                        _loc2_.§ $§ = _loc3_;
                     }
                  }
                  §§push(this.§5L§);
                  loop0:
                  while(true)
                  {
                     §§push(§[o§.§#%§());
                     addr131:
                     while(true)
                     {
                        §§push(§§pop() == §§pop());
                        addr132:
                        loop2:
                        while(true)
                        {
                           §§push(!§§pop());
                           if(!(_loc4_ && param1))
                           {
                              if(§§pop())
                              {
                                 break;
                              }
                           }
                           addr142:
                           while(true)
                           {
                              §§pop();
                              continue loop0;
                              addr115:
                              if(!(_loc4_ && _loc2_))
                              {
                                 break loop2;
                              }
                           }
                        }
                        if(§§pop())
                        {
                           this.§0L§();
                        }
                        return;
                     }
                  }
               }
               §§goto(addr99);
            }
            §§goto(addr90);
         }
         §§goto(addr143);
      }
      
      private function §0L§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§=y§ = §,@§;
            while(true)
            {
               this.§ $§ = 0;
               §§goto(addr76);
            }
         }
         addr76:
         while(true)
         {
            this.§5L§ = §[o§.§#%§();
            do
            {
               this.§`!A§ = §[o§.§=!&§();
            }
            while(_loc1_ && this);
            
            if(!_loc1_)
            {
               if(_loc2_ || _loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
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
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super.levelCompleted();
         }
         §§push(§0$§.§[C§);
         if(_loc3_ || _loc1_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:int = §&!G§.getScore();
         if(_loc3_)
         {
            §46§.§3!7§(§,!@§.§^=§,_loc1_,_loc2_);
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-[§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = false;
         var _loc5_:* = param2;
         if(!(_loc6_ && param1))
         {
            §§push("PAUSE");
            if(_loc7_ || param1)
            {
               §§push(_loc5_);
               if(_loc7_ || param2)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc7_ || param1)
                     {
                        addr167:
                        §§push(0);
                        if(_loc6_)
                        {
                           addr188:
                        }
                     }
                     else
                     {
                        addr246:
                        §§push(3);
                        if(!_loc7_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push("REPLAY");
                     if(!(_loc6_ && param3))
                     {
                        §§push(_loc5_);
                        if(_loc7_)
                        {
                           addr182:
                           if(§§pop() === §§pop())
                           {
                              if(_loc7_)
                              {
                                 §§push(1);
                                 if(!_loc6_)
                                 {
                                    §§goto(addr188);
                                 }
                                 §§goto(addr261);
                              }
                              else
                              {
                                 §§goto(addr246);
                              }
                           }
                           else
                           {
                              §§push("ZOOM_IN");
                              if(_loc7_ || param1)
                              {
                                 addr197:
                                 §§push(_loc5_);
                                 if(_loc7_ || param3)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(!_loc6_)
                                       {
                                          §§push(2);
                                          if(!_loc7_)
                                          {
                                             addr256:
                                          }
                                          §§goto(addr261);
                                       }
                                       else
                                       {
                                          §§goto(addr246);
                                       }
                                    }
                                    else
                                    {
                                       §§push("ZOOM_OUT");
                                       if(!(_loc6_ && param1))
                                       {
                                          §§push(_loc5_);
                                          if(_loc7_ || param2)
                                          {
                                             addr238:
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc7_ || param3)
                                                {
                                                   §§goto(addr246);
                                                }
                                             }
                                             else
                                             {
                                                addr251:
                                                if("TOGGLESOUND" !== _loc5_)
                                                {
                                                   addr261:
                                                   switch(§§pop())
                                                   {
                                                      case 0:
                                                         mNextState = §;!=§();
                                                         break;
                                                         addr132:
                                                      case 1:
                                                         §7!6§.§<!G§();
                                                         loop0:
                                                         while(true)
                                                         {
                                                            mNextState = §7!6§.§?B§;
                                                            addr102:
                                                            while(true)
                                                            {
                                                               if(_loc7_ || param1)
                                                               {
                                                                  break loop0;
                                                               }
                                                               continue loop0;
                                                            }
                                                         }
                                                         break;
                                                      case 2:
                                                         §&!G§.doUserZoom(true);
                                                         break;
                                                      case 3:
                                                         §&!G§.doUserZoom(false);
                                                         if(!_loc6_)
                                                         {
                                                            break;
                                                         }
                                                         §§goto(addr102);
                                                         break;
                                                      case 4:
                                                         §§push(AngryBirdsFP11.§;9§());
                                                         if(_loc7_ || param3)
                                                         {
                                                            §§push(!§§pop());
                                                         }
                                                         _loc4_ = §§pop();
                                                         AngryBirdsFP11.§-!9§(_loc4_);
                                                         if(_loc7_ || param2)
                                                         {
                                                            addr46:
                                                            §,R§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc4_);
                                                            break;
                                                            addr53:
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr132);
                                                         }
                                                         break;
                                                         addr80:
                                                      default:
                                                         super.uiInteractionHandler(param1,param2,param3);
                                                         if(_loc7_ || param3)
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               if(!(_loc6_ && this))
                                                               {
                                                                  if(true)
                                                                  {
                                                                     break;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr80);
                                                               }
                                                               §§goto(addr46);
                                                            }
                                                            §§goto(addr53);
                                                         }
                                                   }
                                                   return;
                                                   §§push(5);
                                                }
                                             }
                                             §§goto(addr261);
                                             §§goto(addr261);
                                          }
                                       }
                                       §§goto(addr251);
                                    }
                                    §§goto(addr261);
                                 }
                              }
                              §§goto(addr251);
                           }
                           §§goto(addr261);
                        }
                        §§goto(addr238);
                     }
                     §§goto(addr251);
                  }
                  §§goto(addr261);
               }
               §§goto(addr182);
            }
            §§goto(addr197);
         }
         §§goto(addr167);
      }
      
      override protected function updateCurrentScore(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:int = §&!G§.getScore();
         var _loc3_:int = §'!#§.getValue();
         if(_loc4_ || this)
         {
            §§push(_loc3_);
            if(_loc4_)
            {
               if(§§pop() < _loc2_)
               {
                  if(!(_loc5_ && _loc2_))
                  {
                     addr97:
                     _loc3_ = Math.min(_loc2_,§'!#§.getValue() + param1 * §@&§);
                  }
                  while(true)
                  {
                     §'!#§.assign(_loc3_);
                     addr74:
                     while(true)
                     {
                     }
                  }
                  addr98:
               }
               while(true)
               {
                  (§,R§.getItemByName("TextField_CurrentScore") as §'4§).setText(_loc3_.toString());
                  if(!_loc4_)
                  {
                     continue;
                  }
                  if(!_loc5_)
                  {
                     break;
                  }
                  §§goto(addr98);
               }
               return;
            }
         }
         §§goto(addr97);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.run(param1);
            while(true)
            {
               this.§>@§(param1);
            }
            addr73:
         }
         for(; mNextState.length > 0; if(!(_loc3_ && _loc3_))
         {
            return §-§.STATE_STATUS_COMPLETED;
         })
         {
            if(!_loc3_)
            {
               continue;
            }
            if(!_loc3_)
            {
               break;
            }
            §§goto(addr73);
         }
         return §-§.STATE_STATUS_RUNNING;
      }
   }
}
