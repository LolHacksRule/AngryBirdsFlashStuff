package §8!K§
{
   import §4!o§.§+!N§;
   
   public class §5!Y§
   {
      
      public static const §&1§:String = "1-1";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §&1§ = "1-1";
         }
      }
      
      protected var §``§:Vector.<§3%§> = null;
      
      protected var §^!6§:String = null;
      
      private var §4!J§:String = null;
      
      private var §>S§:String = null;
      
      private var §&2§:int = 0;
      
      public function §5!Y§()
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
         return this.§4!J§;
      }
      
      public function get currentLevel() : String
      {
         return this.§^!6§;
      }
      
      public function get previousLevel() : String
      {
         return this.§>S§;
      }
      
      public function get previousLevelNumericName() : String
      {
         return this.§@S§(this.§>S§);
      }
      
      public function get currentEpisode() : int
      {
         return this.§&2§;
      }
      
      public function get §[?§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.getCurrentEpisodeModel());
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     §§push(this.getCurrentEpisodeModel());
                  }
                  else
                  {
                     §§goto(addr67);
                  }
               }
               §§goto(addr67);
            }
            §§push(§§pop().writtenName + " - ");
            if(!(_loc1_ && _loc1_))
            {
               return §§pop() + (this.getCurrentEpisodeModel().§#n§(this.currentLevel) + 1);
            }
         }
         addr67:
         return null;
      }
      
      public function §#!!§(param1:Object) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Object = null;
         if(_loc6_)
         {
            this.§``§ = new Vector.<§3%§>();
         }
         for each(_loc2_ in param1.episodes)
         {
            if(_loc6_)
            {
               this.§``§.push(this.§ !S§(_loc2_));
            }
         }
      }
      
      protected function § !S§(param1:Object) : §3%§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = null;
         var _loc2_:§3%§ = this.getEpisodeModel(param1.levelNames);
         if(!_loc7_)
         {
            _loc2_.levelsPerPage = param1.levelsPerPage;
            while(true)
            {
               _loc2_.name = param1.name;
               while(true)
               {
                  _loc2_.menuImage = param1.menuImage;
                  loop2:
                  while(true)
                  {
                     _loc2_.§&!p§ = param1.leftCorner;
                     if(_loc7_)
                     {
                        §§goto(addr149);
                     }
                     _loc2_.§@"%§ = param1.rightCorner;
                     while(true)
                     {
                        _loc2_.§&!<§ = param1.pageColors;
                        continue loop2;
                     }
                  }
                  if(!(_loc7_ && param1))
                  {
                     _loc2_.§9>§ = param1.locked;
                     if(!_loc7_)
                     {
                        if(false)
                        {
                           while(true)
                           {
                              _loc2_.§3F§ = param1.hidden;
                              if(!_loc7_)
                              {
                                 if(_loc6_)
                                 {
                                    §§goto(addr46);
                                 }
                                 §§goto(addr66);
                              }
                              §§goto(addr149);
                           }
                           addr37:
                        }
                        if(!param1.cutscenes)
                        {
                        }
                        §§goto(addr149);
                     }
                     addr149:
                     var _loc4_:int = 0;
                  }
                  continue;
                  var _loc5_:* = param1.cutscenes;
                  addr186:
                  for(_loc3_ in _loc5_)
                  {
                     if(_loc6_ || param1)
                     {
                        _loc2_.§23§(_loc3_,param1.cutscenes[_loc3_]);
                     }
                     §§goto(addr186);
                  }
                  return _loc2_;
               }
               if(_loc7_ && param1)
               {
                  continue;
               }
               while(true)
               {
                  §§goto(addr37);
               }
               addr75:
            }
         }
         §§goto(addr75);
      }
      
      protected function getEpisodeModel(param1:Array) : §3%§
      {
         return new §3%§(param1);
      }
      
      public function getEpisodeForLevel(param1:String) : §3%§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§3%§ = null;
         if(_loc5_)
         {
            if(!param1)
            {
               if(!_loc6_)
               {
                  §§goto(addr25);
               }
            }
            var _loc3_:int = 0;
            var _loc4_:* = this.§``§;
            while(true)
            {
               for each(_loc2_ in _loc4_)
               {
                  if(_loc6_)
                  {
                     break;
                  }
                  if(_loc2_.§]"-§(param1.toLowerCase()))
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
      
      public function §6!q§(param1:String) : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§3%§ = null;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(_loc4_)
            {
               break;
            }
            if(§§pop() >= this.§``§.length)
            {
               break;
            }
            _loc3_ = this.§``§[_loc2_];
            if(_loc5_ || _loc3_)
            {
               if(_loc3_.§]"-§(param1))
               {
                  if(_loc5_)
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
      
      public function getEpisode(param1:int) : §3%§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§§pop() >= 0);
               if(_loc3_ || param1)
               {
                  if(!§§pop())
                  {
                     while(§§pop())
                     {
                        if(_loc3_ || _loc2_)
                        {
                           return this.§``§[param1];
                        }
                        if(!(_loc2_ && _loc2_))
                        {
                           break;
                        }
                        continue loop0;
                        addr39:
                        §§push(§§pop() < this.§``§.length);
                        if(!_loc2_)
                        {
                           continue;
                        }
                        addr99:
                        while(true)
                        {
                           §§pop();
                           continue loop0;
                           §§goto(addr39);
                        }
                        addr99:
                     }
                     return null;
                     addr55:
                  }
               }
               §§goto(addr99);
            }
            addr78:
         }
         while(true)
         {
            §§push(param1);
            if(_loc3_ || _loc2_)
            {
               §§goto(addr39);
            }
            else
            {
               §§goto(addr78);
            }
            §§goto(addr99);
         }
      }
      
      public function §<"'§(param1:String) : §3%§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§3%§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.§``§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(_loc6_)
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
         return this.§``§.length;
      }
      
      public function getLevelForId(param1:String) : §5!0§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§3%§ = this.getEpisodeForLevel(param1);
         if(_loc3_)
         {
            if(!_loc2_)
            {
               if(_loc3_ || param1)
               {
                  throw new Error("Error! Level \'" + param1 + "\' does not exist.");
               }
            }
         }
         return _loc2_.§&t§(param1);
      }
      
      public function §^8§(param1:String, param2:§5!0§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§3%§ = this.getEpisodeForLevel(param1);
         if(_loc4_ || _loc3_)
         {
            if(_loc3_)
            {
               if(!(_loc5_ && this))
               {
                  addr57:
                  _loc3_.§^8§(param1,param2);
               }
            }
            return;
         }
         §§goto(addr57);
      }
      
      public function getSilverScoreForLevel(param1:String) : int
      {
         var _loc2_:§5!0§ = this.getLevelForId(param1);
         return _loc2_.scoreSilver;
      }
      
      public function getGoldScoreForLevel(param1:String) : int
      {
         var _loc2_:§5!0§ = this.getLevelForId(param1);
         return _loc2_.scoreGold;
      }
      
      public function getNumStarsForLevel(param1:String, param2:int) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(param2);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  if(§§pop() > §§pop())
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
                           while(true)
                           {
                              if(!_loc4_)
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    break;
                                 }
                                 while(true)
                                 {
                                    §§push(param2);
                                    if(!(_loc3_ || _loc3_))
                                    {
                                       addr126:
                                       break;
                                    }
                                    if(!(_loc3_ || this))
                                    {
                                       return §§pop();
                                    }
                                    §§push(this.getGoldScoreForLevel(param1));
                                    if(_loc3_ || param1)
                                    {
                                       if(§§pop() < §§pop())
                                       {
                                          if(_loc3_ || param2)
                                          {
                                             if(_loc3_ || this)
                                             {
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   if(!(_loc4_ && param1))
                                                   {
                                                      break;
                                                   }
                                                   addr131:
                                                   §§goto(addr132);
                                                }
                                                break loop4;
                                             }
                                             continue;
                                          }
                                       }
                                       §§push(3);
                                       if(_loc3_ || _loc3_)
                                       {
                                          return §§pop();
                                       }
                                       break;
                                    }
                                    continue loop4;
                                 }
                                 if(!_loc4_)
                                 {
                                    break loop3;
                                 }
                                 continue loop3;
                              }
                              continue loop1;
                           }
                           if(_loc3_)
                           {
                              §§goto(addr126);
                              §§push(1);
                           }
                           else
                           {
                              while(true)
                              {
                                 continue loop2;
                              }
                              addr133:
                           }
                        }
                        if(!_loc3_)
                        {
                           addr132:
                        }
                        if(_loc3_)
                        {
                           return §§pop();
                        }
                        continue loop0;
                        return 0;
                     }
                  }
                  §§goto(addr131);
               }
            }
         }
         §§goto(addr133);
      }
      
      public function getValidLevelId(param1:String) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§3%§ = this.getEpisodeForLevel(param1);
         if(!(_loc4_ && _loc2_))
         {
            if(_loc2_ == null)
            {
               if(_loc3_)
               {
                  addr43:
                  §§push(§&1§);
                  if(!(_loc4_ && this))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr62:
                  return param1;
               }
               return §§pop();
            }
            §§goto(addr62);
         }
         §§goto(addr43);
      }
      
      public function §@S§(param1:String) : String
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc2_:§3%§ = this.getEpisodeForLevel(param1);
         if(_loc6_)
         {
            if(!_loc2_)
            {
               return null;
            }
            loop0:
            while(true)
            {
               §§push(_loc2_.§@e§(param1));
               addr133:
               while(true)
               {
                  §§push(int(§§pop()));
                  addr134:
                  while(true)
                  {
                     _loc3_ = §§pop();
                     addr135:
                     while(true)
                     {
                        _loc2_.currentPage = _loc3_;
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr92);
         }
      }
      
      public function loadLevel(param1:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:§3%§ = null;
         if(!(_loc5_ && _loc3_))
         {
            if(param1 != this.§^!6§)
            {
               if(!_loc5_)
               {
                  §§push(this.§6!q§(param1));
                  if(!(_loc5_ && param1))
                  {
                     §§push(int(§§pop()));
                  }
                  loop0:
                  while(true)
                  {
                     _loc2_ = §§pop();
                     if(_loc5_ && _loc2_)
                     {
                        break;
                     }
                     addr104:
                     while(true)
                     {
                        §§push(_loc2_);
                        if(!_loc5_)
                        {
                           if(§§pop() >= 0)
                           {
                              if(_loc4_)
                              {
                                 this.§&2§ = _loc2_;
                              }
                              loop2:
                              while(true)
                              {
                                 while(true)
                                 {
                                    this.§>S§ = this.§^!6§;
                                    if(!(_loc5_ && _loc2_))
                                    {
                                       this.§^!6§ = param1;
                                       if(_loc4_ || _loc2_)
                                       {
                                          if(_loc5_)
                                          {
                                             continue loop2;
                                          }
                                          if(false)
                                          {
                                             continue;
                                          }
                                          _loc3_ = this.getCurrentEpisodeModel();
                                          if(_loc4_)
                                          {
                                             if(_loc3_)
                                             {
                                                if(!(_loc5_ && _loc3_))
                                                {
                                                   _loc3_.currentPage = _loc3_.§@e§(param1);
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                   }
                                                   addr137:
                                                   break;
                                                }
                                             }
                                             this.§4!J§ = this.§@S§(param1);
                                          }
                                          §§goto(addr137);
                                       }
                                       break;
                                    }
                                    break loop0;
                                 }
                              }
                           }
                           else
                           {
                              this.§>S§ = this.§^!6§;
                              if(!_loc5_)
                              {
                                 break loop0;
                              }
                           }
                           §§goto(addr156);
                        }
                        continue loop0;
                     }
                  }
                  addr154:
                  this.resetCurrentLevel();
                  §§goto(addr156);
               }
               §§goto(addr104);
            }
            addr156:
            return;
         }
         §§goto(addr154);
      }
      
      public function getCurrentEpisodeModel() : §3%§
      {
         return this.§``§[this.§&2§];
      }
      
      public function §6!s§() : Boolean
      {
         return true;
      }
      
      public function isCutSceneNext() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.getNextLevelId());
         if(!(_loc3_ && _loc2_))
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(this.getCurrentEpisodeModel().getCutScene(this.§^!6§ + "-OUTRO"));
         if(!(_loc3_ && _loc1_))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  if(_loc4_ || _loc1_)
                  {
                     return false;
                  }
                  else
                  {
                     loop2:
                     while(true)
                     {
                        addr64:
                        while(true)
                        {
                           §§push(_loc1_);
                           if(_loc4_)
                           {
                              if(§§pop() == null)
                              {
                                 if(_loc4_)
                                 {
                                    if(!(_loc4_ || _loc2_))
                                    {
                                       continue loop2;
                                    }
                                    §+!N§.§ t§(_loc2_);
                                 }
                                 break;
                              }
                              break;
                           }
                           continue loop0;
                        }
                        §§push(true);
                        if(_loc4_)
                        {
                           return §§pop();
                        }
                     }
                     addr104:
                  }
                  return §§pop();
               }
               §§goto(addr64);
            }
         }
         §§goto(addr104);
      }
      
      public function getNextLevelId() : String
      {
         return this.getCurrentEpisodeModel().getNextLevelId(this.§^!6§);
      }
      
      public function selectEpisode(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§&2§ = param1;
         }
      }
      
      public function §?r§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§&2§ = this.§``§.indexOf(this.§<"'§(param1));
         }
      }
      
      public function resetPreviousLevel() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§>S§ = null;
         }
      }
      
      public function resetCurrentLevel() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§^!6§ = null;
         }
         do
         {
            this.§4!J§ = null;
         }
         while(_loc1_);
         
      }
   }
}
