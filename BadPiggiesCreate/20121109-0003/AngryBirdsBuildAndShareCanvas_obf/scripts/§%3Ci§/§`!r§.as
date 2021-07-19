package §<i§
{
   import §`",§.§2M§;
   
   public class §`!r§
   {
      
      public static const §2!l§:String = "1-1";
      
      protected static var §3M§:Array = null;
      
      protected static var §?!§:Array;
      
      protected static var §'!J§:Array;
      
      public static var §0B§:String = null;
      
      public static var §;!8§:String = null;
      
      public static var §1&§:Boolean;
      
      public static var §^0§:int = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §2!l§ = "1-1";
            while(true)
            {
               §3M§ = null;
            }
            addr109:
         }
         loop1:
         while(true)
         {
            §?!§ = [];
            while(!(_loc1_ && _loc2_))
            {
               §'!J§ = [];
               do
               {
                  §0B§ = null;
                  do
                  {
                     §;!8§ = null;
                     do
                     {
                        §^0§ = 0;
                     }
                     while(_loc1_ && _loc1_);
                     
                  }
                  while(!_loc2_);
                  
               }
               while(_loc1_ && _loc2_);
               
               if(!(_loc2_ || _loc1_))
               {
                  continue;
               }
               if(!_loc1_)
               {
                  break loop1;
               }
               §§goto(addr109);
            }
         }
      }
      
      public function §`!r§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §?D§(param1:Object) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc2_:Object = null;
         var _loc3_:§3!l§ = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:* = 0;
         if(!_loc11_)
         {
            §3M§ = new Array();
         }
         loop0:
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §3!l§();
            if(!_loc11_)
            {
               _loc3_.levelsPerPage = _loc2_.levelsPerPage;
               if(!(_loc12_ || §`!r§))
               {
                  continue;
               }
               _loc3_.name = _loc2_.name;
               while(true)
               {
                  _loc3_.menuImage = _loc2_.menuImage;
                  loop2:
                  while(true)
                  {
                     _loc3_.§#! § = _loc2_.leftCorner;
                     while(true)
                     {
                        if(_loc12_)
                        {
                           continue;
                        }
                        continue loop2;
                     }
                     addr244:
                     var _loc9_:* = 0;
                     if(!_loc11_)
                     {
                        var _loc10_:* = _loc3_.pageIndexes;
                        if(!(_loc11_ && _loc2_))
                        {
                           loop13:
                           while(true)
                           {
                              §§push(§§hasnext(_loc10_,_loc9_));
                              addr341:
                              addr343:
                              while(§§pop())
                              {
                                 _loc4_ = §§nextvalue(_loc9_,_loc10_);
                                 if(_loc12_ || §`!r§)
                                 {
                                    §§push(1);
                                    if(_loc12_ || _loc3_)
                                    {
                                       _loc6_ = §§pop();
                                       while(true)
                                       {
                                          addr271:
                                          addr292:
                                          while(true)
                                          {
                                             addr326:
                                             while(true)
                                             {
                                                §§push(_loc6_);
                                             }
                                          }
                                          if(_loc11_ && _loc3_)
                                          {
                                             continue;
                                          }
                                          _loc6_++;
                                          if(_loc11_ && §`!r§)
                                          {
                                             continue loop13;
                                          }
                                          while(true)
                                          {
                                             if(false)
                                             {
                                                §§goto(addr271);
                                             }
                                             §§goto(addr326);
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       if(§§pop() > _loc3_.levelsPerPage)
                                       {
                                          continue loop13;
                                       }
                                       §§push(§'!J§);
                                       §§push(_loc4_ + "-");
                                       if(_loc12_ || _loc3_)
                                       {
                                          §§push(§§pop() + _loc6_);
                                       }
                                       §§pop()[§§pop()] = _loc3_.name;
                                       if(_loc11_)
                                       {
                                          continue loop13;
                                       }
                                       §§goto(addr292);
                                       §§goto(addr326);
                                    }
                                 }
                                 continue loop13;
                              }
                              addr343:
                              continue loop0;
                           }
                        }
                        §§goto(addr269);
                     }
                     §§goto(addr343);
                  }
                  if(!(_loc12_ || _loc2_))
                  {
                     continue;
                  }
                  while(true)
                  {
                     _loc3_.levelButtons = _loc2_.levelButtons;
                     if(_loc11_)
                     {
                        continue loop0;
                     }
                     _loc3_.writtenName = _loc2_.writtenName;
                     if(!(_loc11_ && _loc3_))
                     {
                        if(false)
                        {
                           continue;
                        }
                        if(_loc2_.cutscenes)
                        {
                           if(!_loc11_)
                           {
                              §§push(0);
                              if(_loc12_ || §`!r§)
                              {
                                 _loc9_ = §§pop();
                                 if(_loc12_)
                                 {
                                    _loc10_ = _loc2_.cutscenes;
                                    if(_loc12_ || param1)
                                    {
                                       loop6:
                                       while(true)
                                       {
                                          §§push(§§hasnext(_loc10_,_loc9_));
                                          if(!_loc11_)
                                          {
                                             if(!§§pop())
                                             {
                                                if(!(_loc11_ && §`!r§))
                                                {
                                                   if(_loc12_)
                                                   {
                                                      if(!(_loc11_ && param1))
                                                      {
                                                         §§goto(addr234);
                                                      }
                                                      §§goto(addr244);
                                                   }
                                                }
                                                §§goto(addr343);
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
                                                   _loc3_.§""?§(_loc5_,_loc2_.cutscenes[_loc5_]);
                                                   continue loop6;
                                                }
                                             }
                                          }
                                          break;
                                       }
                                       §§goto(addr341);
                                    }
                                    §§goto(addr205);
                                 }
                                 §§goto(addr343);
                              }
                           }
                           §§goto(addr244);
                        }
                     }
                     §§goto(addr234);
                  }
               }
            }
            §§goto(addr121);
         }
      }
      
      public static function §use§() : void
      {
      }
      
      public static function §6!8§(param1:String) : §3!l§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§3!l§ = null;
         var _loc3_:int = 0;
         for each(_loc2_ in §3M§)
         {
            if(_loc6_ || _loc3_)
            {
               if(_loc2_.§,e§(param1))
               {
                  if(!(_loc5_ && §`!r§))
                  {
                     return _loc2_;
                  }
               }
            }
         }
         return null;
      }
      
      public static function §-q§(param1:String) : int
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§3!l§ = null;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(!_loc5_)
            {
               if(§§pop() >= §3M§.length)
               {
                  break;
               }
               _loc3_ = §3M§[_loc2_];
               if(_loc4_ || §`!r§)
               {
                  if(!_loc3_.§,e§(param1))
                  {
                     continue;
                  }
                  if(!(_loc4_ || _loc2_))
                  {
                     continue;
                  }
               }
               return _loc2_;
            }
            break;
         }
         return §§pop();
      }
      
      public static function §]-§(param1:int) : §3!l§
      {
         return §3M§[param1];
      }
      
      public static function § !6§(param1:String) : §3!l§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§3!l§ = null;
         for each(_loc2_ in §3M§)
         {
            if(_loc5_)
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
      
      public static function §1!o§() : int
      {
         return §3M§.length;
      }
      
      public static function getLevelForId(param1:String) : §'!e§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(§?!§);
            if(!_loc2_)
            {
               §§push(param1);
               if(_loc3_)
               {
                  if(!§§pop()[§§pop()])
                  {
                     if(!_loc2_)
                     {
                        §§push(§'!J§);
                        if(_loc3_ || param1)
                        {
                           addr52:
                           §§push(param1);
                           if(_loc3_ || _loc3_)
                           {
                              if(§§pop()[§§pop()] == null)
                              {
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    throw new Error("Error! Level \'" + param1 + "\' does not exist.");
                                    addr70:
                                 }
                                 else
                                 {
                                    addr88:
                                    §§push(§?!§);
                                 }
                              }
                              §§goto(addr88);
                           }
                           §§goto(addr90);
                        }
                        addr90:
                        return §§pop()[§§pop()];
                        §§push(param1);
                     }
                     §§goto(addr70);
                  }
                  §§goto(addr88);
               }
               §§goto(addr90);
            }
            §§goto(addr52);
         }
         §§goto(addr70);
      }
      
      public static function §%"9§(param1:String, param2:§'!e§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && §`!r§))
         {
            §?!§[param1] = param2;
         }
      }
      
      public static function §%!g§(param1:String, param2:int) : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[3] = null;
            addr50:
            while(true)
            {
               addr34:
               while(true)
               {
                  §§push(§§newactivation());
                  continue loop0;
               }
            }
         }
      }
      
      public static function §0&§(param1:String) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!§'!J§[param1])
            {
               if(_loc3_)
               {
                  addr35:
                  §§push(§2!l§);
                  if(_loc3_ || param1)
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
      
      public static function loadLevel(param1:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:§3!l§ = null;
         if(_loc5_)
         {
            if(param1 != §0B§)
            {
               if(_loc5_ || param1)
               {
                  §§push(§-q§(param1));
                  loop0:
                  while(true)
                  {
                     §§push(int(§§pop()));
                     while(true)
                     {
                        _loc2_ = §§pop();
                        loop2:
                        while(true)
                        {
                           §§push(_loc2_);
                           if(_loc4_)
                           {
                              break;
                           }
                           if(!_loc5_)
                           {
                              continue loop0;
                           }
                           if(§§pop() >= 0)
                           {
                              if(_loc5_)
                              {
                                 §^0§ = _loc2_;
                                 loop3:
                                 while(true)
                                 {
                                    loop4:
                                    while(true)
                                    {
                                       §;!8§ = §0B§;
                                       if(!(_loc5_ || §`!r§))
                                       {
                                          break;
                                       }
                                       if(!_loc4_)
                                       {
                                          if(!_loc4_)
                                          {
                                             §0B§ = param1;
                                             if(!(_loc4_ && _loc2_))
                                             {
                                                while(true)
                                                {
                                                   if(true)
                                                   {
                                                      _loc3_ = §%"8§();
                                                      if(_loc5_ || _loc3_)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            if(_loc5_ || _loc3_)
                                                            {
                                                               _loc3_.§?"8§ = _loc3_.§#"<§(param1);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   continue loop4;
                                                }
                                                addr36:
                                             }
                                             break;
                                          }
                                          continue loop2;
                                       }
                                       continue loop3;
                                    }
                                    §§goto(addr143);
                                 }
                              }
                           }
                           else
                           {
                              §;!8§ = §0B§;
                              if(_loc4_ && param1)
                              {
                              }
                           }
                           §§goto(addr143);
                        }
                     }
                  }
               }
               §0B§ = null;
            }
            addr143:
            return;
         }
         §§goto(addr36);
      }
      
      public static function §#_§() : String
      {
         return §0B§.substring(5);
      }
      
      public static function §%"8§() : §3!l§
      {
         return §3M§[§^0§];
      }
      
      public static function §>-§() : Boolean
      {
         return true;
      }
      
      public static function §,!9§() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§8E§());
         if(_loc3_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(§%"8§().§#!F§(§0B§ + "-OUTRO"));
         if(!(_loc4_ && §`!r§))
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
               if(§§pop())
               {
                  continue;
               }
               if(_loc4_ && _loc2_)
               {
                  while(true)
                  {
                     continue loop0;
                     addr68:
                     if(!_loc4_)
                     {
                        §2M§.§]!e§(_loc2_);
                     }
                     if(!(_loc4_ && §`!r§))
                     {
                        addr40:
                        §§push(true);
                        if(_loc3_)
                        {
                           return §§pop();
                        }
                        addr101:
                        return §§pop();
                     }
                  }
               }
            }
         }
         §§goto(addr101);
         §§push(false);
      }
      
      public static function §8E§() : String
      {
         return §%"8§().§8E§(§0B§);
      }
   }
}
