package §7#W§
{
   import §!"W§.§="g§;
   import §!"e§.EnergyOutPopup;
   import §!"e§.§`"W§;
   import §,"N§.§@"b§;
   import §,"N§.§@#B§;
   import §2!f§.§]!J§;
   import §7K§.§,T§;
   import §;"Y§.§&#X§;
   import §<"c§.§'!'§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import §[!m§.§+5§;
   import §[!m§.§[!j§;
   import §^!v§.§5!N§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.utils.getTimer;
   
   public class §9!b§ extends §'!'§
   {
      
      public static const §^!7§:String = "stateTournamentLevelEndFail";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §^!7§ = "stateTournamentLevelEndFail";
         }
      }
      
      private var §5"a§:Number;
      
      private var § <§:§5!N§;
      
      private var §6"7§:MovieClip;
      
      private var §?#F§:Boolean;
      
      public function §9!b§(param1:§+"2§, param2:§5"H§, param3:Boolean = false, param4:String = "stateTournamentLevelEndFail")
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param2))
         {
            super(param1,param2,param3,param4);
         }
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.activate(param1);
            loop0:
            while(true)
            {
               this.§6"7§ = §9!#§.mClip.unlockTimer;
               do
               {
                  this.§ <§ = new §5!N§(§9!#§,§@#B§(§4#;§.singleton.dataModel).§1!f§.§^5§.§2"^§,true);
                  loop2:
                  do
                  {
                     this.§]"R§();
                     while(!_loc3_)
                     {
                        this.setButtonAlignment();
                        while(_loc2_ || _loc2_)
                        {
                           §@#B§(§4#;§.singleton.dataModel).§!!C§.addEventListener(§@"b§.§3R§,this.onTournamentOver);
                           if(_loc2_ || param1)
                           {
                              continue loop2;
                           }
                        }
                     }
                     continue loop0;
                  }
                  while(_loc3_ && this);
                  
               }
               while(!_loc2_);
               
            }
         }
      }
      
      private function §]"R§() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc6_:Object = null;
         var _loc1_:§@"b§ = §@#B§(§4#;§.singleton.dataModel).§!!C§;
         var _loc2_:Object = _loc1_.§["^§(§+!b§.currentLevel);
         var _loc3_:int = _loc1_.levelObjects.indexOf(_loc2_);
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(!(_loc8_ && _loc2_))
         {
            if(_loc3_ + 1 < _loc1_.levelObjects.length)
            {
               if(_loc7_)
               {
                  addr59:
                  §§push(Boolean((_loc6_ = _loc1_.levelObjects[_loc3_ + 1]).unlocksAt));
                  if(!_loc8_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc8_ && _loc3_))
                        {
                           §§pop();
                           if(_loc7_)
                           {
                              §§push(_loc6_.unlocksAt > getTimer());
                              loop7:
                              while(§§pop())
                              {
                                 if(_loc7_)
                                 {
                                    §§push(true);
                                    while(true)
                                    {
                                       _loc4_ = §§pop();
                                       if(!(_loc7_ || this))
                                       {
                                          break;
                                       }
                                       §§push(true);
                                       if(_loc8_ && this)
                                       {
                                          continue;
                                       }
                                       if(!_loc7_)
                                       {
                                          continue loop7;
                                       }
                                       _loc5_ = §§pop();
                                       if(_loc7_)
                                       {
                                          this.§5"a§ = _loc6_.unlocksAt;
                                          if(!(_loc8_ && _loc2_))
                                          {
                                             loop6:
                                             while(true)
                                             {
                                                §@;§.movieClip.removeEventListener(Event.ENTER_FRAME,this.§-!u§);
                                                if(_loc7_ || _loc3_)
                                                {
                                                   while(true)
                                                   {
                                                      §@;§.movieClip.addEventListener(Event.ENTER_FRAME,this.§-!u§);
                                                      if(_loc8_)
                                                      {
                                                         break;
                                                      }
                                                      if(true)
                                                      {
                                                         break loop7;
                                                      }
                                                      continue loop6;
                                                   }
                                                   addr122:
                                                }
                                                break;
                                             }
                                             loop3:
                                             while(true)
                                             {
                                                loop4:
                                                for(; §+!b§.isCutSceneNext(); continue loop3)
                                                {
                                                   if(_loc7_ || _loc2_)
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         continue;
                                                      }
                                                      addr195:
                                                      if(_loc7_ || _loc3_)
                                                      {
                                                         §]"b§.setVisibility(false);
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(this.§ <§);
                                                         if(_loc8_)
                                                         {
                                                            break;
                                                         }
                                                         §§pop().§5!_§ = _loc6_;
                                                         continue loop4;
                                                         §§goto(addr195);
                                                      }
                                                      loop0:
                                                      while(true)
                                                      {
                                                         §§pop().isLocked = _loc5_;
                                                         addr232:
                                                         while(true)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               continue loop0;
                                                            }
                                                            continue loop4;
                                                         }
                                                      }
                                                      addr211:
                                                   }
                                                   if(!_loc8_)
                                                   {
                                                      addr207:
                                                      break;
                                                   }
                                                   §§goto(addr232);
                                                }
                                                return;
                                             }
                                             addr227:
                                          }
                                          §§goto(addr195);
                                       }
                                       §§goto(addr227);
                                    }
                                    §§goto(addr230);
                                    §§push(this.§ <§);
                                    addr177:
                                    addr160:
                                 }
                                 §§goto(addr207);
                              }
                              addr172:
                              §9!#§.setVisibility(_loc4_);
                              if(_loc7_)
                              {
                                 §§goto(addr177);
                              }
                              §§goto(addr207);
                              addr156:
                           }
                           §§goto(addr122);
                        }
                        §§goto(addr147);
                     }
                     §§goto(addr156);
                  }
                  §§goto(addr160);
               }
            }
            else
            {
               _loc4_ = false;
            }
            §§goto(addr172);
         }
         §§goto(addr59);
      }
      
      private function §-!u§(param1:Event) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc2_:* = Number(Math.floor((this.§5"a§ - getTimer()) / 1000));
         if(!(_loc7_ && _loc2_))
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  if(§§pop() <= §§pop())
                  {
                     this.§+n§();
                     if(_loc6_ || _loc3_)
                     {
                        if(!(_loc7_ && this))
                        {
                           break;
                        }
                        addr359:
                        loop2:
                        for(; _loc6_; _loc4_ = §§pop())
                        {
                           if(!(_loc7_ && this))
                           {
                              §§push(_loc2_);
                              if(!_loc7_)
                              {
                                 §§push(_loc4_);
                                 if(_loc6_)
                                 {
                                    if(_loc6_ || _loc2_)
                                    {
                                       if(_loc7_ && _loc3_)
                                       {
                                          continue loop1;
                                       }
                                       §§push(60);
                                       if(_loc6_ || this)
                                       {
                                          §§push(§§pop() * (§§pop() * §§pop()));
                                          if(!_loc7_)
                                          {
                                             if(!(_loc7_ && this))
                                             {
                                                if(!(_loc7_ && _loc3_))
                                                {
                                                   §§push(§§pop() - §§pop());
                                                   if(_loc6_)
                                                   {
                                                      addr167:
                                                      if(!(_loc7_ && _loc2_))
                                                      {
                                                         addr175:
                                                         §§push(60);
                                                         if(_loc6_ || _loc3_)
                                                         {
                                                            addr183:
                                                            §§push(§§pop() / §§pop());
                                                            if(_loc6_ || this)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  §§push(int(§§pop()));
                                                                  if(!_loc6_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(_loc6_)
                                                                  {
                                                                     if(_loc6_ || this)
                                                                     {
                                                                        if(!_loc7_)
                                                                        {
                                                                           _loc5_ = §§pop();
                                                                           loop3:
                                                                           while(true)
                                                                           {
                                                                              this.§6"7§.txtTimer.text = (_loc4_ < 10 ? "0" : "") + _loc4_ + ":" + (_loc5_ < 10 ? "0" : "") + _loc5_;
                                                                              addr95:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc7_ && _loc3_)
                                                                                 {
                                                                                    continue loop3;
                                                                                 }
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       if(_loc6_ || this)
                                                                                       {
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             loop24:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc7_ && _loc2_))
                                                                                                {
                                                                                                   this.§6"7§.txtTimer.visible = true;
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc7_ && this))
                                                                                                      {
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            §§push(_loc2_);
                                                                                                            loop6:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(60);
                                                                                                               loop7:
                                                                                                               while(_loc6_)
                                                                                                               {
                                                                                                                  if(§§pop() >= §§pop())
                                                                                                                  {
                                                                                                                     §§push(_loc2_);
                                                                                                                     if(_loc6_ || _loc2_)
                                                                                                                     {
                                                                                                                        if(_loc6_ || this)
                                                                                                                        {
                                                                                                                           §§push(60);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(!(_loc7_ && this))
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                 }
                                                                                                                                 addr288:
                                                                                                                              }
                                                                                                                              addr289:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 _loc2_ = §§pop();
                                                                                                                                 addr290:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc6_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc2_);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc6_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             §§push(60);
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc7_ && this)
                                                                                                                                                {
                                                                                                                                                   continue loop7;
                                                                                                                                                }
                                                                                                                                                §§push(§§pop());
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc6_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() / §§pop());
                                                                                                                                                         addr240:
                                                                                                                                                         while(_loc7_)
                                                                                                                                                         {
                                                                                                                                                            continue loop6;
                                                                                                                                                         }
                                                                                                                                                         continue loop0;
                                                                                                                                                      }
                                                                                                                                                      addr239:
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         addr409:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * 24);
                                                                                                                                                            addr411:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() / §§pop());
                                                                                                                                                               addr412:
                                                                                                                                                               loop14:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(int(§§pop()));
                                                                                                                                                                  addr413:
                                                                                                                                                                  addr45:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     _loc3_ = §§pop();
                                                                                                                                                                     addr414:
                                                                                                                                                                     addr390:
                                                                                                                                                                     addr391:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc3_);
                                                                                                                                                                        if(!(_loc7_ && param1))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(0);
                                                                                                                                                                           if(_loc6_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              if(§§pop() <= §§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 this.§6"7§.gotoAndStop("hours");
                                                                                                                                                                                 continue loop24;
                                                                                                                                                                              }
                                                                                                                                                                              §§push(_loc3_);
                                                                                                                                                                              §§push(4);
                                                                                                                                                                           }
                                                                                                                                                                           addr360:
                                                                                                                                                                           if(§§pop() > §§pop())
                                                                                                                                                                           {
                                                                                                                                                                              addr389:
                                                                                                                                                                              break;
                                                                                                                                                                           }
                                                                                                                                                                           this.§6"7§.gotoAndStop("days_" + _loc3_);
                                                                                                                                                                           this.§6"7§.txtTimer.visible = false;
                                                                                                                                                                           break loop2;
                                                                                                                                                                        }
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                     _loc3_ = §§pop();
                                                                                                                                                                     §§goto(addr360);
                                                                                                                                                                     continue loop14;
                                                                                                                                                                  }
                                                                                                                                                                  addr321:
                                                                                                                                                                  break loop1;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr408:
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr228:
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                break loop7;
                                                                                                                                             }
                                                                                                                                             addr406:
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr220:
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          this.§6"7§.txtTimer.text = _loc2_.toString() + " sec";
                                                                                                                                          addr307:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc6_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                if(!(_loc7_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   §§goto(addr321);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr406);
                                                                                                                                                   }
                                                                                                                                                   addr395:
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr299:
                                                                                                                                    }
                                                                                                                                    §§goto(addr360);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr280:
                                                                                                                        }
                                                                                                                        §§goto(addr412);
                                                                                                                     }
                                                                                                                     §§goto(addr288);
                                                                                                                  }
                                                                                                                  §§goto(addr299);
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§goto(addr408);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr414);
                                                                                                      }
                                                                                                      §§goto(addr389);
                                                                                                   }
                                                                                                   addr328:
                                                                                                }
                                                                                                §§goto(addr386);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr321);
                                                                                       }
                                                                                       §§goto(addr328);
                                                                                    }
                                                                                    §§goto(addr307);
                                                                                 }
                                                                                 §§goto(addr290);
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr413);
                                                                     }
                                                                     §§goto(addr386);
                                                                  }
                                                                  §§goto(addr390);
                                                               }
                                                               §§goto(addr220);
                                                            }
                                                            §§goto(addr240);
                                                         }
                                                         §§goto(addr280);
                                                      }
                                                      §§goto(addr289);
                                                   }
                                                   §§goto(addr183);
                                                }
                                                §§goto(addr409);
                                             }
                                             §§goto(addr411);
                                          }
                                          §§goto(addr239);
                                       }
                                       §§goto(addr236);
                                    }
                                    §§goto(addr228);
                                 }
                                 §§goto(addr175);
                              }
                              §§goto(addr167);
                           }
                           §§goto(addr391);
                        }
                        §§goto(addr45);
                     }
                     §§goto(addr95);
                  }
                  §§goto(addr395);
               }
               return;
            }
         }
         §§goto(addr359);
      }
      
      protected function §+n§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§ <§);
            loop0:
            while(true)
            {
               if(§§pop().§5!_§)
               {
                  if(_loc2_)
                  {
                     §§push(this.§ <§);
                     loop1:
                     while(true)
                     {
                        delete §§pop().§5!_§.unlocksAt;
                        loop3:
                        while(true)
                        {
                           if(_loc1_ && _loc2_)
                           {
                              continue loop1;
                           }
                           if(!_loc2_)
                           {
                              break;
                           }
                           §§pop().§5!_§ = null;
                           while(true)
                           {
                              addr73:
                              addr72:
                              while(true)
                              {
                                 §@;§.movieClip.removeEventListener(Event.ENTER_FRAME,this.§-!u§);
                                 continue loop3;
                              }
                              addr72:
                              addr48:
                              return;
                              if(!(_loc2_ || _loc1_))
                              {
                                 continue;
                              }
                              if(!(_loc1_ && _loc2_))
                              {
                                 §§goto(addr72);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    continue loop3;
                                 }
                                 addr118:
                              }
                           }
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr118);
               }
               §§goto(addr73);
            }
         }
         §§goto(addr72);
      }
      
      override protected function setButtonAlignment() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:Boolean = true;
         var _loc2_:* = int(§,#9§ * 2);
         if(!(_loc4_ && _loc1_))
         {
            §§push(_loc2_);
            if(_loc5_ || _loc1_)
            {
               if(_loc1_)
               {
                  if(_loc5_)
                  {
                     §§push(0);
                     if(!_loc4_)
                     {
                        addr52:
                        §§push(int(§§pop() + §§pop()));
                        if(!(_loc4_ && _loc1_))
                        {
                           _loc2_ = §§pop();
                           if(_loc5_)
                           {
                              addr64:
                              §§push(_loc2_);
                              if(!_loc4_)
                              {
                                 if(§%!s§())
                                 {
                                    if(_loc5_ || this)
                                    {
                                       addr84:
                                       addr77:
                                       §§push(int(§§pop() + (§5"n§ + §,#9§)));
                                       if(_loc5_ || _loc2_)
                                       {
                                       }
                                       addr97:
                                       §§push(-§§pop());
                                       if(_loc5_)
                                       {
                                          §§push(§§pop() / 2);
                                       }
                                       var _loc3_:* = int(§§pop() + §<!K§);
                                       if(_loc5_ || _loc1_)
                                       {
                                          §^W§.x = _loc3_;
                                          loop0:
                                          while(true)
                                          {
                                             §§push(_loc3_);
                                             while(true)
                                             {
                                                §§push(int(§§pop() + (§5"n§ + §,#9§)));
                                                loop2:
                                                while(true)
                                                {
                                                   _loc3_ = §§pop();
                                                   loop3:
                                                   while(true)
                                                   {
                                                      §5"t§.x = _loc3_;
                                                      loop4:
                                                      while(true)
                                                      {
                                                         §§push(_loc3_);
                                                         if(!_loc4_)
                                                         {
                                                            continue loop2;
                                                         }
                                                         addr234:
                                                         loop5:
                                                         while(true)
                                                         {
                                                            _loc3_ = §§pop();
                                                            loop6:
                                                            while(true)
                                                            {
                                                               if(!_loc1_)
                                                               {
                                                                  §8!X§.view.visible = true;
                                                                  while(true)
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §8!X§.view.x = _loc3_;
                                                                        while(!_loc4_)
                                                                        {
                                                                           §§push(_loc3_);
                                                                           if(!_loc4_)
                                                                           {
                                                                              continue loop5;
                                                                           }
                                                                           addr174:
                                                                           _loc3_ = §§pop();
                                                                           loop9:
                                                                           while(_loc5_ || _loc2_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 addr128:
                                                                                 while(true)
                                                                                 {
                                                                                    §9!#§.x = _loc3_;
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    continue loop9;
                                                                                 }
                                                                                 if(_loc4_ && _loc2_)
                                                                                 {
                                                                                    loop12:
                                                                                    while(true)
                                                                                    {
                                                                                       §8!X§.view.visible = false;
                                                                                       addr210:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc5_ || this))
                                                                                          {
                                                                                             continue loop3;
                                                                                          }
                                                                                          §§goto(addr128);
                                                                                          continue loop12;
                                                                                       }
                                                                                    }
                                                                                    addr206:
                                                                                 }
                                                                                 if(_loc5_ || _loc1_)
                                                                                 {
                                                                                    break loop6;
                                                                                 }
                                                                                 continue loop6;
                                                                              }
                                                                           }
                                                                        }
                                                                        continue;
                                                                     }
                                                                     §§goto(addr210);
                                                                  }
                                                                  continue loop0;
                                                               }
                                                               §§goto(addr206);
                                                            }
                                                            continue loop4;
                                                         }
                                                      }
                                                      continue loop2;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr182);
                                    }
                                    _loc2_ = §§pop();
                                    addr94:
                                    §§push(_loc2_);
                                    if(!_loc5_)
                                    {
                                    }
                                    §§goto(addr97);
                                 }
                                 else
                                 {
                                    addr83:
                                    §§push(0);
                                 }
                              }
                              §§goto(addr84);
                           }
                           §§goto(addr94);
                        }
                        §§goto(addr84);
                     }
                     §§goto(addr83);
                  }
                  §§goto(addr84);
               }
               else
               {
                  §§push(§5"n§ + §,#9§);
               }
               §§goto(addr52);
            }
            §§goto(addr77);
         }
         §§goto(addr64);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc5_:§@#B§ = null;
         var _loc6_:§@"b§ = null;
         var _loc7_:§[!j§ = null;
         var _loc4_:* = §@#B§(§4#;§.singleton.dataModel).§^"J§.energy > 0;
         var _loc8_:* = param2;
         if(_loc9_ || this)
         {
            if("NEXT_LEVEL" !== _loc8_)
            {
               if("REPLAY" === _loc8_)
               {
                  §§goto(addr287);
               }
               else
               {
                  §§push(2);
               }
               addr305:
               switch(§§pop())
               {
                  case 0:
                     §§push(this.§ <§);
                     if(!_loc10_)
                     {
                        §§push(§§pop().isLocked);
                        if(!(_loc10_ && param2))
                        {
                           if(§§pop())
                           {
                              if(_loc9_)
                              {
                                 addr54:
                                 §§push(this.§ <§.canBuyToUnlock);
                                 if(_loc10_ && param3)
                                 {
                                    addr217:
                                    if(!§§pop())
                                    {
                                       if(_loc9_)
                                       {
                                          _loc7_ = new EnergyOutPopup(§`"W§.§+v§,§+5§.TOP);
                                          if(!_loc10_)
                                          {
                                             §4#;§.singleton.popupManager.openPopup(_loc7_,true,true,true);
                                             if(!(_loc9_ || param3))
                                             {
                                                addr265:
                                                break;
                                             }
                                          }
                                       }
                                       break;
                                    }
                                    super.onUIInteraction(param1,param2,param3);
                                    if(_loc9_ || param1)
                                    {
                                    }
                                    break;
                                 }
                                 §§goto(addr62);
                              }
                              §§goto(addr258);
                           }
                           else
                           {
                              addr215:
                              §§push(_loc4_);
                           }
                           §§goto(addr217);
                        }
                        addr62:
                        if(§§pop())
                        {
                           if(_loc10_ && param2)
                           {
                              addr258:
                              break;
                           }
                           if((_loc5_ = §@#B§(§4#;§.singleton.dataModel)).§`!W§.starCoins >= this.§ <§.§?!N§)
                           {
                              if(_loc9_ || this)
                              {
                                 this.§ <§.canBuyToUnlock = false;
                              }
                              _loc6_ = §@#B§(§4#;§.singleton.dataModel).§!!C§;
                              if(_loc9_ || param1)
                              {
                                 this.§?#F§ = _loc6_.§!!e§;
                              }
                              loop0:
                              while(true)
                              {
                                 _loc6_.§!!e§ = true;
                                 while(true)
                                 {
                                    _loc5_.§`!W§.§12§(this.§ <§.§?!N§);
                                    continue loop0;
                                    addr143:
                                    if(!_loc9_)
                                    {
                                       continue;
                                    }
                                    §§push(_loc5_.§1!f§);
                                    if(_loc9_)
                                    {
                                       §§pop().§9?§(new §,T§("TournamentLevel",1,this.§ <§.§?!N§));
                                       if(!(_loc10_ && param2))
                                       {
                                          addr131:
                                          if(false)
                                          {
                                             while(true)
                                             {
                                                §§push(_loc5_.§1!f§);
                                                addr136:
                                                while(true)
                                                {
                                                   §§pop().addEventListener(§="g§.§=#2§,this.§"#^§);
                                                   addr141:
                                                   while(!_loc10_)
                                                   {
                                                      §§goto(addr143);
                                                   }
                                                   continue loop0;
                                                }
                                                §§goto(addr131);
                                             }
                                             addr133:
                                          }
                                          §§goto(addr207);
                                       }
                                       §§goto(addr141);
                                    }
                                    §§goto(addr136);
                                 }
                              }
                           }
                           else
                           {
                              _loc7_ = §]!J§.§9P§(§`"W§.§+v§,§+5§.TOP,§]!J§.§[!v§);
                              if(_loc9_ || param3)
                              {
                                 §4#;§.singleton.popupManager.openPopup(_loc7_,true,true,true);
                              }
                           }
                        }
                        addr207:
                        return;
                     }
                     §§goto(addr54);
                  case 1:
                     §§goto(addr215);
                  default:
                     super.onUIInteraction(param1,param2,param3);
                     §§goto(addr265);
               }
               return;
            }
            if(!_loc10_)
            {
               §§push(0);
               if(_loc10_)
               {
               }
            }
            else
            {
               addr287:
               §§push(1);
               if(_loc10_)
               {
               }
            }
            §§goto(addr305);
         }
         §§goto(addr287);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§ <§.dispose();
            loop0:
            while(true)
            {
               this.§ <§ = null;
               do
               {
                  §@#B§(§4#;§.singleton.dataModel).§1!f§.removeEventListener(§="g§.§=#2§,this.§"#^§);
                  do
                  {
                     §@;§.movieClip.removeEventListener(Event.ENTER_FRAME,this.§-!u§);
                     continue loop0;
                  }
                  while(!_loc1_);
                  
               }
               while(_loc2_);
               
            }
         }
      }
      
      private function §"#^§(param1:§="g§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§@"b§ = null;
         if(_loc4_ || _loc3_)
         {
            §@#B§(§4#;§.singleton.dataModel).§1!f§.removeEventListener(§="g§.§=#2§,this.§"#^§);
            if(_loc4_)
            {
               if(!this.§?#F§)
               {
                  if(!_loc3_)
                  {
                     _loc2_ = §@#B§(§4#;§.singleton.dataModel).§!!C§;
                     if(_loc4_)
                     {
                        _loc2_.§!!e§ = false;
                     }
                     §§goto(addr68);
                  }
                  this.onUIInteraction(-1,"NEXT_LEVEL",§,>§);
               }
               §§goto(addr68);
            }
         }
         addr68:
         this.§+n§();
         if(_loc3_ && _loc2_)
         {
         }
      }
      
      private function onTournamentOver(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            § g§(§6!W§.§^!7§);
         }
      }
      
      override protected function getLevelLoadState() : String
      {
         return §2O§.§^!7§;
      }
      
      override protected function getLevelSelectionState() : String
      {
         return §6!W§.§^!7§;
      }
      
      override protected function getCutSceneState() : String
      {
         return §8!]§.§^!7§;
      }
      
      override protected function getPlayState() : String
      {
         return §2&§.§^!7§;
      }
   }
}
