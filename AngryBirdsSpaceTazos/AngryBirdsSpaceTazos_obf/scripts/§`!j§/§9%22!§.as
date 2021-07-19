package §`!j§
{
   import §?_§.§^"4§;
   
   public class §9"!§
   {
      
      public static const §]"0§:String = "1-1";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §]"0§ = "1-1";
         }
      }
      
      protected var §,<§:Vector.<§3,§> = null;
      
      protected var §^`§:String = null;
      
      private var §28§:String = null;
      
      private var §`P§:String = null;
      
      private var §'"%§:int = 0;
      
      public function §9"!§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public function get currentLevelNumericName() : String
      {
         return this.§28§;
      }
      
      public function get currentLevel() : String
      {
         return this.§^`§;
      }
      
      public function get previousLevel() : String
      {
         return this.§`P§;
      }
      
      public function get §2!L§() : String
      {
         return this.§7!f§(this.§`P§);
      }
      
      public function get currentEpisode() : int
      {
         return this.§'"%§;
      }
      
      public function get §@u§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.getCurrentEpisodeModel());
            if(!(_loc1_ && _loc2_))
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc1_)
                  {
                     §§goto(addr48);
                  }
               }
               return null;
            }
            §§goto(addr48);
         }
         addr48:
         §§push(this.getCurrentEpisodeModel().writtenName + " - ");
         if(_loc2_)
         {
            return §§pop() + (this.getCurrentEpisodeModel().§-!;§(this.currentLevel) + 1);
         }
      }
      
      public function § !`§(param1:Object) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc2_:Object = null;
         var _loc3_:§3,§ = null;
         var _loc4_:String = null;
         if(_loc10_ || param1)
         {
            this.§,<§ = new Vector.<§3,§>();
         }
         for each(_loc2_ in param1.episodes)
         {
            _loc3_ = this.getEpisodeModel(_loc2_.levelNames);
            if(!(_loc9_ && this))
            {
               _loc3_.levelsPerPage = _loc2_.levelsPerPage;
               loop1:
               while(true)
               {
                  _loc3_.name = _loc2_.name;
                  addr183:
                  while(true)
                  {
                     _loc3_.menuImage = _loc2_.menuImage;
                     continue loop1;
                  }
               }
            }
            §§goto(addr140);
         }
      }
      
      protected function getEpisodeModel(param1:Array) : §3,§
      {
         return new §3,§(param1);
      }
      
      public function getEpisodeForLevel(param1:String) : §3,§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§3,§ = null;
         if(!_loc5_)
         {
            if(!param1)
            {
               if(!(_loc5_ && this))
               {
                  return null;
               }
            }
         }
         var _loc3_:int = 0;
         var _loc4_:* = this.§,<§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!(_loc6_ || this))
               {
                  break;
               }
               if(_loc2_.§[9§(param1.toLowerCase()))
               {
                  if(!(_loc5_ && _loc2_))
                  {
                     break;
                  }
               }
            }
            return null;
         }
         return _loc2_;
      }
      
      public function § !C§(param1:String) : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§3,§ = null;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc5_ || _loc2_))
            {
               break;
            }
            if(§§pop() >= this.§,<§.length)
            {
               break;
            }
            _loc3_ = this.§,<§[_loc2_];
            if(!_loc4_)
            {
               if(_loc3_.§[9§(param1))
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     return _loc2_;
                  }
               }
               else
               {
                  _loc2_++;
               }
            }
         }
         return §§pop();
      }
      
      public function getEpisode(param1:int) : §3,§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§§pop() >= 0);
               addr87:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(§§pop())
                     {
                        if(_loc2_)
                        {
                           break;
                        }
                        if(!_loc2_)
                        {
                           return this.§,<§[param1];
                        }
                        continue loop0;
                     }
                     return null;
                     addr62:
                  }
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
            addr85:
         }
         while(true)
         {
            §§push(param1);
            if(_loc3_)
            {
               §§push(§§pop() < this.§,<§.length);
               if(_loc2_ && _loc2_)
               {
                  continue;
               }
               if(!(_loc3_ || _loc3_))
               {
                  §§goto(addr87);
               }
               §§goto(addr62);
            }
            else
            {
               §§goto(addr85);
            }
         }
      }
      
      public function §8E§(param1:String) : §3,§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§3,§ = null;
         for each(_loc2_ in this.§,<§)
         {
            if(!(_loc6_ && param1))
            {
               if(_loc2_.name == param1)
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
      
      public function getEpisodeCount() : int
      {
         return this.§,<§.length;
      }
      
      public function getLevelForId(param1:String) : §#b§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§3,§ = this.getEpisodeForLevel(param1);
         if(!_loc3_)
         {
            if(!_loc2_)
            {
               if(!(_loc3_ && param1))
               {
                  throw new Error("Error! Level \'" + param1 + "\' does not exist.");
                  addr43:
               }
            }
            return _loc2_.§1!B§(param1);
         }
         §§goto(addr43);
      }
      
      public function addLevel(param1:String, param2:§#b§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§3,§ = this.getEpisodeForLevel(param1);
         if(_loc5_ || this)
         {
            if(_loc3_)
            {
               if(!(_loc4_ && param2))
               {
                  _loc3_.addLevel(param1,param2);
               }
            }
         }
      }
      
      public function getSilverScoreForLevel(param1:String) : int
      {
         var _loc2_:§#b§ = this.getLevelForId(param1);
         return _loc2_.scoreSilver;
      }
      
      public function getGoldScoreForLevel(param1:String) : int
      {
         var _loc2_:§#b§ = this.getLevelForId(param1);
         return _loc2_.scoreGold;
      }
      
      public function getNumStarsForLevel(param1:String, param2:int) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(param2);
            loop0:
            do
            {
               §§push(0);
               loop1:
               while(§§pop() > §§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§push(param2);
                     loop3:
                     while(true)
                     {
                        §§push(this.getSilverScoreForLevel(param1));
                        loop4:
                        while(§§pop() >= §§pop())
                        {
                           loop5:
                           while(true)
                           {
                              §§push(param2);
                              if(_loc4_)
                              {
                                 §§push(this.getGoldScoreForLevel(param1));
                                 if(!_loc4_)
                                 {
                                    continue loop4;
                                 }
                                 if(!(_loc4_ || this))
                                 {
                                    continue loop1;
                                 }
                                 if(§§pop() < §§pop())
                                 {
                                    if(_loc4_ || _loc3_)
                                    {
                                       if(_loc4_)
                                       {
                                          break;
                                       }
                                       continue loop2;
                                    }
                                    if(!_loc4_)
                                    {
                                       continue;
                                    }
                                    if(_loc3_)
                                    {
                                       break loop4;
                                    }
                                    while(true)
                                    {
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(3);
                                    if(_loc3_)
                                    {
                                       break loop5;
                                    }
                                    continue loop0;
                                 }
                              }
                              break;
                           }
                           while(!_loc3_)
                           {
                              if(_loc4_)
                              {
                                 break loop3;
                              }
                              continue loop3;
                           }
                           if(!_loc3_)
                           {
                              return §§pop();
                           }
                           break loop2;
                        }
                        if(_loc3_)
                        {
                           break loop1;
                        }
                        §§goto(addr90);
                        return 1;
                     }
                     return §§pop();
                  }
                  return §§pop();
               }
               §§goto(addr108);
            }
            while(!(_loc4_ || param1));
            
            return §§pop();
         }
         §§goto(addr80);
      }
      
      public function getValidLevelId(param1:String) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§3,§ = this.getEpisodeForLevel(param1);
         if(_loc3_)
         {
            if(_loc2_ == null)
            {
               if(!_loc4_)
               {
                  addr38:
                  §§push(§]"0§);
                  if(!(_loc4_ && this))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr57:
                  return param1;
               }
               return §§pop();
            }
            §§goto(addr57);
         }
         §§goto(addr38);
      }
      
      public function §7!f§(param1:String) : String
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc2_:§3,§ = this.getEpisodeForLevel(param1);
         if(!_loc6_)
         {
            if(!_loc2_)
            {
               return null;
            }
            §§push(_loc2_.§'!f§(param1));
            loop0:
            while(true)
            {
               §§push(int(§§pop()));
               loop1:
               while(true)
               {
                  _loc3_ = §§pop();
                  _loc2_.currentPage = _loc3_;
                  loop2:
                  while(true)
                  {
                     §§push(_loc2_.getPageIndex(_loc3_));
                     loop3:
                     while(true)
                     {
                        §§push(int(§§pop()));
                        while(!_loc6_)
                        {
                           _loc4_ = §§pop();
                           if(_loc7_)
                           {
                              §§push(_loc2_.§"@§(param1));
                              if(_loc7_ || _loc3_)
                              {
                                 §§push(int(§§pop()));
                              }
                              loop5:
                              while(!_loc6_)
                              {
                                 _loc5_ = §§pop();
                                 while(true)
                                 {
                                    §§push(_loc4_);
                                    if(!_loc6_)
                                    {
                                       if(!_loc6_)
                                       {
                                          if(_loc7_ || this)
                                          {
                                             break;
                                          }
                                          continue loop1;
                                       }
                                       continue loop3;
                                    }
                                    continue loop5;
                                 }
                                 §§push(§§pop() + "-");
                                 if(!_loc6_)
                                 {
                                    return §§pop() + (_loc5_ + 1);
                                 }
                              }
                              continue;
                           }
                           continue loop2;
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr97);
      }
      
      public function loadLevel(param1:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:§3,§ = null;
         if(!(_loc4_ && _loc3_))
         {
            if(param1 != this.§^`§)
            {
               loop0:
               while(true)
               {
                  §§push(this.§ !C§(param1));
                  if(_loc5_)
                  {
                     §§push(int(§§pop()));
                  }
                  loop1:
                  while(true)
                  {
                     _loc2_ = §§pop();
                     addr100:
                     while(true)
                     {
                        §§push(_loc2_);
                        if(!(_loc4_ && param1))
                        {
                           if(§§pop() < 0)
                           {
                              this.§`P§ = this.§^`§;
                              if(_loc5_ || this)
                              {
                              }
                              break;
                           }
                           if(_loc4_ && _loc3_)
                           {
                              this.§<![§();
                           }
                           continue loop0;
                           addr150:
                           break;
                        }
                        continue loop1;
                     }
                  }
               }
            }
            §§goto(addr152);
         }
         §§goto(addr88);
      }
      
      public function getCurrentEpisodeModel() : §3,§
      {
         return this.§,<§[this.§'"%§];
      }
      
      public function §4u§() : Boolean
      {
         return true;
      }
      
      public function isCutSceneNext() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.getNextLevelId());
         if(_loc3_ || _loc3_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(this.getCurrentEpisodeModel().getCutScene(this.§^`§ + "-OUTRO"));
         if(!(_loc4_ && this))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && _loc2_))
         {
            §§push(_loc2_);
            loop0:
            while(§§pop())
            {
               loop1:
               while(true)
               {
                  §§push(_loc1_);
                  if(!_loc4_)
                  {
                     if(§§pop() == null)
                     {
                        if(_loc3_)
                        {
                           while(true)
                           {
                              §^"4§.§#!w§(_loc2_);
                           }
                           addr76:
                        }
                        while(true)
                        {
                           if(_loc3_)
                           {
                              if(!(_loc4_ && _loc1_))
                              {
                                 break loop1;
                              }
                              break loop0;
                           }
                           continue loop1;
                        }
                     }
                     break;
                  }
                  continue loop0;
               }
               §§push(true);
               if(!_loc4_)
               {
                  return §§pop();
               }
               addr102:
               return §§pop();
            }
            §§goto(addr102);
            §§push(false);
         }
         §§goto(addr76);
      }
      
      public function getNextLevelId() : String
      {
         return this.getCurrentEpisodeModel().getNextLevelId(this.§^`§);
      }
      
      public function selectEpisode(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§'"%§ = param1;
         }
      }
      
      public function resetPreviousLevel() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§`P§ = null;
         }
      }
      
      public function §<![§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§^`§ = null;
            do
            {
               this.§28§ = null;
            }
            while(!_loc2_);
            
         }
      }
   }
}
