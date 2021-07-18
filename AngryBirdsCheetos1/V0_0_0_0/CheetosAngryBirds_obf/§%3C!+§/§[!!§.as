package §<!+§
{
   import §8a§.§[!7§;
   
   public class §[!!§
   {
      
      public static const §`k§:String = "1-1";
      
      protected static var § [§:Array = null;
      
      protected static var §&r§:Array;
      
      protected static var §^R§:Array;
      
      public static var §7!F§:String = null;
      
      public static var §7R§:String = null;
      
      public static var §"#§:Boolean;
      
      public static var §"U§:int = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §`k§ = "1-1";
            while(true)
            {
               § [§ = null;
               while(_loc2_)
               {
                  loop6:
                  while(_loc2_ || _loc2_)
                  {
                     §"U§ = 0;
                     if(_loc1_)
                     {
                        continue;
                     }
                     addr30:
                     if(!(_loc1_ && §[!!§))
                     {
                        return;
                     }
                     loop5:
                     while(true)
                     {
                        if(!(_loc1_ && _loc2_))
                        {
                           if(!_loc1_)
                           {
                              §7R§ = null;
                              continue loop6;
                           }
                           addr83:
                           while(true)
                           {
                              §^R§ = [];
                              break loop5;
                           }
                        }
                        break;
                        §§goto(addr30);
                     }
                     while(true)
                     {
                        §7!F§ = null;
                        §§goto(addr64);
                     }
                     addr64:
                  }
               }
            }
         }
         while(true)
         {
            §&r§ = [];
            §§goto(addr83);
         }
      }
      
      public function §[!!§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super();
         }
      }
      
      public static function §4;§(param1:Object) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc2_:Object = null;
         var _loc3_:§2s§ = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:* = 0;
         if(_loc12_)
         {
            § [§ = new Array();
         }
         loop0:
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §2s§();
            if(_loc12_ || param1)
            {
               _loc3_.levelsPerPage = _loc2_.levelsPerPage;
               loop1:
               while(true)
               {
                  _loc3_.name = _loc2_.name;
                  while(true)
                  {
                     _loc3_.menuImage = _loc2_.menuImage;
                     while(true)
                     {
                        _loc3_.§+y§ = _loc2_.leftCorner;
                        if(!_loc12_)
                        {
                           break;
                        }
                        addr131:
                        if(!(_loc11_ && param1))
                        {
                           _loc3_.§2!J§ = _loc2_.pageColors;
                           if(!(_loc12_ || §[!!§))
                           {
                              break;
                           }
                           continue loop1;
                        }
                     }
                     addr234:
                     § [§.push(_loc3_);
                     if(!(_loc11_ && §[!!§))
                     {
                        addr245:
                        var _loc9_:* = 0;
                        if(_loc12_)
                        {
                           var _loc10_:* = _loc3_.pageIndexes;
                           if(_loc11_ && _loc2_)
                           {
                           }
                           addr345:
                           for each(_loc4_ in _loc10_)
                           {
                              addr330:
                              §§push(1);
                              if(_loc12_ || _loc3_)
                              {
                                 _loc6_ = §§pop();
                                 if(!(_loc11_ && _loc2_))
                                 {
                                    addr331:
                                    addr332:
                                    if(_loc6_ > _loc3_.levelsPerPage)
                                    {
                                       §§goto(addr345);
                                    }
                                    §§push(§^R§);
                                    §§push(_loc4_ + "-");
                                    if(_loc12_ || param1)
                                    {
                                       §§push(§§pop() + _loc6_);
                                    }
                                    §§pop()[§§pop()] = _loc3_.name;
                                    addr278:
                                    if(!(_loc11_ && param1))
                                    {
                                       _loc6_++;
                                       if(!(_loc11_ && §[!!§))
                                       {
                                          if(_loc12_ || param1)
                                          {
                                             if(false)
                                             {
                                                §§goto(addr278);
                                             }
                                             §§goto(addr331);
                                          }
                                          §§goto(addr330);
                                       }
                                    }
                                 }
                                 §§goto(addr345);
                              }
                              §§goto(addr332);
                           }
                           addr347:
                        }
                        addr348:
                     }
                     continue loop0;
                     addr76:
                     if(!(_loc12_ || param1))
                     {
                        continue;
                     }
                     if(false)
                     {
                        while(true)
                        {
                           _loc3_.levelButtons = _loc2_.levelButtons;
                           while(true)
                           {
                              _loc3_.writtenName = _loc2_.writtenName;
                              if(!_loc11_)
                              {
                                 if(!(_loc12_ || §[!!§))
                                 {
                                    continue;
                                 }
                                 §§goto(addr76);
                              }
                              §§goto(addr234);
                           }
                        }
                        addr85:
                     }
                     if(_loc2_.cutscenes)
                     {
                        if(_loc12_ || §[!!§)
                        {
                           §§push(0);
                           if(!_loc11_)
                           {
                              _loc9_ = §§pop();
                              if(_loc12_ || _loc2_)
                              {
                                 _loc10_ = _loc2_.cutscenes;
                                 if(!_loc11_)
                                 {
                                    addr217:
                                    §§push(§§hasnext(_loc10_,_loc9_));
                                    if(_loc12_)
                                    {
                                       if(§§pop())
                                       {
                                          _loc5_ = §§nextname(_loc9_,_loc10_);
                                          if(!_loc11_)
                                          {
                                             addr210:
                                             _loc3_.§2!+§(_loc5_,_loc2_.cutscenes[_loc5_]);
                                          }
                                          §§goto(addr217);
                                       }
                                       if(!_loc11_)
                                       {
                                          if(!(_loc11_ && _loc2_))
                                          {
                                             if(!_loc12_)
                                             {
                                                continue loop0;
                                             }
                                             §§goto(addr234);
                                          }
                                          §§goto(addr348);
                                       }
                                       §§goto(addr347);
                                    }
                                    §§goto(addr345);
                                 }
                                 §§goto(addr210);
                              }
                              §§goto(addr348);
                           }
                           §§goto(addr245);
                        }
                     }
                     §§goto(addr234);
                  }
               }
            }
            while(true)
            {
               _loc3_.§9!-§ = _loc2_.rightCorner;
               if(_loc11_ && §[!!§)
               {
                  break;
               }
               §§goto(addr131);
            }
         }
      }
      
      public static function §?!Q§() : void
      {
      }
      
      public static function §5S§(param1:String) : §2s§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§2s§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = § [§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!(_loc5_ || _loc2_))
               {
                  break;
               }
               if(_loc2_.§<!A§(param1))
               {
                  if(_loc5_)
                  {
                     break;
                  }
               }
            }
            return null;
         }
         return _loc2_;
      }
      
      public static function § F§(param1:String) : int
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§2s§ = null;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(_loc5_)
            {
               break;
            }
            if(§§pop() >= § [§.length)
            {
               break;
            }
            _loc3_ = § [§[_loc2_];
            if(_loc4_ || §[!!§)
            {
               if(_loc3_.§<!A§(param1))
               {
                  if(!(_loc5_ && param1))
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
      
      public static function §,3§(param1:int) : §2s§
      {
         return § [§[param1];
      }
      
      public static function §@i§() : int
      {
         return § [§.length;
      }
      
      public static function §1L§(param1:String) : §with§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(§&r§);
            if(_loc3_)
            {
               §§push(param1);
               if(_loc3_)
               {
                  if(!§§pop()[§§pop()])
                  {
                     if(!_loc2_)
                     {
                        §§push(§^R§);
                        if(_loc3_)
                        {
                           §§push(param1);
                           if(!(_loc2_ && _loc2_))
                           {
                              if(§§pop()[§§pop()] == null)
                              {
                                 if(!_loc2_)
                                 {
                                    throw new Error("Error! Level \'" + param1 + "\' does not exist.");
                                    addr60:
                                 }
                              }
                           }
                           §§goto(addr80);
                        }
                        addr79:
                        addr80:
                        return §§pop()[§§pop()];
                        §§push(param1);
                     }
                     §§goto(addr60);
                  }
                  §§goto(addr79);
                  §§push(§&r§);
               }
               §§goto(addr80);
            }
            §§goto(addr79);
         }
         §§goto(addr60);
      }
      
      public static function §,!Q§(param1:String, param2:§with§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §&r§[param1] = param2;
         }
      }
      
      public static function §``§(param1:String, param2:int) : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[3] = null;
            addr60:
            while(true)
            {
               addr51:
               while(true)
               {
                  §§push(§§newactivation());
                  while(true)
                  {
                     §§pop().§§slot[1] = param1;
                     addr55:
                     while(true)
                     {
                        §§push(§§newactivation());
                        if(!_loc6_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
      }
      
      public static function §[N§(param1:String) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            if(!§^R§[param1])
            {
               if(_loc3_)
               {
                  addr40:
                  §§push(§`k§);
                  if(_loc3_ || param1)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr59:
                  return param1;
               }
               return §§pop();
            }
            §§goto(addr59);
         }
         §§goto(addr40);
      }
      
      public static function §,s§(param1:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:§2s§ = null;
         if(!_loc5_)
         {
            if(param1 != §7!F§)
            {
               loop0:
               while(true)
               {
                  §§push(§ F§(param1));
                  if(!_loc5_)
                  {
                     §§push(int(§§pop()));
                  }
                  loop1:
                  while(true)
                  {
                     _loc2_ = §§pop();
                     addr92:
                     loop2:
                     while(true)
                     {
                        §§push(_loc2_);
                        if(_loc5_)
                        {
                           continue loop1;
                        }
                        if(§§pop() >= 0)
                        {
                           loop3:
                           while(true)
                           {
                              §"U§ = _loc2_;
                              if(_loc4_)
                              {
                                 while(true)
                                 {
                                    §7R§ = §7!F§;
                                    if(!(_loc4_ || param1))
                                    {
                                       §7!F§ = null;
                                    }
                                    else
                                    {
                                       addr129:
                                    }
                                    if(_loc4_)
                                    {
                                       if(_loc5_ && _loc2_)
                                       {
                                          continue loop2;
                                       }
                                       continue loop0;
                                       §7!F§ = param1;
                                    }
                                    continue loop3;
                                    if(_loc4_ || _loc2_)
                                    {
                                       if(true)
                                       {
                                          _loc3_ = §9!!§();
                                          if(!_loc5_)
                                          {
                                             if(_loc3_)
                                             {
                                                if(!(_loc5_ && _loc2_))
                                                {
                                                   _loc3_.currentPage = _loc3_.§,!E§(param1);
                                                }
                                             }
                                          }
                                       }
                                       continue;
                                       break;
                                    }
                                    addr69:
                                    break;
                                 }
                              }
                           }
                        }
                        else
                        {
                           §7R§ = §7!F§;
                           if(!_loc5_)
                           {
                              §§goto(addr129);
                           }
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr92);
      }
      
      public static function §9E§() : String
      {
         return §7!F§.substring(5);
      }
      
      public static function §9!!§() : §2s§
      {
         return § [§[§"U§];
      }
      
      public static function §@l§() : Boolean
      {
         return true;
      }
      
      public static function §+i§() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§?I§());
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(§9!!§().§%F§(§7!F§ + "-OUTRO"));
         if(!_loc3_)
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
                  if(!(_loc3_ && §[!!§))
                  {
                     if(_loc3_)
                     {
                        continue loop0;
                     }
                     if(§§pop() == null)
                     {
                        while(true)
                        {
                           §[!7§.§#!,§(_loc2_);
                           if(_loc4_)
                           {
                              if(!(_loc3_ && _loc2_))
                              {
                                 if(_loc4_ || _loc1_)
                                 {
                                    §§push(true);
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       if(!_loc3_)
                                       {
                                          return §§pop();
                                       }
                                       §§goto(addr123);
                                    }
                                    break;
                                 }
                                 break loop0;
                              }
                              continue loop1;
                           }
                           if(!(_loc3_ && §[!!§))
                           {
                              continue;
                           }
                        }
                        §§goto(addr84);
                     }
                     if(!(_loc3_ && _loc1_))
                     {
                        addr113:
                        §§push(_loc1_);
                        break;
                     }
                     addr84:
                     return §§pop();
                     §§push(false);
                  }
                  break;
               }
               if(§§pop().charAt(0) != §7!F§.charAt(0))
               {
                  if(_loc4_)
                  {
                     addr123:
                     if(!(_loc3_ && _loc3_))
                     {
                        return §§pop();
                     }
                     addr145:
                     return §§pop();
                     §§push(true);
                  }
                  else
                  {
                     §§goto(addr141);
                  }
               }
               §§goto(addr141);
            }
            §§goto(addr145);
            §§push(false);
         }
         §§goto(addr113);
      }
      
      public static function §?I§() : String
      {
         return §9!!§().§?I§(§7!F§);
      }
   }
}
