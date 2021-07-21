package §-!0§
{
   import §9!$§.§,i§;
   
   public class §1^§
   {
      
      public static const §;!8§:String = "1-1";
      
      protected static var §]Q§:Array = null;
      
      protected static var §5o§:Array = [];
      
      protected static var § _§:Array;
      
      public static var § ]§:String = null;
      
      public static var §3W§:String = null;
      
      public static var §,6§:Boolean;
      
      public static var §<J§:int = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            § _§ = [];
            § ]§ = null;
            §3W§ = null;
            if(_loc2_)
            {
               §<J§ = 0;
            }
         }
      }
      
      public function §1^§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §2A§(param1:Object) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc2_:Object = null;
         var _loc3_:§4!N§ = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:* = 0;
         if(!(_loc11_ && _loc2_))
         {
            §]Q§ = new Array();
         }
         loop0:
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §4!N§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            if(_loc12_)
            {
               _loc3_.name = _loc2_.name;
               if(_loc12_)
               {
                  _loc3_.menuImage = _loc2_.menuImage;
                  if(!(_loc12_ || _loc2_))
                  {
                     continue;
                  }
                  _loc3_.§!!6§ = _loc2_.leftCorner;
               }
               _loc3_.§1!§ = _loc2_.rightCorner;
               _loc3_.§2!f§ = _loc2_.pageColors;
               _loc3_.pageIndexes = _loc2_.pageIndexes;
               if(!(_loc11_ && param1))
               {
                  _loc3_.levelButtons = _loc2_.levelButtons;
                  if(_loc12_ || _loc2_)
                  {
                     _loc3_.writtenName = _loc2_.writtenName;
                     if(_loc2_.cutscenes)
                     {
                        §§push(0);
                        if(!_loc11_)
                        {
                           var _loc9_:* = §§pop();
                           if(!(_loc11_ && _loc2_))
                           {
                              var _loc10_:* = _loc2_.cutscenes;
                              if(_loc12_ || _loc3_)
                              {
                              }
                              loop1:
                              while(true)
                              {
                                 §§push(§§hasnext(_loc10_,_loc9_));
                                 if(!(_loc11_ && §1^§))
                                 {
                                    if(§§pop())
                                    {
                                       _loc5_ = §§nextname(_loc9_,_loc10_);
                                       if(!(_loc11_ && param1))
                                       {
                                          _loc3_.§%!'§(_loc5_,_loc2_.cutscenes[_loc5_]);
                                       }
                                       continue;
                                    }
                                    if(_loc12_ || _loc2_)
                                    {
                                       if(!_loc11_)
                                       {
                                          if(_loc12_)
                                          {
                                             addr198:
                                             §]Q§.push(_loc3_);
                                             addr202:
                                             _loc9_ = 0;
                                             addr201:
                                             if(!(_loc11_ && §1^§))
                                             {
                                                _loc10_ = _loc3_.pageIndexes;
                                                if(_loc11_)
                                                {
                                                }
                                                while(true)
                                                {
                                                   §§push(§§hasnext(_loc10_,_loc9_));
                                                   break loop1;
                                                }
                                                addr278:
                                             }
                                             addr281:
                                          }
                                          continue loop0;
                                       }
                                    }
                                    §§goto(addr281);
                                 }
                                 break;
                              }
                              for(; §§pop(); §§goto(addr278))
                              {
                                 _loc4_ = §§nextvalue(_loc9_,_loc10_);
                                 if(_loc12_ || _loc3_)
                                 {
                                    §§push(1);
                                    if(!(_loc11_ && §1^§))
                                    {
                                       _loc6_ = §§pop();
                                       if(!_loc12_)
                                       {
                                          continue;
                                       }
                                       addr241:
                                       while(true)
                                       {
                                          §§push(_loc6_);
                                       }
                                       addr274:
                                    }
                                    while(§§pop() <= _loc3_.levelsPerPage)
                                    {
                                       §§push(§ _§);
                                       §§push(_loc4_ + "-");
                                       if(_loc12_)
                                       {
                                          §§push(§§pop() + _loc6_);
                                       }
                                       §§pop()[§§pop()] = _loc3_.name;
                                       if(_loc12_ || param1)
                                       {
                                          _loc6_++;
                                          if(!_loc12_)
                                          {
                                             break;
                                          }
                                       }
                                       §§goto(addr274);
                                    }
                                    continue;
                                 }
                                 §§goto(addr241);
                              }
                              §§goto(addr280);
                           }
                           §§goto(addr281);
                        }
                        §§goto(addr202);
                     }
                     §§goto(addr198);
                  }
                  §§goto(addr201);
               }
            }
            §§goto(addr198);
         }
      }
      
      public static function §=9§() : void
      {
      }
      
      public static function §['§(param1:String) : §4!N§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§4!N§ = null;
         for each(_loc2_ in §]Q§)
         {
            if(_loc5_)
            {
               if(_loc2_.§,!k§(param1))
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
      
      public static function §8t§(param1:String) : int
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§4!N§ = null;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(!_loc4_)
            {
               break;
            }
            if(§§pop() >= §]Q§.length)
            {
               break;
            }
            _loc3_ = §]Q§[_loc2_];
            if(_loc4_ || _loc2_)
            {
               if(_loc3_.§,!k§(param1))
               {
                  if(!_loc5_)
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
      
      public static function §?!0§(param1:int) : §4!N§
      {
         return §]Q§[param1];
      }
      
      public static function §9!d§() : int
      {
         return §]Q§.length;
      }
      
      public static function §'!_§(param1:String) : §2! §
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(§5o§);
            if(_loc3_ || _loc2_)
            {
               §§push(param1);
               if(!_loc2_)
               {
                  if(!§§pop()[§§pop()])
                  {
                     if(_loc3_)
                     {
                        §§push(§ _§);
                        if(!(_loc2_ && §1^§))
                        {
                           addr62:
                           §§push(param1);
                           if(_loc3_ || param1)
                           {
                              if(§§pop()[§§pop()] == null)
                              {
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    §§goto(addr80);
                                 }
                                 else
                                 {
                                    addr88:
                                    §§push(§5o§);
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
                     §§goto(addr80);
                  }
                  §§goto(addr88);
               }
               §§goto(addr90);
            }
            §§goto(addr62);
         }
         addr80:
         throw new Error("Error! Level \'" + param1 + "\' does not exist.");
      }
      
      public static function §`'§(param1:String, param2:§2! §) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §5o§[param1] = param2;
         }
      }
      
      public static function §>6§(param1:String, param2:int) : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         if(_loc6_)
         {
            §§pop().§§slot[3] = null;
            if(!(_loc5_ && param2))
            {
               §§push(§§newactivation());
               if(_loc6_ || _loc3_)
               {
                  §§pop().§§slot[1] = param1;
                  if(!(_loc5_ && param2))
                  {
                     addr52:
                     var score:int = param2;
                  }
               }
               §§goto(addr52);
            }
            try
            {
               §§push(§§newactivation());
               if(_loc6_ || param2)
               {
                  §§pop().§§slot[3] = §1^§.§'!_§(levelId);
                  if(!(_loc5_ && _loc3_))
                  {
                     addr99:
                     §§push(§§newactivation());
                     if(_loc6_ || _loc3_)
                     {
                        §§push(§§pop().§§slot[2]);
                        if(_loc6_)
                        {
                           §§push(0);
                           if(!(_loc5_ && §1^§))
                           {
                              if(§§pop() <= §§pop())
                              {
                                 §§goto(addr120);
                              }
                              §§push(§§newactivation());
                              if(_loc6_)
                              {
                                 addr124:
                                 §§push(§§pop().§§slot[2]);
                                 §§push(§§newactivation());
                                 if(_loc6_ || param1)
                                 {
                                    §§push(§§pop().§§slot[3]);
                                    if(!(_loc5_ && §1^§))
                                    {
                                       §§push(§§pop().§6!H§);
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          addr159:
                                          if(§§pop() >= §§pop())
                                          {
                                             §§goto(addr170);
                                          }
                                          §§push(1);
                                          if(!(_loc5_ && _loc3_))
                                          {
                                             return §§pop();
                                          }
                                          §§goto(addr182);
                                       }
                                    }
                                 }
                                 §§goto(addr176);
                              }
                              addr170:
                              §§push(score);
                              if(_loc6_)
                              {
                                 addr176:
                                 if(§§pop() < level.§9>§)
                                 {
                                    addr177:
                                    §§push(2);
                                    if(!_loc6_)
                                    {
                                       §§goto(addr182);
                                    }
                                 }
                                 else
                                 {
                                    addr182:
                                    return §§pop();
                                    §§push(3);
                                 }
                                 §§goto(addr182);
                              }
                              return §§pop();
                           }
                           §§goto(addr159);
                        }
                        addr120:
                        return 0;
                     }
                     §§goto(addr124);
                  }
                  §§goto(addr177);
               }
            }
            catch(e:Error)
            {
               §§goto(addr99);
            }
            §§goto(addr124);
         }
         §§goto(addr52);
      }
      
      public static function §=h§(param1:String) : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(!§ _§[param1])
            {
               if(!_loc3_)
               {
                  §§push(§;!8§);
                  if(!(_loc3_ && _loc3_))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr33:
                  §§push(param1);
               }
               return §§pop();
            }
         }
         §§goto(addr33);
      }
      
      public static function loadLevel(param1:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:§4!N§ = null;
         if(_loc4_)
         {
            if(param1 != § ]§)
            {
               if(_loc4_)
               {
                  §§push(§8t§(param1));
                  if(!_loc5_)
                  {
                     §§push(int(§§pop()));
                     if(_loc4_ || §1^§)
                     {
                        addr41:
                        _loc2_ = §§pop();
                        if(_loc4_)
                        {
                           addr45:
                           if(_loc2_ >= 0)
                           {
                              if(_loc4_)
                              {
                                 §<J§ = _loc2_;
                                 if(_loc4_ || param1)
                                 {
                                    §§goto(addr69);
                                 }
                              }
                              §§goto(addr69);
                           }
                           else
                           {
                              §3W§ = § ]§;
                              if(_loc4_ || _loc2_)
                              {
                              }
                              §§goto(addr125);
                           }
                        }
                        § ]§ = param1;
                        if(!_loc5_)
                        {
                           addr79:
                           _loc3_ = §'j§();
                           if(!(_loc5_ && _loc2_))
                           {
                              if(_loc3_)
                              {
                                 if(_loc4_ || _loc2_)
                                 {
                                    addr109:
                                    _loc3_.§2!%§ = _loc3_.§#;§(param1);
                                 }
                              }
                              §§goto(addr125);
                           }
                           §§goto(addr109);
                        }
                        §§goto(addr125);
                     }
                     §§goto(addr45);
                  }
                  §§goto(addr41);
               }
               addr69:
               §3W§ = § ]§;
               if(!_loc4_)
               {
                  addr125:
                  § ]§ = null;
                  §§goto(addr128);
               }
               addr128:
               return;
            }
            §§goto(addr125);
         }
         §§goto(addr79);
      }
      
      public static function §var §() : String
      {
         return § ]§.substring(5);
      }
      
      public static function §'j§() : §4!N§
      {
         return §]Q§[§<J§];
      }
      
      public static function §5x§() : Boolean
      {
         return true;
      }
      
      public static function §`!?§() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§`!L§());
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(§'j§().§8!Z§(§ ]§ + "-OUTRO"));
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || _loc2_)
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               if(!§§pop())
               {
                  if(_loc4_ || _loc3_)
                  {
                     §§push(false);
                     if(_loc4_ || _loc1_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr92:
                     §,i§.§4I§(_loc2_);
                     addr95:
                     §§push(true);
                  }
                  return §§pop();
               }
               §§push(_loc1_);
               §§goto(addr95);
            }
            if(§§pop() == null)
            {
               if(_loc4_ || _loc3_)
               {
                  §§goto(addr92);
               }
            }
         }
         §§goto(addr92);
      }
      
      public static function §`!L§() : String
      {
         return §'j§().§`!L§(§ ]§);
      }
   }
}
