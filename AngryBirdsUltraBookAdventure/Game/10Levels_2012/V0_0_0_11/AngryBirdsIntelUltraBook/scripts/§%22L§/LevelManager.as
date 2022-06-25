package §"L§
{
   import §4u§.CutSceneManager;
   
   public class LevelManager
   {
      
      public static const §>B§:String = "1-1";
      
      protected static var §?!M§:Array = null;
      
      protected static var §>#§:Array;
      
      protected static var §=!L§:Array;
      
      public static var §var§:String = null;
      
      public static var §;p§:String = null;
      
      public static var §+3§:Boolean;
      
      public static var §?Q§:int = 0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §>B§ = "1-1";
            while(true)
            {
               §?!M§ = null;
               loop1:
               for(; _loc1_ || LevelManager; if(!_loc1_)
               {
                  continue;
               },§§goto(addr53))
               {
                  §>#§ = [];
                  while(true)
                  {
                     §=!L§ = [];
                     loop3:
                     while(!(_loc2_ && _loc2_))
                     {
                        while(true)
                        {
                           §var§ = null;
                           while(true)
                           {
                              §;p§ = null;
                              while(_loc1_ || LevelManager)
                              {
                                 §?Q§ = 0;
                                 if(!(_loc2_ && LevelManager))
                                 {
                                    if(!_loc2_)
                                    {
                                       continue loop1;
                                    }
                                    continue loop3;
                                 }
                              }
                           }
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr92);
      }
      
      public function LevelManager()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §2!@§(param1:Object) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc2_:Object = null;
         var _loc3_:ChapterModel = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:* = 0;
         if(!_loc11_)
         {
            §?!M§ = new Array();
         }
         loop0:
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new ChapterModel();
            if(!(_loc11_ && LevelManager))
            {
               _loc3_.levelsPerPage = _loc2_.levelsPerPage;
               if(!_loc11_)
               {
                  _loc3_.name = _loc2_.name;
                  if(!(_loc11_ && param1))
                  {
                     _loc3_.menuImage = _loc2_.menuImage;
                     loop1:
                     while(true)
                     {
                        _loc3_.§set § = _loc2_.leftCorner;
                        loop2:
                        while(true)
                        {
                           if(!(_loc12_ || _loc3_))
                           {
                              continue loop1;
                           }
                           _loc3_.§8!^§ = _loc2_.rightCorner;
                           if(!(_loc12_ || _loc2_))
                           {
                              break;
                           }
                           _loc3_.§@@§ = _loc2_.pageColors;
                           loop3:
                           while(true)
                           {
                              _loc3_.pageIndexes = _loc2_.pageIndexes;
                              if(!_loc12_)
                              {
                                 addr236:
                                 break;
                                 addr71:
                              }
                              while(true)
                              {
                                 _loc3_.levelButtons = _loc2_.levelButtons;
                                 if(_loc11_)
                                 {
                                    break;
                                 }
                                 continue loop3;
                              }
                              §?!M§.push(_loc3_);
                              if(!(_loc11_ && LevelManager))
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           var _loc9_:* = 0;
                           if(!(_loc11_ && param1))
                           {
                              var _loc10_:* = _loc3_.pageIndexes;
                              if(_loc12_ || param1)
                              {
                                 loop13:
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc10_,_loc9_));
                                    addr353:
                                    addr355:
                                    while(§§pop())
                                    {
                                       _loc4_ = §§nextvalue(_loc9_,_loc10_);
                                       if(_loc11_)
                                       {
                                          continue loop13;
                                       }
                                       §§push(1);
                                       if(_loc12_ || _loc2_)
                                       {
                                          §§push(int(§§pop()));
                                       }
                                       while(true)
                                       {
                                          _loc6_ = §§pop();
                                          loop8:
                                          while(true)
                                          {
                                             addr291:
                                             while(true)
                                             {
                                                addr348:
                                                while(true)
                                                {
                                                   §§push(_loc6_);
                                                   addr349:
                                                   while(true)
                                                   {
                                                      if(§§pop() > _loc3_.levelsPerPage)
                                                      {
                                                         continue loop13;
                                                      }
                                                      §§push(§=!L§);
                                                      §§push(_loc4_ + "-");
                                                      if(!(_loc11_ && _loc2_))
                                                      {
                                                         §§push(§§pop() + _loc6_);
                                                      }
                                                      §§pop()[§§pop()] = _loc3_.name;
                                                      if(_loc11_)
                                                      {
                                                         continue loop13;
                                                      }
                                                      if(!_loc12_)
                                                      {
                                                         continue loop8;
                                                      }
                                                   }
                                                   continue loop13;
                                                }
                                             }
                                          }
                                       }
                                       continue loop13;
                                    }
                                    addr355:
                                    continue loop0;
                                 }
                                 addr352:
                              }
                              while(true)
                              {
                                 §§push(_loc6_);
                                 if(!_loc11_)
                                 {
                                    §§push(§§pop() + 1);
                                    if(_loc12_ || param1)
                                    {
                                       if(!_loc11_)
                                       {
                                          §§push(int(§§pop()));
                                          if(!_loc11_)
                                          {
                                             _loc6_ = §§pop();
                                             if(!_loc11_)
                                             {
                                                if(false)
                                                {
                                                   §§goto(addr291);
                                                }
                                                §§goto(addr348);
                                             }
                                             §§goto(addr352);
                                          }
                                          §§goto(addr349);
                                       }
                                       §§goto(addr336);
                                    }
                                 }
                                 §§goto(addr349);
                              }
                           }
                           §§goto(addr355);
                           if(_loc11_ && _loc2_)
                           {
                              continue;
                           }
                           _loc3_.writtenName = _loc2_.writtenName;
                           if(_loc11_)
                           {
                              continue loop0;
                           }
                           while(true)
                           {
                              if(false)
                              {
                                 §§goto(addr71);
                              }
                              else if(_loc2_.cutscenes)
                              {
                                 if(!_loc11_)
                                 {
                                    break loop2;
                                 }
                                 §§goto(addr248);
                              }
                              §§goto(addr236);
                           }
                           addr69:
                        }
                        §§push(0);
                        if(_loc12_)
                        {
                           _loc9_ = §§pop();
                           if(!_loc11_)
                           {
                              _loc10_ = _loc2_.cutscenes;
                              if(_loc12_ || param1)
                              {
                                 loop5:
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc10_,_loc9_));
                                    if(_loc12_ || param1)
                                    {
                                       if(!§§pop())
                                       {
                                          if(_loc12_)
                                          {
                                             if(!(_loc11_ && _loc3_))
                                             {
                                                if(_loc11_)
                                                {
                                                   continue loop0;
                                                }
                                                §§goto(addr236);
                                             }
                                          }
                                          §§goto(addr355);
                                       }
                                       else
                                       {
                                          _loc5_ = §§nextname(_loc9_,_loc10_);
                                          if(_loc11_ && param1)
                                          {
                                             continue;
                                          }
                                          while(true)
                                          {
                                             _loc3_.§0!k§(_loc5_,_loc2_.cutscenes[_loc5_]);
                                             continue loop5;
                                          }
                                       }
                                    }
                                    break;
                                 }
                                 §§goto(addr353);
                              }
                              §§goto(addr206);
                           }
                           §§goto(addr355);
                        }
                        §§goto(addr249);
                     }
                  }
               }
               §§goto(addr249);
            }
            §§goto(addr69);
         }
      }
      
      public static function §]m§() : void
      {
      }
      
      public static function §;<§(param1:String) : ChapterModel
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:ChapterModel = null;
         var _loc3_:int = 0;
         var _loc4_:* = §?!M§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(_loc6_)
               {
                  break;
               }
               if(_loc2_.§=$§(param1))
               {
                  if(!(_loc6_ && param1))
                  {
                     break;
                  }
               }
            }
            return null;
         }
         return _loc2_;
      }
      
      public static function §5e§(param1:String) : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:ChapterModel = null;
         §§push(0);
         if(_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            §§push(_loc2_);
            if(_loc4_ && param1)
            {
               break;
            }
            if(§§pop() >= §?!M§.length)
            {
               break;
            }
            _loc3_ = §?!M§[_loc2_];
            if(!(_loc4_ && _loc3_))
            {
               if(_loc3_.§=$§(param1))
               {
                  if(_loc5_ || LevelManager)
                  {
                     §§push(_loc2_);
                     if(!_loc4_)
                     {
                        return §§pop();
                     }
                     continue;
                  }
               }
            }
            §§push(_loc2_);
            if(_loc5_ || _loc2_)
            {
               §§push(§§pop() + 1);
               if(!(_loc4_ && param1))
               {
                  return int(§§pop());
               }
            }
         }
         return §§pop();
      }
      
      public static function §;![§(param1:int) : ChapterModel
      {
         return §?!M§[param1];
      }
      
      public static function §4!J§(param1:String) : ChapterModel
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:ChapterModel = null;
         var _loc3_:int = 0;
         var _loc4_:* = §?!M§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!_loc6_)
               {
                  break;
               }
               if(_loc2_.name == param1)
               {
                  if(_loc6_)
                  {
                     break;
                  }
               }
            }
            return null;
         }
         return _loc2_;
      }
      
      public static function §??§() : int
      {
         return §?!M§.length;
      }
      
      public static function §;!a§(param1:String) : LevelModel
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(§>#§);
            if(!(_loc3_ && _loc3_))
            {
               §§push(param1);
               if(_loc2_ || LevelManager)
               {
                  if(!§§pop()[§§pop()])
                  {
                     if(!(_loc3_ && param1))
                     {
                        §§push(§=!L§);
                        if(!_loc3_)
                        {
                           §§push(param1);
                           if(!(_loc3_ && param1))
                           {
                              addr77:
                              if(§§pop()[§§pop()] == null)
                              {
                                 if(_loc2_)
                                 {
                                    §§goto(addr82);
                                 }
                                 else
                                 {
                                    addr90:
                                    §§push(§>#§);
                                    §§push(param1);
                                 }
                              }
                              §§goto(addr90);
                           }
                           return §§pop()[§§pop()];
                        }
                        §§goto(addr90);
                     }
                     §§goto(addr82);
                  }
                  §§goto(addr90);
               }
               §§goto(addr77);
            }
            §§goto(addr90);
         }
         addr82:
         throw new Error("Error! Level \'" + param1 + "\' does not exist.");
      }
      
      public static function §7+§(param1:String, param2:LevelModel) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || LevelManager)
         {
            §>#§[param1] = param2;
         }
      }
      
      public static function §+y§(param1:String, param2:int) : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[3] = null;
            addr54:
            while(true)
            {
               addr38:
               while(true)
               {
                  §§push(§§newactivation());
                  continue loop0;
               }
            }
         }
      }
      
      public static function §"%§(param1:String) : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!§=!L§[param1])
            {
               if(!(_loc3_ && param1))
               {
                  addr41:
                  §§push(§>B§);
                  if(!_loc3_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr46:
                  return param1;
               }
               return §§pop();
            }
            §§goto(addr46);
         }
         §§goto(addr41);
      }
      
      public static function §]!R§(param1:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:ChapterModel = null;
         if(_loc5_)
         {
            if(param1 != §var§)
            {
               while(true)
               {
                  §§push(§5e§(param1));
                  loop1:
                  while(true)
                  {
                     §§push(int(§§pop()));
                     while(true)
                     {
                        _loc2_ = §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(_loc2_);
                           if(!_loc5_)
                           {
                              break;
                           }
                           if(!(_loc5_ || param1))
                           {
                              continue loop1;
                           }
                           if(§§pop() >= 0)
                           {
                              loop4:
                              while(true)
                              {
                                 §?Q§ = _loc2_;
                                 if(!(_loc4_ && LevelManager))
                                 {
                                    while(true)
                                    {
                                       §;p§ = §var§;
                                       if(!_loc5_)
                                       {
                                          break;
                                       }
                                       if(!_loc4_)
                                       {
                                          §var§ = param1;
                                          if(_loc4_)
                                          {
                                             break;
                                          }
                                          continue loop4;
                                       }
                                       continue loop3;
                                    }
                                    addr42:
                                 }
                                 else
                                 {
                                    addr139:
                                    §var§ = null;
                                 }
                              }
                           }
                           else
                           {
                              §;p§ = §var§;
                              if(_loc5_)
                              {
                                 §§goto(addr139);
                              }
                           }
                        }
                     }
                  }
               }
               addr90:
            }
            §§goto(addr142);
         }
         §§goto(addr90);
      }
      
      public static function §]K§() : String
      {
         return §var§.substring(5);
      }
      
      public static function §&!e§() : ChapterModel
      {
         return §?!M§[§?Q§];
      }
      
      public static function §4!Y§() : Boolean
      {
         return true;
      }
      
      public static function §>s§() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§>!1§());
         if(_loc4_ || _loc1_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(§&!e§().§9!Z§(§var§ + "-OUTRO"));
         if(!_loc3_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || _loc2_)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               if(!_loc4_)
               {
                  break;
               }
               if(§§pop())
               {
                  addr107:
                  §§push(false);
                  break;
               }
               while(true)
               {
                  §§push(_loc1_);
                  if(!_loc3_)
                  {
                     if(§§pop() != null)
                     {
                        break;
                     }
                     if(_loc4_)
                     {
                        if(!(_loc3_ && LevelManager))
                        {
                           CutSceneManager.§9!a§(_loc2_);
                        }
                        else
                        {
                           §§goto(addr107);
                        }
                     }
                     if(!_loc3_)
                     {
                        addr101:
                        break;
                     }
                     continue;
                  }
                  continue loop0;
               }
               §§push(true);
               if(_loc4_ || _loc1_)
               {
                  return §§pop();
               }
               break;
            }
            return §§pop();
         }
         §§goto(addr101);
      }
      
      public static function §>!1§() : String
      {
         return §&!e§().§>!1§(§var§);
      }
   }
}
