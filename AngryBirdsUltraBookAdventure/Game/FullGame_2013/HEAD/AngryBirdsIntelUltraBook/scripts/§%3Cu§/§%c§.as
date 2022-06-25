package §<u§
{
   import com.rovio.assets.AssetCache;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §%c§ extends Sprite
   {
      
      private static var §=!W§:Boolean = false;
      
      private static const §[!1§:String = "Mouse_Cursors";
      
      private static var §!l§:Sprite;
      
      private static var §0!U§:MovieClip;
      
      private static var §;p§:String;
      
      private static var § b§:String = "";
      
      private static var §,!6§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §%c§)
         {
            §=!W§ = false;
         }
         loop0:
         while(true)
         {
            §[!1§ = "Mouse_Cursors";
            while(true)
            {
               § b§ = "";
               while(!_loc1_)
               {
                  continue loop0;
                  §,!6§ = false;
                  if(_loc2_ || _loc1_)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      public function §%c§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
         }
      }
      
      public static function §^@§(param1:String) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:Sprite = null;
         if(!(_loc5_ && _loc3_))
         {
            if(§;p§ == param1)
            {
               if(!(_loc5_ && param1))
               {
                  addr38:
                  §§push(true);
                  if(_loc6_ || §%c§)
                  {
                     return §§pop();
                  }
                  addr50:
                  §§push(Boolean(§§pop()));
               }
               else
               {
                  addr47:
                  §§push(false);
                  if(_loc6_)
                  {
                     §§goto(addr50);
                  }
               }
               var _loc2_:* = §§pop();
               if(_loc6_)
               {
                  §;p§ = "";
                  while(true)
                  {
                     §,!6§ = false;
                     loop1:
                     for(; _loc6_; if(!(_loc6_ || param1))
                     {
                        continue;
                     })
                     {
                        §§push(§=!W§);
                        if(_loc6_)
                        {
                           §§push(!§§pop());
                           loop2:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              loop3:
                              while(true)
                              {
                                 §§push(§§pop());
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 if(!§§pop())
                                 {
                                    while(true)
                                    {
                                       §§pop();
                                       §§push(!§0!U§);
                                       if(_loc5_ && param1)
                                       {
                                          continue loop2;
                                       }
                                       if(_loc5_)
                                       {
                                          continue;
                                       }
                                       §§push(Boolean(§§pop()));
                                       while(true)
                                       {
                                          if(!(_loc6_ || _loc3_))
                                          {
                                             continue loop3;
                                          }
                                       }
                                    }
                                    addr167:
                                 }
                                 while(§§pop())
                                 {
                                    continue loop1;
                                    §§goto(addr111);
                                 }
                                 addr180:
                                 §§push(0);
                                 if(_loc6_)
                                 {
                                    §§push(int(§§pop()));
                                 }
                                 var _loc3_:* = §§pop();
                                 addr217:
                                 if(_loc3_ < §0!U§.numChildren)
                                 {
                                    §0!U§.getChildAt(_loc3_).visible = false;
                                    if(_loc6_)
                                    {
                                       §§push(_loc3_);
                                       if(!_loc5_)
                                       {
                                          §§push(§§pop() + 1);
                                          if(_loc6_ || param1)
                                          {
                                             §§push(int(§§pop()));
                                             if(_loc6_)
                                             {
                                                _loc3_ = §§pop();
                                                if(_loc6_ || _loc3_)
                                                {
                                                   §§goto(addr217);
                                                }
                                                addr222:
                                                _loc4_ = §0!U§.getChildByName(param1) as Sprite;
                                                if(_loc6_)
                                                {
                                                   addr514:
                                                   if(_loc4_)
                                                   {
                                                      addr497:
                                                      §;p§ = param1;
                                                      §0!U§.visible = true;
                                                      _loc4_.visible = true;
                                                      addr474:
                                                      _loc2_ = Boolean(true);
                                                      Mouse.hide();
                                                      addr436:
                                                      addr501:
                                                      addr490:
                                                      addr475:
                                                      addr496:
                                                      addr473:
                                                      addr470:
                                                      §§push(Boolean(_loc4_.numChildren > 1));
                                                      if(_loc6_ || _loc3_)
                                                      {
                                                         if(!(_loc5_ && _loc3_))
                                                         {
                                                            §§push(§§pop());
                                                            if(!(_loc5_ && param1))
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                            }
                                                            if(§§pop())
                                                            {
                                                               addr461:
                                                               if(_loc6_)
                                                               {
                                                                  §§pop();
                                                                  addr464:
                                                                  if(_loc4_.getChildByName(§;p§ + "_Up"))
                                                                  {
                                                                     addr423:
                                                                     if(!_loc5_)
                                                                     {
                                                                        §,!6§ = true;
                                                                        addr428:
                                                                        if(_loc6_)
                                                                        {
                                                                           addr383:
                                                                           §§push(§,!6§);
                                                                           if(!(_loc5_ && _loc3_))
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 if(!(_loc5_ && _loc2_))
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       addr400:
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          addr404:
                                                                                          _loc3_ = int(0);
                                                                                          addr405:
                                                                                          addr403:
                                                                                          if(_loc6_ || _loc3_)
                                                                                          {
                                                                                             addr265:
                                                                                             §§push(_loc3_);
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                if(_loc6_ || param1)
                                                                                                {
                                                                                                   if(§§pop() >= _loc4_.numChildren)
                                                                                                   {
                                                                                                      if(!(_loc5_ && param1))
                                                                                                      {
                                                                                                         if(_loc6_ || §%c§)
                                                                                                         {
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  if(_loc6_ || _loc3_)
                                                                                                                  {
                                                                                                                     if(!(_loc5_ && §%c§))
                                                                                                                     {
                                                                                                                        _loc4_.getChildByName(§;p§ + "_Up").visible = true;
                                                                                                                        addr319:
                                                                                                                        if(_loc6_ || _loc3_)
                                                                                                                        {
                                                                                                                           if(_loc6_ || _loc3_)
                                                                                                                           {
                                                                                                                              if(!(_loc5_ && param1))
                                                                                                                              {
                                                                                                                                 if(!_loc5_)
                                                                                                                                 {
                                                                                                                                    if(_loc6_)
                                                                                                                                    {
                                                                                                                                       addr234:
                                                                                                                                       §§push(_loc2_);
                                                                                                                                       if(_loc6_ || §%c§)
                                                                                                                                       {
                                                                                                                                          if(!(_loc5_ && §%c§))
                                                                                                                                          {
                                                                                                                                             if(!_loc6_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr436);
                                                                                                                                             }
                                                                                                                                             return §§pop();
                                                                                                                                          }
                                                                                                                                          §§goto(addr461);
                                                                                                                                       }
                                                                                                                                       §§goto(addr383);
                                                                                                                                    }
                                                                                                                                    addr515:
                                                                                                                                    §0!U§.visible = false;
                                                                                                                                    Mouse.show();
                                                                                                                                    addr504:
                                                                                                                                    return false;
                                                                                                                                    addr519:
                                                                                                                                    addr511:
                                                                                                                                 }
                                                                                                                                 §§goto(addr501);
                                                                                                                              }
                                                                                                                              §§goto(addr490);
                                                                                                                           }
                                                                                                                           §§goto(addr475);
                                                                                                                        }
                                                                                                                        §§goto(addr428);
                                                                                                                     }
                                                                                                                     §§goto(addr519);
                                                                                                                  }
                                                                                                                  §§goto(addr464);
                                                                                                               }
                                                                                                               §§goto(addr400);
                                                                                                            }
                                                                                                            §§goto(addr405);
                                                                                                         }
                                                                                                         addr361:
                                                                                                         if(_loc6_ || _loc2_)
                                                                                                         {
                                                                                                            §§goto(addr265);
                                                                                                         }
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            addr347:
                                                                                                            §§push(_loc3_ + 1);
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               if(!(_loc5_ && _loc3_))
                                                                                                               {
                                                                                                                  addr358:
                                                                                                                  §§push(int(§§pop()));
                                                                                                                  if(_loc6_)
                                                                                                                  {
                                                                                                                     _loc3_ = §§pop();
                                                                                                                     §§goto(addr361);
                                                                                                                  }
                                                                                                                  §§goto(addr403);
                                                                                                               }
                                                                                                               §§goto(addr404);
                                                                                                            }
                                                                                                            §§goto(addr358);
                                                                                                         }
                                                                                                         §§goto(addr496);
                                                                                                      }
                                                                                                      §§goto(addr319);
                                                                                                   }
                                                                                                   _loc4_.getChildAt(_loc3_).visible = false;
                                                                                                   §§goto(addr361);
                                                                                                }
                                                                                                §§goto(addr347);
                                                                                             }
                                                                                             §§goto(addr358);
                                                                                          }
                                                                                          §§goto(addr423);
                                                                                       }
                                                                                       §§goto(addr511);
                                                                                    }
                                                                                    §§goto(addr234);
                                                                                 }
                                                                                 §§goto(addr504);
                                                                              }
                                                                              §§goto(addr473);
                                                                           }
                                                                           §§goto(addr464);
                                                                           addr430:
                                                                        }
                                                                        §§goto(addr497);
                                                                     }
                                                                     §§goto(addr470);
                                                                  }
                                                                  §§goto(addr383);
                                                               }
                                                               §§goto(addr514);
                                                            }
                                                            §§goto(addr464);
                                                         }
                                                         §§goto(addr474);
                                                      }
                                                      §§goto(addr461);
                                                   }
                                                   §§goto(addr515);
                                                }
                                                §§goto(addr430);
                                             }
                                          }
                                       }
                                       §§goto(addr217);
                                    }
                                 }
                                 §§goto(addr222);
                              }
                           }
                        }
                        §§goto(addr167);
                     }
                  }
               }
               while(true)
               {
                  §§push(§;!b§());
                  if(_loc6_ || param1)
                  {
                     §§push(!§§pop());
                  }
                  §§goto(addr137);
               }
            }
            §§goto(addr47);
         }
         §§goto(addr38);
      }
      
      private static function §;!b§() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Class = AssetCache.§%p§(§[!1§);
         if(_loc2_ || _loc3_)
         {
            §0!U§ = new _loc1_();
            loop0:
            while(true)
            {
               §§push(Boolean(§0!U§));
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §!l§.addChild(§0!U§);
                        loop3:
                        while(true)
                        {
                           §!l§.mouseChildren = false;
                           while(!_loc3_)
                           {
                              §0!U§.mouseEnabled = false;
                              loop5:
                              for(; !_loc3_; if(_loc3_ && §%c§)
                              {
                                 continue;
                              },§§goto(addr91))
                              {
                                 if(_loc3_)
                                 {
                                    continue loop3;
                                 }
                                 while(true)
                                 {
                                    §!l§.mouseEnabled = false;
                                    loop7:
                                    while(_loc2_ || _loc3_)
                                    {
                                       §0!U§.enabled = false;
                                       while(true)
                                       {
                                          if(!(_loc3_ && §%c§))
                                          {
                                             continue loop5;
                                          }
                                          continue loop7;
                                          addr91:
                                          §0!U§.cacheAsBitmap = true;
                                          if(_loc3_)
                                          {
                                             continue;
                                          }
                                          while(true)
                                          {
                                             §§push(§0!U§ == null);
                                             if(_loc3_ && _loc3_)
                                             {
                                                break loop1;
                                             }
                                             continue loop1;
                                          }
                                       }
                                       continue loop5;
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                           continue loop0;
                        }
                     }
                  }
                  §§goto(addr31);
               }
               return §§pop();
            }
         }
         §§goto(addr124);
      }
      
      public static function §<p§() : Boolean
      {
         return §]V§("_Down");
      }
      
      public static function §'n§() : Boolean
      {
         return §]V§("_Up");
      }
      
      private static function §]V§(param1:String) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && §%c§))
         {
            §§push(!§0!U§);
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     loop3:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              addr126:
                              while(true)
                              {
                                 addr87:
                                 while(true)
                                 {
                                    §§push(§;p§.length < 1);
                                    addr93:
                                    while(_loc4_ || param1)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    continue loop4;
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           loop9:
                           while(true)
                           {
                              §§push(§§pop());
                              if(!_loc5_)
                              {
                                 if(!(_loc4_ || _loc3_))
                                 {
                                    break;
                                 }
                                 §§push(Boolean(§§pop()));
                              }
                              if(_loc5_)
                              {
                                 continue loop2;
                              }
                              if(§§pop())
                              {
                                 loop11:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc5_)
                                       {
                                          if(_loc4_ || param1)
                                          {
                                             §§push(false);
                                             while(_loc5_)
                                             {
                                                while(true)
                                                {
                                                   §§pop();
                                                   addr117:
                                                   while(true)
                                                   {
                                                      §§push(§,!6§);
                                                      if(!(_loc5_ && param1))
                                                      {
                                                         §§push(!§§pop());
                                                         if(!(_loc5_ && _loc2_))
                                                         {
                                                            continue loop9;
                                                         }
                                                         addr57:
                                                         if(!_loc4_)
                                                         {
                                                            break loop11;
                                                         }
                                                         continue loop11;
                                                      }
                                                      continue loop9;
                                                   }
                                                }
                                             }
                                             if(_loc4_)
                                             {
                                                return §§pop();
                                             }
                                             continue loop1;
                                             addr78:
                                          }
                                          §§goto(addr126);
                                       }
                                       else if(!_loc5_)
                                       {
                                          if(false)
                                          {
                                             §§goto(addr87);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr117);
                                       }
                                       §§goto(addr117);
                                    }
                                    var _loc2_:Sprite = §0!U§.getChildByName(§;p§) as Sprite;
                                    if(!(_loc5_ && _loc2_))
                                    {
                                       §§push(!_loc2_);
                                       if(!(_loc5_ && param1))
                                       {
                                          §§push(Boolean(§§pop()));
                                          if(_loc4_ || param1)
                                          {
                                             §§push(§§pop());
                                             if(_loc4_ || _loc2_)
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                             if(!§§pop())
                                             {
                                                if(!_loc5_)
                                                {
                                                   addr183:
                                                   §§pop();
                                                   if(_loc4_)
                                                   {
                                                      §§push(!_loc2_.getChildByName(§;p§ + param1));
                                                      if(_loc4_)
                                                      {
                                                         §§goto(addr195);
                                                      }
                                                   }
                                                   §§goto(addr203);
                                                }
                                             }
                                             §§goto(addr198);
                                          }
                                          §§goto(addr183);
                                       }
                                       addr195:
                                       §§push(Boolean(§§pop()));
                                       if(_loc4_)
                                       {
                                          addr198:
                                          if(§§pop())
                                          {
                                             if(!_loc5_)
                                             {
                                                §§push(false);
                                             }
                                             else
                                             {
                                                addr203:
                                                §§push(0);
                                                if(!_loc5_)
                                                {
                                                   §§push(int(§§pop()));
                                                }
                                                var _loc3_:* = §§pop();
                                                addr214:
                                                §§push(_loc3_);
                                                if(_loc4_ || §%c§)
                                                {
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      if(!(_loc5_ && param1))
                                                      {
                                                         if(§§pop() >= _loc2_.numChildren)
                                                         {
                                                            if(!(_loc5_ && param1))
                                                            {
                                                               if(_loc4_ || §%c§)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     addr279:
                                                                     _loc3_++;
                                                                     addr280:
                                                                     §§goto(addr214);
                                                                     addr288:
                                                                     addr277:
                                                                     addr278:
                                                                  }
                                                                  _loc2_.getChildByName(§;p§ + param1).visible = true;
                                                                  return true;
                                                                  addr274:
                                                               }
                                                               §§goto(addr280);
                                                            }
                                                            §§goto(addr274);
                                                         }
                                                         _loc2_.getChildAt(_loc3_).visible = false;
                                                         §§goto(addr288);
                                                      }
                                                      §§goto(addr277);
                                                   }
                                                   §§goto(addr278);
                                                }
                                                §§goto(addr279);
                                             }
                                          }
                                          §§goto(addr203);
                                       }
                                       return §§pop();
                                    }
                                    §§goto(addr203);
                                 }
                                 §§goto(addr93);
                                 addr66:
                              }
                              §§goto(addr116);
                           }
                           continue loop3;
                        }
                     }
                  }
               }
               if(_loc5_ && §%c§)
               {
                  continue;
               }
               §§goto(addr66);
            }
         }
         §§goto(addr117);
      }
      
      public static function activate() : Sprite
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(!§=!W§)
            {
               loop0:
               while(true)
               {
                  §!l§ = new Sprite();
                  while(true)
                  {
                     if(!_loc1_)
                     {
                        if(!_loc2_)
                        {
                           break;
                        }
                        §=!W§ = true;
                        if(!(_loc1_ && _loc1_))
                        {
                           return §!l§;
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         return §!l§;
      }
      
      public static function §'§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(§=!W§);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop5:
                              while(true)
                              {
                                 §§pop();
                                 addr147:
                                 while(true)
                                 {
                                    §§push(!§0!U§);
                                    if(_loc4_)
                                    {
                                       if(!_loc4_)
                                       {
                                          break;
                                       }
                                       §§push(Boolean(§§pop()));
                                    }
                                    addr104:
                                    while(true)
                                    {
                                       if(!_loc4_)
                                       {
                                          continue loop5;
                                       }
                                       if(!_loc4_)
                                       {
                                          break;
                                       }
                                       if(!_loc4_)
                                       {
                                          continue loop1;
                                       }
                                    }
                                    continue loop2;
                                 }
                                 continue loop0;
                              }
                           }
                           while(true)
                           {
                              §§push(§§pop());
                              if(!(_loc3_ && param1))
                              {
                                 if(!_loc4_)
                                 {
                                    break;
                                 }
                                 if(!_loc4_)
                                 {
                                    continue loop3;
                                 }
                                 §§push(Boolean(§§pop()));
                              }
                              if(!§§pop())
                              {
                                 loop9:
                                 while(true)
                                 {
                                    §§pop();
                                    addr136:
                                    while(!_loc3_)
                                    {
                                       continue loop9;
                                    }
                                    §§goto(addr147);
                                 }
                              }
                              §§goto(addr91);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr36);
      }
      
      public static function §5! §() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(Boolean(§0!U§));
            loop0:
            while(§§pop())
            {
               loop1:
               while(true)
               {
                  if(§0!U§.visible)
                  {
                     if(!_loc2_)
                     {
                        § b§ = §;p§;
                     }
                     while(true)
                     {
                        addr44:
                        §§pop();
                        if(_loc1_ || §%c§)
                        {
                           if(_loc1_ || _loc2_)
                           {
                              break loop0;
                           }
                           continue loop1;
                        }
                     }
                  }
                  while(true)
                  {
                     §§push(§^@§(""));
                     if(_loc2_)
                     {
                        continue loop0;
                     }
                     §§goto(addr44);
                  }
               }
            }
            return;
         }
         §§goto(addr74);
      }
      
      public static function §4]§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(Boolean(§0!U§));
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     §§push(!§0!U§.visible);
                     if(!(_loc1_ && _loc2_))
                     {
                        addr58:
                        if(!§§pop())
                        {
                        }
                        §§goto(addr71);
                     }
                     §§pop();
                  }
               }
               §§goto(addr71);
            }
            §§goto(addr58);
         }
         addr71:
         if(!(_loc1_ && §%c§))
         {
            §§push(§^@§(§ b§));
         }
      }
   }
}
