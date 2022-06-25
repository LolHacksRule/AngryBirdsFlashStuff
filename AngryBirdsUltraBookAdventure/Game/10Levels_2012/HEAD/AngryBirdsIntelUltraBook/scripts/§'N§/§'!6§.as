package §'N§
{
   import com.rovio.assets.AssetCache;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §'!6§ extends Sprite
   {
      
      private static var §5!"§:Boolean = false;
      
      private static const §>!d§:String = "Mouse_Cursors";
      
      private static var §0f§:Sprite;
      
      private static var §>!J§:MovieClip;
      
      private static var §=!j§:String;
      
      private static var §25§:String = "";
      
      private static var §]B§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §'!6§)
         {
            §5!"§ = false;
         }
         loop0:
         while(true)
         {
            §>!d§ = "Mouse_Cursors";
            while(true)
            {
               §25§ = "";
               while(!_loc1_)
               {
                  continue loop0;
                  §]B§ = false;
                  if(_loc2_ || _loc1_)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      public function §'!6§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
         }
      }
      
      public static function §!7§(param1:String) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:Sprite = null;
         if(!(_loc5_ && _loc3_))
         {
            if(§=!j§ == param1)
            {
               if(!(_loc5_ && param1))
               {
                  addr38:
                  §§push(true);
                  if(_loc6_ || §'!6§)
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
                  §=!j§ = "";
                  while(true)
                  {
                     §]B§ = false;
                     loop1:
                     for(; _loc6_; if(!(_loc6_ || param1))
                     {
                        continue;
                     })
                     {
                        §§push(§5!"§);
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
                                       §§push(!§>!J§);
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
                                 if(_loc3_ < §>!J§.numChildren)
                                 {
                                    §>!J§.getChildAt(_loc3_).visible = false;
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
                                                _loc4_ = §>!J§.getChildByName(param1) as Sprite;
                                                if(_loc6_)
                                                {
                                                   addr514:
                                                   if(_loc4_)
                                                   {
                                                      addr497:
                                                      §=!j§ = param1;
                                                      §>!J§.visible = true;
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
                                                                  if(_loc4_.getChildByName(§=!j§ + "_Up"))
                                                                  {
                                                                     addr423:
                                                                     if(!_loc5_)
                                                                     {
                                                                        §]B§ = true;
                                                                        addr428:
                                                                        if(_loc6_)
                                                                        {
                                                                           addr383:
                                                                           §§push(§]B§);
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
                                                                                                         if(_loc6_ || §'!6§)
                                                                                                         {
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  if(_loc6_ || _loc3_)
                                                                                                                  {
                                                                                                                     if(!(_loc5_ && §'!6§))
                                                                                                                     {
                                                                                                                        _loc4_.getChildByName(§=!j§ + "_Up").visible = true;
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
                                                                                                                                       if(_loc6_ || §'!6§)
                                                                                                                                       {
                                                                                                                                          if(!(_loc5_ && §'!6§))
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
                                                                                                                                    §>!J§.visible = false;
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
                  §§push(§2!K§());
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
      
      private static function §2!K§() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Class = AssetCache.§,!k§(§>!d§);
         if(_loc2_ || _loc3_)
         {
            §>!J§ = new _loc1_();
            loop0:
            while(true)
            {
               §§push(Boolean(§>!J§));
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §0f§.addChild(§>!J§);
                        loop3:
                        while(true)
                        {
                           §0f§.mouseChildren = false;
                           while(!_loc3_)
                           {
                              §>!J§.mouseEnabled = false;
                              loop5:
                              for(; !_loc3_; if(_loc3_ && §'!6§)
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
                                    §0f§.mouseEnabled = false;
                                    loop7:
                                    while(_loc2_ || _loc3_)
                                    {
                                       §>!J§.enabled = false;
                                       while(true)
                                       {
                                          if(!(_loc3_ && §'!6§))
                                          {
                                             continue loop5;
                                          }
                                          continue loop7;
                                          addr91:
                                          §>!J§.cacheAsBitmap = true;
                                          if(_loc3_)
                                          {
                                             continue;
                                          }
                                          while(true)
                                          {
                                             §§push(§>!J§ == null);
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
      
      public static function §=!J§() : Boolean
      {
         return §==§("_Down");
      }
      
      public static function §^!]§() : Boolean
      {
         return §==§("_Up");
      }
      
      private static function §==§(param1:String) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && §'!6§))
         {
            §§push(!§>!J§);
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
                                    §§push(§=!j§.length < 1);
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
                                                      §§push(§]B§);
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
                                    var _loc2_:Sprite = §>!J§.getChildByName(§=!j§) as Sprite;
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
                                                      §§push(!_loc2_.getChildByName(§=!j§ + param1));
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
                                                if(_loc4_ || §'!6§)
                                                {
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      if(!(_loc5_ && param1))
                                                      {
                                                         if(§§pop() >= _loc2_.numChildren)
                                                         {
                                                            if(!(_loc5_ && param1))
                                                            {
                                                               if(_loc4_ || §'!6§)
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
                                                                  _loc2_.getChildByName(§=!j§ + param1).visible = true;
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
               if(_loc5_ && §'!6§)
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
            if(!§5!"§)
            {
               loop0:
               while(true)
               {
                  §0f§ = new Sprite();
                  while(true)
                  {
                     if(!_loc1_)
                     {
                        if(!_loc2_)
                        {
                           break;
                        }
                        §5!"§ = true;
                        if(!(_loc1_ && _loc1_))
                        {
                           return §0f§;
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         return §0f§;
      }
      
      public static function §#!U§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(§5!"§);
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
                                    §§push(!§>!J§);
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
      
      public static function §8!F§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(Boolean(§>!J§));
            loop0:
            while(§§pop())
            {
               loop1:
               while(true)
               {
                  if(§>!J§.visible)
                  {
                     if(!_loc2_)
                     {
                        §25§ = §=!j§;
                     }
                     while(true)
                     {
                        addr44:
                        §§pop();
                        if(_loc1_ || §'!6§)
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
                     §§push(§!7§(""));
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
      
      public static function §^[§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(Boolean(§>!J§));
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     §§push(!§>!J§.visible);
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
         if(!(_loc1_ && §'!6§))
         {
            §§push(§!7§(§25§));
         }
      }
   }
}
