package §"v§
{
   import §%%§.§5!a§;
   
   public class §3!w§
   {
      
      public static const § for§:String = "1-1";
      
      protected static var §=9§:Array = null;
      
      protected static var §'v§:Array;
      
      protected static var §&A§:Array;
      
      public static var §%n§:String = null;
      
      public static var §8H§:String = null;
      
      public static var §6!"§:Boolean;
      
      public static var §&"&§:int = 0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            § for§ = "1-1";
            while(true)
            {
               §=9§ = null;
               addr82:
               if(_loc2_ && §3!w§)
               {
                  continue;
               }
               §&A§ = [];
               while(_loc1_)
               {
                  §%n§ = null;
                  while(_loc1_ || §3!w§)
                  {
                     §8H§ = null;
                     do
                     {
                        §&"&§ = 0;
                     }
                     while(_loc2_ && §3!w§);
                     
                     if(_loc1_)
                     {
                        return;
                     }
                  }
               }
               while(_loc1_)
               {
                  §§goto(addr82);
               }
               while(true)
               {
                  §'v§ = [];
                  §§goto(addr80);
               }
               addr80:
               addr104:
            }
         }
         §§goto(addr104);
      }
      
      public function §3!w§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
         }
      }
      
      public static function §'!9§(param1:Object) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc2_:Object = null;
         var _loc3_:§"! § = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:* = 0;
         if(!_loc11_)
         {
            §=9§ = new Array();
         }
         loop0:
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §"! §();
            if(!_loc11_)
            {
               _loc3_.levelsPerPage = _loc2_.levelsPerPage;
               while(true)
               {
                  _loc3_.name = _loc2_.name;
                  while(_loc12_ || _loc2_)
                  {
                     _loc3_.menuImage = _loc2_.menuImage;
                     loop3:
                     while(_loc12_ || §3!w§)
                     {
                        _loc3_.§#!"§ = _loc2_.leftCorner;
                        loop4:
                        while(true)
                        {
                           _loc3_.§`%§ = _loc2_.rightCorner;
                           while(true)
                           {
                              if(_loc11_)
                              {
                                 continue loop4;
                              }
                              if(!_loc12_)
                              {
                                 break;
                              }
                              _loc3_.§>!j§ = _loc2_.pageColors;
                              loop6:
                              while(true)
                              {
                                 _loc3_.pageIndexes = _loc2_.pageIndexes;
                                 if(!(_loc11_ && param1))
                                 {
                                    while(true)
                                    {
                                       _loc3_.levelButtons = _loc2_.levelButtons;
                                       if(!_loc11_)
                                       {
                                          _loc3_.writtenName = _loc2_.writtenName;
                                          if(!(_loc11_ && param1))
                                          {
                                             continue loop6;
                                          }
                                          addr159:
                                          addr240:
                                          §§push(0);
                                          if(_loc12_ || param1)
                                          {
                                             var _loc9_:* = §§pop();
                                             if(_loc12_)
                                             {
                                                var _loc10_:* = _loc2_.cutscenes;
                                                if(_loc12_)
                                                {
                                                   addr202:
                                                   §§push(§§hasnext(_loc10_,_loc9_));
                                                   if(!(_loc11_ && _loc2_))
                                                   {
                                                      if(§§pop())
                                                      {
                                                         _loc5_ = §§nextname(_loc9_,_loc10_);
                                                         if(_loc12_)
                                                         {
                                                            addr195:
                                                            _loc3_.§7"#§(_loc5_,_loc2_.cutscenes[_loc5_]);
                                                         }
                                                         §§goto(addr202);
                                                      }
                                                      if(!(_loc11_ && _loc3_))
                                                      {
                                                         if(_loc12_)
                                                         {
                                                            addr221:
                                                            if(!(_loc11_ && _loc3_))
                                                            {
                                                               addr229:
                                                               §=9§.push(_loc3_);
                                                               if(_loc12_ || §3!w§)
                                                               {
                                                                  break;
                                                               }
                                                            }
                                                            continue loop0;
                                                         }
                                                         addr328:
                                                         continue loop0;
                                                      }
                                                      addr327:
                                                      §§goto(addr328);
                                                   }
                                                   addr326:
                                                   if(§§pop())
                                                   {
                                                      _loc4_ = §§nextvalue(_loc9_,_loc10_);
                                                      if(_loc12_ || §3!w§)
                                                      {
                                                         §§push(1);
                                                         if(_loc12_)
                                                         {
                                                            _loc6_ = §§pop();
                                                            addr325:
                                                            if(_loc12_)
                                                            {
                                                               while(true)
                                                               {
                                                                  addr311:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc6_);
                                                                  }
                                                               }
                                                               addr271:
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr326);
                                                            }
                                                            §§goto(addr327);
                                                            addr325:
                                                         }
                                                         loop11:
                                                         for(; §§pop() <= _loc3_.levelsPerPage; §§goto(addr311))
                                                         {
                                                            §§push(§&A§);
                                                            §§push(_loc4_ + "-");
                                                            if(_loc12_)
                                                            {
                                                               §§push(§§pop() + _loc6_);
                                                            }
                                                            §§pop()[§§pop()] = _loc3_.name;
                                                            if(_loc12_)
                                                            {
                                                               _loc6_++;
                                                               if(_loc12_ || _loc2_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(true)
                                                                     {
                                                                        continue loop11;
                                                                     }
                                                                  }
                                                                  addr269:
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr325);
                                                               }
                                                               §§goto(addr271);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr325);
                                                   }
                                                   §§goto(addr327);
                                                }
                                                §§goto(addr195);
                                             }
                                             §§goto(addr221);
                                          }
                                          _loc9_ = §§pop();
                                          if(_loc12_ || §3!w§)
                                          {
                                             _loc10_ = _loc3_.pageIndexes;
                                             if(_loc12_ || _loc2_)
                                             {
                                                §§goto(addr325);
                                             }
                                             §§goto(addr269);
                                          }
                                          §§goto(addr328);
                                       }
                                       break;
                                    }
                                    addr80:
                                 }
                                 addr239:
                                 §§goto(addr240);
                              }
                           }
                           continue loop3;
                        }
                     }
                  }
               }
            }
            §§goto(addr239);
         }
      }
      
      public static function §!b§() : void
      {
      }
      
      public static function §>! §(param1:String) : §"! §
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§"! § = null;
         for each(_loc2_ in §=9§)
         {
            if(!(_loc5_ && param1))
            {
               if(_loc2_.§3!q§(param1))
               {
                  if(_loc6_ || _loc2_)
                  {
                     return _loc2_;
                  }
               }
            }
         }
         return null;
      }
      
      public static function §?!#§(param1:String) : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§"! § = null;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc5_ || _loc3_))
            {
               break;
            }
            if(§§pop() >= §=9§.length)
            {
               break;
            }
            _loc3_ = §=9§[_loc2_];
            if(_loc5_)
            {
               if(_loc3_.§3!q§(param1))
               {
                  if(_loc5_ || _loc3_)
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
      
      public static function §2I§(param1:int) : §"! §
      {
         return §=9§[param1];
      }
      
      public static function §^O§(param1:String) : §"! §
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§"! § = null;
         for each(_loc2_ in §=9§)
         {
            if(_loc5_ || §3!w§)
            {
               if(_loc2_.name == param1)
               {
                  if(_loc5_ || param1)
                  {
                     return _loc2_;
                  }
               }
            }
         }
         return null;
      }
      
      public static function §!K§() : int
      {
         return §=9§.length;
      }
      
      public static function §7%§(param1:String) : §9"§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(§'v§);
            if(!(_loc2_ && _loc3_))
            {
               §§push(param1);
               if(!_loc2_)
               {
                  if(!§§pop()[§§pop()])
                  {
                     if(_loc3_ || §3!w§)
                     {
                        addr49:
                        §§push(§&A§);
                        if(_loc3_)
                        {
                           §§goto(addr52);
                        }
                        §§goto(addr83);
                     }
                     §§goto(addr65);
                  }
                  §§goto(addr83);
               }
               §§goto(addr60);
            }
            addr52:
            §§push(param1);
            if(!(_loc2_ && _loc3_))
            {
               addr60:
               if(§§pop()[§§pop()] == null)
               {
                  if(_loc3_)
                  {
                     throw new Error("Error! Level \'" + param1 + "\' does not exist.");
                     addr65:
                  }
                  else
                  {
                     addr83:
                     §§push(§'v§);
                     §§push(param1);
                  }
               }
               §§goto(addr83);
            }
            return §§pop()[§§pop()];
         }
         §§goto(addr49);
      }
      
      public static function §3c§(param1:String, param2:§9"§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            §'v§[param1] = param2;
         }
      }
      
      public static function §^"3§(param1:String, param2:int) : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[3] = null;
            addr65:
            while(true)
            {
               addr42:
               while(true)
               {
                  §§push(§§newactivation());
                  continue loop0;
               }
               try
               {
                  addr66:
                  §§push(§§newactivation());
                  if(_loc6_)
                  {
                     §§pop().§§slot[3] = §3!w§.§7%§(levelId);
                     if(!(_loc5_ && _loc3_))
                     {
                        addr96:
                        §§push(§§newactivation());
                        if(!_loc5_)
                        {
                           §§push(§§pop().§§slot[2]);
                           if(_loc6_ || §3!w§)
                           {
                              §§push(0);
                              if(!(_loc5_ && _loc3_))
                              {
                                 if(§§pop() <= §§pop())
                                 {
                                    if(!_loc5_)
                                    {
                                       §§push(0);
                                       if(_loc6_)
                                       {
                                          return §§pop();
                                       }
                                    }
                                    else
                                    {
                                       addr224:
                                       if(score >= level.mScoreSilver)
                                       {
                                          addr168:
                                          §§push(§§newactivation());
                                          if(_loc6_ || §3!w§)
                                          {
                                             addr178:
                                             §§push(§§pop().§§slot[2]);
                                             §§push(§§newactivation());
                                             if(!(_loc5_ && §3!w§))
                                             {
                                                §§push(§§pop().§§slot[3]);
                                                if(_loc6_ || _loc3_)
                                                {
                                                   §§push(§§pop().mScoreGold);
                                                   if(!_loc5_)
                                                   {
                                                      addr197:
                                                      if(§§pop() < §§pop())
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               if(!(_loc5_ && param1))
                                                               {
                                                                  addr140:
                                                                  §§push(3);
                                                                  if(_loc6_ || §3!w§)
                                                                  {
                                                                     if(_loc6_ || _loc3_)
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           if(!(_loc6_ || param2))
                                                                           {
                                                                              §§goto(addr224);
                                                                           }
                                                                           return §§pop();
                                                                        }
                                                                        §§goto(addr229);
                                                                     }
                                                                     §§goto(addr178);
                                                                  }
                                                                  §§goto(addr201);
                                                               }
                                                               addr228:
                                                               addr229:
                                                               return §§pop();
                                                               §§push(1);
                                                            }
                                                            §§goto(addr168);
                                                         }
                                                         addr201:
                                                         return §§pop();
                                                         §§push(2);
                                                      }
                                                      §§goto(addr140);
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr224);
                                       }
                                       §§goto(addr228);
                                       addr139:
                                    }
                                    §§goto(addr140);
                                 }
                                 §§goto(addr224);
                              }
                              §§goto(addr197);
                           }
                           §§goto(addr229);
                        }
                        §§goto(addr178);
                     }
                     §§goto(addr139);
                  }
               }
               catch(e:Error)
               {
                  addr83:
                  §§goto(addr96);
               }
               §§goto(addr224);
            }
         }
      }
      
      public static function §'f§(param1:String) : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(!§&A§[param1])
            {
               if(!(_loc3_ && _loc3_))
               {
                  §§push(§ for§);
                  if(_loc2_ || §3!w§)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr63:
                  return param1;
               }
               return §§pop();
            }
         }
         §§goto(addr63);
      }
      
      public static function loadLevel(param1:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:§"! § = null;
         if(_loc4_)
         {
            if(param1 != §%n§)
            {
               loop0:
               while(true)
               {
                  §§push(§?!#§(param1));
                  if(!_loc5_)
                  {
                     §§push(int(§§pop()));
                  }
                  while(true)
                  {
                     _loc2_ = §§pop();
                     addr97:
                     while(true)
                     {
                        §§push(_loc2_);
                        if(!_loc4_)
                        {
                           break;
                        }
                        if(§§pop() >= 0)
                        {
                           continue loop0;
                        }
                        §8H§ = §%n§;
                        if(_loc4_)
                        {
                           addr134:
                           §%n§ = null;
                        }
                     }
                  }
               }
            }
            §§goto(addr137);
         }
         §§goto(addr42);
      }
      
      public static function §#!e§() : String
      {
         return §%n§.substring(5);
      }
      
      public static function §4I§() : §"! §
      {
         return §=9§[§&"&§];
      }
      
      public static function §1!y§() : Boolean
      {
         return true;
      }
      
      public static function §4k§() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§;d§());
         if(!_loc3_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(§4I§().§3!2§(§%n§ + "-OUTRO"));
         if(!_loc3_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  continue;
               }
               if(_loc3_ && _loc2_)
               {
                  while(true)
                  {
                     continue loop0;
                     addr66:
                     if(_loc4_ || _loc1_)
                     {
                        §5!a§.§;t§(_loc2_);
                        addr36:
                        §§push(true);
                        if(_loc4_)
                        {
                           return §§pop();
                        }
                        addr97:
                        return §§pop();
                        addr76:
                     }
                  }
               }
            }
         }
         §§goto(addr97);
         §§push(false);
      }
      
      public static function §;d§() : String
      {
         return §4I§().§;d§(§%n§);
      }
   }
}
