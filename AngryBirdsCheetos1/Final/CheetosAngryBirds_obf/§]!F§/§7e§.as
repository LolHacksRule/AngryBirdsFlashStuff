package §]!F§
{
   import §=!7§.§[!C§;
   
   public class §7e§
   {
      
      public static const §^!H§:String = "1-1";
      
      protected static var §>g§:Array = null;
      
      protected static var §^a§:Array;
      
      protected static var §8t§:Array;
      
      public static var §^"§:String = null;
      
      public static var §<=§:String = null;
      
      public static var §-!F§:Boolean;
      
      public static var §]!U§:int = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §^!H§ = "1-1";
            while(true)
            {
               §>g§ = null;
               loop1:
               while(_loc2_ || _loc2_)
               {
                  while(true)
                  {
                     §^a§ = [];
                     while(true)
                     {
                        §8t§ = [];
                        loop4:
                        for(; _loc2_ || _loc2_; if(_loc2_ || _loc1_)
                        {
                           return;
                        })
                        {
                           if(_loc1_)
                           {
                              continue loop1;
                           }
                           §^"§ = null;
                           while(true)
                           {
                              §<=§ = null;
                              while(!(_loc1_ && _loc1_))
                              {
                                 §]!U§ = 0;
                                 if(!(_loc1_ && _loc1_))
                                 {
                                    continue loop4;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr110);
      }
      
      public function §7e§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      public static function §[!$§(param1:Object) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc2_:Object = null;
         var _loc3_:§^!O§ = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         if(!_loc12_)
         {
            §>g§ = new Array();
         }
         loop0:
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §^!O§();
            if(!_loc11_)
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
                  if(!(_loc11_ || _loc2_))
                  {
                     continue loop1;
                  }
                  _loc3_.menuImage = _loc2_.menuImage;
                  if(_loc12_ && _loc2_)
                  {
                     break;
                  }
                  _loc3_.§;!'§ = _loc2_.leftCorner;
                  if(!_loc11_)
                  {
                     continue loop0;
                  }
                  _loc3_.§ 2§ = _loc2_.rightCorner;
                  if(!(_loc11_ || param1))
                  {
                     continue loop0;
                  }
                  _loc3_.§8!C§ = _loc2_.pageColors;
                  loop3:
                  while(true)
                  {
                     _loc3_.pageIndexes = _loc2_.pageIndexes;
                     addr90:
                     while(true)
                     {
                        if(_loc11_)
                        {
                           continue loop2;
                        }
                        continue loop3;
                     }
                     continue loop2;
                  }
               }
               §§push(0);
               if(!(_loc12_ && _loc3_))
               {
                  var _loc9_:* = §§pop();
                  if(!_loc12_)
                  {
                     var _loc10_:* = _loc2_.cutscenes;
                     if(!_loc12_)
                     {
                        addr211:
                        §§push(§§hasnext(_loc10_,_loc9_));
                        if(!_loc12_)
                        {
                           if(§§pop())
                           {
                              _loc5_ = §§nextname(_loc9_,_loc10_);
                              if(!_loc12_)
                              {
                                 addr204:
                                 _loc3_.§6B§(_loc5_,_loc2_.cutscenes[_loc5_]);
                              }
                              §§goto(addr211);
                           }
                           if(_loc11_ || param1)
                           {
                              if(!(_loc12_ && _loc3_))
                              {
                                 if(_loc11_ || _loc3_)
                                 {
                                    §§goto(addr238);
                                 }
                                 §§goto(addr248);
                              }
                              §§goto(addr252);
                           }
                           §§goto(addr346);
                        }
                        §§goto(addr344);
                     }
                     §§goto(addr204);
                  }
                  §§goto(addr347);
               }
               §§goto(addr249);
            }
         }
      }
      
      public static function §;j§() : void
      {
      }
      
      public static function §1!Q§(param1:String) : §^!O§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§^!O§ = null;
         var _loc3_:int = 0;
         for each(_loc2_ in §>g§)
         {
            if(!_loc6_)
            {
               if(_loc2_.§[g§(param1))
               {
                  if(!(_loc6_ && _loc3_))
                  {
                     return _loc2_;
                  }
               }
            }
         }
         return null;
      }
      
      public static function §,!5§(param1:String) : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§^!O§ = null;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc5_ || _loc2_))
            {
               break;
            }
            if(§§pop() >= §>g§.length)
            {
               break;
            }
            _loc3_ = §>g§[_loc2_];
            if(_loc5_ || param1)
            {
               if(_loc3_.§[g§(param1))
               {
                  if(!(_loc4_ && param1))
                  {
                     return _loc2_;
                  }
                  continue;
               }
            }
            _loc2_++;
         }
         return §§pop();
      }
      
      public static function §2§(param1:int) : §^!O§
      {
         return §>g§[param1];
      }
      
      public static function § =§() : int
      {
         return §>g§.length;
      }
      
      public static function §`!7§(param1:String) : §&!]§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(§^a§);
            if(_loc3_ || _loc3_)
            {
               §§push(param1);
               if(!_loc2_)
               {
                  if(!§§pop()[§§pop()])
                  {
                     if(!(_loc2_ && param1))
                     {
                        addr49:
                        §§push(§8t§);
                        if(!(_loc2_ && _loc3_))
                        {
                           §§push(param1);
                           if(!(_loc2_ && param1))
                           {
                              if(§§pop()[§§pop()] == null)
                              {
                                 if(_loc2_ && §7e§)
                                 {
                                    addr95:
                                    return §^a§[param1];
                                    addr93:
                                 }
                              }
                              §§goto(addr93);
                           }
                        }
                        §§goto(addr95);
                     }
                     throw new Error("Error! Level \'" + param1 + "\' does not exist.");
                  }
               }
            }
            §§goto(addr95);
         }
         §§goto(addr49);
      }
      
      public static function §+8§(param1:String, param2:§&!]§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            §^a§[param1] = param2;
         }
      }
      
      public static function §]!7§(param1:String, param2:int) : int
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
                     while(_loc5_)
                     {
                        §§push(§§newactivation());
                        if(!(_loc6_ && §7e§))
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
                  if(_loc5_)
                  {
                     §§pop().§§slot[3] = §7e§.§`!7§(levelId);
                     if(!(_loc6_ && param2))
                     {
                        addr80:
                        §§push(§§newactivation());
                        if(_loc5_ || _loc3_)
                        {
                           §§push(§§pop().§§slot[2]);
                           if(!_loc6_)
                           {
                              §§push(0);
                              if(!_loc6_)
                              {
                                 if(§§pop() <= §§pop())
                                 {
                                    if(_loc5_ || param2)
                                    {
                                       §§push(0);
                                       if(!_loc6_)
                                       {
                                          §§goto(addr115);
                                       }
                                    }
                                    else
                                    {
                                       addr188:
                                       if(score >= level.§;!L§)
                                       {
                                          addr133:
                                          §§push(§§newactivation());
                                          if(!(_loc6_ && param1))
                                          {
                                             §§push(§§pop().§§slot[2]);
                                             if(!_loc6_)
                                             {
                                                §§push(§§newactivation());
                                                if(_loc5_ || param1)
                                                {
                                                   §§push(§§pop().§§slot[3]);
                                                   if(_loc5_)
                                                   {
                                                      §§push(§§pop().§7z§);
                                                      if(_loc5_)
                                                      {
                                                         addr159:
                                                         if(§§pop() < §§pop())
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               if(!(_loc6_ && param2))
                                                               {
                                                                  §§goto(addr170);
                                                               }
                                                               §§goto(addr193);
                                                            }
                                                            if(_loc5_)
                                                            {
                                                               §§goto(addr119);
                                                            }
                                                            §§goto(addr133);
                                                         }
                                                         addr119:
                                                         §§push(3);
                                                         if(_loc6_)
                                                         {
                                                            §§goto(addr170);
                                                         }
                                                         if(_loc5_ || param2)
                                                         {
                                                            return §§pop();
                                                         }
                                                         §§goto(addr193);
                                                      }
                                                   }
                                                }
                                                §§goto(addr188);
                                             }
                                             addr170:
                                             §§goto(addr169);
                                          }
                                          §§goto(addr188);
                                       }
                                       §§goto(addr193);
                                    }
                                    addr193:
                                    return 1;
                                 }
                                 §§goto(addr188);
                              }
                              §§goto(addr159);
                           }
                           addr115:
                           return §§pop();
                        }
                        §§goto(addr188);
                     }
                     addr169:
                     §§push(2);
                     if(_loc6_)
                     {
                        §§goto(addr188);
                     }
                     return §§pop();
                  }
               }
               catch(e:Error)
               {
                  §§goto(addr80);
               }
               §§goto(addr188);
            }
         }
      }
      
      public static function §8a§(param1:String) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!§8t§[param1])
            {
               if(!_loc2_)
               {
                  addr45:
                  §§push(§^!H§);
                  if(_loc3_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr49:
                  return param1;
               }
               return §§pop();
            }
            §§goto(addr49);
         }
         §§goto(addr45);
      }
      
      public static function §!!@§(param1:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:§^!O§ = null;
         if(!_loc4_)
         {
            if(param1 != §^"§)
            {
               if(_loc5_)
               {
                  §§push(§,!5§(param1));
                  loop0:
                  while(true)
                  {
                     §§push(int(§§pop()));
                     while(true)
                     {
                        _loc2_ = §§pop();
                        addr103:
                        while(true)
                        {
                           §§push(_loc2_);
                           if(_loc4_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
               §§goto(addr145);
            }
            §§goto(addr148);
         }
         §§goto(addr145);
      }
      
      public static function §;4§() : String
      {
         return §^"§.substring(5);
      }
      
      public static function §[!?§() : §^!O§
      {
         return §>g§[§]!U§];
      }
      
      public static function §@f§() : Boolean
      {
         return true;
      }
      
      public static function §7!N§() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§3N§());
         if(_loc3_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(§[!?§().§9[§(§^"§ + "-OUTRO"));
         if(_loc3_ || _loc2_)
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
               if(§§pop())
               {
                  continue;
               }
               if(_loc3_ || _loc2_)
               {
                  §§goto(addr111);
               }
               while(true)
               {
                  continue loop0;
                  addr73:
                  if(!(_loc4_ && _loc3_))
                  {
                     §[!C§.§5y§(_loc2_);
                  }
                  if(!(_loc4_ && _loc3_))
                  {
                     §§push(true);
                     if(!(_loc4_ && _loc3_))
                     {
                        return §§pop();
                     }
                  }
                  continue;
                  addr111:
                  return false;
               }
            }
         }
         §§goto(addr90);
      }
      
      public static function §3N§() : String
      {
         return §[!?§().§3N§(§^"§);
      }
   }
}
