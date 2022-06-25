package §"!i§
{
   import §=I§.§6g§;
   
   public class LevelManager
   {
      
      public static const §&!r§:String = "1-1";
      
      protected static var §5!t§:Array = null;
      
      protected static var §-!y§:Array;
      
      protected static var §'I§:Array;
      
      public static var §"L§:String = null;
      
      public static var §>l§:String = null;
      
      public static var §-!v§:Boolean;
      
      public static var §`^§:int = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §&!r§ = "1-1";
         }
         while(true)
         {
            §5!t§ = null;
            while(!(_loc1_ && _loc1_))
            {
               §-!y§ = [];
               loop2:
               while(true)
               {
                  §'I§ = [];
                  while(true)
                  {
                     §"L§ = null;
                     while(_loc2_ || _loc2_)
                     {
                        §>l§ = null;
                        continue loop2;
                        if(!(_loc1_ && _loc1_))
                        {
                           return;
                        }
                     }
                  }
               }
               if(!(_loc2_ || _loc2_))
               {
                  continue;
               }
               §§goto(addr71);
            }
         }
      }
      
      public function LevelManager()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
         }
      }
      
      public static function §?=§(param1:Object) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc2_:Object = null;
         var _loc3_:§8K§ = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:* = 0;
         if(_loc12_ || _loc2_)
         {
            §5!t§ = new Array();
         }
         loop0:
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §8K§();
            if(!(_loc11_ && param1))
            {
               _loc3_.levelsPerPage = _loc2_.levelsPerPage;
               if(!_loc12_)
               {
                  continue;
               }
               _loc3_.name = _loc2_.name;
               while(true)
               {
                  _loc3_.menuImage = _loc2_.menuImage;
                  loop2:
                  while(_loc12_ || _loc2_)
                  {
                     _loc3_.§?E§ = _loc2_.leftCorner;
                     loop3:
                     while(true)
                     {
                        _loc3_.§2?§ = _loc2_.rightCorner;
                        if(!_loc12_)
                        {
                           break;
                        }
                        if(!_loc12_)
                        {
                           continue loop2;
                        }
                        _loc3_.§83§ = _loc2_.pageColors;
                        if(_loc12_ || _loc2_)
                        {
                           _loc3_.pageIndexes = _loc2_.pageIndexes;
                           if(_loc12_)
                           {
                              while(true)
                              {
                                 _loc3_.levelButtons = _loc2_.levelButtons;
                                 if(_loc12_ || param1)
                                 {
                                    _loc3_.writtenName = _loc2_.writtenName;
                                    if(!_loc12_)
                                    {
                                       §5!t§.push(_loc3_);
                                       if(!_loc11_)
                                       {
                                          break;
                                       }
                                    }
                                    else
                                    {
                                       addr244:
                                    }
                                    continue loop3;
                                    break loop3;
                                 }
                                 break;
                              }
                              addr83:
                           }
                        }
                        var _loc9_:int = 0;
                        if(_loc12_ || _loc2_)
                        {
                           addr258:
                           var _loc10_:* = _loc3_.pageIndexes;
                           if(!(_loc11_ && LevelManager))
                           {
                              loop5:
                              while(true)
                              {
                                 §§push(§§hasnext(_loc10_,_loc9_));
                                 addr351:
                                 loop12:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       break loop5;
                                    }
                                    _loc4_ = §§nextvalue(_loc9_,_loc10_);
                                    if(_loc12_ || _loc3_)
                                    {
                                       §§push(1);
                                       if(_loc12_ || _loc3_)
                                       {
                                          _loc6_ = §§pop();
                                          if(_loc11_ && _loc2_)
                                          {
                                             continue;
                                          }
                                          while(true)
                                          {
                                             addr346:
                                             while(true)
                                             {
                                                §§push(_loc6_);
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          if(§§pop() > _loc3_.levelsPerPage)
                                          {
                                             continue loop12;
                                          }
                                          §§push(§'I§);
                                          §§push(_loc4_ + "-");
                                          if(_loc12_)
                                          {
                                             §§push(§§pop() + _loc6_);
                                          }
                                          §§pop()[§§pop()] = _loc3_.name;
                                          if(_loc11_ && _loc2_)
                                          {
                                             continue loop12;
                                          }
                                          _loc6_++;
                                          if(!(_loc12_ || _loc2_))
                                          {
                                             continue loop12;
                                          }
                                          §§goto(addr346);
                                       }
                                    }
                                 }
                              }
                              addr353:
                              break;
                              addr352:
                           }
                           while(true)
                           {
                              if(false)
                              {
                                 §§goto(addr281);
                              }
                              §§goto(addr346);
                           }
                        }
                        §§goto(addr353);
                     }
                     continue loop0;
                  }
               }
            }
            §§goto(addr81);
         }
      }
      
      public static function §@!Q§() : void
      {
      }
      
      public static function §`r§(param1:String) : §8K§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§8K§ = null;
         var _loc3_:int = 0;
         for each(_loc2_ in §5!t§)
         {
            if(_loc5_ || _loc3_)
            {
               if(_loc2_.§9w§(param1))
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
      
      public static function §<Q§(param1:String) : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§8K§ = null;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(_loc4_)
            {
               break;
            }
            if(§§pop() >= §5!t§.length)
            {
               break;
            }
            _loc3_ = §5!t§[_loc2_];
            if(!_loc4_)
            {
               if(_loc3_.§9w§(param1))
               {
                  if(_loc5_)
                  {
                     return _loc2_;
                  }
               }
            }
            _loc2_++;
         }
         return §§pop();
      }
      
      public static function §!!A§(param1:int) : §8K§
      {
         return §5!t§[param1];
      }
      
      public static function §`H§(param1:String) : §8K§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§8K§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = §5!t§;
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
      
      public static function §%!1§() : int
      {
         return §5!t§.length;
      }
      
      public static function §"!l§(param1:String) : §"!'§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(§-!y§);
            if(!(_loc2_ && LevelManager))
            {
               §§push(param1);
               if(_loc3_)
               {
                  if(!§§pop()[§§pop()])
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        §§push(§'I§);
                        if(_loc3_ || LevelManager)
                        {
                           §§goto(addr57);
                        }
                     }
                  }
                  §§goto(addr93);
               }
               §§goto(addr75);
            }
            addr57:
            §§push(param1);
            if(_loc3_ || _loc3_)
            {
               addr75:
               if(§§pop()[§§pop()] == null)
               {
                  if(_loc3_ || param1)
                  {
                     throw new Error("Error! Level \'" + param1 + "\' does not exist.");
                  }
                  addr93:
                  §§push(§-!y§);
                  §§push(param1);
               }
               §§goto(addr93);
            }
            return §§pop()[§§pop()];
         }
         §§goto(addr93);
      }
      
      public static function §8g§(param1:String, param2:§"!'§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || LevelManager)
         {
            §-!y§[param1] = param2;
         }
      }
      
      public static function §2!&§(param1:String, param2:int) : int
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
                  while(_loc5_)
                  {
                     §§pop().§§slot[1] = param1;
                     while(true)
                     {
                        §§push(§§newactivation());
                        if(!(_loc5_ || LevelManager))
                        {
                           break;
                        }
                        §§pop().§§slot[2] = param2;
                        if(_loc6_)
                        {
                           continue;
                        }
                        if(!(_loc5_ || param1))
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
                           if(_loc5_)
                           {
                              §§pop().§§slot[3] = LevelManager.§"!l§(levelId);
                              if(_loc5_ || param2)
                              {
                                 addr85:
                                 §§push(§§newactivation());
                                 if(_loc5_)
                                 {
                                    §§push(§§pop().§§slot[2]);
                                    if(_loc5_)
                                    {
                                       §§push(0);
                                       if(_loc5_ || _loc3_)
                                       {
                                          if(§§pop() <= §§pop())
                                          {
                                             if(!(_loc6_ && param2))
                                             {
                                                addr117:
                                                §§push(0);
                                                if(_loc5_ || _loc3_)
                                                {
                                                   §§goto(addr125);
                                                }
                                             }
                                             else
                                             {
                                                addr215:
                                                §§push(3);
                                                if(!(_loc6_ && LevelManager))
                                                {
                                                   if(_loc6_ && _loc3_)
                                                   {
                                                      addr221:
                                                      if(§§pop() >= level.§2!m§)
                                                      {
                                                         addr148:
                                                         §§push(§§newactivation());
                                                         if(!(_loc6_ && LevelManager))
                                                         {
                                                            addr157:
                                                            §§push(§§pop().§§slot[2]);
                                                            if(_loc5_ || LevelManager)
                                                            {
                                                               §§push(§§newactivation());
                                                               if(!(_loc6_ && param1))
                                                               {
                                                                  §§push(§§pop().§§slot[3]);
                                                                  if(!(_loc6_ && param1))
                                                                  {
                                                                     §§push(§§pop().§;"$§);
                                                                     if(!_loc6_)
                                                                     {
                                                                        if(§§pop() < §§pop())
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              if(!(_loc5_ || param1))
                                                                              {
                                                                                 §§goto(addr148);
                                                                              }
                                                                              if(_loc5_ || _loc3_)
                                                                              {
                                                                                 addr212:
                                                                                 §§push(2);
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    return §§pop();
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr222:
                                                                                 return 1;
                                                                              }
                                                                              return §§pop();
                                                                           }
                                                                        }
                                                                        §§goto(addr215);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr221);
                                                            }
                                                            §§goto(addr212);
                                                         }
                                                         addr217:
                                                         §§goto(addr221);
                                                         §§push(§§pop().§§slot[2]);
                                                      }
                                                      §§goto(addr222);
                                                   }
                                                   §§goto(addr145);
                                                }
                                                §§goto(addr212);
                                             }
                                             addr145:
                                             return §§pop();
                                          }
                                          §§goto(addr217);
                                          §§push(§§newactivation());
                                          §§goto(addr217);
                                       }
                                       §§goto(addr221);
                                    }
                                    addr125:
                                    return §§pop();
                                 }
                                 §§goto(addr217);
                              }
                              §§goto(addr117);
                           }
                        }
                        catch(e:Error)
                        {
                           §§goto(addr85);
                        }
                        §§goto(addr157);
                     }
                  }
                  continue loop0;
               }
            }
         }
      }
      
      public static function §5l§(param1:String) : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            if(!§'I§[param1])
            {
               if(!_loc3_)
               {
                  §§push(§&!r§);
                  if(_loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr43:
                  return param1;
               }
               return §§pop();
            }
         }
         §§goto(addr43);
      }
      
      public static function §`!O§(param1:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:§8K§ = null;
         if(!(_loc4_ && _loc2_))
         {
            if(param1 != §"L§)
            {
               loop0:
               while(true)
               {
                  §§push(§<Q§(param1));
                  loop1:
                  while(true)
                  {
                     §§push(int(§§pop()));
                     loop2:
                     while(true)
                     {
                        _loc2_ = §§pop();
                        if(_loc5_ || param1)
                        {
                           while(true)
                           {
                              §§push(_loc2_);
                              if(_loc4_)
                              {
                                 continue loop2;
                              }
                              if(_loc4_)
                              {
                                 continue loop1;
                              }
                              if(§§pop() >= 0)
                              {
                                 while(true)
                                 {
                                    §`^§ = _loc2_;
                                    if(_loc5_ || _loc2_)
                                    {
                                       if(!_loc4_)
                                       {
                                          loop5:
                                          while(true)
                                          {
                                             §>l§ = §"L§;
                                             while(true)
                                             {
                                                §"L§ = param1;
                                                if(!_loc5_)
                                                {
                                                   break;
                                                }
                                                if(!_loc4_)
                                                {
                                                   continue loop5;
                                                }
                                             }
                                             §§goto(addr128);
                                          }
                                          continue;
                                       }
                                       continue loop0;
                                    }
                                    §§goto(addr128);
                                 }
                              }
                              else
                              {
                                 §>l§ = §"L§;
                                 if(_loc5_)
                                 {
                                    break loop2;
                                 }
                                 §§goto(addr128);
                              }
                              §§goto(addr128);
                           }
                           addr103:
                        }
                        break;
                     }
                     §"L§ = null;
                  }
               }
            }
            addr128:
            return;
         }
         §§goto(addr103);
      }
      
      public static function §=X§() : String
      {
         return §"L§.substring(5);
      }
      
      public static function §+!$§() : §8K§
      {
         return §5!t§[§`^§];
      }
      
      public static function §+!D§() : Boolean
      {
         return true;
      }
      
      public static function §7v§() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§8`§());
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(§+!$§().§8!O§(§"L§ + "-OUTRO"));
         if(_loc4_ || _loc3_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || LevelManager)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  continue;
               }
               if(!(_loc3_ && _loc2_))
               {
                  §§goto(addr107);
               }
               while(true)
               {
                  continue loop0;
                  addr86:
                  if(_loc4_ || _loc1_)
                  {
                     §6g§.§6!!§(_loc2_);
                     §§push(true);
                     if(!(_loc3_ && _loc2_))
                     {
                        return §§pop();
                     }
                  }
                  continue;
                  addr107:
                  return false;
               }
            }
         }
         §§goto(addr56);
      }
      
      public static function §8`§() : String
      {
         return §+!$§().§8`§(§"L§);
      }
   }
}
