package §0!N§
{
   import §`!i§.§6n§;
   
   public class LevelManager
   {
      
      public static const §3!_§:String = "1-1";
      
      protected static var §3!f§:Array = null;
      
      protected static var §@!B§:Array;
      
      protected static var §2!m§:Array;
      
      public static var §4Y§:String = null;
      
      public static var §,C§:String = null;
      
      public static var §?G§:Boolean;
      
      public static var §>!§:int = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §3!_§ = "1-1";
            while(true)
            {
               §3!f§ = null;
               while(_loc2_ || _loc1_)
               {
                  §@!B§ = [];
                  loop2:
                  for(; !(_loc1_ && _loc1_); if(_loc1_ && _loc2_)
                  {
                     continue;
                  },§§goto(addr61))
                  {
                     while(true)
                     {
                        §2!m§ = [];
                        loop4:
                        while(true)
                        {
                           §4Y§ = null;
                           while(true)
                           {
                              §,C§ = null;
                              while(_loc2_ || LevelManager)
                              {
                                 if(!_loc1_)
                                 {
                                    continue loop2;
                                 }
                                 continue loop4;
                                 §>!§ = 0;
                                 if(!_loc1_)
                                 {
                                    return;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr93);
      }
      
      public function LevelManager()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §4!#§(param1:Object) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc2_:Object = null;
         var _loc3_:§4n§ = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:* = 0;
         if(_loc12_)
         {
            §3!f§ = new Array();
         }
         loop0:
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §4n§();
            if(_loc12_)
            {
               _loc3_.levelsPerPage = _loc2_.levelsPerPage;
               loop1:
               while(true)
               {
                  _loc3_.name = _loc2_.name;
                  while(true)
                  {
                     _loc3_.menuImage = _loc2_.menuImage;
                     addr147:
                     while(true)
                     {
                        _loc3_.§-!p§ = _loc2_.leftCorner;
                        if(!(_loc12_ || _loc2_))
                        {
                           break;
                        }
                        _loc3_.§%V§ = _loc2_.rightCorner;
                        if(!(_loc12_ || _loc2_))
                        {
                           break;
                        }
                        continue loop1;
                     }
                     addr78:
                     if(_loc11_ && LevelManager)
                     {
                        continue;
                     }
                     _loc3_.writtenName = _loc2_.writtenName;
                     if(_loc11_)
                     {
                        continue loop0;
                     }
                     if(false)
                     {
                        while(true)
                        {
                           _loc3_.levelButtons = _loc2_.levelButtons;
                           if(!(_loc11_ && LevelManager))
                           {
                              §§goto(addr78);
                           }
                           addr259:
                           var _loc9_:* = 0;
                           if(!_loc11_)
                           {
                              addr263:
                              var _loc10_:* = _loc3_.pageIndexes;
                              if(!(_loc11_ && LevelManager))
                              {
                                 loop13:
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc10_,_loc9_));
                                    addr346:
                                    while(§§pop())
                                    {
                                       _loc4_ = §§nextvalue(_loc9_,_loc10_);
                                       loop7:
                                       while(true)
                                       {
                                          §§push(1);
                                          if(!(_loc11_ && LevelManager))
                                          {
                                             _loc6_ = §§pop();
                                             if(!(_loc12_ || param1))
                                             {
                                                continue loop13;
                                             }
                                             if(!_loc12_)
                                             {
                                                continue;
                                             }
                                             while(true)
                                             {
                                                addr341:
                                                while(true)
                                                {
                                                   §§push(_loc6_);
                                                   break loop7;
                                                }
                                             }
                                          }
                                          break;
                                       }
                                       while(true)
                                       {
                                          if(§§pop() > _loc3_.levelsPerPage)
                                          {
                                             continue loop13;
                                          }
                                          §§push(§2!m§);
                                          §§push(_loc4_ + "-");
                                          if(_loc12_)
                                          {
                                             §§push(§§pop() + _loc6_);
                                          }
                                          §§pop()[§§pop()] = _loc3_.name;
                                          do
                                          {
                                             _loc6_++;
                                             if(_loc12_ || _loc2_)
                                             {
                                                continue;
                                             }
                                             continue loop13;
                                          }
                                          while(_loc11_);
                                          
                                       }
                                       continue loop13;
                                    }
                                    addr348:
                                    continue loop0;
                                 }
                              }
                              while(true)
                              {
                                 if(false)
                                 {
                                    §§goto(addr288);
                                 }
                                 §§goto(addr341);
                              }
                           }
                           §§goto(addr348);
                        }
                        continue;
                        addr66:
                     }
                     if(_loc2_.cutscenes)
                     {
                        if(!(_loc11_ && _loc3_))
                        {
                           break loop1;
                        }
                        continue loop0;
                     }
                     §3!f§.push(_loc3_);
                     if(!(_loc12_ || _loc3_))
                     {
                        continue loop0;
                     }
                     §§goto(addr259);
                  }
               }
               §§push(0);
               if(!(_loc11_ && param1))
               {
                  _loc9_ = §§pop();
                  if(!(_loc11_ && LevelManager))
                  {
                     _loc10_ = _loc2_.cutscenes;
                     if(_loc12_ || _loc3_)
                     {
                        loop5:
                        while(true)
                        {
                           §§push(§§hasnext(_loc10_,_loc9_));
                           if(_loc12_ || param1)
                           {
                              if(!§§pop())
                              {
                                 if(_loc12_)
                                 {
                                    if(_loc12_ || _loc2_)
                                    {
                                       if(!(_loc12_ || _loc2_))
                                       {
                                          continue loop0;
                                       }
                                       §§goto(addr249);
                                    }
                                    §§goto(addr263);
                                 }
                                 §§goto(addr348);
                              }
                              else
                              {
                                 _loc5_ = §§nextname(_loc9_,_loc10_);
                                 if(!_loc12_)
                                 {
                                    continue;
                                 }
                                 while(true)
                                 {
                                    _loc3_.§&!Z§(_loc5_,_loc2_.cutscenes[_loc5_]);
                                    continue loop5;
                                 }
                              }
                           }
                           break;
                        }
                        §§goto(addr346);
                     }
                     §§goto(addr215);
                  }
                  §§goto(addr263);
               }
            }
            §§goto(addr259);
         }
      }
      
      public static function §4b§() : void
      {
      }
      
      public static function §2!9§(param1:String) : §4n§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§4n§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = §3!f§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!(_loc6_ || _loc3_))
               {
                  break;
               }
               if(_loc2_.§'!,§(param1))
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
      
      public static function §+R§(param1:String) : int
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§4n§ = null;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(!_loc4_)
            {
               break;
            }
            if(§§pop() >= §3!f§.length)
            {
               break;
            }
            _loc3_ = §3!f§[_loc2_];
            if(!_loc5_)
            {
               if(_loc3_.§'!,§(param1))
               {
                  if(_loc4_)
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
      
      public static function §`!-§(param1:int) : §4n§
      {
         return §3!f§[param1];
      }
      
      public static function §!!i§(param1:String) : §4n§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§4n§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = §3!f§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(_loc5_)
               {
                  break;
               }
               if(_loc2_.name == param1)
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
      
      public static function §1K§() : int
      {
         return §3!f§.length;
      }
      
      public static function §-V§(param1:String) : §=+§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(§@!B§);
            if(!(_loc2_ && _loc2_))
            {
               §§push(param1);
               if(_loc3_ || _loc2_)
               {
                  if(!§§pop()[§§pop()])
                  {
                     if(!(_loc2_ && LevelManager))
                     {
                        §§push(§2!m§);
                        if(!(_loc2_ && _loc2_))
                        {
                           §§push(param1);
                           if(_loc3_ || _loc3_)
                           {
                              if(§§pop()[§§pop()] == null)
                              {
                                 if(_loc3_ || _loc3_)
                                 {
                                    §§goto(addr90);
                                 }
                              }
                           }
                           §§goto(addr100);
                        }
                        addr99:
                        addr100:
                        return §§pop()[§§pop()];
                        §§push(param1);
                     }
                     §§goto(addr90);
                  }
                  §§goto(addr99);
                  §§push(§@!B§);
               }
               §§goto(addr100);
            }
            §§goto(addr99);
         }
         addr90:
         throw new Error("Error! Level \'" + param1 + "\' does not exist.");
      }
      
      public static function §6! §(param1:String, param2:§=+§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §@!B§[param1] = param2;
         }
      }
      
      public static function §@!Z§(param1:String, param2:int) : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[3] = null;
            loop1:
            while(true)
            {
               addr44:
               while(true)
               {
                  §§push(§§newactivation());
                  loop3:
                  while(true)
                  {
                     §§pop().§§slot[1] = param1;
                     addr48:
                     while(!_loc5_)
                     {
                        §§push(§§newactivation());
                        if(!(_loc5_ && _loc3_))
                        {
                           continue loop0;
                        }
                        continue loop3;
                     }
                     continue loop1;
                  }
               }
               try
               {
                  addr56:
                  §§push(§§newactivation());
                  if(!(_loc5_ && _loc3_))
                  {
                     §§pop().§§slot[3] = LevelManager.§-V§(levelId);
                     if(_loc6_ || LevelManager)
                     {
                        addr101:
                        §§push(§§newactivation());
                        if(!_loc5_)
                        {
                           §§push(§§pop().§§slot[2]);
                           if(!_loc5_)
                           {
                              §§push(0);
                              if(_loc6_)
                              {
                                 if(§§pop() <= §§pop())
                                 {
                                    if(_loc6_ || _loc3_)
                                    {
                                       addr118:
                                       §§push(0);
                                       if(!_loc5_)
                                       {
                                          return §§pop();
                                       }
                                       §§goto(addr186);
                                    }
                                    addr198:
                                    §§push(1);
                                 }
                                 else
                                 {
                                    addr191:
                                    §§push(score);
                                    if(!_loc5_)
                                    {
                                       addr197:
                                       if(§§pop() >= level.§8!l§)
                                       {
                                          addr146:
                                          §§push(§§newactivation());
                                          if(_loc6_)
                                          {
                                             addr151:
                                             §§push(§§pop().§§slot[2]);
                                             §§push(§§newactivation());
                                             if(!(_loc5_ && param2))
                                             {
                                                §§push(§§pop().§§slot[3]);
                                                if(!(_loc5_ && param1))
                                                {
                                                   §§push(§§pop().§>!o§);
                                                   if(_loc6_)
                                                   {
                                                      addr180:
                                                      if(§§pop() < §§pop())
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               addr130:
                                                               §§push(3);
                                                               if(!(_loc5_ && param1))
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     §§goto(addr151);
                                                                  }
                                                                  if(!_loc5_)
                                                                  {
                                                                     §§goto(addr143);
                                                                  }
                                                                  §§goto(addr199);
                                                               }
                                                               §§goto(addr186);
                                                            }
                                                            §§goto(addr146);
                                                         }
                                                         if(_loc6_)
                                                         {
                                                            addr186:
                                                            return §§pop();
                                                            §§push(2);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr198);
                                                         }
                                                      }
                                                      §§goto(addr130);
                                                   }
                                                }
                                             }
                                             §§goto(addr197);
                                          }
                                          §§goto(addr191);
                                       }
                                       §§goto(addr198);
                                    }
                                 }
                                 addr199:
                                 return §§pop();
                              }
                              §§goto(addr180);
                           }
                           addr143:
                           return §§pop();
                        }
                        §§goto(addr191);
                     }
                     §§goto(addr118);
                  }
               }
               catch(e:Error)
               {
                  §§goto(addr101);
               }
               §§goto(addr151);
            }
         }
      }
      
      public static function §@!L§(param1:String) : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(!§2!m§[param1])
            {
               if(!_loc3_)
               {
                  §§push(§3!_§);
                  if(_loc2_ || _loc3_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr48:
                  return param1;
               }
               return §§pop();
            }
         }
         §§goto(addr48);
      }
      
      public static function §1!+§(param1:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:§4n§ = null;
         if(!(_loc4_ && param1))
         {
            if(param1 != §4Y§)
            {
               loop0:
               while(true)
               {
                  §§push(§+R§(param1));
                  if(!(_loc4_ && _loc3_))
                  {
                     §§push(int(§§pop()));
                  }
                  loop1:
                  while(true)
                  {
                     _loc2_ = §§pop();
                     while(true)
                     {
                        §§push(_loc2_);
                        if(!_loc5_)
                        {
                           continue loop1;
                        }
                        if(§§pop() >= 0)
                        {
                           if(_loc4_ && _loc3_)
                           {
                              break;
                           }
                           if(!_loc4_)
                           {
                              §>!§ = _loc2_;
                              if(_loc5_ || _loc3_)
                              {
                                 while(true)
                                 {
                                    §,C§ = §4Y§;
                                    if(!_loc5_)
                                    {
                                       break;
                                    }
                                    if(!_loc4_)
                                    {
                                       continue;
                                    }
                                    continue loop0;
                                 }
                                 addr150:
                                 §4Y§ = null;
                                 break;
                              }
                              break;
                           }
                           continue;
                        }
                        §,C§ = §4Y§;
                        if(_loc5_ || LevelManager)
                        {
                           §§goto(addr150);
                        }
                        break;
                        §§goto(addr150);
                     }
                     §§goto(addr153);
                  }
               }
               addr91:
            }
            addr153:
            return;
         }
         §§goto(addr91);
      }
      
      public static function §@'§() : String
      {
         return §4Y§.substring(5);
      }
      
      public static function §0v§() : §4n§
      {
         return §3!f§[§>!§];
      }
      
      public static function §;L§() : Boolean
      {
         return true;
      }
      
      public static function §8!<§() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§9!j§());
         if(!(_loc4_ && _loc1_))
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(§0v§().§['§(§4Y§ + "-OUTRO"));
         if(!_loc4_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  if(_loc3_ || LevelManager)
                  {
                     return false;
                  }
                  else
                  {
                     loop1:
                     while(true)
                     {
                        addr67:
                        while(true)
                        {
                           §§push(_loc1_);
                           if(!_loc4_)
                           {
                              if(§§pop() != null)
                              {
                                 break;
                              }
                              continue loop1;
                           }
                           continue loop0;
                        }
                        addr50:
                        §§push(true);
                        if(_loc3_)
                        {
                           return §§pop();
                        }
                     }
                  }
                  return §§pop();
               }
               §§goto(addr67);
            }
         }
         §§goto(addr80);
      }
      
      public static function §9!j§() : String
      {
         return §0v§().§9!j§(§4Y§);
      }
   }
}
