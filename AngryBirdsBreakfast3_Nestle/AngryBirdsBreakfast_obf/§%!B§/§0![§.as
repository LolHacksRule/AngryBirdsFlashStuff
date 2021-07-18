package §%!B§
{
   import §<!0§.§-k§;
   
   public class §0![§
   {
      
      public static const §2!p§:String = "1-1";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §0![§)
         {
            §2!p§ = "1-1";
         }
      }
      
      protected var §[",§:Vector.<§7C§> = null;
      
      protected var §?n§:String = null;
      
      private var §7!T§:String = null;
      
      private var §?!]§:String = null;
      
      private var §1U§:int = 0;
      
      public function §0![§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super();
         }
      }
      
      public function get currentLevelNumericName() : String
      {
         return this.§7!T§;
      }
      
      public function get currentLevel() : String
      {
         return this.§?n§;
      }
      
      public function get previousLevel() : String
      {
         return this.§?!]§;
      }
      
      public function get previousLevelNumericName() : String
      {
         return this.§7!g§(this.§?!]§);
      }
      
      public function get currentEpisode() : int
      {
         return this.§1U§;
      }
      
      public function get §#!p§() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.getCurrentEpisodeModel());
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(_loc1_ || _loc2_)
                  {
                     §§push(this.getCurrentEpisodeModel());
                  }
                  else
                  {
                     §§goto(addr71);
                  }
               }
               §§goto(addr71);
            }
            §§push(§§pop().writtenName + " - ");
            if(!_loc2_)
            {
               return §§pop() + (this.getCurrentEpisodeModel().§-!H§(this.currentLevel) + 1);
            }
         }
         addr71:
         return null;
      }
      
      public function §5l§(param1:Object) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Object = null;
         if(_loc6_ || _loc2_)
         {
            this.§[",§ = new Vector.<§7C§>();
         }
         for each(_loc2_ in param1.episodes)
         {
            if(!_loc5_)
            {
               this.§[",§.push(this.§?!i§(_loc2_));
            }
         }
      }
      
      protected function §?!i§(param1:Object) : §7C§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = null;
         var _loc2_:§7C§ = this.getEpisodeModel(param1.levelNames);
         if(!_loc6_)
         {
            _loc2_.levelsPerPage = param1.levelsPerPage;
            if(!(_loc6_ && this))
            {
               _loc2_.name = param1.name;
               loop0:
               while(true)
               {
                  _loc2_.menuImage = param1.menuImage;
                  while(true)
                  {
                     _loc2_.§#T§ = param1.leftCorner;
                     loop2:
                     while(true)
                     {
                        _loc2_.§@"2§ = param1.rightCorner;
                        loop3:
                        while(true)
                        {
                           _loc2_.§]!]§ = param1.pageColors;
                           if(_loc6_ && param1)
                           {
                              break;
                           }
                           continue loop2;
                           addr58:
                           while(_loc7_ || param1)
                           {
                              continue loop0;
                              addr45:
                              if(_loc7_ || this)
                              {
                                 _loc2_.§'K§ = param1.locked;
                                 if(!_loc6_)
                                 {
                                    if(true)
                                    {
                                       if(param1.cutscenes)
                                       {
                                          break loop3;
                                       }
                                       addr38:
                                    }
                                    while(true)
                                    {
                                       _loc2_.§%!u§ = param1.hidden;
                                       if(!_loc6_)
                                       {
                                          §§goto(addr45);
                                       }
                                       break loop3;
                                    }
                                    continue;
                                    §§goto(addr211);
                                 }
                                 break loop3;
                              }
                           }
                        }
                     }
                  }
               }
            }
            for(_loc3_ in param1.cutscenes)
            {
               if(!(_loc6_ && _loc3_))
               {
                  _loc2_.§0x§(_loc3_,param1.cutscenes[_loc3_]);
               }
            }
            addr211:
            return _loc2_;
         }
         §§goto(addr110);
      }
      
      protected function getEpisodeModel(param1:Array) : §7C§
      {
         return new §7C§(param1);
      }
      
      public function getEpisodeForLevel(param1:String) : §7C§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§7C§ = null;
         if(!_loc5_)
         {
            if(!param1)
            {
               if(!_loc5_)
               {
                  return null;
               }
            }
         }
         var _loc3_:int = 0;
         var _loc4_:* = this.§[",§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!_loc6_)
               {
                  break;
               }
               if(_loc2_.§5"0§(param1.toLowerCase()))
               {
                  if(!_loc5_)
                  {
                     break;
                  }
               }
            }
            return null;
         }
         return _loc2_;
      }
      
      public function §7!v§(param1:String) : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§7C§ = null;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(_loc4_ && _loc3_)
            {
               break;
            }
            if(§§pop() >= this.§[",§.length)
            {
               break;
            }
            _loc3_ = this.§[",§[_loc2_];
            if(!(_loc4_ && _loc2_))
            {
               if(_loc3_.§5"0§(param1))
               {
                  if(_loc5_)
                  {
                     return _loc2_;
                  }
               }
               _loc2_++;
            }
         }
         return §§pop();
      }
      
      public function getEpisode(param1:int) : §7C§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§§pop() >= 0);
               addr102:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(§§pop())
                     {
                        if(_loc2_ && this)
                        {
                           break;
                        }
                        if(!(_loc2_ && param1))
                        {
                           return this.§[",§[param1];
                           addr83:
                        }
                        continue loop0;
                     }
                     return null;
                     addr67:
                  }
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr83);
      }
      
      public function §';§(param1:String) : §7C§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§7C§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.§[",§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!_loc5_)
               {
                  break;
               }
               if(_loc2_.name == param1)
               {
                  if(!_loc6_)
                  {
                     break;
                  }
               }
            }
            return null;
         }
         return _loc2_;
      }
      
      public function getEpisodeCount() : int
      {
         return this.§[",§.length;
      }
      
      public function getLevelForId(param1:String) : §5L§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§7C§ = this.getEpisodeForLevel(param1);
         if(!_loc4_)
         {
            if(!_loc2_)
            {
               if(_loc3_)
               {
                  throw new Error("Error! Level \'" + param1 + "\' does not exist.");
               }
            }
         }
         return _loc2_.§92§(param1);
      }
      
      public function §`!E§(param1:String, param2:§5L§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§7C§ = this.getEpisodeForLevel(param1);
         if(!(_loc5_ && param2))
         {
            if(_loc3_)
            {
               if(_loc4_)
               {
                  _loc3_.§`!E§(param1,param2);
               }
            }
         }
      }
      
      public function getSilverScoreForLevel(param1:String) : int
      {
         var _loc2_:§5L§ = this.getLevelForId(param1);
         return _loc2_.scoreSilver;
      }
      
      public function getGoldScoreForLevel(param1:String) : int
      {
         var _loc2_:§5L§ = this.getLevelForId(param1);
         return _loc2_.scoreGold;
      }
      
      public function getNumStarsForLevel(param1:String, param2:int) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(param2);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  if(§§pop() <= §§pop())
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        break;
                     }
                     addr129:
                     while(true)
                     {
                     }
                  }
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
                              while(true)
                              {
                                 if(_loc4_)
                                 {
                                    §§push(this.getGoldScoreForLevel(param1));
                                    if(!(_loc3_ && param2))
                                    {
                                       if(!(_loc3_ && param2))
                                       {
                                          if(§§pop() < §§pop())
                                          {
                                             if(_loc4_)
                                             {
                                                if(_loc4_ || _loc3_)
                                                {
                                                   break;
                                                }
                                                break loop4;
                                             }
                                             if(!(_loc4_ || param2))
                                             {
                                                continue loop5;
                                             }
                                          }
                                          §§push(3);
                                          if(_loc3_ && param1)
                                          {
                                             break;
                                          }
                                          if(!_loc3_)
                                          {
                                             if(_loc4_ || param2)
                                             {
                                                return §§pop();
                                             }
                                             continue loop3;
                                          }
                                          continue;
                                       }
                                       continue loop1;
                                    }
                                    continue loop4;
                                 }
                                 addr101:
                                 if(_loc3_)
                                 {
                                    break loop1;
                                 }
                                 if(!_loc3_)
                                 {
                                    return §§pop();
                                 }
                                 continue loop0;
                              }
                              return §§pop();
                           }
                        }
                        if(!_loc3_)
                        {
                           §§goto(addr101);
                           return 1;
                        }
                     }
                  }
               }
               return §§pop();
            }
         }
         §§goto(addr129);
      }
      
      public function getValidLevelId(param1:String) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§7C§ = this.getEpisodeForLevel(param1);
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ == null)
            {
               if(!_loc3_)
               {
                  §§push(§2!p§);
                  if(!_loc3_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr58:
                  return param1;
               }
               return §§pop();
            }
         }
         §§goto(addr58);
      }
      
      public function §7!g§(param1:String) : String
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:int = 0;
         var _loc2_:§7C§ = this.getEpisodeForLevel(param1);
         if(_loc7_)
         {
            if(_loc2_)
            {
               loop0:
               while(true)
               {
                  §§push(_loc2_.§2!"§(param1));
                  loop1:
                  while(true)
                  {
                     §§push(int(§§pop()));
                     loop2:
                     while(true)
                     {
                        _loc3_ = §§pop();
                        _loc2_.currentPage = _loc3_;
                        loop3:
                        while(true)
                        {
                           §§push(_loc2_.getPageIndex(_loc3_));
                           addr110:
                           while(_loc7_ || param1)
                           {
                              §§push(int(§§pop()));
                              while(_loc7_)
                              {
                                 _loc4_ = §§pop();
                                 if(_loc7_)
                                 {
                                    §§push(_loc2_.§!!B§(param1));
                                    if(_loc7_ || this)
                                    {
                                       §§push(int(§§pop()));
                                    }
                                    continue loop3;
                                 }
                                 continue loop0;
                              }
                              continue loop2;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         return null;
      }
      
      public function loadLevel(param1:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:§7C§ = null;
         if(_loc5_ || this)
         {
            if(param1 != this.§?n§)
            {
               loop0:
               while(true)
               {
                  §§push(this.§7!v§(param1));
                  loop1:
                  while(true)
                  {
                     §§push(int(§§pop()));
                     loop2:
                     while(true)
                     {
                        _loc2_ = §§pop();
                        while(true)
                        {
                           §§push(_loc2_);
                           if(_loc5_)
                           {
                              if(!_loc4_)
                              {
                                 if(§§pop() < 0)
                                 {
                                    this.§?!]§ = this.§?n§;
                                    if(_loc4_)
                                    {
                                    }
                                    break;
                                 }
                                 if(_loc4_)
                                 {
                                    this.resetCurrentLevel();
                                 }
                                 if(_loc5_)
                                 {
                                    this.§1U§ = _loc2_;
                                    if(_loc5_)
                                    {
                                       addr43:
                                       this.§?!]§ = this.§?n§;
                                       if(!_loc4_)
                                       {
                                          continue loop0;
                                       }
                                    }
                                    break;
                                 }
                                 continue;
                                 break;
                              }
                              continue loop1;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr142);
      }
      
      public function getCurrentEpisodeModel() : §7C§
      {
         return this.§[",§[this.§1U§];
      }
      
      public function §;!y§() : Boolean
      {
         return true;
      }
      
      public function isCutSceneNext() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.getNextLevelId());
         if(!_loc3_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(this.getCurrentEpisodeModel().getCutScene(this.§?n§ + "-OUTRO"));
         if(!(_loc3_ && _loc3_))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            §§push(_loc2_);
            loop0:
            while(§§pop())
            {
               while(true)
               {
                  §§push(_loc1_);
                  if(_loc4_ || this)
                  {
                     if(§§pop() != null)
                     {
                        break;
                     }
                     if(!_loc3_)
                     {
                        §-k§.§^W§(_loc2_);
                     }
                     if(_loc4_)
                     {
                        if(_loc4_ || this)
                        {
                           break;
                        }
                        break loop0;
                     }
                     continue;
                  }
                  continue loop0;
               }
               §§push(true);
               if(_loc4_)
               {
                  return §§pop();
               }
               §§goto(addr103);
            }
         }
         addr103:
         false;
         return §§pop();
      }
      
      public function getNextLevelId() : String
      {
         return this.getCurrentEpisodeModel().getNextLevelId(this.§?n§);
      }
      
      public function selectEpisode(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§1U§ = param1;
         }
      }
      
      public function §5-§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§1U§ = this.§[",§.indexOf(this.§';§(param1));
         }
      }
      
      public function resetPreviousLevel() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§?!]§ = null;
         }
      }
      
      public function resetCurrentLevel() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§?n§ = null;
         }
         do
         {
            this.§7!T§ = null;
         }
         while(_loc1_ && _loc1_);
         
      }
   }
}
