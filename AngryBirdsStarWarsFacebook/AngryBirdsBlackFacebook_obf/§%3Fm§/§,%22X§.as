package §?m§
{
   import §1!i§.§,#_§;
   import §1!i§.§7#&§;
   import §2"Y§.§"#`§;
   import §2"a§.§9#L§;
   
   public class §,"X§ extends §+"2§
   {
       
      
      protected var §?k§:§,#_§;
      
      public function §,"X§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            do
            {
               this.§?k§ = new §,#_§();
            }
            while(_loc2_);
            
         }
      }
      
      override protected function createEpisodeModelFromData(param1:Object) : §3![§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§"#G§ = §"#G§(super.createEpisodeModelFromData(param1));
         if(!(_loc3_ && param1))
         {
            if(param1.lockedLevelCount)
            {
               if(!_loc3_)
               {
                  addr56:
                  _loc2_.lockedLevelCount = param1.lockedLevelCount;
               }
            }
            return _loc2_;
         }
         §§goto(addr56);
      }
      
      override protected function getEpisodeModel(param1:Array) : §3![§
      {
         return new §"#G§(param1);
      }
      
      override public function isCutSceneNext() : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:String = getNextLevelId();
         var _loc2_:int = getCurrentEpisodeModel().getLevelIndex(currentLevel) + 1;
         var _loc3_:String = getCurrentEpisodeModel().getCutScene(getCurrentEpisodeModel().name + "-" + _loc2_ + "-OUTRO");
         if(!(_loc4_ && _loc1_))
         {
            §§push(_loc3_);
            loop0:
            while(§§pop())
            {
               loop1:
               while(true)
               {
                  §§push(_loc1_);
                  if(_loc5_)
                  {
                     if(§§pop() == null)
                     {
                        if(_loc5_)
                        {
                           if(!_loc4_)
                           {
                              §9#L§.§&"X§(_loc3_);
                           }
                           else
                           {
                              while(true)
                              {
                                 continue loop1;
                              }
                              addr103:
                           }
                        }
                        if(_loc5_ || _loc2_)
                        {
                           break;
                        }
                        break loop0;
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
         §§goto(addr103);
      }
      
      public function getPrettyLevelString(param1:String) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§3![§ = getEpisodeForLevel(param1);
         §§push(_loc2_.writtenName + " - ");
         if(!_loc3_)
         {
            return §§pop() + (_loc2_.getLevelIndex(param1) + 1);
         }
      }
      
      override public function getSilverScoreForLevel(param1:String) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§&"U§ = this.§?k§[param1];
         if(_loc3_)
         {
            if(_loc2_)
            {
               if(!_loc4_)
               {
                  §§goto(addr38);
               }
            }
            throw new Error("No star limits available for level \'" + param1 + "\' (" + this.getPrettyLevelString(param1) + ").");
         }
         addr38:
         return _loc2_.§%!T§;
      }
      
      override public function getGoldScoreForLevel(param1:String) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§&"U§ = this.§?k§[param1];
         if(_loc3_ || _loc2_)
         {
            if(_loc2_)
            {
               if(_loc3_)
               {
                  return _loc2_.§^! §;
               }
            }
         }
         throw new Error("No star limits available for level \'" + param1 + "\' (" + this.getPrettyLevelString(param1) + ").");
      }
      
      protected function getEagleScoreForLevel(param1:String) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§&"U§ = this.§?k§[param1];
         if(!_loc3_)
         {
            if(_loc2_)
            {
               if(!_loc3_)
               {
                  return _loc2_.§&"L§;
               }
            }
         }
         throw new Error("No eagle limits available for level \'" + param1 + "\' (" + this.getPrettyLevelString(param1) + ").");
      }
      
      public function §0w§(param1:String, param2:§"#`§, param3:int) : void
      {
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = true;
         var _loc6_:* = null;
         var _loc7_:§,#_§ = null;
         var _loc8_:§3![§ = null;
         var _loc9_:String = null;
         var _loc10_:§,#_§ = null;
         var _loc11_:§8!B§ = null;
         var _loc12_:* = 0;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc4_:§,#_§ = new §,#_§();
         var _loc5_:Object = §7#&§.§06§(param1);
         for(_loc6_ in _loc5_)
         {
            if(_loc20_)
            {
               _loc4_[_loc6_.toLowerCase()] = new §,#_§(_loc5_[_loc6_]);
            }
         }
         _loc7_ = _loc4_["default"];
         if(!(_loc19_ && this))
         {
            var _loc15_:int = 0;
            if(_loc20_ || param3)
            {
               for each(_loc8_ in §<!W§)
               {
                  if(_loc19_)
                  {
                     continue;
                  }
                  var _loc17_:int = 0;
                  if(!(_loc19_ && this))
                  {
                     var _loc18_:* = _loc8_.§0!_§();
                     if(!_loc19_)
                     {
                        for each(_loc9_ in _loc18_)
                        {
                           if(!_loc19_)
                           {
                              while(true)
                              {
                                 §§push(_loc4_[_loc9_]);
                                 if(!_loc4_[_loc9_])
                                 {
                                    §§pop();
                                    while(true)
                                    {
                                       §§push(_loc7_);
                                    }
                                    addr151:
                                 }
                                 while(true)
                                 {
                                    _loc10_ = §§pop();
                                    _loc11_ = _loc8_.§8N§(_loc9_);
                                    if(_loc20_)
                                    {
                                       §§push(int(_loc10_.silverScore));
                                       loop3:
                                       while(true)
                                       {
                                          _loc12_ = §§pop();
                                          addr253:
                                          while(true)
                                          {
                                             §§push(int(_loc10_.goldScore));
                                             continue loop3;
                                          }
                                       }
                                    }
                                    §§goto(addr228);
                                 }
                              }
                              addr144:
                           }
                           §§goto(addr151);
                        }
                        addr267:
                        continue;
                     }
                     §§goto(addr144);
                  }
                  §§goto(addr267);
               }
            }
         }
      }
      
      override public function addLevel(param1:String, param2:§8!B§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(this.getSilverScoreForLevel(param1));
         if(!_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(this.getGoldScoreForLevel(param1));
         if(_loc7_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(this.getEagleScoreForLevel(param1));
         if(!_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(!(_loc6_ && _loc3_))
         {
            §§push(_loc3_);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  §§push(§§pop() >= §§pop());
                  if(_loc7_)
                  {
                     §§push(§§pop());
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop15:
                           while(true)
                           {
                              §§pop();
                              addr168:
                              while(true)
                              {
                                 §§push(_loc4_);
                                 addr132:
                                 loop7:
                                 while(true)
                                 {
                                    §§push(0);
                                    addr133:
                                    while(true)
                                    {
                                       if(!_loc7_)
                                       {
                                          break loop7;
                                       }
                                       addr135:
                                       §§push(§§pop() >= §§pop());
                                       while(_loc6_ && param2)
                                       {
                                          continue loop15;
                                          §§goto(addr135);
                                       }
                                    }
                                 }
                                 continue loop1;
                              }
                           }
                           addr167:
                        }
                        while(true)
                        {
                           §§push(§§pop());
                           if(_loc6_)
                           {
                              break;
                           }
                           if(§§pop())
                           {
                              loop4:
                              while(true)
                              {
                                 §§pop();
                                 loop5:
                                 while(true)
                                 {
                                    §§push(_loc5_);
                                    if(_loc7_)
                                    {
                                       if(!_loc7_)
                                       {
                                          continue loop0;
                                       }
                                       §§push(0);
                                       if(_loc7_ || param1)
                                       {
                                          §§push(§§pop() > §§pop());
                                          if(!_loc7_)
                                          {
                                             continue loop4;
                                          }
                                          if(_loc7_)
                                          {
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   loop10:
                                                   while(true)
                                                   {
                                                      param2.scoreSilver = _loc3_;
                                                      addr129:
                                                      while(true)
                                                      {
                                                         param2.scoreGold = _loc4_;
                                                         while(true)
                                                         {
                                                            param2.§%#S§(_loc5_,null,0);
                                                            addr95:
                                                            while(_loc7_)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  continue loop10;
                                                               }
                                                               while(true)
                                                               {
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                while(true)
                                                {
                                                   super.addLevel(param1,param2);
                                                   if(!_loc6_)
                                                   {
                                                      if(!(_loc6_ && param2))
                                                      {
                                                         break;
                                                      }
                                                      §§goto(addr129);
                                                   }
                                                   §§goto(addr95);
                                                }
                                                if(!(_loc7_ || this))
                                                {
                                                   continue loop5;
                                                }
                                                if(_loc7_)
                                                {
                                                   return;
                                                }
                                                §§goto(addr168);
                                             }
                                             addr124:
                                          }
                                          §§goto(addr136);
                                       }
                                       §§goto(addr133);
                                    }
                                    break;
                                 }
                                 §§goto(addr132);
                              }
                           }
                           §§goto(addr124);
                        }
                     }
                  }
                  §§goto(addr167);
               }
            }
         }
         §§goto(addr99);
      }
   }
}
