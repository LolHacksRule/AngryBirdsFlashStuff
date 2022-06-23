package §=!B§
{
   import §9!7§.§?U§;
   
   public class §59§
   {
      
      public static const §3;§:String = "1-1";
      
      protected static var §0J§:Array = null;
      
      protected static var §8!1§:Array;
      
      protected static var §2u§:Array;
      
      public static var §%j§:String = null;
      
      public static var §72§:String = null;
      
      public static var §]s§:Boolean;
      
      public static var §2>§:int = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §3;§ = "1-1";
         }
         if(!(_loc1_ && _loc2_))
         {
            §8!1§ = [];
            if(_loc2_)
            {
               §2u§ = [];
               §%j§ = null;
               if(!_loc1_)
               {
                  §72§ = null;
                  addr68:
                  §2>§ = 0;
               }
            }
            return;
         }
         §§goto(addr68);
      }
      
      public function §59§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      public static function §"2§(param1:Object) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc2_:Object = null;
         var _loc3_:§=e§ = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:* = 0;
         if(_loc11_)
         {
            §0J§ = new Array();
         }
         loop0:
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §=e§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            if(!_loc12_)
            {
               _loc3_.name = _loc2_.name;
               if(_loc11_)
               {
                  _loc3_.menuImage = _loc2_.menuImage;
               }
               _loc3_.§2L§ = _loc2_.leftCorner;
               if(!_loc12_)
               {
                  _loc3_.§%!%§ = _loc2_.rightCorner;
                  _loc3_.§4u§ = _loc2_.pageColors;
                  _loc3_.pageIndexes = _loc2_.pageIndexes;
                  if(_loc11_)
                  {
                     _loc3_.levelButtons = _loc2_.levelButtons;
                     _loc3_.writtenName = _loc2_.writtenName;
                     if(_loc11_ || _loc2_)
                     {
                     }
                     addr107:
                     §§push(0);
                     if(!(_loc12_ && _loc2_))
                     {
                        var _loc9_:* = §§pop();
                        if(_loc11_)
                        {
                           var _loc10_:* = _loc2_.cutscenes;
                           if(!_loc11_)
                           {
                           }
                           loop1:
                           while(true)
                           {
                              §§push(§§hasnext(_loc10_,_loc9_));
                              if(_loc11_ || _loc3_)
                              {
                                 if(§§pop())
                                 {
                                    _loc5_ = §§nextname(_loc9_,_loc10_);
                                    if(_loc11_ || param1)
                                    {
                                       _loc3_.§3m§(_loc5_,_loc2_.cutscenes[_loc5_]);
                                    }
                                    continue;
                                 }
                                 if(_loc11_)
                                 {
                                    if(_loc11_ || §59§)
                                    {
                                       if(_loc11_ || _loc2_)
                                       {
                                          addr182:
                                          §0J§.push(_loc3_);
                                          addr186:
                                          _loc9_ = 0;
                                          addr185:
                                          if(_loc11_)
                                          {
                                             addr189:
                                             _loc10_ = _loc3_.pageIndexes;
                                             if(!_loc12_)
                                             {
                                                addr257:
                                                while(true)
                                                {
                                                   §§push(§§hasnext(_loc10_,_loc9_));
                                                   break loop1;
                                                }
                                                addr257:
                                             }
                                             loop5:
                                             while(true)
                                             {
                                                §§push(_loc6_);
                                                addr254:
                                                while(true)
                                                {
                                                   if(§§pop() <= _loc3_.levelsPerPage)
                                                   {
                                                      addr216:
                                                      §§push(§2u§);
                                                      §§push(_loc4_ + "-");
                                                      if(!_loc12_)
                                                      {
                                                         §§push(§§pop() + _loc6_);
                                                      }
                                                      §§pop()[§§pop()] = _loc3_.name;
                                                      if(!(_loc12_ && _loc3_))
                                                      {
                                                         while(true)
                                                         {
                                                            _loc6_++;
                                                            if(!(_loc11_ || param1))
                                                            {
                                                               break;
                                                            }
                                                            continue loop5;
                                                            §§goto(addr216);
                                                         }
                                                         addr245:
                                                      }
                                                   }
                                                   §§goto(addr257);
                                                }
                                             }
                                             addr253:
                                          }
                                          addr260:
                                       }
                                       continue loop0;
                                    }
                                    §§goto(addr189);
                                 }
                                 §§goto(addr260);
                              }
                              break;
                           }
                           while(§§pop())
                           {
                              _loc4_ = §§nextvalue(_loc9_,_loc10_);
                              if(_loc11_ || _loc2_)
                              {
                                 §§push(1);
                                 if(_loc11_)
                                 {
                                    _loc6_ = §§pop();
                                    if(!_loc12_)
                                    {
                                       addr215:
                                       §§goto(addr253);
                                    }
                                    §§goto(addr245);
                                 }
                                 §§goto(addr254);
                              }
                              §§goto(addr215);
                              §§goto(addr257);
                           }
                           §§goto(addr259);
                        }
                        §§goto(addr189);
                     }
                     §§goto(addr186);
                  }
                  if(_loc2_.cutscenes)
                  {
                     §§goto(addr107);
                  }
                  §§goto(addr182);
               }
               §§goto(addr107);
            }
            §§goto(addr185);
         }
      }
      
      public static function §3!E§() : void
      {
      }
      
      public static function §+,§(param1:String) : §=e§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§=e§ = null;
         for each(_loc2_ in §0J§)
         {
            if(!_loc5_)
            {
               if(_loc2_.§<#§(param1))
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
      
      public static function §6X§(param1:String) : int
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§=e§ = null;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(_loc4_)
            {
               if(§§pop() >= §0J§.length)
               {
                  break;
               }
               _loc3_ = §0J§[_loc2_];
               if(_loc4_ || param1)
               {
                  if(!_loc3_.§<#§(param1))
                  {
                     _loc2_++;
                     continue;
                  }
                  if(_loc5_ && _loc3_)
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
      
      public static function §+!!§(param1:int) : §=e§
      {
         return §0J§[param1];
      }
      
      public static function §<E§(param1:String) : §=e§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§=e§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = §0J§;
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
                  if(_loc5_ || param1)
                  {
                     break;
                  }
               }
            }
            return null;
         }
         return _loc2_;
      }
      
      public static function §<L§() : int
      {
         return §0J§.length;
      }
      
      public static function §'Y§(param1:String) : §^!9§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(§8!1§);
            if(!(_loc2_ && _loc3_))
            {
               §§push(param1);
               if(!_loc2_)
               {
                  if(!§§pop()[§§pop()])
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        §§push(§2u§);
                        if(_loc3_ || _loc2_)
                        {
                           addr72:
                           §§push(param1);
                           if(!_loc2_)
                           {
                              if(§§pop()[§§pop()] == null)
                              {
                                 if(!(_loc2_ && param1))
                                 {
                                    §§goto(addr85);
                                 }
                                 else
                                 {
                                    addr93:
                                    §§push(§8!1§);
                                 }
                              }
                              §§goto(addr93);
                           }
                           §§goto(addr95);
                        }
                        addr95:
                        return §§pop()[§§pop()];
                        §§push(param1);
                     }
                  }
                  §§goto(addr93);
               }
               §§goto(addr95);
            }
            §§goto(addr72);
         }
         addr85:
         throw new Error("Error! Level \'" + param1 + "\' does not exist.");
      }
      
      public static function §;f§(param1:String, param2:§^!9§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            §8!1§[param1] = param2;
         }
      }
      
      public static function §1;§(param1:String, param2:int) : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         if(_loc5_)
         {
            §§pop().§§slot[3] = null;
            if(!(_loc6_ && param1))
            {
               §§push(§§newactivation());
               if(_loc5_)
               {
                  §§pop().§§slot[1] = param1;
                  if(_loc5_)
                  {
                     addr41:
                     var score:int = param2;
                  }
               }
               §§goto(addr41);
            }
            try
            {
               §§push(§§newactivation());
               if(!(_loc6_ && param1))
               {
                  §§pop().§§slot[3] = §59§.§'Y§(levelId);
                  addr71:
                  §§push(§§newactivation());
                  if(_loc5_)
                  {
                     §§push(§§pop().§§slot[2]);
                     if(!_loc6_)
                     {
                        §§push(0);
                        if(_loc5_)
                        {
                           if(§§pop() <= §§pop())
                           {
                              if(!(_loc6_ && param2))
                              {
                                 return 0;
                              }
                              addr163:
                              §§push(2);
                              if(_loc5_ || param2)
                              {
                                 §§goto(addr171);
                              }
                           }
                           else
                           {
                              §§push(§§newactivation());
                              if(!(_loc6_ && param2))
                              {
                                 addr115:
                                 §§push(§§pop().§§slot[2]);
                                 §§push(§§newactivation());
                                 if(_loc5_)
                                 {
                                    §§push(§§pop().§§slot[3]);
                                    if(!(_loc6_ && param2))
                                    {
                                       §§push(§§pop().§7G§);
                                       if(_loc5_)
                                       {
                                          if(§§pop() < §§pop())
                                          {
                                             return 1;
                                          }
                                          §§goto(addr173);
                                       }
                                       addr155:
                                       if(§§pop() < §§pop())
                                       {
                                          if(_loc5_ || param1)
                                          {
                                             §§goto(addr163);
                                          }
                                          §§goto(addr173);
                                       }
                                       addr173:
                                       §§push(score);
                                       if(_loc5_ || §59§)
                                       {
                                          addr153:
                                          §§push(level);
                                       }
                                       return §§pop();
                                       §§push(3);
                                    }
                                    §§goto(addr155);
                                    §§push(§§pop().§`0§);
                                 }
                                 §§goto(addr153);
                              }
                              §§goto(addr173);
                           }
                           §§goto(addr173);
                        }
                        §§goto(addr155);
                     }
                     addr171:
                     return §§pop();
                  }
               }
               §§goto(addr115);
            }
            catch(e:Error)
            {
            }
            §§goto(addr71);
         }
         §§goto(addr41);
      }
      
      public static function §7?§(param1:String) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!§2u§[param1])
            {
               if(!_loc2_)
               {
                  addr25:
                  §§push(§3;§);
                  if(_loc3_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr29:
                  §§push(param1);
               }
               return §§pop();
            }
            §§goto(addr29);
         }
         §§goto(addr25);
      }
      
      public static function §6!9§(param1:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:§=e§ = null;
         if(_loc4_)
         {
            if(param1 != §%j§)
            {
               §§push(§6X§(param1));
               if(_loc4_)
               {
                  §§push(int(§§pop()));
                  if(_loc4_)
                  {
                     _loc2_ = §§pop();
                     §§goto(addr60);
                  }
               }
               if(§§pop() >= 0)
               {
                  if(!(_loc5_ && _loc3_))
                  {
                     §2>§ = _loc2_;
                     §§goto(addr60);
                  }
                  §§goto(addr80);
               }
               else
               {
                  §72§ = §%j§;
               }
               §§goto(addr102);
            }
            §§goto(addr80);
         }
         addr60:
         if(_loc4_)
         {
            §§push(_loc2_);
         }
         §72§ = §%j§;
         if(!(_loc5_ && _loc3_))
         {
            addr80:
            §%j§ = param1;
            _loc3_ = §8!F§();
            if(_loc4_)
            {
               if(_loc3_)
               {
                  if(_loc4_)
                  {
                     _loc3_.§6!%§ = _loc3_.§6!F§(param1);
                  }
               }
            }
         }
         else
         {
            addr102:
            §%j§ = null;
         }
         §§goto(addr105);
      }
      
      public static function §7P§() : String
      {
         return §%j§.substring(5);
      }
      
      public static function §8!F§() : §=e§
      {
         return §0J§[§2>§];
      }
      
      public static function §0!#§() : Boolean
      {
         return true;
      }
      
      public static function §^G§() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§+-§());
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(§8!F§().§&n§(§%j§ + "-OUTRO"));
         if(!(_loc3_ && _loc2_))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || §59§)
         {
            §§push(_loc2_);
            if(_loc4_)
            {
               if(!§§pop())
               {
                  if(_loc4_)
                  {
                     addr71:
                     §§push(false);
                     if(!_loc3_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr95:
                     §§push(true);
                  }
                  return §§pop();
               }
               addr83:
               if(_loc1_ == null)
               {
                  if(_loc4_ || _loc2_)
                  {
                     §?U§.§try §(_loc2_);
                  }
               }
               §§goto(addr95);
            }
            §§goto(addr83);
         }
         §§goto(addr71);
      }
      
      public static function §+-§() : String
      {
         return §8!F§().§+-§(§%j§);
      }
   }
}
