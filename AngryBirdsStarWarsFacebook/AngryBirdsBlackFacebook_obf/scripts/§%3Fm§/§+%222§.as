package §?m§
{
   import §2"a§.§9#L§;
   
   public class §+"2§
   {
      
      public static const §7!k§:String = "1-1";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §7!k§ = "1-1";
         }
      }
      
      protected var §<!W§:Vector.<§3![§> = null;
      
      protected var §@!F§:String = null;
      
      private var §@!-§:String = null;
      
      private var §%#K§:String = null;
      
      private var §"V§:int = 0;
      
      public function §+"2§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public function get currentLevelNumericName() : String
      {
         return this.§@!-§;
      }
      
      public function get currentLevel() : String
      {
         return this.§@!F§;
      }
      
      public function get previousLevel() : String
      {
         return this.§%#K§;
      }
      
      public function get previousLevelNumericName() : String
      {
         return this.§^"W§(this.§%#K§);
      }
      
      public function get currentEpisode() : int
      {
         return this.§"V§;
      }
      
      public function get currentLevelWrittenName() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.getCurrentEpisodeModel());
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc1_ && this))
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
         if(!_loc1_)
         {
            return §§pop() + (this.getCurrentEpisodeModel().getLevelIndex(this.currentLevel) + 1);
         }
      }
      
      public function §9!M§(param1:Object) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Object = null;
         if(!_loc6_)
         {
            this.§<!W§ = new Vector.<§3![§>();
         }
         for each(_loc2_ in param1.episodes)
         {
            if(_loc5_ || _loc2_)
            {
               this.§<!W§.push(this.createEpisodeModelFromData(_loc2_));
            }
         }
      }
      
      protected function createEpisodeModelFromData(param1:Object) : §3![§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:String = null;
         var _loc2_:§3![§ = this.getEpisodeModel(param1.levelNames);
         if(_loc7_ || param1)
         {
            _loc2_.levelsPerPage = param1.levelsPerPage;
            loop0:
            while(true)
            {
               _loc2_.name = param1.name;
               while(true)
               {
                  _loc2_.menuImage = param1.menuImage;
                  addr138:
                  while(!(_loc6_ && this))
                  {
                     _loc2_.§@#$§ = param1.leftCorner;
                     while(true)
                     {
                        _loc2_.§#!w§ = param1.rightCorner;
                        while(true)
                        {
                           _loc2_.§"!p§ = param1.pageColors;
                           addr113:
                           while(_loc7_ || _loc2_)
                           {
                              while(true)
                              {
                                 _loc2_.pageIndexes = param1.pageIndexes;
                                 continue loop0;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr120);
      }
      
      protected function getEpisodeModel(param1:Array) : §3![§
      {
         return new §3![§(param1);
      }
      
      public function getEpisodeForLevel(param1:String) : §3![§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§3![§ = null;
         if(_loc5_)
         {
            if(!param1)
            {
               if(_loc5_)
               {
                  §§goto(addr25);
               }
            }
            var _loc3_:int = 0;
            var _loc4_:* = this.§<!W§;
            while(true)
            {
               for each(_loc2_ in _loc4_)
               {
                  if(!(_loc5_ || _loc3_))
                  {
                     break;
                  }
                  if(_loc2_.§9"?§(param1.toLowerCase()))
                  {
                     if(!(_loc6_ && param1))
                     {
                        break;
                     }
                  }
               }
               return null;
            }
            return _loc2_;
         }
         addr25:
         return null;
      }
      
      public function §@"$§(param1:String) : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§3![§ = null;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(_loc4_ && _loc3_)
            {
               break;
            }
            if(§§pop() >= this.§<!W§.length)
            {
               break;
            }
            _loc3_ = this.§<!W§[_loc2_];
            if(_loc5_ || _loc2_)
            {
               if(_loc3_.§9"?§(param1))
               {
                  if(_loc5_ || _loc3_)
                  {
                     return _loc2_;
                  }
               }
            }
            _loc2_++;
         }
         return §§pop();
      }
      
      public function getEpisode(param1:int) : §3![§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§§pop() >= 0);
               if(!_loc2_)
               {
                  if(!§§pop())
                  {
                     while(§§pop())
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           return this.§<!W§[param1];
                        }
                        if(!_loc2_)
                        {
                           break;
                        }
                        §§push(§§pop() < this.§<!W§.length);
                        continue loop0;
                        if(_loc3_)
                        {
                           continue;
                        }
                        addr84:
                        while(true)
                        {
                           §§pop();
                           continue loop0;
                        }
                        addr84:
                     }
                     return null;
                     addr50:
                  }
               }
               §§goto(addr84);
            }
            addr78:
         }
         while(true)
         {
            §§push(param1);
            if(_loc3_ || this)
            {
               §§goto(addr34);
            }
            else
            {
               §§goto(addr78);
            }
            §§goto(addr84);
         }
      }
      
      public function getEpisodeByName(param1:String) : §3![§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§3![§ = null;
         for each(_loc2_ in this.§<!W§)
         {
            if(!(_loc6_ && this))
            {
               if(_loc2_.name == param1)
               {
                  if(_loc5_ || param1)
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
         return this.§<!W§.length;
      }
      
      public function getLevelForId(param1:String) : §8!B§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§3![§ = this.getEpisodeForLevel(param1);
         if(!(_loc3_ && _loc2_))
         {
            if(!_loc2_)
            {
               if(!_loc3_)
               {
                  throw new Error("Error! Level \'" + param1 + "\' does not exist.");
                  addr43:
               }
            }
            return _loc2_.§8N§(param1);
         }
         §§goto(addr43);
      }
      
      public function addLevel(param1:String, param2:§8!B§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§3![§ = this.getEpisodeForLevel(param1);
         if(_loc5_ || _loc3_)
         {
            if(_loc3_)
            {
               if(!_loc4_)
               {
                  _loc3_.addLevel(param1,param2);
               }
            }
         }
      }
      
      public function getSilverScoreForLevel(param1:String) : int
      {
         var _loc2_:§8!B§ = this.getLevelForId(param1);
         return _loc2_.scoreSilver;
      }
      
      public function getGoldScoreForLevel(param1:String) : int
      {
         var _loc2_:§8!B§ = this.getLevelForId(param1);
         return _loc2_.scoreGold;
      }
      
      public function getNumStarsForLevel(param1:String, param2:int) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(param2);
            if(_loc3_)
            {
               §§push(0);
               loop0:
               while(§§pop() > §§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(param2);
                     loop2:
                     while(true)
                     {
                        §§push(this.getSilverScoreForLevel(param1));
                        loop3:
                        while(§§pop() >= §§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§push(param2);
                              loop5:
                              while(true)
                              {
                                 §§push(this.getGoldScoreForLevel(param1));
                                 if(_loc3_ || param1)
                                 {
                                    if(!_loc4_)
                                    {
                                       if(§§pop() < §§pop())
                                       {
                                          if(!(_loc4_ && param2))
                                          {
                                             if(_loc4_ && param1)
                                             {
                                                break loop0;
                                             }
                                             while(true)
                                             {
                                                break loop5;
                                             }
                                          }
                                          else
                                          {
                                             if(!_loc3_)
                                             {
                                                continue loop4;
                                             }
                                             if(_loc4_)
                                             {
                                                break loop3;
                                             }
                                          }
                                       }
                                       §§push(3);
                                       if(_loc4_)
                                       {
                                          break;
                                       }
                                       if(!_loc4_)
                                       {
                                          return §§pop();
                                       }
                                       continue;
                                    }
                                    continue loop0;
                                 }
                                 continue loop3;
                              }
                              while(true)
                              {
                                 if(!(_loc3_ || param2))
                                 {
                                    if(!_loc4_)
                                    {
                                       return §§pop();
                                    }
                                    addr117:
                                 }
                                 else
                                 {
                                    addr97:
                                 }
                                 if(_loc3_ || this)
                                 {
                                    break;
                                 }
                                 continue loop2;
                                 return §§pop();
                              }
                              return §§pop();
                           }
                        }
                        if(_loc4_)
                        {
                           continue loop1;
                        }
                        §§goto(addr97);
                        §§push(1);
                     }
                  }
               }
               §§push(0);
            }
            §§goto(addr117);
         }
         §§goto(addr67);
      }
      
      public function getValidLevelId(param1:String) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§3![§ = this.getEpisodeForLevel(param1);
         if(!_loc4_)
         {
            if(_loc2_ == null)
            {
               if(_loc3_ || _loc3_)
               {
                  addr53:
                  §§push(§7!k§);
                  if(!_loc4_)
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
         §§goto(addr53);
      }
      
      public function §^"W§(param1:String) : String
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc2_:§3![§ = this.getEpisodeForLevel(param1);
         if(_loc6_ || param1)
         {
            if(!_loc2_)
            {
               return null;
            }
            §§push(_loc2_.§3#4§(param1));
            loop0:
            while(true)
            {
               §§push(int(§§pop()));
               loop1:
               while(true)
               {
                  _loc3_ = §§pop();
                  _loc2_.currentPage = _loc3_;
                  §§push(_loc2_.getPageIndex(_loc3_));
                  while(true)
                  {
                     §§push(int(§§pop()));
                     addr129:
                     while(_loc6_)
                     {
                        _loc4_ = §§pop();
                     }
                     continue loop1;
                     addr108:
                     if(!(_loc7_ && _loc2_))
                     {
                        addr115:
                        _loc5_ = §§pop();
                        if(!(_loc7_ && this))
                        {
                           §§push(_loc4_);
                           if(!(_loc7_ && param1))
                           {
                              if(!_loc6_)
                              {
                                 while(true)
                                 {
                                    §§push(int(§§pop()));
                                    addr106:
                                    while(!_loc7_)
                                    {
                                       §§goto(addr108);
                                    }
                                    §§goto(addr129);
                                 }
                                 addr105:
                              }
                              if(!_loc7_)
                              {
                                 §§goto(addr53);
                              }
                              continue loop0;
                           }
                           §§goto(addr106);
                        }
                        while(true)
                        {
                           §§goto(addr105);
                           §§goto(addr115);
                        }
                     }
                     continue;
                     addr53:
                     §§push(§§pop() + "-");
                     if(!_loc7_)
                     {
                        return §§pop() + (_loc5_ + 1);
                     }
                  }
               }
            }
         }
         §§goto(addr132);
      }
      
      public function loadLevel(param1:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:§3![§ = null;
         if(!_loc5_)
         {
            if(param1 != this.§@!F§)
            {
               if(_loc4_ || _loc2_)
               {
                  §§push(this.§@"$§(param1));
                  if(!(_loc5_ && _loc2_))
                  {
                     §§push(int(§§pop()));
                  }
                  loop0:
                  while(true)
                  {
                     _loc2_ = §§pop();
                     loop1:
                     while(true)
                     {
                        §§push(_loc2_);
                        if(!_loc5_)
                        {
                           if(§§pop() >= 0)
                           {
                              loop2:
                              while(true)
                              {
                                 this.§"V§ = _loc2_;
                                 if(!(_loc4_ || param1))
                                 {
                                    addr154:
                                    this.§+"m§();
                                    break;
                                 }
                                 while(true)
                                 {
                                    addr46:
                                    loop4:
                                    while(true)
                                    {
                                       this.§%#K§ = this.§@!F§;
                                       while(true)
                                       {
                                          if(!(_loc4_ || _loc3_))
                                          {
                                             break loop4;
                                          }
                                          this.§@!F§ = param1;
                                          if(!(_loc4_ || this))
                                          {
                                             break loop2;
                                          }
                                          if(_loc4_)
                                          {
                                             continue loop2;
                                          }
                                       }
                                    }
                                    continue loop1;
                                 }
                              }
                              §§goto(addr156);
                           }
                           break loop0;
                        }
                        break;
                     }
                  }
                  this.§%#K§ = this.§@!F§;
                  if(_loc4_)
                  {
                     §§goto(addr154);
                  }
               }
            }
            addr156:
            return;
         }
         §§goto(addr85);
      }
      
      public function getCurrentEpisodeModel() : §3![§
      {
         return this.§<!W§[this.§"V§];
      }
      
      public function §4#M§() : Boolean
      {
         return true;
      }
      
      public function isCutSceneNext() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.getNextLevelId());
         if(_loc3_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(this.getCurrentEpisodeModel().getCutScene(this.§@!F§ + "-OUTRO"));
         if(!(_loc4_ && _loc1_))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
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
                        if(_loc3_ || _loc3_)
                        {
                           while(true)
                           {
                              §9#L§.§&"X§(_loc2_);
                           }
                           addr76:
                        }
                        while(true)
                        {
                           if(!(_loc4_ && this))
                           {
                              if(!(_loc4_ && _loc3_))
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
               if(!(_loc4_ && _loc3_))
               {
                  return §§pop();
               }
               addr107:
               return §§pop();
            }
            §§goto(addr107);
            §§push(false);
         }
         §§goto(addr76);
      }
      
      public function getNextLevelId() : String
      {
         return this.getCurrentEpisodeModel().getNextLevelId(this.§@!F§);
      }
      
      public function selectEpisode(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§"V§ = param1;
         }
      }
      
      public function selectEpisodeByName(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§"V§ = this.§<!W§.indexOf(this.getEpisodeByName(param1));
         }
      }
      
      public function resetPreviousLevel() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§%#K§ = null;
         }
      }
      
      public function §+"m§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§@!F§ = null;
         }
         do
         {
            this.§@!-§ = null;
         }
         while(_loc2_);
         
      }
   }
}
