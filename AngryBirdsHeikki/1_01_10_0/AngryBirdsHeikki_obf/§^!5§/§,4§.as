package §^!5§
{
   import §7Z§.§5!>§;
   
   public class §,4§
   {
      
      public static const §9!&§:String = "1-1";
      
      protected static var §&!I§:Array = null;
      
      protected static var § A§:Array;
      
      protected static var §49§:Array;
      
      public static var §0!$§:String = null;
      
      public static var §<A§:String = null;
      
      public static var §58§:Boolean;
      
      public static var §>j§:int = 0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §9!&§ = "1-1";
            loop0:
            while(true)
            {
               §&!I§ = null;
               addr99:
               while(true)
               {
                  § A§ = [];
                  continue loop0;
               }
            }
         }
         §§goto(addr41);
      }
      
      public function §,4§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function § ,§(param1:Object) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc2_:Object = null;
         var _loc3_:§0M§ = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:* = 0;
         if(_loc11_)
         {
            §&!I§ = new Array();
         }
         loop0:
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §0M§();
            if(!(_loc12_ && _loc3_))
            {
               _loc3_.levelsPerPage = _loc2_.levelsPerPage;
               while(true)
               {
                  _loc3_.name = _loc2_.name;
                  loop2:
                  while(true)
                  {
                     _loc3_.menuImage = _loc2_.menuImage;
                     if(!(_loc11_ || param1))
                     {
                        continue loop0;
                     }
                     _loc3_.§4!8§ = _loc2_.leftCorner;
                     if(_loc12_)
                     {
                        break;
                     }
                     _loc3_.§2N§ = _loc2_.rightCorner;
                     if(_loc11_ || _loc3_)
                     {
                        _loc3_.§1!4§ = _loc2_.pageColors;
                        if(!(_loc12_ && param1))
                        {
                           while(true)
                           {
                              _loc3_.pageIndexes = _loc2_.pageIndexes;
                              if(_loc12_ && §,4§)
                              {
                                 continue loop0;
                              }
                              while(true)
                              {
                                 _loc3_.levelButtons = _loc2_.levelButtons;
                                 if(_loc12_)
                                 {
                                    break;
                                 }
                                 _loc3_.writtenName = _loc2_.writtenName;
                                 if(!_loc12_)
                                 {
                                    continue loop2;
                                 }
                                 addr233:
                                 addr233:
                                 §&!I§.push(_loc3_);
                                 if(!_loc12_)
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                              var _loc9_:* = 0;
                              if(!(_loc12_ && param1))
                              {
                                 var _loc10_:* = _loc3_.pageIndexes;
                                 if(!_loc12_)
                                 {
                                    loop3:
                                    while(true)
                                    {
                                       §§push(§§hasnext(_loc10_,_loc9_));
                                       addr325:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             break loop3;
                                          }
                                          _loc4_ = §§nextvalue(_loc9_,_loc10_);
                                       }
                                    }
                                    addr327:
                                    continue loop0;
                                    addr324:
                                    addr326:
                                 }
                                 while(true)
                                 {
                                    §§push(1);
                                    if(_loc11_)
                                    {
                                       _loc6_ = §§pop();
                                       while(!_loc12_)
                                       {
                                          while(true)
                                          {
                                             addr310:
                                             while(true)
                                             {
                                                §§push(_loc6_);
                                             }
                                          }
                                          if(_loc12_ && _loc2_)
                                          {
                                             continue;
                                          }
                                          if(false)
                                          {
                                             §§goto(addr267);
                                          }
                                          §§goto(addr310);
                                       }
                                       continue;
                                    }
                                    while(§§pop() <= _loc3_.levelsPerPage)
                                    {
                                       §§push(§49§);
                                       §§push(_loc4_ + "-");
                                       if(_loc11_ || _loc3_)
                                       {
                                          §§push(§§pop() + _loc6_);
                                       }
                                       §§pop()[§§pop()] = _loc3_.name;
                                       if(!(_loc12_ && _loc3_))
                                       {
                                          _loc6_++;
                                          if(!_loc11_)
                                          {
                                             break;
                                          }
                                          §§goto(addr258);
                                       }
                                       break;
                                       §§goto(addr310);
                                    }
                                    §§goto(addr324);
                                 }
                              }
                              §§goto(addr327);
                           }
                           addr112:
                        }
                     }
                     §§goto(addr233);
                  }
                  §§push(0);
                  if(_loc11_)
                  {
                     _loc9_ = §§pop();
                     if(_loc11_ || §,4§)
                     {
                        _loc10_ = _loc2_.cutscenes;
                        if(_loc12_ && _loc2_)
                        {
                        }
                        while(true)
                        {
                           §§push(§§hasnext(_loc10_,_loc9_));
                           if(_loc11_)
                           {
                              if(§§pop())
                              {
                                 _loc5_ = §§nextname(_loc9_,_loc10_);
                                 if(_loc11_)
                                 {
                                    _loc3_.§7W§(_loc5_,_loc2_.cutscenes[_loc5_]);
                                 }
                                 continue;
                              }
                              if(!_loc12_)
                              {
                                 if(_loc11_ || _loc3_)
                                 {
                                    if(_loc11_)
                                    {
                                       §§goto(addr233);
                                    }
                                    §§goto(addr238);
                                 }
                                 §§goto(addr327);
                              }
                              §§goto(addr326);
                           }
                           break;
                        }
                        §§goto(addr325);
                     }
                     §§goto(addr327);
                  }
                  §§goto(addr239);
               }
            }
            §§goto(addr112);
         }
      }
      
      public static function §<S§() : void
      {
      }
      
      public static function §5!=§(param1:String) : §0M§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§0M§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = §&!I§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!(_loc6_ || §,4§))
               {
                  break;
               }
               if(_loc2_.§6!^§(param1))
               {
                  if(!(_loc5_ && param1))
                  {
                     break;
                  }
               }
            }
            return null;
         }
         return _loc2_;
      }
      
      public static function §<!f§(param1:String) : int
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§0M§ = null;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(!_loc5_)
            {
               if(§§pop() >= §&!I§.length)
               {
                  break;
               }
               _loc3_ = §&!I§[_loc2_];
               if(_loc4_ || _loc3_)
               {
                  if(!_loc3_.§6!^§(param1))
                  {
                     continue;
                  }
                  if(_loc5_ && §,4§)
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
      
      public static function §5A§(param1:int) : §0M§
      {
         return §&!I§[param1];
      }
      
      public static function §,!8§(param1:String) : §0M§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§0M§ = null;
         for each(_loc2_ in §&!I§)
         {
            if(_loc6_ || §,4§)
            {
               if(_loc2_.name == param1)
               {
                  if(!_loc5_)
                  {
                     return _loc2_;
                  }
               }
            }
         }
         return null;
      }
      
      public static function §#o§() : int
      {
         return §&!I§.length;
      }
      
      public static function §6W§(param1:String) : §&!E§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(§ A§);
            if(!_loc2_)
            {
               §§push(param1);
               if(!(_loc2_ && §,4§))
               {
                  if(!§§pop()[§§pop()])
                  {
                     if(_loc3_ || §,4§)
                     {
                        §§push(§49§);
                        if(_loc3_ || _loc2_)
                        {
                           addr57:
                           §§push(param1);
                           if(!(_loc2_ && _loc2_))
                           {
                              if(§§pop()[§§pop()] == null)
                              {
                                 if(!_loc2_)
                                 {
                                    throw new Error("Error! Level \'" + param1 + "\' does not exist.");
                                    addr70:
                                 }
                                 else
                                 {
                                    addr88:
                                    §§push(§ A§);
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
                  }
                  §§goto(addr88);
               }
               §§goto(addr90);
            }
            §§goto(addr57);
         }
         §§goto(addr70);
      }
      
      public static function §]!+§(param1:String, param2:§&!E§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            § A§[param1] = param2;
         }
      }
      
      public static function §8F§(param1:String, param2:int) : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[3] = null;
            while(true)
            {
               loop2:
               while(true)
               {
                  §§push(§§newactivation());
                  while(true)
                  {
                     §§pop().§§slot[1] = param1;
                     while(true)
                     {
                        §§push(§§newactivation());
                        if(_loc6_)
                        {
                           break;
                        }
                        if(!_loc5_)
                        {
                           continue loop0;
                        }
                        §§pop().§§slot[2] = param2;
                        if(!(_loc5_ || _loc3_))
                        {
                           continue;
                        }
                        if(!(_loc5_ || param2))
                        {
                           break loop2;
                        }
                        if(false)
                        {
                           continue loop2;
                        }
                        try
                        {
                           §§push(§§newactivation());
                           if(!_loc6_)
                           {
                              §§pop().§§slot[3] = §,4§.§6W§(levelId);
                              if(_loc5_ || param2)
                              {
                                 addr85:
                                 §§push(§§newactivation());
                                 if(!(_loc6_ && _loc3_))
                                 {
                                    §§push(§§pop().§§slot[2]);
                                    if(_loc5_)
                                    {
                                       §§push(0);
                                       if(!(_loc6_ && §,4§))
                                       {
                                          if(§§pop() <= §§pop())
                                          {
                                             if(_loc5_)
                                             {
                                                §§push(0);
                                                if(_loc5_)
                                                {
                                                   return §§pop();
                                                }
                                             }
                                             else
                                             {
                                                addr177:
                                                §§push(2);
                                                if(!(_loc6_ && param2))
                                                {
                                                   if(_loc6_ && param2)
                                                   {
                                                      addr216:
                                                      if(§§pop() >= level.§@Y§)
                                                      {
                                                         addr138:
                                                         §§push(§§newactivation());
                                                         if(_loc5_ || _loc3_)
                                                         {
                                                            addr148:
                                                            §§push(§§pop().§§slot[2]);
                                                            §§push(§§newactivation());
                                                            if(!(_loc6_ && _loc3_))
                                                            {
                                                               §§push(§§pop().§§slot[3]);
                                                               if(!_loc6_)
                                                               {
                                                                  §§push(§§pop().§=!F§);
                                                                  if(!_loc6_)
                                                                  {
                                                                     if(§§pop() < §§pop())
                                                                     {
                                                                        if(!(_loc6_ && _loc3_))
                                                                        {
                                                                           if(!(_loc6_ && param1))
                                                                           {
                                                                              §§goto(addr177);
                                                                           }
                                                                           addr218:
                                                                           return 1;
                                                                           addr217:
                                                                        }
                                                                        if(_loc5_ || param2)
                                                                        {
                                                                        }
                                                                        addr219:
                                                                        §§goto(addr138);
                                                                     }
                                                                     §§push(3);
                                                                     if(_loc5_)
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           §§goto(addr148);
                                                                        }
                                                                        return §§pop();
                                                                     }
                                                                     §§goto(addr177);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr216);
                                                         }
                                                         addr212:
                                                         §§goto(addr216);
                                                         §§push(§§pop().§§slot[2]);
                                                      }
                                                      §§goto(addr217);
                                                   }
                                                   return §§pop();
                                                }
                                             }
                                             §§goto(addr218);
                                          }
                                          else
                                          {
                                             §§goto(addr212);
                                             §§push(§§newactivation());
                                          }
                                          §§goto(addr212);
                                       }
                                       §§goto(addr216);
                                    }
                                    §§goto(addr148);
                                 }
                                 §§goto(addr212);
                              }
                              §§goto(addr219);
                           }
                        }
                        catch(e:Error)
                        {
                           §§goto(addr85);
                        }
                        §§goto(addr148);
                     }
                  }
               }
            }
         }
      }
      
      public static function §`Y§(param1:String) : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!§49§[param1])
            {
               if(!(_loc3_ && _loc3_))
               {
                  §§push(§9!&§);
                  if(!(_loc3_ && §,4§))
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
      
      public static function §&O§(param1:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:§0M§ = null;
         if(!(_loc4_ && param1))
         {
            if(param1 != §0!$§)
            {
               if(!(_loc4_ && _loc3_))
               {
                  §§push(§<!f§(param1));
                  loop0:
                  while(true)
                  {
                     §§push(int(§§pop()));
                     loop1:
                     while(true)
                     {
                        _loc2_ = §§pop();
                        while(true)
                        {
                           §§push(_loc2_);
                           if(_loc5_)
                           {
                              if(_loc5_)
                              {
                                 if(§§pop() < 0)
                                 {
                                    §<A§ = §0!$§;
                                    if(_loc4_ && _loc2_)
                                    {
                                    }
                                    break;
                                 }
                                 if(!(_loc4_ && param1))
                                 {
                                    if(!(_loc5_ || param1))
                                    {
                                       continue;
                                    }
                                    §>j§ = _loc2_;
                                    addr45:
                                    §<A§ = §0!$§;
                                    if(!_loc4_)
                                    {
                                       §0!$§ = param1;
                                       if(_loc5_)
                                       {
                                          if(_loc5_ || _loc3_)
                                          {
                                             if(false)
                                             {
                                                §§goto(addr45);
                                             }
                                             _loc3_ = §?!>§();
                                             if(_loc5_)
                                             {
                                                if(_loc3_)
                                                {
                                                   if(_loc5_ || _loc3_)
                                                   {
                                                      _loc3_.§2l§ = _loc3_.§3c§(param1);
                                                   }
                                                }
                                             }
                                             break;
                                          }
                                          §§goto(addr45);
                                       }
                                       break;
                                    }
                                    addr87:
                                    §§goto(addr87);
                                 }
                                 §0!$§ = null;
                                 break;
                              }
                              continue loop0;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
      }
      
      public static function §>$§() : String
      {
         return §0!$§.substring(5);
      }
      
      public static function §?!>§() : §0M§
      {
         return §&!I§[§>j§];
      }
      
      public static function §%e§() : Boolean
      {
         return true;
      }
      
      public static function §;l§() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§;!4§());
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(§?!>§().§4V§(§0!$§ + "-OUTRO"));
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && _loc1_))
         {
            §§push(_loc2_);
            while(true)
            {
               if(§§pop())
               {
                  continue;
               }
               if(!_loc3_)
               {
                  addr102:
                  return false;
               }
            }
         }
         §§goto(addr103);
      }
      
      public static function §;!4§() : String
      {
         return §?!>§().§;!4§(§0!$§);
      }
   }
}
