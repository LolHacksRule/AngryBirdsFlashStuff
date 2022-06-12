package §#!e§
{
   import §`!]§.§3x§;
   
   public class LevelManager
   {
      
      public static const §%!§:String = "1-1";
      
      protected static var §=s§:Array = null;
      
      protected static var §2!U§:Array;
      
      protected static var §`!3§:Array;
      
      public static var §'!O§:String = null;
      
      public static var §+!;§:String = null;
      
      public static var §<!S§:Boolean;
      
      public static var §2?§:int = 0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §%!§ = "1-1";
            loop0:
            while(true)
            {
               §=s§ = null;
               loop1:
               while(true)
               {
                  §2!U§ = [];
                  while(true)
                  {
                     §`!3§ = [];
                     loop3:
                     for(; _loc1_ || _loc1_; if(!(_loc2_ && LevelManager))
                     {
                        continue loop0;
                     })
                     {
                        while(true)
                        {
                           §'!O§ = null;
                           loop5:
                           while(true)
                           {
                              §+!;§ = null;
                              while(true)
                              {
                                 if(_loc1_ || LevelManager)
                                 {
                                    continue loop3;
                                 }
                                 continue loop5;
                                 addr77:
                                 §2?§ = 0;
                                 if(!_loc2_)
                                 {
                                    continue loop1;
                                 }
                              }
                              continue loop3;
                           }
                        }
                        return;
                     }
                  }
               }
               if(_loc2_)
               {
                  continue;
               }
               §§goto(addr77);
            }
         }
         §§goto(addr94);
      }
      
      public function LevelManager()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §!"@§(param1:Object) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc2_:Object = null;
         var _loc3_:§>x§ = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:* = 0;
         if(!_loc11_)
         {
            §=s§ = new Array();
         }
         loop0:
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §>x§();
            if(_loc12_ || LevelManager)
            {
               _loc3_.levelsPerPage = _loc2_.levelsPerPage;
               while(true)
               {
                  _loc3_.name = _loc2_.name;
                  if(_loc12_ || LevelManager)
                  {
                     _loc3_.menuImage = _loc2_.menuImage;
                     if(!(_loc11_ && _loc2_))
                     {
                        _loc3_.§return§ = _loc2_.leftCorner;
                        if(_loc11_)
                        {
                           break;
                        }
                        _loc3_.§!!u§ = _loc2_.rightCorner;
                        if(!(_loc11_ && param1))
                        {
                           _loc3_.§7f§ = _loc2_.pageColors;
                           if(_loc11_ && param1)
                           {
                              continue loop0;
                           }
                           while(true)
                           {
                              _loc3_.pageIndexes = _loc2_.pageIndexes;
                              loop13:
                              while(true)
                              {
                                 addr76:
                                 while(true)
                                 {
                                    _loc3_.levelButtons = _loc2_.levelButtons;
                                    if(_loc11_ && _loc2_)
                                    {
                                       break;
                                    }
                                    continue loop13;
                                 }
                              }
                           }
                        }
                        else
                        {
                           addr259:
                           §=s§.push(_loc3_);
                           if(!_loc12_)
                           {
                              continue loop0;
                           }
                        }
                        var _loc9_:* = 0;
                        if(!(_loc11_ && LevelManager))
                        {
                           addr273:
                           var _loc10_:* = _loc3_.pageIndexes;
                           if(_loc12_ || param1)
                           {
                              loop2:
                              while(true)
                              {
                                 §§push(§§hasnext(_loc10_,_loc9_));
                                 addr351:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       break loop2;
                                    }
                                    _loc4_ = §§nextvalue(_loc9_,_loc10_);
                                    loop3:
                                    while(true)
                                    {
                                       §§push(1);
                                       if(!(_loc11_ && param1))
                                       {
                                          _loc6_ = §§pop();
                                          while(true)
                                          {
                                             addr296:
                                             while(true)
                                             {
                                                addr346:
                                                while(true)
                                                {
                                                   §§push(_loc6_);
                                                }
                                             }
                                          }
                                          addr337:
                                       }
                                       loop7:
                                       for(; §§pop() <= _loc3_.levelsPerPage; §§goto(addr346))
                                       {
                                          §§push(§`!3§);
                                          §§push(_loc4_ + "-");
                                          if(!_loc11_)
                                          {
                                             §§push(§§pop() + _loc6_);
                                          }
                                          §§pop()[§§pop()] = _loc3_.name;
                                          if(_loc11_)
                                          {
                                             break;
                                          }
                                          if(!_loc11_)
                                          {
                                             if(!_loc12_)
                                             {
                                                continue loop3;
                                             }
                                             _loc6_++;
                                             if(!(_loc12_ || _loc2_))
                                             {
                                                break;
                                             }
                                             while(true)
                                             {
                                                if(true)
                                                {
                                                   continue loop7;
                                                }
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr337);
                                          }
                                          §§goto(addr296);
                                       }
                                       continue loop2;
                                    }
                                 }
                              }
                              addr353:
                              continue loop0;
                              addr352:
                           }
                           §§goto(addr294);
                        }
                        §§goto(addr353);
                     }
                     §§goto(addr259);
                  }
                  break;
                  if(_loc11_ && _loc3_)
                  {
                     continue;
                  }
                  _loc3_.writtenName = _loc2_.writtenName;
                  if(!(_loc11_ && LevelManager))
                  {
                     if(false)
                     {
                        §§goto(addr76);
                     }
                     if(_loc2_.cutscenes)
                     {
                        if(_loc12_ || param1)
                        {
                           break;
                        }
                        §§goto(addr264);
                     }
                     §§goto(addr259);
                  }
                  §§goto(addr264);
               }
               §§push(0);
               if(!_loc11_)
               {
                  _loc9_ = §§pop();
                  if(!(_loc11_ && _loc2_))
                  {
                     _loc10_ = _loc2_.cutscenes;
                     if(!(_loc11_ && _loc2_))
                     {
                        loop9:
                        while(true)
                        {
                           §§push(§§hasnext(_loc10_,_loc9_));
                           if(!(_loc11_ && param1))
                           {
                              if(!§§pop())
                              {
                                 if(!_loc11_)
                                 {
                                    if(_loc12_ || _loc3_)
                                    {
                                       if(!_loc12_)
                                       {
                                          continue loop0;
                                       }
                                       §§goto(addr259);
                                    }
                                    §§goto(addr273);
                                 }
                                 §§goto(addr352);
                              }
                              else
                              {
                                 _loc5_ = §§nextname(_loc9_,_loc10_);
                                 if(!(_loc12_ || _loc2_))
                                 {
                                    continue;
                                 }
                                 while(true)
                                 {
                                    _loc3_.§9!j§(_loc5_,_loc2_.cutscenes[_loc5_]);
                                    continue loop9;
                                 }
                              }
                           }
                           break;
                        }
                        §§goto(addr351);
                     }
                     §§goto(addr230);
                  }
                  §§goto(addr353);
               }
               §§goto(addr265);
            }
            §§goto(addr121);
         }
      }
      
      public static function §]!U§() : void
      {
      }
      
      public static function §^_§(param1:String) : §>x§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§>x§ = null;
         for each(_loc2_ in §=s§)
         {
            if(_loc5_ || _loc2_)
            {
               if(_loc2_.§2"C§(param1))
               {
                  if(!_loc6_)
                  {
                     return _loc2_;
                  }
               }
            }
         }
         return null;
      }
      
      public static function §<`§(param1:String) : int
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§>x§ = null;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(_loc5_ && _loc2_)
            {
               break;
            }
            if(§§pop() >= §=s§.length)
            {
               break;
            }
            _loc3_ = §=s§[_loc2_];
            if(_loc4_)
            {
               if(_loc3_.§2"C§(param1))
               {
                  if(_loc4_)
                  {
                     return _loc2_;
                  }
               }
            }
            _loc2_++;
         }
         return §§pop();
      }
      
      public static function §;X§(param1:int) : §>x§
      {
         return §=s§[param1];
      }
      
      public static function §5!W§(param1:String) : §>x§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§>x§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = §=s§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!(_loc5_ || _loc3_))
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
      
      public static function §@!N§() : int
      {
         return §=s§.length;
      }
      
      public static function §1A§(param1:String) : §1"B§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && LevelManager))
         {
            §§push(§2!U§);
            if(_loc2_ || _loc2_)
            {
               §§push(param1);
               if(_loc2_ || _loc3_)
               {
                  if(!§§pop()[§§pop()])
                  {
                     if(!_loc3_)
                     {
                        §§push(§`!3§);
                        if(!(_loc3_ && param1))
                        {
                           §§goto(addr71);
                        }
                        §§goto(addr87);
                     }
                     §§goto(addr79);
                  }
                  §§goto(addr87);
               }
               §§goto(addr74);
            }
            addr71:
            §§push(param1);
            if(_loc2_)
            {
               addr74:
               if(§§pop()[§§pop()] == null)
               {
                  if(_loc2_)
                  {
                     §§goto(addr79);
                  }
                  else
                  {
                     addr87:
                     §§push(§2!U§);
                     §§push(param1);
                  }
               }
               §§goto(addr87);
            }
            return §§pop()[§§pop()];
         }
         addr79:
         throw new Error("Error! Level \'" + param1 + "\' does not exist.");
      }
      
      public static function §!!w§(param1:String, param2:§1"B§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §2!U§[param1] = param2;
         }
      }
      
      public static function §`!^§(param1:String, param2:int) : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[3] = null;
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  §§push(§§newactivation());
                  loop3:
                  while(true)
                  {
                     §§pop().§§slot[1] = param1;
                     while(!_loc6_)
                     {
                        §§push(§§newactivation());
                        if(_loc5_)
                        {
                           if(!_loc6_)
                           {
                              §§pop().§§slot[2] = param2;
                              if(_loc5_)
                              {
                                 if(true)
                                 {
                                    break loop2;
                                 }
                                 continue loop2;
                              }
                              continue;
                           }
                           continue loop0;
                        }
                        continue loop3;
                     }
                     continue loop1;
                  }
               }
               try
               {
                  §§push(§§newactivation());
                  if(_loc5_ || param1)
                  {
                     §§pop().§§slot[3] = LevelManager.§1A§(levelId);
                     if(_loc5_ || LevelManager)
                     {
                        addr80:
                        §§push(§§newactivation());
                        if(!_loc6_)
                        {
                           §§push(§§pop().§§slot[2]);
                           if(_loc5_ || param1)
                           {
                              §§push(0);
                              if(!_loc6_)
                              {
                                 if(§§pop() <= §§pop())
                                 {
                                    if(_loc5_)
                                    {
                                       §§push(0);
                                       if(_loc5_ || param1)
                                       {
                                          return §§pop();
                                       }
                                    }
                                    else
                                    {
                                       addr190:
                                       §§push(3);
                                       if(!(_loc5_ || param1))
                                       {
                                          §§goto(addr187);
                                       }
                                       if(_loc5_ || param1)
                                       {
                                          return §§pop();
                                       }
                                       §§goto(addr197);
                                    }
                                    §§goto(addr189);
                                 }
                                 else
                                 {
                                    §§goto(addr192);
                                    §§push(§§newactivation());
                                 }
                                 §§goto(addr192);
                              }
                              §§goto(addr179);
                           }
                           §§goto(addr196);
                        }
                        §§goto(addr147);
                     }
                     addr197:
                     if(!_loc6_)
                     {
                        addr187:
                        if(_loc6_)
                        {
                           addr196:
                           if(§§pop() >= level.§4Z§)
                           {
                              addr143:
                              §§push(§§newactivation());
                              if(!_loc6_)
                              {
                                 addr147:
                                 §§push(§§pop().§§slot[2]);
                                 if(_loc5_)
                                 {
                                    §§push(§§newactivation());
                                    if(_loc5_ || LevelManager)
                                    {
                                       §§push(§§pop().§§slot[3]);
                                       if(!_loc6_)
                                       {
                                          §§push(§§pop().§-z§);
                                          if(!(_loc6_ && param1))
                                          {
                                             addr179:
                                             if(§§pop() < §§pop())
                                             {
                                                if(_loc5_)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      §§goto(addr197);
                                                   }
                                                   §§goto(addr143);
                                                }
                                             }
                                             §§goto(addr190);
                                          }
                                       }
                                    }
                                    §§goto(addr196);
                                 }
                                 §§goto(addr187);
                              }
                              addr192:
                              §§goto(addr196);
                              §§push(§§pop().§§slot[2]);
                           }
                           §§goto(addr197);
                        }
                        addr189:
                        return §§pop();
                        §§push(2);
                     }
                     return 1;
                  }
               }
               catch(e:Error)
               {
                  §§goto(addr80);
               }
               §§goto(addr192);
            }
         }
      }
      
      public static function §;!f§(param1:String) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            if(!§`!3§[param1])
            {
               if(!_loc2_)
               {
                  §§push(§%!§);
                  if(_loc3_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr44:
                  return param1;
               }
               return §§pop();
            }
         }
         §§goto(addr44);
      }
      
      public static function §-!4§(param1:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:§>x§ = null;
         if(_loc5_ || LevelManager)
         {
            if(param1 != §'!O§)
            {
               if(!_loc4_)
               {
                  §§push(§<`§(param1));
                  while(true)
                  {
                     §§push(int(§§pop()));
                     addr107:
                     while(true)
                     {
                        _loc2_ = §§pop();
                     }
                  }
                  addr106:
               }
               while(true)
               {
                  §§push(_loc2_);
                  if(!(_loc4_ && param1))
                  {
                     if(_loc5_)
                     {
                        if(§§pop() >= 0)
                        {
                           if(!_loc4_)
                           {
                              §2?§ = _loc2_;
                              if(!_loc5_)
                              {
                                 addr130:
                                 §'!O§ = null;
                                 addr133:
                              }
                              loop3:
                              while(true)
                              {
                                 §+!;§ = §'!O§;
                                 while(true)
                                 {
                                    §'!O§ = param1;
                                    if(_loc5_ || _loc2_)
                                    {
                                       if(_loc4_ && LevelManager)
                                       {
                                          continue;
                                       }
                                       if(!_loc5_)
                                       {
                                          break loop3;
                                       }
                                       if(false)
                                       {
                                          continue loop3;
                                       }
                                       _loc3_ = §9"D§();
                                       if(!_loc4_)
                                       {
                                          if(_loc3_)
                                          {
                                             if(!_loc4_)
                                             {
                                                addr119:
                                                _loc3_.§9!f§ = _loc3_.§3"0§(param1);
                                             }
                                          }
                                          break;
                                       }
                                       §§goto(addr119);
                                    }
                                    break;
                                 }
                                 §§goto(addr133);
                              }
                              continue;
                              return;
                           }
                        }
                        else
                        {
                           §+!;§ = §'!O§;
                           if(_loc5_)
                           {
                              §§goto(addr130);
                           }
                        }
                        §§goto(addr133);
                     }
                     else
                     {
                        §§goto(addr106);
                     }
                  }
                  §§goto(addr107);
               }
            }
         }
         §§goto(addr133);
      }
      
      public static function §?!i§() : String
      {
         return §'!O§.substring(5);
      }
      
      public static function §9"D§() : §>x§
      {
         return §=s§[§2?§];
      }
      
      public static function §=H§() : Boolean
      {
         return true;
      }
      
      public static function §%^§() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§6!M§());
         if(!(_loc4_ && _loc1_))
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(§9"D§().§<!5§(§'!O§ + "-OUTRO"));
         if(_loc3_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            §§push(_loc2_);
            loop0:
            while(§§pop())
            {
               loop1:
               while(true)
               {
                  §§push(_loc1_);
                  if(!(_loc4_ && _loc3_))
                  {
                     if(§§pop() == null)
                     {
                        if(_loc3_ || _loc2_)
                        {
                           if(_loc4_ && _loc2_)
                           {
                              break loop0;
                           }
                           §3x§.§<!'§(_loc2_);
                        }
                        if(!_loc4_)
                        {
                           break;
                        }
                        addr102:
                        while(true)
                        {
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
               §§goto(addr101);
            }
            addr101:
            return §§pop();
            §§push(false);
         }
         §§goto(addr102);
      }
      
      public static function §6!M§() : String
      {
         return §9"D§().§6!M§(§'!O§);
      }
   }
}
