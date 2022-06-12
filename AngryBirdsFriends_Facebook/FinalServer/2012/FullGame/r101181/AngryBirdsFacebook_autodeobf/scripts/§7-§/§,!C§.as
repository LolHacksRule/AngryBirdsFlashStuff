package §7-§
{
   import §%!v§.§[<§;
   import §'!s§.§%?§;
   import §0!G§.§1-§;
   import §[!K§.§-k§;
   import §]!>§.§"!w§;
   import §]!>§.§#"1§;
   import §]!A§.;
   import flash.events.Event;
   import flash.utils.getTimer;
   
   public class §,!C§
   {
      
      public static const §1!G§:String = "LOTUS_BLACK";
      
      public static const §'W§:int = 100000;
      
      private static var §8G§:int = 0;
      
      private static var §2"<§:§,!C§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §1!G§ = "LOTUS_BLACK";
         }
         while(true)
         {
            §'W§ = 100000;
            while(!(_loc2_ && §,!C§))
            {
               §8G§ = 0;
               if(_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      private var §8!$§:Boolean = false;
      
      private var §>">§:Object;
      
      private var §;<§:Number = 0;
      
      private var §%!c§:Number;
      
      public function §,!C§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
            do
            {
               AngryBirdsFP11.§@<§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            }
            while(!_loc1_);
            
         }
      }
      
      public static function get §;"§() : §,!C§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(§2"<§);
            if(_loc2_)
            {
               if(§§pop() == null)
               {
                  if(_loc2_ || §,!C§)
                  {
                     §2"<§ = new §,!C§();
                     addr50:
                     §§push(§2"<§);
                  }
               }
               §§goto(addr50);
            }
            return §§pop();
         }
         §§goto(addr50);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            if(!this.§8!$§)
            {
               if(_loc4_)
               {
                  §§push(this.§;<§);
                  if(_loc4_ || param1)
                  {
                     §§push(§§pop() - getTimer());
                  }
                  if(§§pop() <= 0)
                  {
                     if(_loc4_)
                     {
                        this.§8!$§ = true;
                        if(_loc4_)
                        {
                           addr44:
                           if(§3T§.§67§.§<!W§().indexOf("Tournament") != -1)
                           {
                              if(!(_loc5_ && _loc2_))
                              {
                                 addr68:
                                 var _loc2_:*;
                                 §§push((_loc2_ = §§findproperty(§8G§)).§8G§);
                                 if(_loc4_ || _loc3_)
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 var _loc3_:* = §§pop();
                                 if(_loc4_ || _loc2_)
                                 {
                                    _loc2_.§8G§ = _loc3_;
                                 }
                                 if(_loc4_ || this)
                                 {
                                    if(§8G§ <= 2)
                                    {
                                       §%?§.§6F§();
                                       if(!(_loc5_ && param1))
                                       {
                                          if(_loc5_)
                                          {
                                             loop1:
                                             while(true)
                                             {
                                                §8G§ = 0;
                                                addr134:
                                                while(!(_loc4_ || _loc3_))
                                                {
                                                   while(true)
                                                   {
                                                      §%?§.§`!6§();
                                                      continue loop1;
                                                   }
                                                   continue loop1;
                                                }
                                             }
                                             addr147:
                                          }
                                          §§goto(addr102);
                                       }
                                       §§goto(addr134);
                                    }
                                    §§goto(addr145);
                                 }
                              }
                              §§goto(addr147);
                           }
                           §§goto(addr102);
                        }
                        §§goto(addr145);
                     }
                     §§goto(addr68);
                  }
                  §§goto(addr102);
               }
               §§goto(addr44);
            }
            addr102:
            return;
         }
         §§goto(addr145);
      }
      
      public function injectData(param1:Object) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:int = 0;
         var _loc3_:§1-§ = null;
         if(!(_loc4_ && _loc2_))
         {
            this.§8!$§ = false;
            loop0:
            while(true)
            {
               param1.currentStandings = §"!w§.§1!C§(param1.currentStandings,"players");
               loop1:
               while(true)
               {
                  if(!_loc4_)
                  {
                     this.§>">§ = param1;
                     if(!(_loc4_ && this))
                     {
                        if(this.currentTournament)
                        {
                           continue;
                        }
                        loop2:
                        while(true)
                        {
                           this.§%!c§ = getTimer();
                           if(_loc5_)
                           {
                              if(_loc5_)
                              {
                                 §§push(this);
                                 §§push(this.§%!c§);
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    §§push(§§pop() + _loc2_ * 1000);
                                 }
                                 §§pop().§;<§ = §§pop();
                                 if(!(_loc4_ && param1))
                                 {
                                    while(true)
                                    {
                                       if(true)
                                       {
                                          if(§3T§.§[!W§())
                                          {
                                             break loop1;
                                          }
                                          break;
                                       }
                                       continue loop2;
                                    }
                                    addr163:
                                    return;
                                    addr53:
                                 }
                                 break loop1;
                              }
                              addr88:
                              while(true)
                              {
                                 continue loop2;
                              }
                           }
                           break loop1;
                        }
                     }
                     break;
                  }
                  continue loop0;
               }
               _loc3_ = §#6§.§ q§.§>k§();
               if(_loc5_ || this)
               {
                  if(_loc3_ != null)
                  {
                     if(_loc5_ || param1)
                     {
                        if(_loc3_.mName == §-k§.STATE_NAME)
                        {
                           if(!_loc4_)
                           {
                              addr158:
                              §3T§.§67§.§=!w§(§-k§.STATE_NAME);
                           }
                        }
                     }
                     §§goto(addr158);
                  }
                  §§goto(addr163);
               }
               §§goto(addr158);
            }
         }
         §§goto(addr53);
      }
      
      public function get §#!X§() : int
      {
         return getTimer() - this.§%!c§;
      }
      
      public function get currentTournament() : Object
      {
         return this.§>">§.currentTournament;
      }
      
      public function get §!!M§() : Object
      {
         return this.currentTournament.enteredDraw;
      }
      
      public function get §0!&§() : Object
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.currentTournament == null);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     do
                     {
                        if(§§pop())
                        {
                           if(!(_loc1_ && _loc2_))
                           {
                              return this.currentTournament.brandedTournament;
                           }
                           if(!(_loc2_ || this))
                           {
                              loop3:
                              while(true)
                              {
                                 §§push(this.currentTournament.brandedTournament == null);
                                 if(!(_loc2_ || this))
                                 {
                                    break;
                                 }
                                 if(!_loc1_)
                                 {
                                    if(_loc2_ || _loc1_)
                                    {
                                       §§push(!§§pop());
                                       break;
                                    }
                                    continue loop1;
                                 }
                                 addr103:
                                 while(true)
                                 {
                                    §§pop();
                                    continue loop3;
                                 }
                              }
                              continue;
                           }
                           addr95:
                        }
                        return "";
                     }
                     while(!_loc1_);
                     
                     continue loop0;
                  }
                  §§goto(addr103);
               }
            }
         }
         §§goto(addr95);
      }
      
      public function get nextTournamentBrand() : Object
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.currentTournament == null);
            if(_loc1_)
            {
               §§push(!§§pop());
               if(!_loc2_)
               {
                  addr85:
                  if(§§pop())
                  {
                     loop0:
                     while(true)
                     {
                        §§pop();
                        addr88:
                        loop3:
                        while(true)
                        {
                           §§push(this.§>">§.nextTournamentBrand == null);
                           if(!_loc1_)
                           {
                              while(§§pop())
                              {
                                 if(_loc1_)
                                 {
                                    return this.§>">§.nextTournamentBrand;
                                 }
                                 if(_loc1_ || _loc1_)
                                 {
                                    break;
                                 }
                                 continue loop3;
                              }
                              return "";
                           }
                           addr61:
                           continue loop0;
                        }
                     }
                     addr87:
                  }
                  while(true)
                  {
                     §§goto(addr61);
                     §§goto(addr49);
                  }
               }
               §§goto(addr87);
            }
            §§goto(addr85);
         }
         §§goto(addr88);
      }
      
      public function get currentStandings() : Object
      {
         return this.§>">§.currentStandings;
      }
      
      public function get previousTournament() : Object
      {
         return this.§>">§.previousTournament;
      }
      
      public function get lastResult() : Object
      {
         return this.§>">§.lastResult;
      }
      
      public function get players() : Array
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.currentStandings)
            {
               if(_loc1_ || this)
               {
                  §§goto(addr28);
               }
            }
            return [];
         }
         addr28:
         return this.currentStandings.players;
      }
      
      public function isLevelOpen(param1:String) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Object = null;
         for each(_loc2_ in this.§<f§)
         {
            if(!_loc6_)
            {
               if(_loc2_.levelId == param1)
               {
                  if(!(_loc6_ && param1))
                  {
                     return this.§8y§(_loc2_);
                  }
               }
            }
         }
         return false;
      }
      
      public function § 4§(param1:String, param2:Boolean) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:Object = null;
         for each(_loc3_ in this.§<f§)
         {
            if(!(_loc6_ && _loc3_))
            {
               if(_loc3_.levelId != param1)
               {
                  continue;
               }
               if(!(_loc7_ || this))
               {
                  continue;
               }
            }
            _loc3_.secondsToUnlock = -1;
            if(!_loc6_)
            {
               return;
            }
         }
      }
      
      public function secondsToUnlock(param1:String) : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Object = null;
         for each(_loc2_ in this.§<f§)
         {
            if(!_loc6_)
            {
               if(_loc2_.levelId == param1)
               {
                  if(!(_loc6_ && param1))
                  {
                     return _loc2_.secondsToUnlock;
                  }
               }
            }
         }
         return -1;
      }
      
      private function §8y§(param1:Object) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            if(param1.secondsToUnlock)
            {
               if(_loc3_)
               {
                  addr49:
                  if(param1.secondsToUnlock > 0)
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        addr60:
                        §§push(false);
                        if(!(_loc2_ && _loc3_))
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr69:
                        return true;
                     }
                     return §§pop();
                  }
                  §§goto(addr69);
               }
               §§goto(addr60);
            }
            §§goto(addr69);
         }
         §§goto(addr49);
      }
      
      public function get §-&§() : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Object = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.§<f§)
         {
            if(!_loc6_)
            {
               _loc1_.push(_loc2_.levelId);
            }
         }
         return _loc1_;
      }
      
      public function get §<f§() : Array
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.currentTournament)
            {
               if(_loc1_ || this)
               {
                  §§goto(addr28);
               }
            }
            return [];
         }
         addr28:
         return this.currentTournament.levels;
      }
      
      public function get levelScores() : Array
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.currentStandings)
            {
               if(!_loc2_)
               {
                  return this.currentStandings.levelScores;
               }
            }
         }
         return [];
      }
      
      public function get § !Q§() : Array
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.previousTournament)
            {
               if(!_loc2_)
               {
                  if(this.previousTournament.priceCounts)
                  {
                     if(_loc1_ || this)
                     {
                        §§goto(addr44);
                     }
                  }
               }
            }
            return [6,4,2];
         }
         addr44:
         return this.previousTournament.priceCounts;
      }
      
      public function get §[-§() : Array
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.lastResult)
            {
               if(_loc1_)
               {
                  if(this.lastResult.priceCounts)
                  {
                     if(!_loc2_)
                     {
                        §§goto(addr39);
                     }
                  }
               }
            }
            return [6,4,2];
         }
         addr39:
         return this.lastResult.priceCounts;
      }
      
      public function get bronzeTrophies() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(this.previousTournament)
            {
               if(!_loc2_)
               {
                  §§goto(addr28);
               }
            }
            return 0;
         }
         addr28:
         return this.previousTournament.bronzeTrophies;
      }
      
      public function get silverTrophies() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.previousTournament)
            {
               if(!(_loc1_ && _loc1_))
               {
                  return this.previousTournament.silverTrophies;
               }
            }
         }
         return 0;
      }
      
      public function get goldTrophies() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            if(this.previousTournament)
            {
               if(_loc2_)
               {
                  return this.previousTournament.goldTrophies;
               }
            }
         }
         return 0;
      }
      
      public function §#"5§() : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§;<§);
         if(!(_loc2_ && _loc2_))
         {
            §§push(§§pop() - getTimer());
            if(_loc3_)
            {
               addr51:
               §§push(§§pop() / 1000);
            }
            var _loc1_:* = int(§§pop());
            if(_loc3_)
            {
               §§push(int(Math.max(0,_loc1_)));
               if(!(_loc2_ && this))
               {
                  _loc1_ = §§pop();
                  addr70:
                  return _loc1_;
               }
            }
            §§goto(addr70);
         }
         §§goto(addr51);
      }
      
      public function §4W§(param1:String) : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:int = this.§-&§.indexOf(param1);
         var _loc3_:String = this.§-&§[_loc2_ + 1];
         if(!_loc4_)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(§§pop() >= 0);
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop6:
                        while(true)
                        {
                           §§push(§§pop());
                           if(!_loc4_)
                           {
                              if(§§pop())
                              {
                                 loop7:
                                 while(true)
                                 {
                                    §§pop();
                                    addr122:
                                    loop8:
                                    while(!_loc4_)
                                    {
                                       §§push(this.isLevelOpen(_loc3_));
                                       if(_loc5_ || this)
                                       {
                                          continue loop7;
                                       }
                                       addr63:
                                       addr63:
                                       if(!(_loc5_ || _loc2_))
                                       {
                                          while(true)
                                          {
                                             if(!_loc4_)
                                             {
                                                if(!(_loc5_ || _loc2_))
                                                {
                                                   break;
                                                }
                                                continue loop6;
                                             }
                                             addr130:
                                             while(true)
                                             {
                                                §§pop();
                                                break loop8;
                                             }
                                             §§goto(addr63);
                                          }
                                          continue loop1;
                                          addr107:
                                       }
                                    }
                                    continue loop0;
                                 }
                              }
                              while(§§pop())
                              {
                                 if(!_loc4_)
                                 {
                                    §§goto(addr74);
                                 }
                                 if(_loc5_ || _loc2_)
                                 {
                                    break;
                                 }
                                 §§goto(addr122);
                              }
                              return "";
                           }
                           break;
                        }
                        continue;
                     }
                     §§goto(addr130);
                  }
               }
            }
         }
         addr74:
         return _loc3_;
      }
      
      public function §8!z§(param1:String) : int
      {
         return this.§-&§.indexOf(param1) + 1;
      }
      
      public function §#!3§() : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Object = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.players)
         {
            if(!_loc5_)
            {
               if(!_loc2_.i)
               {
                  if(_loc6_)
                  {
                     _loc1_.push(_loc2_);
                  }
               }
            }
         }
         return _loc1_;
      }
      
      public function § !!§() : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Object = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.players)
         {
            if(!(_loc5_ && this))
            {
               if(!_loc2_.i)
               {
                  continue;
               }
               if(_loc5_ && _loc2_)
               {
                  continue;
               }
            }
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public function §9§(param1:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Object = null;
         var _loc2_:* = int(this.players.length - 1);
         loop0:
         while(true)
         {
            if(_loc2_ < 0)
            {
               return;
            }
            _loc3_ = this.players[_loc2_];
            if(!_loc5_)
            {
               if(_loc3_.u != param1)
               {
                  do
                  {
                     §§push(_loc2_);
                     if(_loc4_)
                     {
                        §§push(§§pop() - 1);
                     }
                     _loc2_ = §§pop();
                     if(!(_loc5_ && this))
                     {
                        if(!_loc4_)
                        {
                           addr71:
                           break loop0;
                        }
                        if(false)
                        {
                           §§goto(addr73);
                        }
                        continue loop0;
                     }
                  }
                  while(_loc4_);
                  
                  §§goto(addr87);
               }
               break;
            }
            §§goto(addr71);
         }
         this.players.splice(_loc2_,1);
         addr87:
         addr73:
      }
      
      public function §=!V§() : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Object = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.players)
         {
            if(!_loc5_)
            {
               if(_loc2_.i)
               {
                  if(_loc6_)
                  {
                     _loc1_.push(§#"1§.§!!t§(_loc2_));
                  }
               }
            }
         }
         return _loc1_;
      }
      
      public function §0!V§() : Array
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§#"5§());
         if(!(_loc3_ && this))
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         return this.§52§(_loc1_);
      }
      
      public function §52§(param1:Number) : Array
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         §§push(param1);
         if(!_loc7_)
         {
            §§push(§§pop() / 60);
         }
         var _loc2_:int = §§pop();
         var _loc3_:* = "";
         var _loc4_:* = uint(11324655);
         var _loc5_:int = Math.round(_loc2_ / 1440);
         var _loc6_:int;
         §§push(_loc6_ = Math.round(_loc2_ / 60));
         if(!_loc7_)
         {
            §§push(24);
            if(!_loc7_)
            {
               if(§§pop() < §§pop())
               {
                  if(!(_loc7_ && param1))
                  {
                     §§push(16762174);
                     if(_loc8_)
                     {
                        §§push(uint(§§pop()));
                        if(!(_loc7_ && param1))
                        {
                           _loc4_ = §§pop();
                           if(!(_loc7_ && this))
                           {
                              §§push(_loc6_);
                              loop19:
                              while(true)
                              {
                                 §§push(2);
                                 loop7:
                                 while(true)
                                 {
                                    §§push(§§pop() < §§pop());
                                    addr388:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          loop9:
                                          while(true)
                                          {
                                             §§pop();
                                             addr391:
                                             while(true)
                                             {
                                                §§push(_loc2_);
                                                addr365:
                                                while(true)
                                                {
                                                   continue loop7;
                                                }
                                                continue loop9;
                                             }
                                          }
                                          addr390:
                                       }
                                       else
                                       {
                                          loop10:
                                          while(!§§pop())
                                          {
                                             §§push(_loc6_);
                                             while(true)
                                             {
                                                §§push(2);
                                                addr342:
                                                while(true)
                                                {
                                                   if(§§pop() < §§pop())
                                                   {
                                                      §§push(param1);
                                                      while(true)
                                                      {
                                                         if(§§pop() >= 60)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(_loc2_);
                                                               loop6:
                                                               while(true)
                                                               {
                                                                  if(!_loc8_)
                                                                  {
                                                                     continue loop19;
                                                                  }
                                                                  §§push(" ");
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!_loc7_)
                                                                     {
                                                                        if(_loc2_ == 1)
                                                                        {
                                                                           if(_loc8_ || param1)
                                                                           {
                                                                              addr311:
                                                                              §§push("Minute" + (!!_loc8_ ? §§pop() : §§pop()));
                                                                           }
                                                                           while(!(_loc7_ && _loc2_))
                                                                           {
                                                                              §§push(" Left");
                                                                           }
                                                                           addr349:
                                                                           _loc3_ = §§pop();
                                                                           addr350:
                                                                           if(!_loc8_)
                                                                           {
                                                                              break loop10;
                                                                           }
                                                                           return [_loc3_,_loc4_];
                                                                           addr149:
                                                                           addr326:
                                                                        }
                                                                        else
                                                                        {
                                                                           addr316:
                                                                           §§push("Minutes");
                                                                           if(_loc8_ || _loc3_)
                                                                           {
                                                                              §§goto(addr324);
                                                                           }
                                                                        }
                                                                        loop3:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           addr335:
                                                                           while(true)
                                                                           {
                                                                              _loc3_ = §§pop();
                                                                              addr336:
                                                                              while(true)
                                                                              {
                                                                                 §§push(16464956);
                                                                                 loop5:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       addr285:
                                                                                       _loc4_ = uint(§§pop());
                                                                                       break;
                                                                                       addr286:
                                                                                    }
                                                                                    continue loop6;
                                                                                    addr230:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc7_ && _loc2_)
                                                                                       {
                                                                                          continue loop5;
                                                                                       }
                                                                                       if(_loc8_ || _loc2_)
                                                                                       {
                                                                                          §§push(uint(§§pop()));
                                                                                          if(_loc8_ || this)
                                                                                          {
                                                                                             _loc4_ = §§pop();
                                                                                             addr253:
                                                                                             if(_loc8_ || param1)
                                                                                             {
                                                                                                break loop5;
                                                                                             }
                                                                                             §§goto(addr350);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr285);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr365);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr149);
                                                                              }
                                                                              continue loop3;
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr311);
                                                                  }
                                                               }
                                                            }
                                                            addr293:
                                                         }
                                                         else
                                                         {
                                                            §§push(param1);
                                                            if(!_loc8_)
                                                            {
                                                               continue;
                                                            }
                                                            §§push(§§pop() + " Seconds Left!");
                                                            while(!(_loc7_ && param1))
                                                            {
                                                               _loc3_ = §§pop();
                                                               while(!_loc7_)
                                                               {
                                                                  §§goto(addr230);
                                                                  §§push(16464956);
                                                               }
                                                               §§goto(addr349);
                                                               §§push(Math.max(0,_loc6_) + " Hours Left");
                                                            }
                                                            _loc3_ = §§pop();
                                                         }
                                                         §§goto(addr149);
                                                      }
                                                   }
                                                   §§goto(addr343);
                                                }
                                             }
                                          }
                                          addr382:
                                          §§goto(addr383);
                                          §§push(_loc6_ + " Hour Left");
                                          addr378:
                                       }
                                       §§goto(addr365);
                                    }
                                 }
                              }
                           }
                           §§goto(addr391);
                        }
                        §§goto(addr285);
                     }
                     §§goto(addr365);
                  }
                  §§goto(addr391);
               }
               else
               {
                  §§push(_loc5_);
                  while(true)
                  {
                     §§push(1);
                     if(_loc8_)
                     {
                        if(_loc8_ || _loc3_)
                        {
                           if(§§pop() != §§pop())
                           {
                              §§push(_loc5_);
                              if(_loc8_ || _loc2_)
                              {
                                 if(_loc7_)
                                 {
                                    continue;
                                 }
                                 if(!(_loc7_ && _loc3_))
                                 {
                                    if(_loc8_ || this)
                                    {
                                       §§push(" Days Left");
                                       if(_loc8_)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(_loc8_ || param1)
                                          {
                                             _loc3_ = §§pop();
                                             if(_loc8_)
                                             {
                                                if(_loc8_)
                                                {
                                                   if(!(_loc7_ && this))
                                                   {
                                                      if(!(_loc7_ && _loc3_))
                                                      {
                                                         if(!(_loc8_ || this))
                                                         {
                                                            §§goto(addr384);
                                                         }
                                                         §§goto(addr77);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr293);
                                                      }
                                                   }
                                                   §§goto(addr277);
                                                }
                                                else
                                                {
                                                   addr163:
                                                   if(_loc8_ || _loc2_)
                                                   {
                                                      if(!(_loc7_ && param1))
                                                      {
                                                         addr188:
                                                         §§push(_loc5_);
                                                         if(_loc8_ || _loc3_)
                                                         {
                                                            addr196:
                                                            §§push(" Day Left");
                                                            if(_loc8_ || param1)
                                                            {
                                                               if(_loc8_ || _loc2_)
                                                               {
                                                                  addr211:
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!_loc7_)
                                                                  {
                                                                     if(!_loc7_)
                                                                     {
                                                                        if(!_loc7_)
                                                                        {
                                                                           _loc3_ = §§pop();
                                                                           addr218:
                                                                           if(!(_loc7_ && param1))
                                                                           {
                                                                              if(!_loc8_)
                                                                              {
                                                                                 §§goto(addr391);
                                                                              }
                                                                              §§goto(addr77);
                                                                           }
                                                                           §§goto(addr253);
                                                                        }
                                                                        §§goto(addr326);
                                                                     }
                                                                     §§goto(addr335);
                                                                  }
                                                                  §§goto(addr269);
                                                               }
                                                               §§goto(addr382);
                                                            }
                                                            §§goto(addr297);
                                                         }
                                                         §§goto(addr341);
                                                      }
                                                      §§goto(addr336);
                                                   }
                                                }
                                                §§goto(addr286);
                                             }
                                             §§goto(addr218);
                                          }
                                          §§goto(addr211);
                                       }
                                       §§goto(addr196);
                                    }
                                    §§goto(addr382);
                                 }
                                 §§goto(addr230);
                              }
                              §§goto(addr188);
                           }
                           §§goto(addr163);
                        }
                     }
                     break;
                  }
                  §§goto(addr342);
               }
            }
            §§goto(addr342);
         }
         §§goto(addr365);
      }
      
      public function §<>§() : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:Object = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.players;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(_loc4_)
               {
                  break;
               }
               if(_loc1_.u == (AngryBirdsFP11.sUserProgress as §[<§).§4v§)
               {
                  if(_loc5_ || _loc3_)
                  {
                     break;
                  }
               }
            }
            return §'W§;
         }
         return _loc1_.r;
      }
   }
}
