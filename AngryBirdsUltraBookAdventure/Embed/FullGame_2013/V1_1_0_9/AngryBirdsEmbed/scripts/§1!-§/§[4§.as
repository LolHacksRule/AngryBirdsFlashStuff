package §1!-§
{
   import §&p§.§^!C§;
   
   public class §[4§
   {
      
      public static const §<=§:String = "1-1";
      
      protected static var §<-§:Array = null;
      
      protected static var §;0§:Array = [];
      
      protected static var §[!>§:Array;
      
      public static var §"!>§:String = null;
      
      public static var § !7§:String = null;
      
      public static var §<!L§:Boolean;
      
      public static var § m§:int = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §[!>§ = [];
            if(!(_loc1_ && _loc1_))
            {
               §"!>§ = null;
               addr51:
               § !7§ = null;
               if(!_loc1_)
               {
                  § m§ = 0;
               }
            }
            return;
         }
         §§goto(addr51);
      }
      
      public function §[4§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
      }
      
      public static function §6!+§(param1:Object) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc2_:Object = null;
         var _loc3_:§2n§ = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:* = 0;
         if(!(_loc12_ && _loc3_))
         {
            §<-§ = new Array();
         }
         loop0:
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §2n§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            if(!_loc12_)
            {
               _loc3_.name = _loc2_.name;
               if(_loc11_ || param1)
               {
                  _loc3_.menuImage = _loc2_.menuImage;
                  if(_loc11_ || _loc3_)
                  {
                     _loc3_.§-!'§ = _loc2_.leftCorner;
                     _loc3_.§6!>§ = _loc2_.rightCorner;
                     _loc3_.§ 9§ = _loc2_.pageColors;
                     if(_loc11_)
                     {
                        _loc3_.pageIndexes = _loc2_.pageIndexes;
                        if(_loc11_ || _loc3_)
                        {
                           _loc3_.levelButtons = _loc2_.levelButtons;
                           addr115:
                           _loc3_.writtenName = _loc2_.writtenName;
                           if(_loc2_.cutscenes)
                           {
                              if(_loc12_ && §[4§)
                              {
                                 continue;
                              }
                              addr129:
                              §§push(0);
                              if(_loc11_ || param1)
                              {
                                 var _loc9_:* = §§pop();
                                 if(_loc11_ || _loc3_)
                                 {
                                    var _loc10_:* = _loc2_.cutscenes;
                                    if(_loc11_)
                                    {
                                       loop1:
                                       while(true)
                                       {
                                          §§push(§§hasnext(_loc10_,_loc9_));
                                          if(_loc11_ || _loc3_)
                                          {
                                             if(!§§pop())
                                             {
                                                if(!(_loc12_ && §[4§))
                                                {
                                                   if(!(_loc12_ && _loc2_))
                                                   {
                                                      if(_loc11_ || _loc3_)
                                                      {
                                                         addr214:
                                                         §<-§.push(_loc3_);
                                                         addr218:
                                                         _loc9_ = 0;
                                                         addr217:
                                                         if(_loc11_)
                                                         {
                                                            _loc10_ = _loc3_.pageIndexes;
                                                            addr290:
                                                            if(!(_loc12_ && param1))
                                                            {
                                                               addr294:
                                                               while(true)
                                                               {
                                                                  §§push(§§hasnext(_loc10_,_loc9_));
                                                                  break loop1;
                                                               }
                                                               addr294:
                                                            }
                                                            loop4:
                                                            while(true)
                                                            {
                                                               §§push(_loc6_);
                                                               addr291:
                                                               while(§§pop() <= _loc3_.levelsPerPage)
                                                               {
                                                                  §§push(§[!>§);
                                                                  §§push(_loc4_ + "-");
                                                                  if(!(_loc12_ && §[4§))
                                                                  {
                                                                     §§push(§§pop() + _loc6_);
                                                                  }
                                                                  §§pop()[§§pop()] = _loc3_.name;
                                                                  if(_loc11_)
                                                                  {
                                                                     _loc6_++;
                                                                     if(_loc12_ && _loc2_)
                                                                     {
                                                                        break;
                                                                     }
                                                                  }
                                                                  continue loop4;
                                                               }
                                                               §§goto(addr294);
                                                            }
                                                            addr290:
                                                         }
                                                         addr297:
                                                      }
                                                      continue loop0;
                                                   }
                                                   §§goto(addr297);
                                                }
                                                addr296:
                                                §§goto(addr297);
                                             }
                                             else
                                             {
                                                _loc5_ = §§nextname(_loc9_,_loc10_);
                                                if(_loc12_ && _loc3_)
                                                {
                                                   continue;
                                                }
                                                while(true)
                                                {
                                                   _loc3_.§2!E§(_loc5_,_loc2_.cutscenes[_loc5_]);
                                                   continue loop1;
                                                }
                                             }
                                          }
                                          break;
                                       }
                                       while(§§pop())
                                       {
                                          _loc4_ = §§nextvalue(_loc9_,_loc10_);
                                          if(_loc11_)
                                          {
                                             §§push(1);
                                             if(!_loc12_)
                                             {
                                                _loc6_ = §§pop();
                                                if(_loc12_ && param1)
                                                {
                                                }
                                                §§goto(addr290);
                                             }
                                             §§goto(addr291);
                                          }
                                          §§goto(addr290);
                                          §§goto(addr294);
                                       }
                                       §§goto(addr296);
                                    }
                                    §§goto(addr175);
                                 }
                                 §§goto(addr297);
                              }
                              §§goto(addr218);
                           }
                        }
                        §§goto(addr214);
                     }
                     §§goto(addr129);
                  }
               }
               §§goto(addr217);
            }
            §§goto(addr115);
         }
      }
      
      public static function §6y§() : void
      {
      }
      
      public static function §<%§(param1:String) : §2n§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§2n§ = null;
         for each(_loc2_ in §<-§)
         {
            if(_loc6_)
            {
               if(_loc2_.§=9§(param1))
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
      
      public static function §4k§(param1:String) : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§2n§ = null;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(_loc4_ && _loc2_)
            {
               break;
            }
            if(§§pop() >= §<-§.length)
            {
               break;
            }
            _loc3_ = §<-§[_loc2_];
            if(!_loc4_)
            {
               if(_loc3_.§=9§(param1))
               {
                  if(!_loc4_)
                  {
                     return _loc2_;
                  }
               }
               _loc2_++;
            }
         }
         return §§pop();
      }
      
      public static function §2A§(param1:int) : §2n§
      {
         return §<-§[param1];
      }
      
      public static function §,,§(param1:String) : §2n§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§2n§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = §<-§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!(_loc6_ || param1))
               {
                  break;
               }
               if(_loc2_.name == param1)
               {
                  if(!(_loc5_ && _loc3_))
                  {
                     break;
                  }
               }
            }
            return null;
         }
         return _loc2_;
      }
      
      public static function §99§() : int
      {
         return §<-§.length;
      }
      
      public static function §!_§(param1:String) : §@Z§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(§;0§);
            if(_loc2_)
            {
               §§push(param1);
               if(!_loc3_)
               {
                  if(!§§pop()[§§pop()])
                  {
                     if(_loc2_)
                     {
                        §§push(§[!>§);
                        if(!(_loc3_ && §[4§))
                        {
                           §§goto(addr56);
                        }
                        §§goto(addr82);
                     }
                     §§goto(addr74);
                  }
                  §§goto(addr82);
               }
               §§goto(addr64);
            }
            addr56:
            §§push(param1);
            if(!(_loc3_ && param1))
            {
               addr64:
               if(§§pop()[§§pop()] == null)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     §§goto(addr74);
                  }
                  else
                  {
                     addr82:
                     §§push(§;0§);
                     §§push(param1);
                  }
               }
               §§goto(addr82);
            }
            return §§pop()[§§pop()];
         }
         addr74:
         throw new Error("Error! Level \'" + param1 + "\' does not exist.");
      }
      
      public static function §8z§(param1:String, param2:§@Z§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            §;0§[param1] = param2;
         }
      }
      
      public static function §"r§(param1:String, param2:int) : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         if(!_loc6_)
         {
            §§pop().§§slot[3] = null;
            if(!(_loc6_ && _loc3_))
            {
               §§push(§§newactivation());
               if(_loc5_ || param1)
               {
                  addr41:
                  §§pop().§§slot[1] = param1;
                  if(!(_loc6_ && _loc3_))
                  {
                     §§push(§§newactivation());
                  }
                  try
                  {
                     addr53:
                     §§push(§§newactivation());
                     if(!(_loc6_ && param1))
                     {
                        §§pop().§§slot[3] = §[4§.§!_§(levelId);
                        if(!_loc6_)
                        {
                           addr93:
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
                                       return 0;
                                    }
                                    addr105:
                                    §§push(§§newactivation());
                                    if(_loc5_)
                                    {
                                       §§push(§§pop().§§slot[2]);
                                       if(_loc5_)
                                       {
                                          addr111:
                                          §§push(§§newactivation());
                                          if(!(_loc6_ && §[4§))
                                          {
                                             §§push(§§pop().§§slot[3]);
                                             if(!_loc6_)
                                             {
                                                §§push(§§pop().§!x§);
                                                if(_loc5_)
                                                {
                                                   addr135:
                                                   if(§§pop() < §§pop())
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         §§push(1);
                                                         if(!(_loc6_ && §[4§))
                                                         {
                                                            return §§pop();
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr149:
                                                         if(score < level.§4!6§)
                                                         {
                                                            §§push(2);
                                                            if(_loc5_)
                                                            {
                                                               §§goto(addr158);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(3);
                                                         }
                                                      }
                                                      return §§pop();
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr149);
                                       }
                                       addr158:
                                       return §§pop();
                                    }
                                    §§goto(addr149);
                                 }
                                 §§goto(addr135);
                              }
                              §§goto(addr111);
                           }
                           §§goto(addr149);
                        }
                        §§goto(addr105);
                     }
                     §§goto(addr149);
                  }
                  catch(e:Error)
                  {
                  }
                  §§goto(addr93);
               }
               §§pop().§§slot[2] = param2;
            }
            §§goto(addr53);
         }
         §§goto(addr41);
      }
      
      public static function §![§(param1:String) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            if(!§[!>§[param1])
            {
               if(!_loc2_)
               {
                  addr40:
                  §§push(§<=§);
                  if(!_loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr44:
                  §§push(param1);
               }
               return §§pop();
            }
            §§goto(addr44);
         }
         §§goto(addr40);
      }
      
      public static function §]a§(param1:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:§2n§ = null;
         if(param1 != §"!>§)
         {
            §§push(§4k§(param1));
            if(!_loc5_)
            {
               §§push(int(§§pop()));
               if(!(_loc5_ && _loc3_))
               {
                  _loc2_ = §§pop();
                  §§push(_loc2_);
               }
            }
            if(§§pop() >= 0)
            {
               § m§ = _loc2_;
               § !7§ = §"!>§;
               §"!>§ = param1;
               if(!_loc5_)
               {
                  _loc3_ = §5C§();
                  if(!(_loc5_ && _loc2_))
                  {
                     if(_loc3_)
                     {
                        if(_loc4_ || §[4§)
                        {
                           _loc3_.§>!=§ = _loc3_.§;N§(param1);
                        }
                     }
                  }
               }
            }
            else
            {
               § !7§ = §"!>§;
               §"!>§ = null;
            }
         }
      }
      
      public static function §%t§() : String
      {
         return §"!>§.substring(5);
      }
      
      public static function §5C§() : §2n§
      {
         return §<-§[§ m§];
      }
      
      public static function §1!D§() : Boolean
      {
         return true;
      }
      
      public static function §`v§() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§4E§());
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(§5C§().§1w§(§"!>§ + "-OUTRO"));
         if(!(_loc3_ && _loc3_))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            §§push(_loc2_);
            if(!(_loc3_ && _loc1_))
            {
               if(!§§pop())
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(false);
                     if(!_loc3_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr82:
                     addr83:
                     if(_loc1_ == null)
                     {
                        if(_loc4_ || _loc2_)
                        {
                           addr92:
                           §^!C§.§3b§(_loc2_);
                        }
                     }
                     §§push(true);
                  }
                  return §§pop();
               }
               §§goto(addr82);
            }
            §§goto(addr83);
         }
         §§goto(addr92);
      }
      
      public static function §4E§() : String
      {
         return §5C§().§4E§(§"!>§);
      }
   }
}
