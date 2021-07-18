package §,"N§
{
   import § "4§.§7q§;
   import § "v§.TournamentResultsPopup;
   import §!"e§.§`"W§;
   import §"k§.§8"U§;
   import §[!m§.§+5§;
   import §[!m§.§[!j§;
   import §`!o§.§+"k§;
   import §`!o§.§<9§;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §@"b§ extends EventDispatcher
   {
      
      public static const §3R§:String = "onTournamentOver";
      
      public static const §^o§:String = "onTournamentLoaded";
      
      public static const §,"3§:String = "onTournamentReset";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §3R§ = "onTournamentOver";
            do
            {
               §^o§ = "onTournamentLoaded";
               do
               {
                  §,"3§ = "onTournamentReset";
               }
               while(!_loc2_);
               
            }
            while(!(_loc2_ || §@"b§));
            
         }
      }
      
      private var §%4§:Object;
      
      private var §7#F§:Object;
      
      private var §2""§:Sprite;
      
      private var §>#T§:String;
      
      private var §9#Y§:String;
      
      private var §@""§:Number;
      
      private var §1#8§:§8"U§;
      
      private var §9v§:§+"k§;
      
      private var §`"X§:Boolean = false;
      
      private var §1#>§:Timer;
      
      private var §;!-§:Boolean = false;
      
      private var §7h§:int = -1;
      
      public function §@"b§(param1:Object, param2:String, param3:String)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super();
            loop0:
            while(true)
            {
               this.§>#T§ = param2;
               loop1:
               while(true)
               {
                  this.§9#Y§ = param3;
                  loop2:
                  while(true)
                  {
                     §§push(this);
                     if(!_loc5_)
                     {
                        if(param1.theme)
                        {
                           addr134:
                           §§push(int(int(param1.theme)));
                           if(!_loc4_)
                           {
                           }
                        }
                        else
                        {
                           §§push(2);
                        }
                        §§pop().§7h§ = §§pop();
                        while(_loc4_)
                        {
                           while(true)
                           {
                              this.§%4§ = param1;
                              continue loop2;
                           }
                           addr90:
                           if(!(_loc5_ && param2))
                           {
                              this.§2""§.addEventListener(Event.ENTER_FRAME,this.§-!u§);
                              loop9:
                              while(_loc4_ || param1)
                              {
                                 this.§1#>§ = new Timer(10 * 60 * 1000);
                                 loop10:
                                 while(true)
                                 {
                                    this.§1#>§.addEventListener(TimerEvent.TIMER,this.§[";§);
                                    while(true)
                                    {
                                       if(!_loc5_)
                                       {
                                          if(_loc5_)
                                          {
                                             break;
                                          }
                                          continue;
                                       }
                                       continue loop10;
                                    }
                                    continue loop9;
                                 }
                              }
                              while(true)
                              {
                                 if(!_loc4_)
                                 {
                                    continue loop0;
                                 }
                                 if(_loc5_)
                                 {
                                    break;
                                 }
                                 §§goto(addr90);
                                 §§goto(addr63);
                              }
                              addr63:
                              continue loop2;
                           }
                        }
                        continue loop1;
                     }
                     §§goto(addr134);
                  }
               }
            }
         }
         §§goto(addr146);
      }
      
      private function init() : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc1_:Object = null;
         var _loc2_:§@#B§ = null;
         var _loc3_:§7q§ = null;
         var _loc4_:Object = null;
         var _loc5_:§[!j§ = null;
         if(_loc9_ || _loc3_)
         {
            this.§@""§ = getTimer() + this.currentTournament.secondsLeft * 1000;
            if(_loc9_ || _loc3_)
            {
               this.§1#8§ = new §8"U§(this.§>#T§,this.§9#Y§,{"items":this.players});
            }
         }
         for each(_loc1_ in this.levelObjects)
         {
            if(_loc8_)
            {
               continue;
            }
            §§push(Boolean(_loc1_.secondsToUnlock));
            if(_loc9_)
            {
               if(§§pop())
               {
                  if(_loc9_ || _loc3_)
                  {
                     addr97:
                     §§pop();
                     if(!_loc9_)
                     {
                        continue;
                     }
                     §§push(_loc1_.secondsToUnlock > 0);
                  }
               }
               if(§§pop())
               {
                  if(_loc9_ || _loc3_)
                  {
                     _loc1_.unlocksAt = getTimer() + _loc1_.secondsToUnlock * 1000;
                  }
               }
               continue;
            }
            §§goto(addr97);
         }
         _loc2_ = §4#;§.singleton.dataModel as §@#B§;
         if(!(_loc8_ && _loc1_))
         {
            if(_loc2_)
            {
               if(!(_loc8_ && this))
               {
                  _loc3_ = _loc2_.userProgress as §7q§;
                  if(_loc9_ || _loc1_)
                  {
                     if(_loc3_)
                     {
                        if(_loc9_)
                        {
                           §§push(0);
                           if(!(_loc8_ && this))
                           {
                              var _loc6_:* = §§pop();
                              if(_loc9_)
                              {
                                 §§push(this.levelObjects);
                                 if(!_loc8_)
                                 {
                                    var _loc7_:* = §§pop();
                                    loop1:
                                    while(true)
                                    {
                                       §§push(§§hasnext(_loc7_,_loc6_));
                                       if(_loc9_ || _loc1_)
                                       {
                                          if(§§pop())
                                          {
                                             _loc1_ = §§nextvalue(_loc6_,_loc7_);
                                             if(_loc9_)
                                             {
                                                _loc3_.§'!C§(_loc1_.levelId);
                                                if(!_loc8_)
                                                {
                                                   _loc3_.§'"p§(_loc1_.levelId);
                                                }
                                             }
                                             continue;
                                          }
                                          if(!(_loc8_ && _loc2_))
                                          {
                                             if(_loc9_)
                                             {
                                                if(_loc9_ || this)
                                                {
                                                   addr239:
                                                   _loc6_ = 0;
                                                   addr238:
                                                   if(_loc9_)
                                                   {
                                                      addr244:
                                                      _loc7_ = this.levelScores;
                                                      addr242:
                                                      while(true)
                                                      {
                                                         §§push(§§hasnext(_loc7_,_loc6_));
                                                         break loop1;
                                                      }
                                                      addr355:
                                                   }
                                                   addr359:
                                                   §§push(Boolean(this.lastResult));
                                                   if(_loc9_ || _loc1_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(!(_loc8_ && _loc1_))
                                                         {
                                                            §§pop();
                                                            if(!(_loc8_ && this))
                                                            {
                                                               addr386:
                                                               §§push(this.§`"X§);
                                                               if(_loc8_)
                                                               {
                                                               }
                                                               addr391:
                                                               if(§§pop())
                                                               {
                                                                  if(_loc9_)
                                                                  {
                                                                     _loc5_ = new TournamentResultsPopup(this.lastResult,§`"W§.§+v§,§+5§.TOP);
                                                                     if(!_loc8_)
                                                                     {
                                                                        §4#;§.singleton.popupManager.openPopup(_loc5_,true,true,true);
                                                                        if(!_loc8_)
                                                                        {
                                                                           this.§`"f§();
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr431);
                                                               }
                                                               this.§1#>§.start();
                                                            }
                                                            §§goto(addr431);
                                                         }
                                                         §§push(Boolean(§§pop()));
                                                      }
                                                   }
                                                   §§goto(addr391);
                                                   addr358:
                                                }
                                                §§goto(addr359);
                                             }
                                             §§goto(addr242);
                                          }
                                          §§goto(addr358);
                                       }
                                       break;
                                    }
                                    loop2:
                                    for(; §§pop(); §§goto(addr355))
                                    {
                                       _loc4_ = §§nextvalue(_loc6_,_loc7_);
                                       §§push(Boolean(_loc4_.p));
                                       if(!(_loc8_ && _loc1_))
                                       {
                                          §§push(§§pop());
                                          if(_loc9_ || _loc1_)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc9_)
                                                {
                                                   addr274:
                                                   §§pop();
                                                   if(!_loc8_)
                                                   {
                                                      §§push(Boolean(_loc4_.l));
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               _loc3_.§9!R§(_loc4_.l,_loc4_.p);
                                                               addr354:
                                                               while(true)
                                                               {
                                                               }
                                                            }
                                                            addr348:
                                                         }
                                                         loop4:
                                                         while(true)
                                                         {
                                                            §§push(Boolean(_loc4_.r));
                                                            if(_loc9_ || this)
                                                            {
                                                               §§push(§§pop());
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     loop5:
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        addr334:
                                                                        while(true)
                                                                        {
                                                                           if(_loc9_)
                                                                           {
                                                                              if(_loc9_ || _loc3_)
                                                                              {
                                                                                 continue loop5;
                                                                              }
                                                                              §§goto(addr348);
                                                                           }
                                                                           §§goto(addr354);
                                                                           continue loop5;
                                                                        }
                                                                     }
                                                                     addr333:
                                                                  }
                                                                  loop11:
                                                                  while(true)
                                                                  {
                                                                     addr297:
                                                                     while(§§pop())
                                                                     {
                                                                        if(_loc9_ || this)
                                                                        {
                                                                           _loc3_.§+!W§(_loc4_.l,_loc4_.r);
                                                                        }
                                                                        if(!(_loc8_ && this))
                                                                        {
                                                                           if(true)
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue loop4;
                                                                        }
                                                                        §§goto(addr334);
                                                                        continue loop11;
                                                                     }
                                                                     continue loop2;
                                                                  }
                                                               }
                                                               addr332:
                                                            }
                                                            §§goto(addr333);
                                                         }
                                                      }
                                                      addr347:
                                                   }
                                                   §§goto(addr343);
                                                }
                                                §§goto(addr297);
                                             }
                                             §§goto(addr347);
                                          }
                                          §§goto(addr332);
                                       }
                                       §§goto(addr274);
                                    }
                                    §§goto(addr357);
                                 }
                              }
                              §§goto(addr244);
                           }
                           §§goto(addr239);
                        }
                     }
                     §§goto(addr239);
                  }
                  §§goto(addr238);
               }
               §§goto(addr386);
            }
            §§goto(addr239);
         }
         addr431:
      }
      
      private function §^!i§() : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc1_:* = false;
         var _loc2_:* = 0;
         var _loc3_:Object = null;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:Boolean = false;
         if(!_loc10_)
         {
            if(this.§-j§)
            {
               if(!_loc10_)
               {
                  addr36:
                  §§push(true);
                  if(!(_loc10_ && this))
                  {
                     _loc1_ = §§pop();
                     addr61:
                     if(_loc9_ || _loc1_)
                     {
                        §§push(_loc1_);
                     }
                     §§push(-1);
                     if(_loc9_ || _loc1_)
                     {
                        _loc2_ = §§pop();
                        addr70:
                        §§push(0);
                     }
                     var _loc7_:* = §§pop();
                     var _loc8_:* = this.§-j§;
                     loop0:
                     while(true)
                     {
                        §§push(§§hasnext(_loc8_,_loc7_));
                        if(!(_loc10_ && this))
                        {
                           if(§§pop())
                           {
                              _loc3_ = §§nextvalue(_loc7_,_loc8_);
                              if(!_loc10_)
                              {
                                 if(_loc3_.i < _loc2_)
                                 {
                                    continue;
                                 }
                                 if(_loc10_)
                                 {
                                    continue;
                                 }
                              }
                              _loc2_ = int(_loc3_.i);
                              continue;
                           }
                           if(_loc9_ || _loc1_)
                           {
                              if(_loc9_)
                              {
                                 if(_loc9_)
                                 {
                                    §§push(0);
                                    if(!(_loc10_ && this))
                                    {
                                       _loc4_ = §§pop();
                                       if(!_loc10_)
                                       {
                                          loop1:
                                          while(true)
                                          {
                                             §§push(1);
                                             if(!(_loc10_ && _loc2_))
                                             {
                                                _loc5_ = §§pop();
                                                if(_loc9_ || this)
                                                {
                                                   loop2:
                                                   while(true)
                                                   {
                                                      §§push(_loc5_);
                                                      if(_loc9_ || _loc3_)
                                                      {
                                                         loop3:
                                                         while(true)
                                                         {
                                                            if(§§pop() >= _loc2_)
                                                            {
                                                               addr326:
                                                               if(!(_loc10_ && _loc2_))
                                                               {
                                                                  addr274:
                                                                  break loop2;
                                                               }
                                                               this.§-j§.sortOn("i",Array.NUMERIC | Array.DESCENDING);
                                                               break;
                                                            }
                                                            _loc6_ = true;
                                                            if(_loc10_ && _loc2_)
                                                            {
                                                               break;
                                                            }
                                                            if(false)
                                                            {
                                                               continue loop1;
                                                            }
                                                            §§push(0);
                                                            if(_loc10_)
                                                            {
                                                               continue;
                                                            }
                                                            while(true)
                                                            {
                                                               _loc7_ = §§pop();
                                                               if(_loc10_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(this.§-j§);
                                                               if(!_loc10_)
                                                               {
                                                                  _loc8_ = §§pop();
                                                                  while(true)
                                                                  {
                                                                     §§push(§§hasnext(_loc8_,_loc7_));
                                                                     if(!(_loc10_ && _loc2_))
                                                                     {
                                                                        break loop0;
                                                                     }
                                                                     break;
                                                                  }
                                                                  loop6:
                                                                  while(§§pop())
                                                                  {
                                                                     _loc3_ = §§nextvalue(_loc7_,_loc8_);
                                                                     if(!(_loc10_ && _loc3_))
                                                                     {
                                                                        _loc3_.thc = _loc3_.i <= 17 ? this.§%4§.thc : true;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        continue loop6;
                                                                     }
                                                                  }
                                                                  addr318:
                                                                  if(!(_loc10_ && _loc3_))
                                                                  {
                                                                     §§goto(addr326);
                                                                  }
                                                                  break loop3;
                                                                  addr317:
                                                                  addr207:
                                                               }
                                                               addr285:
                                                               _loc8_ = §§pop();
                                                               §§goto(addr315);
                                                            }
                                                            §§goto(addr285);
                                                            §§push(this.§-j§);
                                                         }
                                                         §§goto(addr345);
                                                      }
                                                      break;
                                                   }
                                                   addr275:
                                                   _loc7_ = §§pop();
                                                   if(!(_loc10_ && _loc3_))
                                                   {
                                                      §§goto(addr283);
                                                   }
                                                   §§goto(addr318);
                                                   addr257:
                                                }
                                                §§goto(addr326);
                                             }
                                             §§goto(addr175);
                                          }
                                       }
                                       §§goto(addr326);
                                    }
                                    §§goto(addr275);
                                 }
                                 §§goto(addr274);
                              }
                              §§goto(addr283);
                           }
                           while(true)
                           {
                              if(!_loc10_)
                              {
                                 if(_loc6_)
                                 {
                                    if(!_loc10_)
                                    {
                                       this.§-j§.splice(_loc4_,0,{"i":_loc5_});
                                       addr256:
                                       while(true)
                                       {
                                       }
                                       addr256:
                                    }
                                    §§goto(addr256);
                                 }
                                 loop9:
                                 while(true)
                                 {
                                    _loc4_++;
                                    while(_loc9_)
                                    {
                                       _loc5_++;
                                       if(_loc9_ || _loc3_)
                                       {
                                          if(true)
                                          {
                                             break loop9;
                                          }
                                          continue loop9;
                                       }
                                    }
                                 }
                                 §§goto(addr257);
                              }
                              §§goto(addr256);
                           }
                        }
                        break;
                     }
                     while(true)
                     {
                        if(!§§pop())
                        {
                           if(_loc9_ || _loc2_)
                           {
                              §§goto(addr223);
                           }
                           §§goto(addr317);
                        }
                        else
                        {
                           _loc3_ = §§nextvalue(_loc7_,_loc8_);
                           if(!_loc10_)
                           {
                              if(_loc3_.i == _loc5_)
                              {
                                 if(!(_loc10_ && _loc3_))
                                 {
                                    _loc6_ = false;
                                    addr206:
                                    §§goto(addr223);
                                 }
                                 §§goto(addr206);
                              }
                              §§goto(addr207);
                           }
                           §§goto(addr206);
                        }
                     }
                  }
                  if(§§pop())
                  {
                     if(_loc9_ || _loc2_)
                     {
                        §§goto(addr61);
                     }
                     §§goto(addr70);
                  }
                  §§goto(addr326);
               }
               §§goto(addr61);
            }
            addr345:
            return;
         }
         §§goto(addr36);
      }
      
      public function get §;!C§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.levelScores.length > 0);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop())
               {
                  addr46:
                  §§push(true);
                  if(_loc1_ || this)
                  {
                     addr64:
                  }
               }
               else
               {
                  return false;
               }
               return §§pop();
            }
            §§goto(addr64);
         }
         §§goto(addr46);
      }
      
      public function get §!!e§() : Boolean
      {
         return this.§;!-§;
      }
      
      public function set §!!e§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§;!-§ = param1;
            while(this.§;!-§)
            {
               if(!(_loc2_ || param1))
               {
                  break;
               }
               addr64:
               if(_loc3_ && _loc3_)
               {
                  continue;
               }
               this.§1#>§.reset();
               §§goto(addr64);
            }
            return;
         }
         §§goto(addr64);
      }
      
      private function §[";§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§!!e§ = true;
         }
      }
      
      public function §^!'§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§`"X§ = true;
         }
      }
      
      public function get currentTournament() : Object
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            return this.§%4§.currentTournament || {};
         }
         §§goto(addr50);
      }
      
      public function get currentStandings() : Object
      {
         return this.§%4§.currentStandings;
      }
      
      public function get previousTournament() : Object
      {
         return this.§%4§.previousTournament;
      }
      
      public function get lastResult() : Object
      {
         return this.§%4§.lastResult;
      }
      
      public function get starCoinRewards() : Array
      {
         return this.§%4§.starCoinRewards;
      }
      
      public function get prizePerFriend() : int
      {
         return this.§%4§.prizePerFriend;
      }
      
      public function get §-j§() : Array
      {
         return this.§7#F§ as Array;
      }
      
      public function get prizeValues() : Array
      {
         return this.§%4§.prizeValues;
      }
      
      public function §`"f§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§%4§.lastResult = null;
         }
      }
      
      private function get players() : Array
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.currentStandings)
            {
               if(!_loc1_)
               {
                  §§goto(addr44);
               }
            }
            return [];
         }
         addr44:
         return this.currentStandings.players;
      }
      
      public function get §'"?§() : §8"U§
      {
         return this.§1#8§;
      }
      
      public function get levelObjects() : Array
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            if(this.currentTournament)
            {
               if(!(_loc1_ && _loc1_))
               {
                  return this.currentTournament.levels;
               }
            }
         }
         return [];
      }
      
      public function get levelScores() : Array
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            if(this.currentStandings)
            {
               if(!(_loc1_ && _loc2_))
               {
                  §§goto(addr54);
               }
            }
            return [];
         }
         addr54:
         return this.currentStandings.levelScores;
      }
      
      public function isLevelOpen(param1:String) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Object = this.§["^§(param1);
         if(!(_loc4_ && this))
         {
            §§push(!_loc2_.unlocksAt);
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(Boolean(_loc2_));
                           loop4:
                           while(true)
                           {
                              §§push(§§pop());
                              if(_loc4_ && param1)
                              {
                                 break;
                              }
                              if(§§pop())
                              {
                                 loop5:
                                 while(true)
                                 {
                                    §§pop();
                                    addr121:
                                    addr29:
                                    while(true)
                                    {
                                       §§push(getTimer() > _loc2_.unlocksAt);
                                       if(_loc3_)
                                       {
                                          continue loop4;
                                       }
                                    }
                                    while(true)
                                    {
                                       §§push(false);
                                       if(_loc3_)
                                       {
                                          return §§pop();
                                       }
                                       continue loop5;
                                    }
                                 }
                                 if(_loc3_)
                                 {
                                    return §§pop();
                                 }
                                 continue loop0;
                              }
                              addr72:
                              addr72:
                              while(true)
                              {
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc3_)
                                    {
                                       if(!_loc4_)
                                       {
                                          §§goto(addr79);
                                          §§push(true);
                                       }
                                       §§goto(addr121);
                                    }
                                    else
                                    {
                                       if(_loc4_ && this)
                                       {
                                          continue loop3;
                                       }
                                       while(true)
                                       {
                                       }
                                    }
                                 }
                                 §§goto(addr29);
                              }
                           }
                           continue loop1;
                        }
                     }
                  }
                  §§goto(addr72);
               }
            }
         }
         §§goto(addr96);
      }
      
      public function §1"C§(param1:String) : int
      {
         return this.levelNames.indexOf(param1) + 1;
      }
      
      public function get levelNames() : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Object = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.levelObjects)
         {
            if(_loc5_ || _loc2_)
            {
               _loc1_.push(_loc2_.levelId);
            }
         }
         return _loc1_;
      }
      
      public function get bronzeTrophies() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.previousTournament)
            {
               if(_loc2_)
               {
                  return this.previousTournament.bronzeTrophies;
               }
            }
         }
         return 0;
      }
      
      public function get silverTrophies() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.previousTournament)
            {
               if(_loc2_)
               {
                  return this.previousTournament.silverTrophies;
               }
            }
         }
         return 0;
      }
      
      public function get goldTrophies() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.previousTournament)
            {
               if(!_loc2_)
               {
                  §§goto(addr43);
               }
            }
            return 0;
         }
         addr43:
         return this.previousTournament.goldTrophies;
      }
      
      private function §-!u§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            if(!this.isLoading)
            {
               loop0:
               while(this.§&"J§ == 0)
               {
                  loop1:
                  while(true)
                  {
                     this.§!!e§ = true;
                     loop2:
                     while(!_loc3_)
                     {
                        if(!(_loc2_ || _loc3_))
                        {
                           return;
                        }
                        addr107:
                        this.reset();
                        loop3:
                        while(!(_loc3_ && this))
                        {
                           dispatchEvent(new Event(§3R§));
                           loop4:
                           while(!(_loc3_ && this))
                           {
                              while(true)
                              {
                                 TournamentResultsPopup.reset();
                                 if(_loc2_)
                                 {
                                    if(_loc2_ || _loc3_)
                                    {
                                       break loop0;
                                    }
                                    continue loop3;
                                    continue loop3;
                                 }
                                 continue loop4;
                              }
                           }
                           continue loop2;
                        }
                        continue loop1;
                     }
                     continue loop0;
                  }
               }
               return;
            }
            §§goto(addr107);
         }
         §§goto(addr64);
      }
      
      public function get §&"J§() : Number
      {
         return Math.max((this.§@""§ - getTimer()) / 1000,0);
      }
      
      public function getScoreForLevel(param1:String) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Object = this.§>"R§(param1);
         if(_loc3_)
         {
            if(_loc2_)
            {
               addr45:
               §§push(int(_loc2_.p));
               if(!_loc3_)
               {
               }
            }
            else
            {
               return 0;
            }
            return §§pop();
         }
         §§goto(addr45);
      }
      
      public function getRankForLevel(param1:String) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Object = this.§>"R§(param1);
         if(_loc4_)
         {
            if(_loc2_)
            {
               addr46:
               §§push(int(_loc2_.r));
               if(_loc3_)
               {
               }
            }
            else
            {
               return 0;
            }
            return §§pop();
         }
         §§goto(addr46);
      }
      
      public function §3!n§(param1:String, param2:int, param3:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Object;
         if(!(_loc4_ = this.§>"R§(param1)))
         {
            if(!_loc6_)
            {
               _loc4_ = {"l":param1};
               if(_loc5_)
               {
                  this.levelScores.push(_loc4_);
               }
               §§goto(addr56);
            }
            §§goto(addr61);
         }
         addr56:
         _loc4_.r = param2;
         if(!_loc6_)
         {
            addr61:
            _loc4_.p = param3;
         }
      }
      
      public function §["^§(param1:String) : Object
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Object = null;
         for each(_loc2_ in this.levelObjects)
         {
            if(!_loc6_)
            {
               if(_loc2_.levelId == param1)
               {
                  if(_loc5_)
                  {
                     return _loc2_;
                  }
               }
            }
         }
         return null;
      }
      
      public function §>"R§(param1:String) : Object
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Object = null;
         for each(_loc2_ in this.levelScores)
         {
            if(!_loc6_)
            {
               if(_loc2_.l == param1)
               {
                  if(_loc5_)
                  {
                     return _loc2_;
                  }
               }
            }
         }
         return null;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            if(this.§2""§)
            {
               if(_loc1_ || _loc1_)
               {
                  addr65:
                  this.§2""§.removeEventListener(Event.ENTER_FRAME,this.§-!u§);
               }
               do
               {
                  this.§2""§ = null;
               }
               while(_loc2_);
               
            }
            return;
         }
         §§goto(addr65);
      }
      
      public function get isLoading() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§9v§ == null);
         if(_loc1_)
         {
            return !§§pop();
         }
      }
      
      public function get §"#'§() : int
      {
         return this.§7h§;
      }
      
      public function reset() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(this.isLoading)
            {
               if(_loc1_ || _loc1_)
               {
                  return;
               }
               while(true)
               {
               }
               addr112:
            }
            loop1:
            while(true)
            {
               this.§9v§ = new §+"k§();
               loop2:
               while(true)
               {
                  §§push(this.§9v§);
                  loop3:
                  while(true)
                  {
                     §§pop().addEventListener(Event.COMPLETE,this.§&!A§);
                     addr80:
                     while(!_loc2_)
                     {
                        if(!_loc2_)
                        {
                           continue loop3;
                        }
                        continue loop1;
                     }
                     continue loop2;
                  }
               }
            }
         }
         while(true)
         {
            dispatchEvent(new Event(§,"3§));
            if(!(_loc1_ || this))
            {
               continue;
            }
            if(_loc1_)
            {
               break;
            }
            §§goto(addr80);
         }
      }
      
      private function §&!A§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§!!e§ = false;
            while(true)
            {
               this.§%4§ = this.§9v§.data;
               loop1:
               for(; _loc3_ || _loc2_; while(true)
               {
                  if(!(_loc2_ && this))
                  {
                     continue;
                  }
                  continue loop1;
               })
               {
                  this.init();
                  while(true)
                  {
                     this.§9v§.removeEventListener(Event.COMPLETE,this.§&!A§);
                     addr75:
                     while(!_loc2_)
                     {
                        while(true)
                        {
                           this.§9v§ = null;
                           continue loop1;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr77);
      }
      
      public function §#!m§() : String
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc1_:int = this.§&"J§;
         §§push(_loc1_);
         if(!(_loc6_ && this))
         {
            §§push(int(§§pop() / 60));
         }
         var _loc2_:* = §§pop();
         var _loc3_:* = "";
         var _loc4_:int = Math.round(_loc2_ / 1440);
         var _loc5_:int;
         §§push(_loc5_ = Math.round(_loc2_ / 60));
         if(_loc7_ || this)
         {
            §§push(24);
            if(!_loc6_)
            {
               if(§§pop() < §§pop())
               {
                  if(!_loc6_)
                  {
                     §§push(_loc5_);
                     if(!(_loc6_ && _loc2_))
                     {
                        §§push(2);
                        if(_loc7_ || _loc1_)
                        {
                           addr79:
                           §§push(§§pop() < §§pop());
                           if(!(_loc6_ && _loc3_))
                           {
                              if(§§pop())
                              {
                                 if(_loc7_ || _loc2_)
                                 {
                                    addr96:
                                    §§pop();
                                    if(_loc7_)
                                    {
                                       §§push(_loc2_);
                                       while(true)
                                       {
                                          §§push(60);
                                          addr369:
                                          while(true)
                                          {
                                             §§push(§§pop() >= §§pop());
                                             addr370:
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   §§push(_loc5_);
                                                   loop3:
                                                   while(true)
                                                   {
                                                      §§push(2);
                                                      addr348:
                                                      while(true)
                                                      {
                                                         if(§§pop() < §§pop())
                                                         {
                                                            §§push(_loc1_);
                                                            loop8:
                                                            while(true)
                                                            {
                                                               §§push(60);
                                                               addr327:
                                                               addr372:
                                                               loop1:
                                                               while(true)
                                                               {
                                                                  if(§§pop() < §§pop())
                                                                  {
                                                                     §§push(_loc1_);
                                                                     while(true)
                                                                     {
                                                                        §§push(1);
                                                                        addr281:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop() == §§pop())
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc1_);
                                                                                 addr283:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() + " Second Left!");
                                                                                    addr285:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          _loc3_ = §§pop();
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc6_ && _loc2_))
                                                                                             {
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   break loop3;
                                                                                                }
                                                                                                addr349:
                                                                                                §§push(Math.max(0,_loc5_) + " Hours Left");
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc6_ && _loc2_)
                                                                                                   {
                                                                                                      break loop1;
                                                                                                   }
                                                                                                   §§push(_loc2_);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(1);
                                                                                                      addr337:
                                                                                                      while(§§pop() == §§pop())
                                                                                                      {
                                                                                                         _loc3_ = _loc2_ + " Minute Left";
                                                                                                      }
                                                                                                      break loop3;
                                                                                                   }
                                                                                                }
                                                                                                addr328:
                                                                                             }
                                                                                             §§goto(addr355);
                                                                                          }
                                                                                          addr288:
                                                                                       }
                                                                                       addr374:
                                                                                       addr375:
                                                                                       _loc3_ = §§pop();
                                                                                       break loop3;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr282:
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(_loc1_);
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    if(!(_loc7_ || this))
                                                                                    {
                                                                                       continue loop3;
                                                                                    }
                                                                                    §§push(§§pop() + " Seconds Left!");
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       _loc3_ = §§pop();
                                                                                       addr268:
                                                                                       if(!(_loc6_ && this))
                                                                                       {
                                                                                          break loop3;
                                                                                       }
                                                                                       §§goto(addr342);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr311);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr336);
                                                                                 }
                                                                                 §§goto(addr311);
                                                                              }
                                                                              addr254:
                                                                           }
                                                                           §§goto(addr336);
                                                                        }
                                                                     }
                                                                     addr280:
                                                                  }
                                                                  §§goto(addr328);
                                                                  continue loop8;
                                                               }
                                                               addr371:
                                                               §§goto(addr374);
                                                            }
                                                            addr326:
                                                         }
                                                         §§goto(addr349);
                                                      }
                                                   }
                                                   addr100:
                                                   return _loc3_;
                                                   addr347:
                                                   addr163:
                                                }
                                                §§goto(addr371);
                                             }
                                          }
                                       }
                                       addr368:
                                    }
                                    §§goto(addr338);
                                 }
                              }
                              §§goto(addr370);
                           }
                           §§goto(addr96);
                        }
                        §§goto(addr337);
                     }
                     §§goto(addr347);
                  }
                  else
                  {
                     addr239:
                     §§push(_loc4_);
                     if(_loc7_)
                     {
                        addr244:
                        §§push(§§pop() + " Day Left");
                        if(_loc7_)
                        {
                           _loc3_ = §§pop();
                           addr247:
                           if(!_loc7_)
                           {
                              §§goto(addr288);
                           }
                           §§goto(addr100);
                        }
                        §§goto(addr265);
                     }
                  }
                  §§goto(addr254);
               }
               else
               {
                  §§push(_loc4_);
                  for(; _loc7_ || _loc2_; if(!(_loc7_ || this))
                  {
                     continue;
                  },if(!(_loc6_ && _loc1_))
                  {
                     if(_loc7_ || _loc3_)
                     {
                        if(_loc7_)
                        {
                           §§push(§§pop() + " Days Left");
                           if(!(_loc6_ && _loc2_))
                           {
                              if(!(_loc6_ && _loc3_))
                              {
                                 if(_loc7_)
                                 {
                                    _loc3_ = §§pop();
                                    if(!_loc6_)
                                    {
                                       if(!_loc7_)
                                       {
                                          §§goto(addr319);
                                       }
                                       §§goto(addr100);
                                    }
                                    else
                                    {
                                       §§goto(addr247);
                                    }
                                 }
                                 §§goto(addr341);
                              }
                              §§goto(addr285);
                           }
                           else
                           {
                              §§goto(addr244);
                           }
                        }
                        §§goto(addr326);
                     }
                     §§goto(addr280);
                  },§§goto(addr283))
                  {
                     if(!_loc6_)
                     {
                        if(_loc7_)
                        {
                           §§push(1);
                           if(_loc7_)
                           {
                              if(_loc7_)
                              {
                                 if(_loc7_ || _loc2_)
                                 {
                                    if(!_loc6_)
                                    {
                                       if(_loc7_ || _loc1_)
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             if(_loc7_ || _loc1_)
                                             {
                                                if(_loc7_)
                                                {
                                                   if(_loc7_ || _loc2_)
                                                   {
                                                      if(_loc7_ || this)
                                                      {
                                                         if(!(_loc6_ && _loc2_))
                                                         {
                                                            §§goto(addr239);
                                                         }
                                                         §§goto(addr375);
                                                      }
                                                      §§goto(addr342);
                                                   }
                                                   §§goto(addr282);
                                                }
                                                §§goto(addr268);
                                             }
                                             §§goto(addr247);
                                          }
                                          else
                                          {
                                             §§push(_loc4_);
                                             if(_loc7_ || _loc1_)
                                             {
                                                continue;
                                             }
                                          }
                                          §§goto(addr239);
                                       }
                                       §§goto(addr369);
                                    }
                                    §§goto(addr348);
                                 }
                                 §§goto(addr327);
                              }
                              §§goto(addr337);
                           }
                           §§goto(addr281);
                        }
                        §§goto(addr372);
                     }
                     §§goto(addr339);
                  }
               }
               §§goto(addr302);
            }
            §§goto(addr79);
         }
         §§goto(addr368);
      }
   }
}
