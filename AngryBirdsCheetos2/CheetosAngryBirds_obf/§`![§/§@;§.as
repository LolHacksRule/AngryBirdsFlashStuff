package §`![§
{
   import §3!Z§.§ !b§;
   
   public class §@;§
   {
      
      public static const §7%§:String = "1-1";
      
      protected static var §&!Q§:Array = null;
      
      protected static var §`!&§:Array;
      
      protected static var §?!"§:Array;
      
      public static var §6!K§:String = null;
      
      public static var §=C§:String = null;
      
      public static var §5!2§:Boolean;
      
      public static var §5!K§:int = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §7%§ = "1-1";
            while(true)
            {
               §&!Q§ = null;
               loop1:
               while(true)
               {
                  §`!&§ = [];
                  while(true)
                  {
                     §?!"§ = [];
                     addr71:
                     while(_loc2_)
                     {
                        continue loop1;
                     }
                  }
               }
            }
            addr104:
         }
         while(true)
         {
            §6!K§ = null;
            while(true)
            {
               if(_loc2_)
               {
                  §=C§ = null;
                  continue;
               }
               §§goto(addr104);
            }
         }
      }
      
      public function §@;§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §<U§(param1:Object) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc2_:Object = null;
         var _loc3_:§1!K§ = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:* = 0;
         if(!(_loc11_ && _loc3_))
         {
            §&!Q§ = new Array();
         }
         loop0:
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §1!K§();
            if(_loc12_ || _loc3_)
            {
               _loc3_.levelsPerPage = _loc2_.levelsPerPage;
               if(_loc12_)
               {
                  _loc3_.name = _loc2_.name;
                  loop8:
                  while(true)
                  {
                     _loc3_.menuImage = _loc2_.menuImage;
                     loop9:
                     while(true)
                     {
                        _loc3_.§4+§ = _loc2_.leftCorner;
                        if(!_loc11_)
                        {
                           _loc3_.§`k§ = _loc2_.rightCorner;
                           if(_loc11_)
                           {
                              continue loop0;
                           }
                           _loc3_.§`$§ = _loc2_.pageColors;
                           if(!_loc11_)
                           {
                              _loc3_.pageIndexes = _loc2_.pageIndexes;
                              if(!_loc11_)
                              {
                                 while(true)
                                 {
                                    _loc3_.levelButtons = _loc2_.levelButtons;
                                    if(_loc11_)
                                    {
                                       break;
                                    }
                                    if(!_loc11_)
                                    {
                                       _loc3_.writtenName = _loc2_.writtenName;
                                       if(_loc12_)
                                       {
                                          if(!_loc12_)
                                          {
                                             continue loop8;
                                          }
                                          if(false)
                                          {
                                             continue;
                                          }
                                          if(_loc2_.cutscenes)
                                          {
                                             if(_loc12_ || _loc3_)
                                             {
                                                break loop9;
                                             }
                                             continue loop0;
                                          }
                                       }
                                       break loop9;
                                    }
                                    continue loop9;
                                 }
                                 addr235:
                                 var _loc9_:* = 0;
                                 addr234:
                                 if(!_loc11_)
                                 {
                                    addr238:
                                    var _loc10_:* = _loc3_.pageIndexes;
                                    if(!_loc11_)
                                    {
                                       loop1:
                                       while(true)
                                       {
                                          §§push(§§hasnext(_loc10_,_loc9_));
                                          addr311:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                break loop1;
                                             }
                                             _loc4_ = §§nextvalue(_loc9_,_loc10_);
                                             while(true)
                                             {
                                                §§push(1);
                                                if(_loc12_)
                                                {
                                                   _loc6_ = §§pop();
                                                   while(_loc12_)
                                                   {
                                                      while(true)
                                                      {
                                                         addr296:
                                                         while(true)
                                                         {
                                                            §§push(_loc6_);
                                                         }
                                                      }
                                                   }
                                                   continue;
                                                   addr285:
                                                }
                                                loop6:
                                                for(; §§pop() <= _loc3_.levelsPerPage; §§goto(addr296))
                                                {
                                                   §§push(§?!"§);
                                                   §§push(_loc4_ + "-");
                                                   if(!(_loc11_ && _loc2_))
                                                   {
                                                      §§push(§§pop() + _loc6_);
                                                   }
                                                   §§pop()[§§pop()] = _loc3_.name;
                                                   if(!(_loc12_ || param1))
                                                   {
                                                      continue loop1;
                                                   }
                                                   if(_loc12_)
                                                   {
                                                      while(true)
                                                      {
                                                         _loc6_++;
                                                         if(!_loc12_)
                                                         {
                                                            continue loop1;
                                                         }
                                                         if(true)
                                                         {
                                                            continue loop6;
                                                         }
                                                      }
                                                      addr279:
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr285);
                                                   }
                                                   §§goto(addr251);
                                                }
                                                continue loop1;
                                             }
                                          }
                                       }
                                       addr313:
                                       continue loop0;
                                       addr312:
                                    }
                                    §§goto(addr279);
                                 }
                                 §§goto(addr313);
                              }
                           }
                           §&!Q§.push(_loc3_);
                           if(!(_loc12_ || §@;§))
                           {
                              continue loop0;
                           }
                           §§goto(addr234);
                        }
                        break;
                     }
                     §§push(0);
                     if(_loc12_ || _loc3_)
                     {
                        _loc9_ = §§pop();
                        if(!(_loc11_ && §@;§))
                        {
                           _loc10_ = _loc2_.cutscenes;
                           if(_loc11_ && _loc3_)
                           {
                           }
                           while(true)
                           {
                              §§push(§§hasnext(_loc10_,_loc9_));
                              if(!_loc11_)
                              {
                                 if(§§pop())
                                 {
                                    _loc5_ = §§nextname(_loc9_,_loc10_);
                                    if(_loc12_)
                                    {
                                       _loc3_.§?!f§(_loc5_,_loc2_.cutscenes[_loc5_]);
                                    }
                                    continue;
                                 }
                                 if(_loc12_ || param1)
                                 {
                                    if(!_loc11_)
                                    {
                                       if(!(_loc12_ || param1))
                                       {
                                          continue loop0;
                                       }
                                       §§goto(addr224);
                                    }
                                    §§goto(addr238);
                                 }
                                 §§goto(addr312);
                              }
                              break;
                           }
                           §§goto(addr311);
                        }
                        §§goto(addr313);
                     }
                     §§goto(addr235);
                  }
                  addr131:
               }
               §§goto(addr235);
            }
            §§goto(addr131);
         }
      }
      
      public static function §5w§() : void
      {
      }
      
      public static function §4!`§(param1:String) : §1!K§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§1!K§ = null;
         var _loc3_:int = 0;
         for each(_loc2_ in §&!Q§)
         {
            if(_loc6_)
            {
               if(_loc2_.§&!e§(param1))
               {
                  if(_loc6_ || _loc3_)
                  {
                     return _loc2_;
                  }
               }
            }
         }
         return null;
      }
      
      public static function §<!%§(param1:String) : int
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§1!K§ = null;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc4_ || _loc2_))
            {
               break;
            }
            if(§§pop() >= §&!Q§.length)
            {
               break;
            }
            _loc3_ = §&!Q§[_loc2_];
            if(!_loc5_)
            {
               if(_loc3_.§&!e§(param1))
               {
                  if(!_loc5_)
                  {
                     return _loc2_;
                  }
               }
               _loc2_++;
            }
         }
         return §§pop();
      }
      
      public static function §default§(param1:int) : §1!K§
      {
         return §&!Q§[param1];
      }
      
      public static function §finally§(param1:String) : §1!K§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§1!K§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = §&!Q§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!(_loc5_ || §@;§))
               {
                  break;
               }
               if(_loc2_.name == param1)
               {
                  if(!(_loc6_ && _loc2_))
                  {
                     break;
                  }
               }
            }
            return null;
         }
         return _loc2_;
      }
      
      public static function §7!I§() : int
      {
         return §&!Q§.length;
      }
      
      public static function §6!M§(param1:String) : §!!K§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(§`!&§);
            if(_loc3_ || _loc2_)
            {
               §§push(param1);
               if(_loc3_ || _loc2_)
               {
                  if(!§§pop()[§§pop()])
                  {
                     if(_loc3_)
                     {
                        §§push(§?!"§);
                        if(_loc3_)
                        {
                           §§push(param1);
                           if(_loc3_ || _loc3_)
                           {
                              addr65:
                              if(§§pop()[§§pop()] == null)
                              {
                                 if(_loc3_ || _loc3_)
                                 {
                                    throw new Error("Error! Level \'" + param1 + "\' does not exist.");
                                    addr75:
                                 }
                                 else
                                 {
                                    addr93:
                                    §§push(§`!&§);
                                    §§push(param1);
                                 }
                              }
                              §§goto(addr93);
                           }
                           return §§pop()[§§pop()];
                        }
                        §§goto(addr93);
                     }
                     §§goto(addr75);
                  }
                  §§goto(addr93);
               }
               §§goto(addr65);
            }
            §§goto(addr93);
         }
         §§goto(addr75);
      }
      
      public static function §8h§(param1:String, param2:§!!K§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §`!&§[param1] = param2;
         }
      }
      
      public static function §@T§(param1:String, param2:int) : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[3] = null;
            addr54:
            while(true)
            {
               addr45:
               while(true)
               {
                  §§push(§§newactivation());
                  while(true)
                  {
                     §§pop().§§slot[1] = param1;
                     addr49:
                     while(true)
                     {
                        §§push(§§newactivation());
                        if(_loc6_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
      }
      
      public static function § >§(param1:String) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!§?!"§[param1])
            {
               if(_loc3_)
               {
                  addr35:
                  §§push(§7%§);
                  if(!(_loc2_ && param1))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr54:
                  return param1;
               }
               return §§pop();
            }
            §§goto(addr54);
         }
         §§goto(addr35);
      }
      
      public static function §2Q§(param1:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:§1!K§ = null;
         if(_loc4_)
         {
            if(param1 != §6!K§)
            {
               if(!_loc5_)
               {
                  §§push(§<!%§(param1));
                  if(_loc4_ || _loc3_)
                  {
                     §§push(int(§§pop()));
                  }
                  loop0:
                  while(true)
                  {
                     _loc2_ = §§pop();
                     addr102:
                     loop1:
                     while(true)
                     {
                        §§push(_loc2_);
                        if(_loc5_)
                        {
                           continue loop0;
                        }
                        if(§§pop() >= 0)
                        {
                           loop2:
                           while(true)
                           {
                              §5!K§ = _loc2_;
                              loop3:
                              while(true)
                              {
                                 addr53:
                                 while(true)
                                 {
                                    §=C§ = §6!K§;
                                    while(true)
                                    {
                                       if(_loc4_ || param1)
                                       {
                                          §6!K§ = param1;
                                          if(_loc5_ && _loc3_)
                                          {
                                             §6!K§ = null;
                                          }
                                          else
                                          {
                                             addr139:
                                          }
                                          if(!(_loc4_ || param1))
                                          {
                                             continue;
                                          }
                                          continue loop2;
                                          break;
                                       }
                                       continue loop3;
                                    }
                                 }
                                 continue loop1;
                              }
                           }
                        }
                        else
                        {
                           §=C§ = §6!K§;
                           if(_loc4_)
                           {
                              §§goto(addr139);
                           }
                        }
                        §§goto(addr142);
                     }
                  }
               }
               §§goto(addr102);
            }
         }
         §§goto(addr142);
      }
      
      public static function §%Z§() : String
      {
         return §6!K§.substring(5);
      }
      
      public static function §+Q§() : §1!K§
      {
         return §&!Q§[§5!K§];
      }
      
      public static function §@1§() : Boolean
      {
         return true;
      }
      
      public static function §6Q§() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§,!L§());
         if(!_loc3_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(§+Q§().§]<§(§6!K§ + "-OUTRO"));
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && _loc3_))
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
                     loop1:
                     while(true)
                     {
                        addr63:
                        loop2:
                        while(true)
                        {
                           §§push(_loc1_);
                           if(!_loc3_)
                           {
                              if(§§pop() == null)
                              {
                                 if(_loc4_ || §@;§)
                                 {
                                    while(true)
                                    {
                                       § !b§.§?Z§(_loc2_);
                                    }
                                    addr76:
                                 }
                                 while(true)
                                 {
                                    if(_loc4_)
                                    {
                                       break loop2;
                                    }
                                    continue loop1;
                                 }
                              }
                              break;
                           }
                           continue loop0;
                        }
                        §§push(true);
                        if(!(_loc3_ && §@;§))
                        {
                           return §§pop();
                        }
                     }
                  }
                  return §§pop();
               }
               §§goto(addr63);
            }
         }
         §§goto(addr76);
      }
      
      public static function §,!L§() : String
      {
         return §+Q§().§,!L§(§6!K§);
      }
   }
}
