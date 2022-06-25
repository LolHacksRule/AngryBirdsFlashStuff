package §_-Ga§
{
   import §_-n§.§_-II§;
   
   public class LevelManager
   {
      
      public static const §_-1q§:String = "1-1";
      
      protected static var §_-Wg§:Array = null;
      
      protected static var §_-01N§:Array;
      
      protected static var §_-iI§:Array;
      
      public static var §_-HM§:String = null;
      
      public static var §_-4w§:String = null;
      
      public static var §_-PY§:Boolean;
      
      public static var §_-07s§:int = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §_-1q§ = "1-1";
            while(true)
            {
               §_-Wg§ = null;
               loop1:
               while(_loc2_ || _loc2_)
               {
                  §_-01N§ = [];
                  while(true)
                  {
                     §_-iI§ = [];
                     loop3:
                     while(!(_loc1_ && _loc2_))
                     {
                        while(true)
                        {
                           §_-HM§ = null;
                           do
                           {
                              §_-4w§ = null;
                              do
                              {
                                 §_-07s§ = 0;
                              }
                              while(_loc1_ && _loc2_);
                              
                           }
                           while(_loc1_ && LevelManager);
                           
                           if(!_loc1_)
                           {
                              if(_loc2_)
                              {
                                 break;
                              }
                              continue loop1;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr93);
      }
      
      public function LevelManager()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
      }
      
      public static function §_-Vk§(param1:Object) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc2_:Object = null;
         var _loc3_:§_-0C5§ = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:* = 0;
         if(!_loc11_)
         {
            §_-Wg§ = new Array();
         }
         loop0:
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §_-0C5§();
            if(_loc12_ || _loc3_)
            {
               _loc3_.levelsPerPage = _loc2_.levelsPerPage;
               if(!_loc11_)
               {
                  _loc3_.name = _loc2_.name;
                  if(!(_loc11_ && _loc3_))
                  {
                     _loc3_.menuImage = _loc2_.menuImage;
                     loop1:
                     while(true)
                     {
                        _loc3_.§_-Rx§ = _loc2_.leftCorner;
                        if(_loc12_ || _loc2_)
                        {
                           _loc3_.§_-dx§ = _loc2_.rightCorner;
                           loop2:
                           while(true)
                           {
                              _loc3_.§_-rc§ = _loc2_.pageColors;
                              if(!(_loc11_ && _loc3_))
                              {
                                 _loc3_.pageIndexes = _loc2_.pageIndexes;
                                 if(!_loc12_)
                                 {
                                    break;
                                 }
                                 loop3:
                                 while(true)
                                 {
                                    _loc3_.levelButtons = _loc2_.levelButtons;
                                    loop4:
                                    while(true)
                                    {
                                       _loc3_.writtenName = _loc2_.writtenName;
                                       if(!_loc12_)
                                       {
                                          break;
                                       }
                                       if(!(_loc11_ && LevelManager))
                                       {
                                          if(!_loc12_)
                                          {
                                             break loop3;
                                          }
                                          if(_loc12_)
                                          {
                                             while(true)
                                             {
                                                if(false)
                                                {
                                                   continue loop3;
                                                }
                                                if(!_loc2_.cutscenes)
                                                {
                                                   break;
                                                }
                                                if(!_loc11_)
                                                {
                                                   break loop4;
                                                }
                                                continue loop0;
                                             }
                                             addr229:
                                             §_-Wg§.push(_loc3_);
                                             if(_loc12_)
                                             {
                                                break loop2;
                                             }
                                             continue loop0;
                                             addr80:
                                          }
                                          continue loop1;
                                       }
                                    }
                                    addr169:
                                    §§push(0);
                                    addr235:
                                    if(!_loc11_)
                                    {
                                       var _loc9_:* = §§pop();
                                       if(_loc12_)
                                       {
                                          var _loc10_:* = _loc2_.cutscenes;
                                          if(_loc12_ || _loc2_)
                                          {
                                             loop12:
                                             while(true)
                                             {
                                                §§push(§§hasnext(_loc10_,_loc9_));
                                                if(_loc12_ || LevelManager)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      if(!_loc11_)
                                                      {
                                                         if(_loc12_ || _loc2_)
                                                         {
                                                            if(!_loc12_)
                                                            {
                                                               continue loop0;
                                                            }
                                                            §§goto(addr229);
                                                         }
                                                         addr243:
                                                         _loc10_ = _loc3_.pageIndexes;
                                                         addr320:
                                                         if(_loc11_ && LevelManager)
                                                         {
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(§§hasnext(_loc10_,_loc9_));
                                                            break loop12;
                                                         }
                                                         addr320:
                                                      }
                                                      addr323:
                                                      continue loop0;
                                                      addr322:
                                                   }
                                                   _loc5_ = §§nextname(_loc9_,_loc10_);
                                                   if(!(_loc12_ || _loc3_))
                                                   {
                                                      continue;
                                                   }
                                                   while(true)
                                                   {
                                                      _loc3_.§_-0E8§(_loc5_,_loc2_.cutscenes[_loc5_]);
                                                      continue loop12;
                                                   }
                                                }
                                                break;
                                             }
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   _loc4_ = §§nextvalue(_loc9_,_loc10_);
                                                   while(true)
                                                   {
                                                      §§push(1);
                                                      if(!_loc11_)
                                                      {
                                                         _loc6_ = §§pop();
                                                         loop7:
                                                         while(true)
                                                         {
                                                            addr270:
                                                            addr284:
                                                            while(true)
                                                            {
                                                               addr316:
                                                               while(true)
                                                               {
                                                                  §§push(_loc6_);
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               if(_loc11_ && _loc2_)
                                                               {
                                                                  continue loop7;
                                                               }
                                                               _loc6_++;
                                                               if(!_loc11_)
                                                               {
                                                                  continue;
                                                               }
                                                               §§goto(addr320);
                                                            }
                                                            §§goto(addr270);
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         if(§§pop() <= _loc3_.levelsPerPage)
                                                         {
                                                            §§push(§_-iI§);
                                                            §§push(_loc4_ + "-");
                                                            if(!_loc11_)
                                                            {
                                                               §§push(§§pop() + _loc6_);
                                                            }
                                                            §§pop()[§§pop()] = _loc3_.name;
                                                            §§goto(addr284);
                                                         }
                                                         §§goto(addr320);
                                                         §§goto(addr316);
                                                      }
                                                   }
                                                }
                                                §§goto(addr322);
                                             }
                                          }
                                          §§goto(addr200);
                                       }
                                       §§goto(addr243);
                                    }
                                    _loc9_ = §§pop();
                                    if(!(_loc11_ && LevelManager))
                                    {
                                       §§goto(addr243);
                                    }
                                    §§goto(addr323);
                                 }
                                 continue;
                              }
                              continue loop0;
                           }
                        }
                        §§goto(addr169);
                     }
                  }
                  §§goto(addr235);
                  §§push(0);
               }
               §§goto(addr169);
            }
            §§goto(addr80);
         }
      }
      
      public static function §_-Ks§() : void
      {
      }
      
      public static function §_-N9§(param1:String) : §_-0C5§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§_-0C5§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = §_-Wg§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!(_loc5_ || LevelManager))
               {
                  break;
               }
               if(_loc2_.§_-PP§(param1))
               {
                  if(!(_loc6_ && _loc3_))
                  {
                     break;
                  }
               }
            }
            return null;
         }
         return _loc2_;
      }
      
      public static function §_-p0§(param1:String) : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§_-0C5§ = null;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(_loc4_)
            {
               break;
            }
            if(§§pop() >= §_-Wg§.length)
            {
               break;
            }
            _loc3_ = §_-Wg§[_loc2_];
            if(_loc5_ || LevelManager)
            {
               if(_loc3_.§_-PP§(param1))
               {
                  if(_loc5_ || _loc2_)
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
      
      public static function §_-h8§(param1:int) : §_-0C5§
      {
         return §_-Wg§[param1];
      }
      
      public static function §_-04H§(param1:String) : §_-0C5§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§_-0C5§ = null;
         for each(_loc2_ in §_-Wg§)
         {
            if(_loc6_)
            {
               if(_loc2_.name == param1)
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
      
      public static function §_-td§() : int
      {
         return §_-Wg§.length;
      }
      
      public static function §_-U0§(param1:String) : §_-bm§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(§_-01N§);
            if(_loc2_ || _loc2_)
            {
               §§push(param1);
               if(_loc2_ || param1)
               {
                  if(!§§pop()[§§pop()])
                  {
                     if(!_loc3_)
                     {
                        §§push(§_-iI§);
                        if(_loc2_)
                        {
                           addr66:
                           §§push(param1);
                           if(!_loc3_)
                           {
                              if(§§pop()[§§pop()] == null)
                              {
                                 if(!(_loc3_ && param1))
                                 {
                                    §§goto(addr79);
                                 }
                                 else
                                 {
                                    addr87:
                                    §§push(§_-01N§);
                                 }
                              }
                              §§goto(addr87);
                           }
                           §§goto(addr89);
                        }
                        addr89:
                        return §§pop()[§§pop()];
                        §§push(param1);
                     }
                     addr79:
                     throw new Error("Error! Level \'" + param1 + "\' does not exist.");
                  }
                  §§goto(addr87);
               }
               §§goto(addr89);
            }
            §§goto(addr66);
         }
         §§goto(addr87);
      }
      
      public static function §_-tc§(param1:String, param2:§_-bm§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §_-01N§[param1] = param2;
         }
      }
      
      public static function §_-g0§(param1:String, param2:int) : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
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
                        if(!_loc6_)
                        {
                           break;
                        }
                        if(!_loc5_)
                        {
                           §§pop().§§slot[2] = param2;
                           if(!(_loc6_ || _loc3_))
                           {
                              continue;
                           }
                           if(_loc5_ && param2)
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
                              if(!_loc5_)
                              {
                                 §§pop().§§slot[3] = LevelManager.§_-U0§(levelId);
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    addr86:
                                    §§push(§§newactivation());
                                    if(!_loc5_)
                                    {
                                       §§goto(addr89);
                                    }
                                    §§goto(addr208);
                                 }
                                 §§goto(addr207);
                              }
                           }
                           catch(e:Error)
                           {
                              §§goto(addr86);
                           }
                           addr89:
                        }
                        continue loop0;
                        §§push(§§pop().§§slot[2]);
                        if(_loc6_ || _loc3_)
                        {
                           §§push(0);
                           if(!(_loc5_ && param1))
                           {
                              if(§§pop() <= §§pop())
                              {
                                 if(!(_loc5_ && LevelManager))
                                 {
                                    §§push(0);
                                    if(_loc6_)
                                    {
                                       §§goto(addr126);
                                    }
                                    addr209:
                                    if(§§pop() >= level.§_-Td§)
                                    {
                                       addr151:
                                       §§push(§§newactivation());
                                       if(_loc6_)
                                       {
                                          §§push(§§pop().§§slot[2]);
                                          if(_loc6_ || param2)
                                          {
                                             §§push(§§newactivation());
                                             if(!_loc5_)
                                             {
                                                §§push(§§pop().§§slot[3]);
                                                if(_loc6_ || param2)
                                                {
                                                   §§push(§§pop().§_-iC§);
                                                   if(_loc6_ || _loc3_)
                                                   {
                                                      addr192:
                                                      if(§§pop() < §§pop())
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               addr130:
                                                               §§push(3);
                                                               if(_loc6_)
                                                               {
                                                                  if(_loc6_ || LevelManager)
                                                                  {
                                                                     if(!(_loc6_ || param2))
                                                                     {
                                                                        §§goto(addr209);
                                                                     }
                                                                     return §§pop();
                                                                  }
                                                                  §§goto(addr214);
                                                               }
                                                               §§goto(addr203);
                                                            }
                                                            §§goto(addr151);
                                                         }
                                                         if(!(_loc5_ && _loc3_))
                                                         {
                                                            addr203:
                                                            return §§pop();
                                                            §§push(2);
                                                         }
                                                         else
                                                         {
                                                            addr213:
                                                            addr214:
                                                            return §§pop();
                                                            §§push(1);
                                                         }
                                                      }
                                                      §§goto(addr130);
                                                   }
                                                }
                                             }
                                             §§goto(addr209);
                                          }
                                          §§goto(addr130);
                                       }
                                       addr208:
                                       §§goto(addr209);
                                       §§push(§§pop().§§slot[2]);
                                    }
                                 }
                                 §§goto(addr213);
                              }
                              else
                              {
                                 addr207:
                                 §§goto(addr208);
                                 §§push(§§newactivation());
                              }
                              §§goto(addr208);
                           }
                           §§goto(addr192);
                        }
                        addr126:
                        return §§pop();
                     }
                  }
               }
            }
         }
      }
      
      public static function §_-Hc§(param1:String) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!§_-iI§[param1])
            {
               if(!(_loc2_ && _loc3_))
               {
                  §§push(§_-1q§);
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
      
      public static function §_-s8§(param1:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:§_-0C5§ = null;
         if(_loc4_)
         {
            if(param1 != §_-HM§)
            {
               loop0:
               while(true)
               {
                  §§push(§_-p0§(param1));
                  loop1:
                  while(true)
                  {
                     §§push(int(§§pop()));
                     loop2:
                     while(true)
                     {
                        _loc2_ = §§pop();
                        if(_loc5_ && param1)
                        {
                           break;
                        }
                        §§push(_loc2_);
                        if(_loc4_)
                        {
                           if(!(_loc5_ && param1))
                           {
                              if(§§pop() >= 0)
                              {
                                 if(_loc4_)
                                 {
                                    §_-07s§ = _loc2_;
                                    if(_loc4_ || _loc2_)
                                    {
                                       while(true)
                                       {
                                          §_-4w§ = §_-HM§;
                                          if(!(_loc5_ && _loc3_))
                                          {
                                             if(!_loc4_)
                                             {
                                                break;
                                             }
                                             §_-HM§ = param1;
                                             if(!(_loc5_ && LevelManager))
                                             {
                                                if(true)
                                                {
                                                   _loc3_ = §_-1a§();
                                                   if(_loc4_)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         if(_loc4_ || LevelManager)
                                                         {
                                                            _loc3_.§_-h-§ = _loc3_.§_-tT§(param1);
                                                         }
                                                      }
                                                   }
                                                }
                                                continue;
                                                break loop2;
                                             }
                                          }
                                          break loop2;
                                       }
                                       continue loop0;
                                    }
                                 }
                                 break;
                              }
                              §_-4w§ = §_-HM§;
                              if(!_loc4_)
                              {
                              }
                              break;
                              §_-HM§ = null;
                              break;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
      }
      
      public static function §_-lR§() : String
      {
         return §_-HM§.substring(5);
      }
      
      public static function §_-1a§() : §_-0C5§
      {
         return §_-Wg§[§_-07s§];
      }
      
      public static function §_-vk§() : Boolean
      {
         return true;
      }
      
      public static function §_-z2§() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§_-xE§());
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(§_-1a§().§_-gy§(§_-HM§ + "-OUTRO"));
         if(_loc4_ || _loc3_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  continue;
               }
               if(_loc4_)
               {
                  §§goto(addr102);
               }
               loop1:
               while(true)
               {
                  continue loop0;
                  addr89:
                  while(true)
                  {
                     if(_loc4_ || _loc3_)
                     {
                        §§push(true);
                        if(_loc4_ || _loc2_)
                        {
                           return §§pop();
                        }
                        addr102:
                     }
                     continue loop1;
                     return false;
                  }
               }
            }
         }
         §§goto(addr86);
      }
      
      public static function §_-xE§() : String
      {
         return §_-1a§().§_-xE§(§_-HM§);
      }
   }
}
