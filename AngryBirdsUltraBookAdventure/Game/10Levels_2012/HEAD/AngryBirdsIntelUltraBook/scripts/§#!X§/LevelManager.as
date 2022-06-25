package §#!X§
{
   import §?$§.CutSceneManager;
   
   public class LevelManager
   {
      
      public static const §get §:String = "1-1";
      
      protected static var §"-§:Array = null;
      
      protected static var §-!@§:Array;
      
      protected static var §@!P§:Array;
      
      public static var §!=§:String = null;
      
      public static var § !Y§:String = null;
      
      public static var § @§:Boolean;
      
      public static var §3V§:int = 0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §get § = "1-1";
            loop0:
            while(true)
            {
               §"-§ = null;
               while(true)
               {
                  §-!@§ = [];
                  loop2:
                  for(; !_loc2_; while(true)
                  {
                     if(!(_loc2_ && LevelManager))
                     {
                        continue;
                     }
                     continue loop2;
                  })
                  {
                     if(!_loc1_)
                     {
                        continue loop0;
                     }
                     §@!P§ = [];
                     while(true)
                     {
                        §!=§ = null;
                        addr73:
                        while(_loc1_ || LevelManager)
                        {
                           while(true)
                           {
                              § !Y§ = null;
                              continue loop2;
                           }
                           return;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr80);
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
      
      public static function §9>§(param1:Object) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc2_:Object = null;
         var _loc3_:ChapterModel = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:* = 0;
         if(!(_loc12_ && _loc3_))
         {
            §"-§ = new Array();
         }
         loop0:
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new ChapterModel();
            if(!(_loc12_ && _loc2_))
            {
               _loc3_.levelsPerPage = _loc2_.levelsPerPage;
               if(!(_loc12_ && param1))
               {
                  _loc3_.name = _loc2_.name;
                  while(true)
                  {
                     _loc3_.menuImage = _loc2_.menuImage;
                     if(_loc12_)
                     {
                        break;
                     }
                     _loc3_.§=F§ = _loc2_.leftCorner;
                     if(_loc11_ || _loc3_)
                     {
                        _loc3_.§,`§ = _loc2_.rightCorner;
                        while(true)
                        {
                           _loc3_.§79§ = _loc2_.pageColors;
                           addr115:
                           while(!(_loc12_ && _loc3_))
                           {
                              _loc3_.pageIndexes = _loc2_.pageIndexes;
                              loop14:
                              while(true)
                              {
                                 addr82:
                                 addr255:
                                 while(true)
                                 {
                                    _loc3_.levelButtons = _loc2_.levelButtons;
                                    if(!_loc11_)
                                    {
                                       break;
                                    }
                                    continue loop14;
                                 }
                                 §"-§.push(_loc3_);
                                 if(_loc12_ && _loc2_)
                                 {
                                    continue loop0;
                                 }
                                 var _loc9_:* = 0;
                                 if(_loc11_)
                                 {
                                    addr271:
                                    var _loc10_:* = _loc3_.pageIndexes;
                                    if(_loc11_)
                                    {
                                       loop3:
                                       while(true)
                                       {
                                          §§push(§§hasnext(_loc10_,_loc9_));
                                          addr372:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                break loop3;
                                             }
                                             _loc4_ = §§nextvalue(_loc9_,_loc10_);
                                             loop4:
                                             while(true)
                                             {
                                                §§push(1);
                                                addr339:
                                                while(true)
                                                {
                                                   §§push(int(§§pop()));
                                                   addr340:
                                                   while(true)
                                                   {
                                                      _loc6_ = §§pop();
                                                      if(_loc12_ && _loc2_)
                                                      {
                                                         continue loop3;
                                                      }
                                                      while(true)
                                                      {
                                                         addr367:
                                                         while(true)
                                                         {
                                                            §§push(_loc6_);
                                                            addr368:
                                                            while(true)
                                                            {
                                                               if(§§pop() <= _loc3_.levelsPerPage)
                                                               {
                                                                  §§push(§@!P§);
                                                                  §§push(_loc4_ + "-");
                                                                  if(_loc11_)
                                                                  {
                                                                     §§push(§§pop() + _loc6_);
                                                                  }
                                                                  §§pop()[§§pop()] = _loc3_.name;
                                                                  if(_loc11_)
                                                                  {
                                                                     continue loop4;
                                                                  }
                                                               }
                                                               continue loop3;
                                                            }
                                                            continue loop4;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       addr374:
                                       continue loop0;
                                       addr373:
                                    }
                                    §§goto(addr310);
                                 }
                                 §§goto(addr374);
                              }
                           }
                        }
                        addr128:
                     }
                     if(_loc12_ && _loc3_)
                     {
                        continue;
                     }
                     _loc3_.writtenName = _loc2_.writtenName;
                     if(_loc11_ || param1)
                     {
                        if(_loc11_)
                        {
                           if(false)
                           {
                              §§goto(addr82);
                           }
                           if(_loc2_.cutscenes)
                           {
                              if(!(_loc12_ && _loc3_))
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           §§goto(addr255);
                        }
                        §§goto(addr115);
                     }
                     §§goto(addr255);
                  }
                  §§push(0);
                  if(!_loc12_)
                  {
                     _loc9_ = §§pop();
                     if(_loc11_ || LevelManager)
                     {
                        _loc10_ = _loc2_.cutscenes;
                        if(_loc11_ || param1)
                        {
                        }
                        while(true)
                        {
                           §§push(§§hasnext(_loc10_,_loc9_));
                           if(_loc11_ || LevelManager)
                           {
                              if(§§pop())
                              {
                                 _loc5_ = §§nextname(_loc9_,_loc10_);
                                 if(_loc11_ || param1)
                                 {
                                    _loc3_.§[K§(_loc5_,_loc2_.cutscenes[_loc5_]);
                                 }
                                 continue;
                              }
                              if(_loc11_)
                              {
                                 if(_loc11_)
                                 {
                                    if(_loc11_ || _loc2_)
                                    {
                                       §§goto(addr255);
                                    }
                                    §§goto(addr267);
                                 }
                                 §§goto(addr271);
                              }
                              §§goto(addr373);
                           }
                           break;
                        }
                        §§goto(addr372);
                     }
                     §§goto(addr374);
                  }
               }
               §§goto(addr268);
            }
            §§goto(addr128);
         }
      }
      
      public static function §@!C§() : void
      {
      }
      
      public static function §'!7§(param1:String) : ChapterModel
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:ChapterModel = null;
         var _loc3_:int = 0;
         var _loc4_:* = §"-§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!(_loc5_ || _loc2_))
               {
                  break;
               }
               if(_loc2_.§15§(param1))
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
      
      public static function §-!B§(param1:String) : int
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:ChapterModel = null;
         §§push(0);
         if(!(_loc5_ && _loc2_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            §§push(_loc2_);
            if(_loc5_)
            {
               break;
            }
            if(§§pop() >= §"-§.length)
            {
               break;
            }
            _loc3_ = §"-§[_loc2_];
            if(_loc4_)
            {
               if(_loc3_.§15§(param1))
               {
                  if(_loc4_)
                  {
                     §§push(_loc2_);
                     if(_loc4_)
                     {
                        return §§pop();
                     }
                     continue;
                  }
               }
            }
            §§push(_loc2_);
            if(_loc4_ || _loc2_)
            {
               §§push(§§pop() + 1);
               if(_loc5_)
               {
                  continue;
               }
            }
            return int(§§pop());
         }
         return §§pop();
      }
      
      public static function § m§(param1:int) : ChapterModel
      {
         return §"-§[param1];
      }
      
      public static function §&!;§(param1:String) : ChapterModel
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:ChapterModel = null;
         for each(_loc2_ in §"-§)
         {
            if(_loc6_)
            {
               if(_loc2_.name == param1)
               {
                  if(!(_loc5_ && param1))
                  {
                     return _loc2_;
                  }
               }
            }
         }
         return null;
      }
      
      public static function §8H§() : int
      {
         return §"-§.length;
      }
      
      public static function §<l§(param1:String) : LevelModel
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(§-!@§);
            if(_loc3_ || _loc2_)
            {
               §§push(param1);
               if(_loc3_ || _loc3_)
               {
                  if(!§§pop()[§§pop()])
                  {
                     if(!(_loc2_ && param1))
                     {
                        §§push(§@!P§);
                        if(!(_loc2_ && _loc2_))
                        {
                           addr75:
                           §§push(param1);
                           if(_loc3_)
                           {
                              if(§§pop()[§§pop()] == null)
                              {
                                 if(!(_loc2_ && LevelManager))
                                 {
                                    §§goto(addr88);
                                 }
                                 else
                                 {
                                    addr96:
                                    §§push(§-!@§);
                                 }
                              }
                              §§goto(addr96);
                           }
                           §§goto(addr99);
                        }
                        addr99:
                        return §§pop()[§§pop()];
                        §§push(param1);
                     }
                     addr88:
                     throw new Error("Error! Level \'" + param1 + "\' does not exist.");
                  }
                  §§goto(addr96);
               }
               §§goto(addr99);
            }
            §§goto(addr75);
         }
         §§goto(addr96);
      }
      
      public static function §"@§(param1:String, param2:LevelModel) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && LevelManager))
         {
            §-!@§[param1] = param2;
         }
      }
      
      public static function §%!"§(param1:String, param2:int) : int
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
                  while(true)
                  {
                     §§pop().§§slot[1] = param1;
                     while(true)
                     {
                        §§push(§§newactivation());
                        if(_loc6_ && param1)
                        {
                           break;
                        }
                        if(!_loc5_)
                        {
                           continue loop0;
                        }
                        §§pop().§§slot[2] = param2;
                        if(_loc6_ && _loc3_)
                        {
                           continue;
                        }
                        if(!_loc5_)
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
                           if(!_loc6_)
                           {
                              §§pop().§§slot[3] = LevelManager.§<l§(levelId);
                              if(!(_loc6_ && LevelManager))
                              {
                                 addr86:
                                 §§push(§§newactivation());
                                 if(_loc5_ || LevelManager)
                                 {
                                    §§push(§§pop().§§slot[2]);
                                    if(_loc5_ || LevelManager)
                                    {
                                       §§push(0);
                                       if(_loc5_)
                                       {
                                          if(§§pop() <= §§pop())
                                          {
                                             if(_loc5_ || param2)
                                             {
                                                §§push(0);
                                                if(_loc5_)
                                                {
                                                   return §§pop();
                                                }
                                             }
                                             else
                                             {
                                                addr240:
                                                §§push(§§newactivation());
                                                if(!(_loc6_ && param1))
                                                {
                                                   addr171:
                                                   §§push(§§pop().§§slot[2]);
                                                   §§push(§§newactivation());
                                                   if(_loc5_ || param2)
                                                   {
                                                      §§push(§§pop().§§slot[3]);
                                                      if(!(_loc6_ && param2))
                                                      {
                                                         §§push(§§pop().§&X§);
                                                         if(!(_loc6_ && param1))
                                                         {
                                                            if(§§pop() < §§pop())
                                                            {
                                                               if(!(_loc6_ && LevelManager))
                                                               {
                                                                  if(_loc6_ && _loc3_)
                                                                  {
                                                                     §§goto(addr240);
                                                                  }
                                                                  §§goto(addr221);
                                                               }
                                                               addr222:
                                                            }
                                                            §§push(3);
                                                            if(!(_loc6_ && _loc3_))
                                                            {
                                                               if(!(_loc5_ || param2))
                                                               {
                                                                  §§goto(addr171);
                                                               }
                                                               if(!(_loc6_ && param1))
                                                               {
                                                                  return §§pop();
                                                               }
                                                               §§goto(addr239);
                                                            }
                                                            §§goto(addr221);
                                                         }
                                                         addr230:
                                                         if(§§pop() < §§pop())
                                                         {
                                                            if(_loc6_ && param1)
                                                            {
                                                               §§goto(addr240);
                                                            }
                                                            addr239:
                                                            return §§pop();
                                                            §§push(1);
                                                         }
                                                         §§goto(addr240);
                                                      }
                                                      addr229:
                                                      §§goto(addr230);
                                                      §§push(§§pop().§;!>§);
                                                   }
                                                   §§goto(addr229);
                                                   §§push(§§pop().§§slot[3]);
                                                }
                                                §§push(§§pop().§§slot[2]);
                                                if(_loc5_)
                                                {
                                                   §§goto(addr171);
                                                   §§push(§§newactivation());
                                                }
                                             }
                                             §§goto(addr239);
                                          }
                                          else
                                          {
                                             §§goto(addr240);
                                             §§push(§§newactivation());
                                          }
                                          §§goto(addr240);
                                       }
                                       §§goto(addr230);
                                    }
                                    addr221:
                                    return 2;
                                 }
                                 §§goto(addr240);
                              }
                              §§goto(addr222);
                           }
                        }
                        catch(e:Error)
                        {
                           §§goto(addr86);
                        }
                        §§goto(addr171);
                     }
                  }
               }
            }
         }
      }
      
      public static function §[!U§(param1:String) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || LevelManager)
         {
            if(!§@!P§[param1])
            {
               if(!_loc2_)
               {
                  §§push(§get §);
                  if(_loc3_ || _loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr52:
                  return param1;
               }
               return §§pop();
            }
         }
         §§goto(addr52);
      }
      
      public static function §%<§(param1:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:ChapterModel = null;
         if(_loc4_)
         {
            if(param1 != §!=§)
            {
               loop0:
               while(true)
               {
                  §§push(§-!B§(param1));
                  loop1:
                  while(true)
                  {
                     §§push(int(§§pop()));
                     loop2:
                     while(true)
                     {
                        _loc2_ = §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(_loc2_);
                           if(_loc4_ || _loc2_)
                           {
                              if(!(_loc5_ && _loc3_))
                              {
                                 if(§§pop() >= 0)
                                 {
                                    if(!_loc5_)
                                    {
                                       if(_loc5_)
                                       {
                                          continue;
                                       }
                                       if(_loc5_)
                                       {
                                          continue loop0;
                                       }
                                       §3V§ = _loc2_;
                                       if(_loc4_)
                                       {
                                          loop4:
                                          while(true)
                                          {
                                             § !Y§ = §!=§;
                                             while(true)
                                             {
                                                §!=§ = param1;
                                                if(!(_loc5_ && LevelManager))
                                                {
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      if(true)
                                                      {
                                                         _loc3_ = §7+§();
                                                         if(_loc4_)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  _loc3_.§9!O§ = _loc3_.§ !,§(param1);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      continue loop4;
                                                      break loop3;
                                                   }
                                                   continue;
                                                }
                                             }
                                          }
                                       }
                                    }
                                    break;
                                 }
                                 § !Y§ = §!=§;
                                 if(_loc5_ && LevelManager)
                                 {
                                 }
                                 break;
                                 §!=§ = null;
                                 break;
                              }
                              continue loop1;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr84);
      }
      
      public static function §<e§() : String
      {
         return §!=§.substring(5);
      }
      
      public static function §7+§() : ChapterModel
      {
         return §"-§[§3V§];
      }
      
      public static function §+a§() : Boolean
      {
         return true;
      }
      
      public static function §2! §() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§`l§());
         if(!(_loc4_ && _loc1_))
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(§7+§().§#L§(§!=§ + "-OUTRO"));
         if(!_loc4_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && _loc3_))
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               if(_loc3_ || _loc2_)
               {
                  if(!§§pop())
                  {
                     continue;
                  }
                  if(!_loc4_)
                  {
                     addr106:
                     §§push(false);
                     break;
                  }
                  addr108:
                  while(true)
                  {
                     continue loop0;
                  }
               }
               break;
            }
            return §§pop();
         }
         §§goto(addr106);
      }
      
      public static function §`l§() : String
      {
         return §7+§().§`l§(§!=§);
      }
   }
}
