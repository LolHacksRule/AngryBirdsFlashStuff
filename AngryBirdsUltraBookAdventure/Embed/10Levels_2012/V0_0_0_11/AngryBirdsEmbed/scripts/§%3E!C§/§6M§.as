package §>!C§
{
   import §2!#§.§9!5§;
   
   public class §6M§
   {
      
      public static const §"b§:String = "1-1";
      
      protected static var §>n§:Array = null;
      
      protected static var §6m§:Array;
      
      protected static var §@r§:Array;
      
      public static var §[z§:String = null;
      
      public static var §>D§:String = null;
      
      public static var §6!E§:Boolean;
      
      public static var §'0§:int = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §"b§ = "1-1";
         }
         if(!(_loc1_ && _loc2_))
         {
            §6m§ = [];
            if(_loc2_)
            {
               §@r§ = [];
               §[z§ = null;
               if(!_loc1_)
               {
                  §>D§ = null;
                  addr68:
                  §'0§ = 0;
               }
            }
            return;
         }
         §§goto(addr68);
      }
      
      public function §6M§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      public static function §>7§(param1:Object) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc2_:Object = null;
         var _loc3_:§^h§ = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:* = 0;
         if(_loc11_)
         {
            §>n§ = new Array();
         }
         loop0:
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §^h§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            if(!_loc12_)
            {
               _loc3_.name = _loc2_.name;
               if(_loc11_)
               {
                  _loc3_.menuImage = _loc2_.menuImage;
               }
               _loc3_.§;!%§ = _loc2_.leftCorner;
               if(!_loc12_)
               {
                  _loc3_.§<-§ = _loc2_.rightCorner;
                  _loc3_.§8B§ = _loc2_.pageColors;
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
                                       _loc3_.§]!3§(_loc5_,_loc2_.cutscenes[_loc5_]);
                                    }
                                    continue;
                                 }
                                 if(_loc11_)
                                 {
                                    if(_loc11_ || §6M§)
                                    {
                                       if(_loc11_ || _loc2_)
                                       {
                                          addr182:
                                          §>n§.push(_loc3_);
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
                                                      §§push(§@r§);
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
      
      public static function §%!<§() : void
      {
      }
      
      public static function §1o§(param1:String) : §^h§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§^h§ = null;
         for each(_loc2_ in §>n§)
         {
            if(!_loc5_)
            {
               if(_loc2_.§2!"§(param1))
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
      
      public static function §3!#§(param1:String) : int
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§^h§ = null;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(_loc4_)
            {
               if(§§pop() >= §>n§.length)
               {
                  break;
               }
               _loc3_ = §>n§[_loc2_];
               if(_loc4_ || param1)
               {
                  if(!_loc3_.§2!"§(param1))
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
      
      public static function §6[§(param1:int) : §^h§
      {
         return §>n§[param1];
      }
      
      public static function § C§(param1:String) : §^h§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§^h§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = §>n§;
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
      
      public static function §!!>§() : int
      {
         return §>n§.length;
      }
      
      public static function § r§(param1:String) : §9R§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(§6m§);
            if(!(_loc2_ && _loc3_))
            {
               §§push(param1);
               if(!_loc2_)
               {
                  if(!§§pop()[§§pop()])
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        §§push(§@r§);
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
                                    §§push(§6m§);
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
      
      public static function §%Q§(param1:String, param2:§9R§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            §6m§[param1] = param2;
         }
      }
      
      public static function § 1§(param1:String, param2:int) : int
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
                  §§pop().§§slot[3] = §6M§.§ r§(levelId);
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
                                       §§push(§§pop().§!!9§);
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
                                       if(_loc5_ || §6M§)
                                       {
                                          addr153:
                                          §§push(level);
                                       }
                                       return §§pop();
                                       §§push(3);
                                    }
                                    §§goto(addr155);
                                    §§push(§§pop().§4$§);
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
      
      public static function §&q§(param1:String) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!§@r§[param1])
            {
               if(!_loc2_)
               {
                  addr25:
                  §§push(§"b§);
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
      
      public static function §<H§(param1:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:§^h§ = null;
         if(_loc4_)
         {
            if(param1 != §[z§)
            {
               §§push(§3!#§(param1));
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
                     §'0§ = _loc2_;
                     §§goto(addr60);
                  }
                  §§goto(addr80);
               }
               else
               {
                  §>D§ = §[z§;
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
         §>D§ = §[z§;
         if(!(_loc5_ && _loc3_))
         {
            addr80:
            §[z§ = param1;
            _loc3_ = §0!1§();
            if(_loc4_)
            {
               if(_loc3_)
               {
                  if(_loc4_)
                  {
                     _loc3_.§8H§ = _loc3_.§var§(param1);
                  }
               }
            }
         }
         else
         {
            addr102:
            §[z§ = null;
         }
         §§goto(addr105);
      }
      
      public static function §&!;§() : String
      {
         return §[z§.substring(5);
      }
      
      public static function §0!1§() : §^h§
      {
         return §>n§[§'0§];
      }
      
      public static function §9i§() : Boolean
      {
         return true;
      }
      
      public static function §"p§() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§1$§());
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(§0!1§().§,"§(§[z§ + "-OUTRO"));
         if(!(_loc3_ && _loc2_))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || §6M§)
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
                     §9!5§.§,c§(_loc2_);
                  }
               }
               §§goto(addr95);
            }
            §§goto(addr83);
         }
         §§goto(addr71);
      }
      
      public static function §1$§() : String
      {
         return §0!1§().§1$§(§[z§);
      }
   }
}
