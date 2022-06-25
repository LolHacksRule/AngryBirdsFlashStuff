package §!!§
{
   import §"!&§.§[>§;
   
   public class LevelManager
   {
      
      public static const §3!&§:String = "1-1";
      
      protected static var §1"§:Array = null;
      
      protected static var §!y§:Array;
      
      protected static var §@8§:Array;
      
      public static var §^!F§:String = null;
      
      public static var §<5§:String = null;
      
      public static var §&!Q§:Boolean;
      
      public static var §;`§:int = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §3!&§ = "1-1";
            while(true)
            {
               §1"§ = null;
               loop1:
               for(; !(_loc1_ && _loc1_); loop3:
               while(!(_loc1_ && LevelManager))
               {
                  §@8§ = [];
                  while(true)
                  {
                     §^!F§ = null;
                     while(!(_loc1_ && _loc1_))
                     {
                        §<5§ = null;
                        do
                        {
                           §;`§ = 0;
                        }
                        while(!(_loc2_ || _loc2_));
                        
                        if(!(_loc1_ && _loc1_))
                        {
                           if(_loc2_)
                           {
                              return;
                           }
                           continue loop3;
                        }
                     }
                  }
               })
               {
                  while(true)
                  {
                     §!y§ = [];
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr115);
      }
      
      public function LevelManager()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      public static function §,v§(param1:Object) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc2_:Object = null;
         var _loc3_:§@+§ = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:* = 0;
         if(!(_loc11_ && param1))
         {
            §1"§ = new Array();
         }
         loop0:
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §@+§();
            if(_loc12_ || _loc3_)
            {
               _loc3_.levelsPerPage = _loc2_.levelsPerPage;
               if(_loc11_ && _loc2_)
               {
                  continue;
               }
            }
            _loc3_.name = _loc2_.name;
            while(true)
            {
               _loc3_.menuImage = _loc2_.menuImage;
               while(true)
               {
                  _loc3_.§0l§ = _loc2_.leftCorner;
                  if(_loc11_ && param1)
                  {
                     break;
                  }
                  _loc3_.§1!S§ = _loc2_.rightCorner;
                  if(_loc12_)
                  {
                     continue;
                  }
                  addr259:
                  var _loc9_:* = 0;
                  if(_loc12_)
                  {
                     addr263:
                     var _loc10_:* = _loc3_.pageIndexes;
                     if(_loc12_ || _loc2_)
                     {
                        addr355:
                        for each(_loc4_ in _loc10_)
                        {
                           if(!(_loc11_ && LevelManager))
                           {
                              §§push(1);
                              if(!(_loc11_ && LevelManager))
                              {
                                 _loc6_ = §§pop();
                                 if(!_loc11_)
                                 {
                                    addr351:
                                    §§push(_loc6_);
                                    addr286:
                                 }
                                 §§goto(addr355);
                              }
                              if(§§pop() > _loc3_.levelsPerPage)
                              {
                                 §§goto(addr355);
                              }
                              §§push(§@8§);
                              §§push(_loc4_ + "-");
                              if(_loc12_ || _loc3_)
                              {
                                 §§push(§§pop() + _loc6_);
                              }
                              §§pop()[§§pop()] = _loc3_.name;
                              if(_loc12_ || param1)
                              {
                                 _loc6_++;
                                 if(!(_loc11_ && param1))
                                 {
                                    if(false)
                                    {
                                       §§goto(addr286);
                                    }
                                    §§goto(addr351);
                                 }
                              }
                              addr350:
                           }
                           §§goto(addr355);
                        }
                        addr358:
                        continue loop0;
                        addr357:
                     }
                     §§goto(addr350);
                  }
                  §§goto(addr358);
               }
               addr189:
               §§push(0);
               if(!_loc11_)
               {
                  _loc9_ = §§pop();
                  if(_loc12_ || _loc2_)
                  {
                     _loc10_ = _loc2_.cutscenes;
                     if(!_loc11_)
                     {
                        addr227:
                        §§push(§§hasnext(_loc10_,_loc9_));
                        if(_loc12_)
                        {
                           if(§§pop())
                           {
                              _loc5_ = §§nextname(_loc9_,_loc10_);
                              if(!(_loc11_ && LevelManager))
                              {
                                 addr220:
                                 _loc3_.§5k§(_loc5_,_loc2_.cutscenes[_loc5_]);
                              }
                              §§goto(addr227);
                           }
                           if(!(_loc11_ && _loc3_))
                           {
                              if(!(_loc11_ && LevelManager))
                              {
                                 addr246:
                                 if(_loc12_)
                                 {
                                    addr249:
                                    §1"§.push(_loc3_);
                                    if(!(_loc12_ || param1))
                                    {
                                       continue loop0;
                                    }
                                 }
                                 §§goto(addr259);
                              }
                              §§goto(addr263);
                           }
                           §§goto(addr357);
                        }
                        §§goto(addr355);
                     }
                     §§goto(addr220);
                  }
                  §§goto(addr246);
               }
               §§goto(addr259);
               if(_loc11_ && _loc2_)
               {
                  continue;
               }
               if(false)
               {
                  §§goto(addr92);
               }
               if(_loc2_.cutscenes)
               {
                  if(!(_loc12_ || _loc2_))
                  {
                     continue loop0;
                  }
                  §§goto(addr189);
               }
               §§goto(addr249);
            }
         }
      }
      
      public static function §^!A§() : void
      {
      }
      
      public static function §,m§(param1:String) : §@+§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§@+§ = null;
         for each(_loc2_ in §1"§)
         {
            if(!(_loc5_ && _loc2_))
            {
               if(_loc2_.§]!1§(param1))
               {
                  if(!(_loc5_ && LevelManager))
                  {
                     return _loc2_;
                  }
               }
            }
         }
         return null;
      }
      
      public static function §3=§(param1:String) : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§@+§ = null;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc4_ && _loc3_))
            {
               if(§§pop() >= §1"§.length)
               {
                  break;
               }
               _loc3_ = §1"§[_loc2_];
               if(!_loc4_)
               {
                  if(!_loc3_.§]!1§(param1))
                  {
                     _loc2_++;
                     continue;
                  }
                  if(!(_loc5_ || param1))
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
      
      public static function §'v§(param1:int) : §@+§
      {
         return §1"§[param1];
      }
      
      public static function §"`§(param1:String) : §@+§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§@+§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = §1"§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(_loc5_ && _loc3_)
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
      
      public static function §`!v§() : int
      {
         return §1"§.length;
      }
      
      public static function §5!c§(param1:String) : §>4§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(§!y§);
            if(!_loc3_)
            {
               §§push(param1);
               if(_loc2_ || _loc3_)
               {
                  if(!§§pop()[§§pop()])
                  {
                     if(_loc2_ || LevelManager)
                     {
                        addr63:
                        §§push(§@8§);
                        if(!_loc3_)
                        {
                           §§goto(addr66);
                        }
                        §§goto(addr82);
                     }
                  }
                  §§goto(addr82);
               }
               §§goto(addr69);
            }
            addr66:
            §§push(param1);
            if(_loc2_)
            {
               addr69:
               if(§§pop()[§§pop()] == null)
               {
                  if(!_loc3_)
                  {
                     throw new Error("Error! Level \'" + param1 + "\' does not exist.");
                  }
                  addr82:
                  §§push(§!y§);
                  §§push(param1);
               }
               §§goto(addr82);
            }
            return §§pop()[§§pop()];
         }
         §§goto(addr63);
      }
      
      public static function §'S§(param1:String, param2:§>4§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && LevelManager))
         {
            §!y§[param1] = param2;
         }
      }
      
      public static function §'!J§(param1:String, param2:int) : int
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
               addr32:
               while(true)
               {
                  §§push(§§newactivation());
                  continue loop0;
               }
               try
               {
                  addr51:
                  §§push(§§newactivation());
                  if(!(_loc5_ && LevelManager))
                  {
                     §§pop().§§slot[3] = LevelManager.§5!c§(levelId);
                     if(!(_loc5_ && param1))
                     {
                        addr86:
                        §§push(§§newactivation());
                        if(_loc6_)
                        {
                           §§goto(addr89);
                        }
                        §§goto(addr154);
                     }
                     §§goto(addr215);
                  }
                  addr89:
                  §§push(§§pop().§§slot[2]);
                  if(_loc6_)
                  {
                     §§push(0);
                     if(_loc6_ || param2)
                     {
                        if(§§pop() <= §§pop())
                        {
                           if(!(_loc5_ && param1))
                           {
                              §§push(0);
                              if(!(_loc5_ && _loc3_))
                              {
                                 return §§pop();
                              }
                              addr212:
                              if(§§pop() >= level.§^T§)
                              {
                                 addr144:
                                 §§push(§§newactivation());
                                 if(_loc6_ || param2)
                                 {
                                    addr154:
                                    §§push(§§pop().§§slot[2]);
                                    §§push(§§newactivation());
                                    if(_loc6_ || param2)
                                    {
                                       §§push(§§pop().§§slot[3]);
                                       if(_loc6_)
                                       {
                                          §§push(§§pop().§6t§);
                                          if(!_loc5_)
                                          {
                                             if(§§pop() < §§pop())
                                             {
                                                if(!(_loc6_ || param2))
                                                {
                                                   addr215:
                                                   if(!(_loc5_ && param2))
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         addr130:
                                                         §§push(3);
                                                         if(!(_loc5_ && _loc3_))
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               §§goto(addr154);
                                                            }
                                                            return §§pop();
                                                         }
                                                         addr187:
                                                         if(!_loc5_)
                                                         {
                                                            §§goto(addr189);
                                                         }
                                                         addr214:
                                                         return §§pop();
                                                         addr199:
                                                      }
                                                      addr213:
                                                      §§goto(addr214);
                                                      §§push(1);
                                                   }
                                                   §§goto(addr144);
                                                }
                                                §§goto(addr187);
                                                §§push(2);
                                             }
                                             §§goto(addr130);
                                          }
                                       }
                                    }
                                    §§goto(addr212);
                                 }
                                 addr201:
                                 §§push(§§pop().§§slot[2]);
                                 if(!(_loc5_ && param1))
                                 {
                                    §§goto(addr212);
                                 }
                                 §§goto(addr214);
                              }
                              §§goto(addr213);
                           }
                           §§goto(addr199);
                        }
                        else
                        {
                           §§push(§§newactivation());
                        }
                        §§goto(addr201);
                     }
                     §§goto(addr212);
                  }
                  addr189:
                  return §§pop();
               }
               catch(e:Error)
               {
                  addr73:
               }
               §§goto(addr86);
            }
         }
      }
      
      public static function §%e§(param1:String) : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && LevelManager))
         {
            if(!§@8§[param1])
            {
               if(_loc2_ || _loc3_)
               {
                  addr44:
                  §§push(§3!&§);
                  if(!_loc3_)
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
            §§goto(addr48);
         }
         §§goto(addr44);
      }
      
      public static function §9!d§(param1:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:§@+§ = null;
         if(_loc4_)
         {
            if(param1 != §^!F§)
            {
               loop0:
               while(true)
               {
                  §§push(§3=§(param1));
                  if(_loc4_)
                  {
                     §§push(int(§§pop()));
                  }
                  loop1:
                  while(true)
                  {
                     _loc2_ = §§pop();
                     if(!_loc4_)
                     {
                        break;
                     }
                     §§push(_loc2_);
                     if(!(_loc5_ && _loc2_))
                     {
                        if(§§pop() < 0)
                        {
                           §<5§ = §^!F§;
                           if(_loc5_)
                           {
                           }
                           break;
                        }
                        loop2:
                        while(true)
                        {
                           §;`§ = _loc2_;
                           if(_loc4_ || LevelManager)
                           {
                              while(true)
                              {
                                 §<5§ = §^!F§;
                                 if(_loc4_ || _loc3_)
                                 {
                                    if(!_loc4_)
                                    {
                                       continue loop0;
                                    }
                                    §^!F§ = param1;
                                    if(!_loc5_)
                                    {
                                       continue loop2;
                                    }
                                 }
                                 break loop1;
                              }
                              addr39:
                           }
                           break loop1;
                        }
                        §^!F§ = null;
                        break;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr74);
      }
      
      public static function §2<§() : String
      {
         return §^!F§.substring(5);
      }
      
      public static function §5!K§() : §@+§
      {
         return §1"§[§;`§];
      }
      
      public static function §4s§() : Boolean
      {
         return true;
      }
      
      public static function §-!q§() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§=L§());
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(§5!K§().§4!#§(§^!F§ + "-OUTRO"));
         if(!(_loc3_ && _loc3_))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            §§push(_loc2_);
            loop0:
            while(§§pop())
            {
               while(true)
               {
                  §§push(_loc1_);
                  if(_loc4_ || _loc3_)
                  {
                     if(§§pop() == null)
                     {
                        if(!(_loc3_ && _loc1_))
                        {
                           if(_loc3_)
                           {
                              continue;
                           }
                           §[>§.§+m§(_loc2_);
                        }
                        if(_loc4_ || LevelManager)
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
               if(_loc4_ || LevelManager)
               {
                  return §§pop();
               }
               §§goto(addr107);
            }
            addr107:
            return §§pop();
            §§push(false);
         }
         §§goto(addr93);
      }
      
      public static function §=L§() : String
      {
         return §5!K§().§=L§(§^!F§);
      }
   }
}
