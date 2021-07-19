package §3"§
{
   import §0R§.§ for§;
   
   public class §0$§
   {
      
      public static const §!!C§:String = "1-1";
      
      protected static var § !'§:Array = null;
      
      protected static var §0!"§:Array;
      
      protected static var §[S§:Array = [];
      
      public static var §[C§:String = null;
      
      public static var §>Q§:String = null;
      
      public static var §+!1§:Boolean;
      
      public static var §=l§:int = 0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §!!C§ = "1-1";
            § !'§ = null;
            §0!"§ = [];
         }
         while(true)
         {
            §>Q§ = null;
            while(!_loc2_)
            {
               §=l§ = 0;
               if(!(_loc2_ && _loc2_))
               {
                  return;
               }
            }
         }
      }
      
      public function §0$§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super();
         }
      }
      
      public static function §#;§(param1:Object) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc2_:Object = null;
         var _loc3_:§&9§ = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:* = 0;
         if(_loc12_)
         {
            § !'§ = new Array();
         }
         loop0:
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §&9§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            if(!(_loc11_ && param1))
            {
               _loc3_.menuImage = _loc2_.menuImage;
               loop1:
               while(true)
               {
                  _loc3_.§-a§ = _loc2_.leftCorner;
                  if(_loc11_ && param1)
                  {
                     break;
                  }
                  _loc3_.§ v§ = _loc2_.rightCorner;
                  if(!_loc12_)
                  {
                     continue loop0;
                  }
                  _loc3_.§,!'§ = _loc2_.pageColors;
                  _loc3_.pageIndexes = _loc2_.pageIndexes;
                  if(!_loc11_)
                  {
                     loop2:
                     while(true)
                     {
                        _loc3_.levelButtons = _loc2_.levelButtons;
                        if(_loc11_)
                        {
                           break;
                        }
                        continue loop1;
                        addr78:
                        _loc3_.writtenName = _loc2_.writtenName;
                        if(!_loc11_)
                        {
                           if(true)
                           {
                              if(_loc2_.cutscenes)
                              {
                                 if(_loc12_ || param1)
                                 {
                                    addr158:
                                    §§push(0);
                                    if(!_loc11_)
                                    {
                                       var _loc9_:* = §§pop();
                                       if(!_loc11_)
                                       {
                                          var _loc10_:* = _loc2_.cutscenes;
                                          if(_loc11_)
                                          {
                                          }
                                          while(true)
                                          {
                                             §§push(§§hasnext(_loc10_,_loc9_));
                                             if(_loc12_ || _loc3_)
                                             {
                                                if(§§pop())
                                                {
                                                   _loc5_ = §§nextname(_loc9_,_loc10_);
                                                   if(!(_loc11_ && _loc2_))
                                                   {
                                                      _loc3_.§0!'§(_loc5_,_loc2_.cutscenes[_loc5_]);
                                                   }
                                                   continue;
                                                }
                                                if(_loc12_)
                                                {
                                                   if(_loc12_)
                                                   {
                                                      if(_loc12_ || _loc2_)
                                                      {
                                                         break loop1;
                                                      }
                                                      break loop2;
                                                   }
                                                   addr312:
                                                   continue loop0;
                                                }
                                                §§goto(addr312);
                                             }
                                             break;
                                          }
                                          loop9:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                _loc4_ = §§nextvalue(_loc9_,_loc10_);
                                                loop4:
                                                while(true)
                                                {
                                                   §§push(1);
                                                   if(!(_loc11_ && _loc2_))
                                                   {
                                                      _loc6_ = §§pop();
                                                      addr309:
                                                      if(_loc12_)
                                                      {
                                                         if(_loc11_)
                                                         {
                                                            continue;
                                                         }
                                                         while(true)
                                                         {
                                                            addr305:
                                                            while(true)
                                                            {
                                                               §§push(_loc6_);
                                                               break loop4;
                                                            }
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         continue loop9;
                                                      }
                                                      §§goto(addr311);
                                                      addr309:
                                                   }
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   if(§§pop() <= _loc3_.levelsPerPage)
                                                   {
                                                      §§push(§[S§);
                                                      §§push(_loc4_ + "-");
                                                      if(!(_loc11_ && §0$§))
                                                      {
                                                         §§push(§§pop() + _loc6_);
                                                      }
                                                      §§pop()[§§pop()] = _loc3_.name;
                                                      if(!_loc11_)
                                                      {
                                                         _loc6_++;
                                                         if(!(_loc11_ && param1))
                                                         {
                                                            if(true)
                                                            {
                                                               continue;
                                                            }
                                                            §§goto(addr250);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr309);
                                                }
                                             }
                                             §§goto(addr311);
                                          }
                                       }
                                       addr227:
                                       _loc10_ = _loc3_.pageIndexes;
                                       if(_loc12_ || _loc2_)
                                       {
                                       }
                                       §§goto(addr309);
                                    }
                                    addr219:
                                    _loc9_ = §§pop();
                                    if(!(_loc11_ && param1))
                                    {
                                       §§goto(addr227);
                                    }
                                    §§goto(addr312);
                                 }
                                 break loop1;
                              }
                           }
                           continue;
                           break loop1;
                        }
                        break;
                     }
                  }
                  §§goto(addr219);
                  §§push(0);
               }
               § !'§.push(_loc3_);
               if(!_loc12_)
               {
                  continue;
               }
               §§goto(addr218);
            }
            §§goto(addr158);
         }
      }
      
      public static function §>#§() : void
      {
      }
      
      public static function §,o§(param1:String) : §&9§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§&9§ = null;
         for each(_loc2_ in § !'§)
         {
            if(!_loc5_)
            {
               if(_loc2_.§&;§(param1))
               {
                  if(!(_loc5_ && _loc2_))
                  {
                     return _loc2_;
                  }
               }
            }
         }
         return null;
      }
      
      public static function §%A§(param1:String) : int
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§&9§ = null;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc4_ || param1))
            {
               break;
            }
            if(§§pop() >= § !'§.length)
            {
               break;
            }
            _loc3_ = § !'§[_loc2_];
            if(_loc4_ || _loc3_)
            {
               if(_loc3_.§&;§(param1))
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
      
      public static function §]>§(param1:int) : §&9§
      {
         return § !'§[param1];
      }
      
      public static function § l§() : int
      {
         return § !'§.length;
      }
      
      public static function §2Q§(param1:String) : §8+§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(§0!"§);
            if(_loc2_)
            {
               §§push(param1);
               if(_loc2_ || param1)
               {
                  if(!§§pop()[§§pop()])
                  {
                     if(_loc2_)
                     {
                        addr53:
                        §§push(§[S§);
                        if(_loc2_)
                        {
                           addr56:
                           §§push(param1);
                           if(_loc2_)
                           {
                              if(§§pop()[§§pop()] == null)
                              {
                                 if(_loc2_)
                                 {
                                    §§goto(addr64);
                                 }
                                 else
                                 {
                                    addr72:
                                    §§push(§0!"§);
                                 }
                              }
                              §§goto(addr72);
                           }
                           §§goto(addr74);
                        }
                        addr74:
                        return §§pop()[§§pop()];
                        §§push(param1);
                     }
                     addr64:
                     throw new Error("Error! Level \'" + param1 + "\' does not exist.");
                  }
                  §§goto(addr72);
               }
               §§goto(addr74);
            }
            §§goto(addr56);
         }
         §§goto(addr53);
      }
      
      public static function §-,§(param1:String, param2:§8+§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §0!"§[param1] = param2;
         }
      }
      
      public static function §5Y§(param1:String, param2:int) : int
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
               addr49:
               while(true)
               {
                  §§push(§§newactivation());
                  loop3:
                  while(true)
                  {
                     §§pop().§§slot[1] = param1;
                     addr53:
                     while(_loc6_)
                     {
                        §§push(§§newactivation());
                        if(_loc6_ || param1)
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
                  addr61:
                  §§push(§§newactivation());
                  if(!_loc5_)
                  {
                     §§pop().§§slot[3] = §0$§.§2Q§(levelId);
                     addr94:
                     §§push(§§newactivation());
                     if(!(_loc5_ && param2))
                     {
                        §§push(§§pop().§§slot[2]);
                        if(_loc6_)
                        {
                           addr171:
                           §§push(0);
                           if(!(_loc5_ && _loc3_))
                           {
                              if(§§pop() <= §§pop())
                              {
                                 §§goto(addr115);
                              }
                              addr170:
                              §§push(score);
                              §§push(level.§#o§);
                           }
                           if(§§pop() >= §§pop())
                           {
                              §§push(§§newactivation());
                              if(_loc6_)
                              {
                                 addr130:
                                 §§push(§§pop().§§slot[2]);
                                 §§push(§§newactivation());
                                 if(_loc6_ || _loc3_)
                                 {
                                    §§push(§§pop().§§slot[3]);
                                    if(_loc6_ || §0$§)
                                    {
                                       §§push(§§pop().§1U§);
                                       if(!_loc6_)
                                       {
                                          §§goto(addr171);
                                       }
                                       if(§§pop() < §§pop())
                                       {
                                          if(!_loc5_)
                                          {
                                             return 2;
                                          }
                                          else
                                          {
                                             addr119:
                                             §§push(3);
                                             if(!_loc5_)
                                             {
                                                return §§pop();
                                             }
                                          }
                                          return §§pop();
                                       }
                                       §§goto(addr119);
                                    }
                                 }
                              }
                              §§goto(addr170);
                           }
                           return 1;
                        }
                        addr115:
                        return 0;
                     }
                  }
                  §§goto(addr130);
               }
               catch(e:Error)
               {
               }
               §§goto(addr94);
            }
         }
      }
      
      public static function §5D§(param1:String) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!§[S§[param1])
            {
               if(_loc3_ || param1)
               {
                  §§push(§!!C§);
                  if(!_loc2_)
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
      
      public static function §;4§(param1:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:§&9§ = null;
         if(_loc4_)
         {
            if(param1 != §[C§)
            {
               loop0:
               while(true)
               {
                  §§push(§%A§(param1));
                  loop1:
                  while(true)
                  {
                     §§push(int(§§pop()));
                     while(true)
                     {
                        _loc2_ = §§pop();
                        while(true)
                        {
                           §§push(_loc2_);
                           if(!(_loc4_ || param1))
                           {
                              break;
                           }
                           if(_loc5_)
                           {
                              continue loop1;
                           }
                           if(§§pop() >= 0)
                           {
                              if(_loc4_)
                              {
                                 if(!_loc5_)
                                 {
                                    §=l§ = _loc2_;
                                    loop4:
                                    while(_loc4_ || _loc3_)
                                    {
                                       loop5:
                                       while(true)
                                       {
                                          §>Q§ = §[C§;
                                          while(true)
                                          {
                                             if(!_loc5_)
                                             {
                                                §[C§ = param1;
                                                if(!_loc4_)
                                                {
                                                   §[C§ = null;
                                                }
                                                else
                                                {
                                                   addr134:
                                                }
                                                if(!(_loc5_ && _loc2_))
                                                {
                                                   if(true)
                                                   {
                                                      _loc3_ = § H§();
                                                      if(!_loc5_)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            if(_loc4_ || _loc3_)
                                                            {
                                                               _loc3_.§^A§ = _loc3_.§%X§(param1);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   continue loop5;
                                                   break;
                                                }
                                                continue;
                                                break;
                                             }
                                             continue loop4;
                                          }
                                       }
                                    }
                                    continue;
                                 }
                                 continue loop0;
                              }
                           }
                           else
                           {
                              §>Q§ = §[C§;
                              if(!(_loc5_ && _loc3_))
                              {
                                 §§goto(addr134);
                              }
                           }
                        }
                     }
                  }
               }
               addr87:
            }
            return;
         }
         §§goto(addr87);
      }
      
      public static function §]3§() : String
      {
         return §[C§.substring(5);
      }
      
      public static function § H§() : §&9§
      {
         return § !'§[§=l§];
      }
      
      public static function §1g§() : Boolean
      {
         return true;
      }
      
      public static function §;e§() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§?W§());
         if(_loc3_ || §0$§)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(§ H§().§1!2§(§[C§ + "-OUTRO"));
         if(!(_loc4_ && _loc3_))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  if(_loc3_ || §0$§)
                  {
                     return false;
                  }
                  else
                  {
                     loop2:
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
                              if(!(_loc4_ && _loc1_))
                              {
                                 § for§.§@!1§(_loc2_);
                              }
                              if(_loc3_ || §0$§)
                              {
                                 break;
                              }
                              continue loop2;
                           }
                           continue loop0;
                        }
                        §§push(true);
                        if(_loc3_ || _loc2_)
                        {
                           return §§pop();
                        }
                     }
                     addr112:
                  }
                  return §§pop();
               }
               §§goto(addr67);
            }
         }
         §§goto(addr112);
      }
      
      public static function §?W§() : String
      {
         return § H§().§?W§(§[C§);
      }
   }
}
