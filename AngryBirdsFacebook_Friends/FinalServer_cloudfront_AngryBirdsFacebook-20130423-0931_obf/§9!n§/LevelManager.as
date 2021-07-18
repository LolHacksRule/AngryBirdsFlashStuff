package §9!n§
{
   import §4;§.§=!^§;
   
   public class LevelManager
   {
      
      public static const §1!c§:String = "1-1";
      
      protected static var §0"4§:Array = null;
      
      protected static var §#n§:Array;
      
      protected static var §@!w§:Array;
      
      public static var § T§:String = null;
      
      public static var §&"V§:String = null;
      
      public static var §50§:Boolean;
      
      public static var §,m§:int = 0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §1!c§ = "1-1";
         }
         while(true)
         {
            §0"4§ = null;
            loop1:
            while(true)
            {
               §#n§ = [];
               loop2:
               while(true)
               {
                  §@!w§ = [];
                  while(true)
                  {
                     § T§ = null;
                     while(!_loc2_)
                     {
                        continue loop2;
                        §&"V§ = null;
                        do
                        {
                           §,m§ = 0;
                        }
                        while(_loc2_ && _loc2_);
                        
                        if(!_loc2_)
                        {
                           continue loop1;
                        }
                     }
                  }
               }
            }
            if(_loc1_ || LevelManager)
            {
               return;
            }
         }
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
      
      public static function §@@§(param1:Object) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc2_:Object = null;
         var _loc3_:§3-§ = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:* = 0;
         if(!_loc11_)
         {
            §0"4§ = new Array();
         }
         loop0:
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §3-§();
            if(_loc11_)
            {
               continue;
            }
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            loop1:
            while(true)
            {
               _loc3_.name = _loc2_.name;
               loop2:
               while(true)
               {
                  _loc3_.menuImage = _loc2_.menuImage;
                  while(true)
                  {
                     _loc3_.§#">§ = _loc2_.leftCorner;
                     addr131:
                     addr103:
                     while(true)
                     {
                        _loc3_.§2A§ = _loc2_.rightCorner;
                        continue loop2;
                     }
                     loop6:
                     while(!(_loc11_ && param1))
                     {
                        if(!_loc12_)
                        {
                           continue loop1;
                        }
                        _loc3_.pageIndexes = _loc2_.pageIndexes;
                        loop7:
                        while(!_loc11_)
                        {
                           while(true)
                           {
                              _loc3_.levelButtons = _loc2_.levelButtons;
                              if(_loc11_ && _loc3_)
                              {
                                 break;
                              }
                              if(!_loc11_)
                              {
                                 _loc3_.writtenName = _loc2_.writtenName;
                                 if(!(_loc11_ && _loc2_))
                                 {
                                    if(_loc11_)
                                    {
                                       continue loop7;
                                    }
                                    if(!_loc12_)
                                    {
                                       continue loop6;
                                    }
                                    if(false)
                                    {
                                       continue;
                                    }
                                    if(_loc2_.cutscenes)
                                    {
                                       if(_loc12_ || _loc2_)
                                       {
                                          break;
                                       }
                                    }
                                 }
                                 addr224:
                                 §0"4§.push(_loc3_);
                                 if(!_loc11_)
                                 {
                                    addr230:
                                    var _loc9_:* = 0;
                                    addr229:
                                    if(_loc12_)
                                    {
                                       addr233:
                                       var _loc10_:* = _loc3_.pageIndexes;
                                       if(_loc11_)
                                       {
                                       }
                                       addr310:
                                       for each(_loc4_ in _loc10_)
                                       {
                                          §§push(1);
                                          if(!_loc11_)
                                          {
                                             _loc6_ = §§pop();
                                             addr306:
                                             §§push(_loc6_);
                                             addr253:
                                             addr297:
                                          }
                                          if(§§pop() > _loc3_.levelsPerPage)
                                          {
                                             §§goto(addr310);
                                          }
                                          §§push(§@!w§);
                                          §§push(_loc4_ + "-");
                                          if(_loc12_)
                                          {
                                             §§push(§§pop() + _loc6_);
                                          }
                                          §§pop()[§§pop()] = _loc3_.name;
                                          addr267:
                                          addr305:
                                          if(_loc12_ || param1)
                                          {
                                             if(!(_loc11_ && _loc2_))
                                             {
                                                _loc6_++;
                                                if(!_loc11_)
                                                {
                                                   if(!(_loc11_ && _loc3_))
                                                   {
                                                      if(false)
                                                      {
                                                         §§goto(addr253);
                                                      }
                                                      §§goto(addr306);
                                                   }
                                                   §§goto(addr267);
                                                }
                                                §§goto(addr310);
                                             }
                                             §§goto(addr305);
                                          }
                                          §§goto(addr297);
                                       }
                                       addr312:
                                    }
                                 }
                                 continue loop0;
                              }
                              continue loop2;
                           }
                           §§push(0);
                           if(!_loc11_)
                           {
                              _loc9_ = §§pop();
                              if(!(_loc11_ && _loc3_))
                              {
                                 _loc10_ = _loc2_.cutscenes;
                                 if(_loc11_)
                                 {
                                 }
                                 addr202:
                                 §§push(§§hasnext(_loc10_,_loc9_));
                                 if(_loc12_ || LevelManager)
                                 {
                                    if(§§pop())
                                    {
                                       _loc5_ = §§nextname(_loc9_,_loc10_);
                                       if(_loc12_)
                                       {
                                          _loc3_.§=""§(_loc5_,_loc2_.cutscenes[_loc5_]);
                                       }
                                       §§goto(addr202);
                                    }
                                    if(_loc12_)
                                    {
                                       if(_loc12_ || _loc2_)
                                       {
                                          if(_loc12_)
                                          {
                                             §§goto(addr224);
                                          }
                                       }
                                       §§goto(addr229);
                                    }
                                    §§goto(addr312);
                                 }
                                 §§goto(addr310);
                              }
                              §§goto(addr233);
                           }
                           §§goto(addr230);
                        }
                        §§goto(addr131);
                     }
                  }
               }
            }
         }
      }
      
      public static function §2!0§() : void
      {
      }
      
      public static function §5!T§(param1:String) : §3-§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§3-§ = null;
         for each(_loc2_ in §0"4§)
         {
            if(_loc6_)
            {
               if(_loc2_.§6_§(param1))
               {
                  if(_loc6_)
                  {
                     return _loc2_;
                  }
               }
            }
         }
         return null;
      }
      
      public static function §2p§(param1:String) : int
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§3-§ = null;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(_loc5_)
            {
               break;
            }
            if(§§pop() >= §0"4§.length)
            {
               break;
            }
            _loc3_ = §0"4§[_loc2_];
            if(_loc4_)
            {
               if(_loc3_.§6_§(param1))
               {
                  if(_loc4_ || param1)
                  {
                     return _loc2_;
                  }
               }
            }
            _loc2_++;
         }
         return §§pop();
      }
      
      public static function §1!m§(param1:int) : §3-§
      {
         return §0"4§[param1];
      }
      
      public static function §2R§(param1:String) : §3-§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§3-§ = null;
         for each(_loc2_ in §0"4§)
         {
            if(!(_loc5_ && LevelManager))
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
      
      public static function §0"5§() : int
      {
         return §0"4§.length;
      }
      
      public static function § "§(param1:String) : §0"T§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(§#n§);
            if(!_loc3_)
            {
               §§push(param1);
               if(!(_loc3_ && LevelManager))
               {
                  if(!§§pop()[§§pop()])
                  {
                     if(_loc2_)
                     {
                        §§push(§@!w§);
                        if(!(_loc3_ && param1))
                        {
                           §§push(param1);
                           if(_loc2_ || _loc2_)
                           {
                              addr69:
                              if(§§pop()[§§pop()] == null)
                              {
                                 if(!_loc3_)
                                 {
                                    §§goto(addr74);
                                 }
                                 else
                                 {
                                    addr82:
                                    §§push(§#n§);
                                    §§push(param1);
                                 }
                              }
                              §§goto(addr82);
                           }
                           return §§pop()[§§pop()];
                        }
                        §§goto(addr82);
                     }
                     addr74:
                     throw new Error("Error! Level \'" + param1 + "\' does not exist.");
                  }
                  §§goto(addr82);
               }
               §§goto(addr69);
            }
         }
         §§goto(addr82);
      }
      
      public static function §4M§(param1:String, param2:§0"T§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || LevelManager)
         {
            §#n§[param1] = param2;
         }
      }
      
      public static function §=S§(param1:String, param2:int) : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[3] = null;
            addr55:
            while(true)
            {
               addr37:
               while(true)
               {
                  §§push(§§newactivation());
                  continue loop0;
               }
               try
               {
                  addr56:
                  §§push(§§newactivation());
                  if(_loc6_ || LevelManager)
                  {
                     §§pop().§§slot[3] = LevelManager.§ "§(levelId);
                     if(_loc6_ || LevelManager)
                     {
                        addr91:
                        §§push(§§newactivation());
                        if(_loc6_ || param1)
                        {
                           §§push(§§pop().§§slot[2]);
                           if(!_loc5_)
                           {
                              §§push(0);
                              if(!(_loc5_ && param1))
                              {
                                 if(§§pop() <= §§pop())
                                 {
                                    if(!(_loc5_ && param2))
                                    {
                                       §§push(0);
                                       if(_loc6_)
                                       {
                                          return §§pop();
                                       }
                                    }
                                    else
                                    {
                                       addr220:
                                       §§push(§§newactivation());
                                       if(!(_loc5_ && LevelManager))
                                       {
                                          addr156:
                                          §§push(§§pop().§§slot[2]);
                                          if(_loc6_)
                                          {
                                             if(_loc6_ || param2)
                                             {
                                                addr215:
                                                §§push(§§newactivation());
                                                if(_loc6_)
                                                {
                                                   §§push(§§pop().§§slot[3]);
                                                   if(_loc6_)
                                                   {
                                                      §§push(§§pop().§8"G§);
                                                      if(_loc6_)
                                                      {
                                                         if(§§pop() < §§pop())
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               if(!(_loc6_ || LevelManager))
                                                               {
                                                                  §§goto(addr220);
                                                               }
                                                               if(_loc6_ || param2)
                                                               {
                                                                  addr135:
                                                                  §§push(3);
                                                                  if(!(_loc5_ && param1))
                                                                  {
                                                                     return §§pop();
                                                                  }
                                                                  §§goto(addr179);
                                                               }
                                                               addr219:
                                                               return 1;
                                                               addr218:
                                                            }
                                                            addr179:
                                                            return §§pop();
                                                            §§push(2);
                                                         }
                                                         §§goto(addr135);
                                                      }
                                                      addr217:
                                                      if(§§pop() >= §§pop())
                                                      {
                                                         §§goto(addr220);
                                                      }
                                                      §§goto(addr218);
                                                   }
                                                   addr216:
                                                   §§goto(addr217);
                                                   §§push(§§pop().§;!?§);
                                                }
                                                §§goto(addr216);
                                                §§push(§§pop().§§slot[3]);
                                             }
                                             §§goto(addr219);
                                          }
                                          §§goto(addr179);
                                       }
                                       addr206:
                                       §§push(§§pop().§§slot[2]);
                                       if(!(_loc5_ && LevelManager))
                                       {
                                          addr214:
                                          §§goto(addr215);
                                          §§push(§§newactivation());
                                       }
                                    }
                                    §§goto(addr219);
                                 }
                                 else
                                 {
                                    §§push(§§newactivation());
                                 }
                                 §§goto(addr206);
                              }
                              §§goto(addr217);
                           }
                           §§goto(addr214);
                        }
                        §§goto(addr156);
                     }
                     §§goto(addr219);
                  }
               }
               catch(e:Error)
               {
                  addr78:
                  §§goto(addr91);
               }
               §§goto(addr156);
            }
         }
      }
      
      public static function §["S§(param1:String) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!§@!w§[param1])
            {
               if(_loc3_)
               {
                  addr35:
                  §§push(§1!c§);
                  if(_loc3_ || LevelManager)
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
            §§goto(addr44);
         }
         §§goto(addr35);
      }
      
      public static function §,!m§(param1:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:§3-§ = null;
         if(!(_loc4_ && _loc2_))
         {
            if(param1 != § T§)
            {
               if(_loc5_ || param1)
               {
                  §§push(§2p§(param1));
                  if(!_loc4_)
                  {
                     §§push(int(§§pop()));
                  }
                  loop0:
                  while(true)
                  {
                     _loc2_ = §§pop();
                     if(!_loc5_)
                     {
                        break;
                     }
                     addr103:
                     while(true)
                     {
                        §§push(_loc2_);
                        if(_loc4_)
                        {
                           continue loop0;
                        }
                        if(§§pop() < 0)
                        {
                           §&"V§ = § T§;
                           if(!(_loc4_ && param1))
                           {
                              addr145:
                              § T§ = null;
                              break loop0;
                           }
                           break loop0;
                        }
                        loop2:
                        while(true)
                        {
                           §,m§ = _loc2_;
                           loop3:
                           while(true)
                           {
                              addr45:
                              while(true)
                              {
                                 §&"V§ = § T§;
                                 if(!(_loc5_ || _loc3_))
                                 {
                                    break loop3;
                                 }
                                 if(_loc4_ && LevelManager)
                                 {
                                    break;
                                 }
                                 § T§ = param1;
                                 if(!_loc5_)
                                 {
                                    break loop0;
                                 }
                                 continue loop2;
                              }
                           }
                        }
                        §§goto(addr145);
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr103);
      }
      
      public static function §%!-§() : String
      {
         return § T§.substring(5);
      }
      
      public static function §`"Q§() : §3-§
      {
         return §0"4§[§,m§];
      }
      
      public static function § try§() : Boolean
      {
         return true;
      }
      
      public static function §%!8§() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§8t§());
         if(!_loc3_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(§`"Q§().§"!X§(§ T§ + "-OUTRO"));
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            §§push(_loc2_);
            loop0:
            while(§§pop())
            {
               loop1:
               while(true)
               {
                  §§push(_loc1_);
                  if(_loc4_ || _loc1_)
                  {
                     if(§§pop() == null)
                     {
                        if(!_loc3_)
                        {
                           if(!_loc3_)
                           {
                              if(_loc3_ && _loc3_)
                              {
                                 break loop0;
                              }
                              §=!^§.§=u§(_loc2_);
                           }
                           else
                           {
                              while(true)
                              {
                                 continue loop1;
                              }
                              addr98:
                           }
                        }
                        break;
                     }
                     break;
                  }
                  continue loop0;
               }
               §§push(true);
               if(_loc4_ || LevelManager)
               {
                  return §§pop();
               }
               §§goto(addr97);
            }
            addr97:
            return §§pop();
            §§push(false);
         }
         §§goto(addr98);
      }
      
      public static function §8t§() : String
      {
         return §`"Q§().§8t§(§ T§);
      }
   }
}
