package §^_§
{
   import com.rovio.assets.§%!G§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §=H§ extends Sprite
   {
      
      private static var § !7§:Boolean = false;
      
      private static const §3!M§:String = "Mouse_Cursors";
      
      private static var §9M§:Sprite;
      
      private static var §@!3§:MovieClip;
      
      private static var §[#§:String;
      
      private static var §=!_§:String = "";
      
      private static var §#!>§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            § !7§ = false;
            loop0:
            while(true)
            {
               §3!M§ = "Mouse_Cursors";
               while(true)
               {
                  §=!_§ = "";
                  loop2:
                  while(_loc1_)
                  {
                     while(true)
                     {
                        §#!>§ = false;
                        if(!_loc2_)
                        {
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr53);
      }
      
      public function §=H§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §>@§(param1:String) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:Sprite = null;
         if(!(_loc5_ && §=H§))
         {
            if(§[#§ == param1)
            {
               if(_loc6_ || _loc3_)
               {
                  addr37:
                  §§push(true);
                  if(_loc6_ || §=H§)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr46:
                  §§push(false);
               }
               var _loc2_:* = §§pop();
               if(!_loc5_)
               {
                  §[#§ = "";
               }
               §#!>§ = false;
               while(true)
               {
                  §§push(§ !7§);
                  loop1:
                  while(true)
                  {
                     §§push(!§§pop());
                     if(_loc6_)
                     {
                        if(!§§pop())
                        {
                           loop5:
                           while(true)
                           {
                              §§pop();
                              addr125:
                              while(true)
                              {
                                 §§push(!§@!3§);
                                 if(!_loc6_)
                                 {
                                    break;
                                 }
                                 if(_loc6_)
                                 {
                                 }
                                 continue loop5;
                              }
                              continue loop1;
                           }
                           addr124:
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              §§push(§`! §());
                              continue loop1;
                           }
                           addr135:
                           var _loc3_:int = 0;
                           addr154:
                           if(_loc3_ < §@!3§.numChildren)
                           {
                              §@!3§.getChildAt(_loc3_).visible = false;
                              if(_loc6_)
                              {
                                 _loc3_++;
                                 if(_loc5_ && param1)
                                 {
                                 }
                                 addr158:
                                 if(!(_loc4_ = §@!3§.getChildByName(param1) as Sprite))
                                 {
                                    if(!_loc5_)
                                    {
                                       §@!3§.visible = false;
                                       if(!_loc5_)
                                       {
                                          Mouse.show();
                                       }
                                       else
                                       {
                                          addr354:
                                          _loc2_ = true;
                                          addr367:
                                          if(!(_loc5_ && _loc3_))
                                          {
                                             Mouse.hide();
                                             addr334:
                                             if(_loc6_ || _loc3_)
                                             {
                                                addr311:
                                                §§push(_loc4_.numChildren > 1);
                                                if(!_loc5_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      addr315:
                                                      if(_loc6_ || _loc2_)
                                                      {
                                                         §§pop();
                                                         addr323:
                                                         if(!(_loc5_ && §=H§))
                                                         {
                                                            addr286:
                                                            §§push(Boolean(_loc4_.getChildByName(§[#§ + "_Up")));
                                                            if(!(_loc5_ && §=H§))
                                                            {
                                                               addr293:
                                                               if(§§pop())
                                                               {
                                                                  addr295:
                                                                  §#!>§ = true;
                                                                  addr298:
                                                                  if(_loc6_ || _loc3_)
                                                                  {
                                                                     addr266:
                                                                     §§push(§#!>§);
                                                                     if(!(_loc5_ && param1))
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           addr274:
                                                                           if(!_loc5_)
                                                                           {
                                                                              addr277:
                                                                              _loc3_ = 0;
                                                                              addr199:
                                                                              addr278:
                                                                              §§push(_loc3_);
                                                                              if(!(_loc5_ && _loc3_))
                                                                              {
                                                                                 if(§§pop() >= _loc4_.numChildren)
                                                                                 {
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       if(!(_loc5_ && _loc3_))
                                                                                       {
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                _loc4_.getChildByName(§[#§ + "_Up").visible = true;
                                                                                                addr231:
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   addr185:
                                                                                                   §§push(_loc2_);
                                                                                                   if(!(_loc5_ && _loc2_))
                                                                                                   {
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         §§goto(addr315);
                                                                                                      }
                                                                                                      return §§pop();
                                                                                                   }
                                                                                                   §§goto(addr266);
                                                                                                }
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   _loc3_++;
                                                                                                   addr236:
                                                                                                   if(!(_loc5_ && §=H§))
                                                                                                   {
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         if(_loc6_ || §=H§)
                                                                                                         {
                                                                                                            §§goto(addr199);
                                                                                                         }
                                                                                                         §§goto(addr298);
                                                                                                      }
                                                                                                      §§goto(addr274);
                                                                                                   }
                                                                                                   §§goto(addr278);
                                                                                                }
                                                                                                §§goto(addr323);
                                                                                             }
                                                                                             §§goto(addr367);
                                                                                          }
                                                                                          §§goto(addr334);
                                                                                       }
                                                                                       §§goto(addr236);
                                                                                    }
                                                                                    §§goto(addr231);
                                                                                 }
                                                                                 _loc4_.getChildAt(_loc3_).visible = false;
                                                                                 §§goto(addr231);
                                                                              }
                                                                              §§goto(addr277);
                                                                           }
                                                                           §§goto(addr295);
                                                                        }
                                                                        §§goto(addr185);
                                                                     }
                                                                     §§goto(addr286);
                                                                  }
                                                                  _loc4_.visible = true;
                                                                  §§goto(addr367);
                                                                  addr372:
                                                               }
                                                               §§goto(addr266);
                                                            }
                                                            §§goto(addr311);
                                                         }
                                                         addr374:
                                                         §[#§ = param1;
                                                         addr377:
                                                         if(!_loc5_)
                                                         {
                                                            §@!3§.visible = true;
                                                            §§goto(addr372);
                                                         }
                                                         addr382:
                                                         return false;
                                                         addr386:
                                                      }
                                                      §§goto(addr354);
                                                   }
                                                   §§goto(addr293);
                                                }
                                                §§goto(addr382);
                                                addr341:
                                             }
                                             §§goto(addr354);
                                          }
                                          §§goto(addr377);
                                       }
                                       §§goto(addr386);
                                    }
                                    §§goto(addr341);
                                 }
                                 §§goto(addr374);
                              }
                              §§goto(addr154);
                           }
                           §§goto(addr158);
                        }
                     }
                     §§goto(addr124);
                  }
                  if(!(_loc5_ && _loc3_))
                  {
                     Mouse.show();
                     §§push(false);
                     if(!(_loc6_ || §=H§))
                     {
                        §§goto(addr92);
                     }
                     return §§pop();
                  }
               }
            }
            §§goto(addr46);
         }
         §§goto(addr37);
      }
      
      private static function §`! §() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Class = §%!G§.§^!B§(§3!M§);
         if(_loc3_)
         {
            §@!3§ = new _loc1_();
            loop0:
            while(§@!3§)
            {
               addr106:
               if(!(_loc3_ || §=H§))
               {
                  continue;
               }
               §9M§.mouseEnabled = false;
               loop5:
               while(_loc3_ || _loc3_)
               {
                  §@!3§.enabled = false;
                  do
                  {
                     §@!3§.cacheAsBitmap = true;
                  }
                  while(_loc2_);
                  
                  if(!(_loc3_ || _loc3_))
                  {
                     continue;
                  }
                  if(_loc3_)
                  {
                     if(_loc3_)
                     {
                        break loop0;
                     }
                     while(true)
                     {
                        §9M§.addChild(§@!3§);
                        addr125:
                        while(true)
                        {
                           §9M§.mouseChildren = false;
                        }
                     }
                     addr122:
                  }
                  while(true)
                  {
                     §@!3§.mouseEnabled = false;
                     break loop5;
                  }
               }
               while(_loc3_ || _loc1_)
               {
                  §§goto(addr106);
                  §§goto(addr77);
               }
               addr77:
               §§goto(addr125);
            }
            §§push(§@!3§ == null);
            if(_loc3_ || §=H§)
            {
               return !§§pop();
            }
         }
         §§goto(addr122);
      }
      
      public static function §4!2§() : Boolean
      {
         return §>h§("_Down");
      }
      
      public static function §function§() : Boolean
      {
         return §>h§("_Up");
      }
      
      private static function §>h§(param1:String) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §§push(!§@!3§);
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(§§pop());
                        if(_loc4_)
                        {
                           if(!§§pop())
                           {
                              loop4:
                              while(true)
                              {
                                 §§pop();
                                 addr77:
                                 addr83:
                                 loop5:
                                 while(true)
                                 {
                                    §§push(§#!>§);
                                    if(!_loc5_)
                                    {
                                       if(_loc4_)
                                       {
                                          §§push(!§§pop());
                                          if(_loc4_ || _loc2_)
                                          {
                                             continue loop4;
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§pop();
                                             break loop5;
                                          }
                                          addr82:
                                       }
                                    }
                                    §§goto(addr54);
                                 }
                                 addr83:
                                 while(true)
                                 {
                                    addr59:
                                    while(true)
                                    {
                                       §§push(§[#§.length < 1);
                                       continue loop0;
                                    }
                                 }
                              }
                           }
                           while(§§pop())
                           {
                              if(_loc4_)
                              {
                                 if(_loc4_)
                                 {
                                    §§push(false);
                                 }
                                 else
                                 {
                                    §§goto(addr83);
                                 }
                              }
                              else
                              {
                                 if(!_loc5_)
                                 {
                                    if(true)
                                    {
                                       break;
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr77);
                                 }
                                 §§goto(addr59);
                              }
                              addr54:
                              return §§pop();
                           }
                           var _loc2_:Sprite = §@!3§.getChildByName(§[#§) as Sprite;
                           if(!(_loc5_ && §=H§))
                           {
                              §§push(!_loc2_);
                              if(!(_loc5_ && §=H§))
                              {
                                 if(!§§pop())
                                 {
                                    if(!_loc5_)
                                    {
                                       §§pop();
                                       if(!_loc5_)
                                       {
                                          §§push(!_loc2_.getChildByName(§[#§ + param1));
                                          if(!(_loc5_ && param1))
                                          {
                                             addr137:
                                             if(§§pop())
                                             {
                                                if(_loc4_ || _loc3_)
                                                {
                                                   §§goto(addr146);
                                                }
                                             }
                                          }
                                          §§goto(addr146);
                                       }
                                       var _loc3_:int = 0;
                                       addr155:
                                       if(_loc3_ >= _loc2_.numChildren)
                                       {
                                          if(!(_loc5_ && _loc2_))
                                          {
                                             if(_loc4_)
                                             {
                                                _loc2_.getChildByName(§[#§ + param1).visible = true;
                                                §§goto(addr186);
                                             }
                                             _loc3_++;
                                             §§goto(addr191);
                                             addr199:
                                          }
                                          addr186:
                                          if(_loc5_)
                                          {
                                             addr191:
                                             §§goto(addr155);
                                          }
                                          return true;
                                       }
                                       _loc2_.getChildAt(_loc3_).visible = false;
                                       §§goto(addr199);
                                    }
                                    §§goto(addr146);
                                 }
                                 §§goto(addr137);
                              }
                              §§goto(addr146);
                           }
                        }
                        continue loop1;
                        addr146:
                        return false;
                     }
                     continue loop0;
                     addr71:
                  }
                  §§goto(addr82);
               }
            }
         }
         §§goto(addr83);
      }
      
      public static function activate() : Sprite
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            if(!§ !7§)
            {
               loop0:
               while(true)
               {
                  §9M§ = new Sprite();
                  while(true)
                  {
                     if(_loc1_ || _loc1_)
                     {
                        if(!_loc1_)
                        {
                           break;
                        }
                        § !7§ = true;
                        if(!_loc2_)
                        {
                           return §9M§;
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         return §9M§;
      }
      
      public static function §9!x§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(§ !7§);
            if(!_loc4_)
            {
               §§push(!§§pop());
               loop0:
               while(true)
               {
                  §§push(§§pop());
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§push(§§pop());
                           if(!_loc3_)
                           {
                              break;
                           }
                           if(!§§pop())
                           {
                              while(true)
                              {
                                 §§pop();
                                 loop4:
                                 while(true)
                                 {
                                    §§push(!§@!3§.visible);
                                    if(_loc4_ && param2)
                                    {
                                       break;
                                    }
                                    if(!_loc4_)
                                    {
                                       loop6:
                                       while(!§§pop())
                                       {
                                          loop7:
                                          while(true)
                                          {
                                             §9M§.x = param1;
                                             loop8:
                                             while(true)
                                             {
                                                if(_loc4_)
                                                {
                                                   if(_loc3_ || §=H§)
                                                   {
                                                      continue loop7;
                                                   }
                                                   continue loop4;
                                                }
                                                if(_loc3_)
                                                {
                                                   while(true)
                                                   {
                                                      §9M§.y = param2;
                                                      if(_loc3_ || param2)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            return;
                                                         }
                                                         break loop6;
                                                      }
                                                      continue loop8;
                                                   }
                                                   addr45:
                                                }
                                                else
                                                {
                                                   loop10:
                                                   while(true)
                                                   {
                                                      §§push(!§@!3§);
                                                      addr93:
                                                      while(_loc4_ && param2)
                                                      {
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            continue loop10;
                                                         }
                                                         continue loop10;
                                                      }
                                                      continue loop0;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       return;
                                       addr69:
                                    }
                                    §§goto(addr93);
                                 }
                              }
                           }
                           §§goto(addr69);
                        }
                        continue;
                        addr107:
                     }
                  }
               }
            }
            §§goto(addr120);
         }
         §§goto(addr45);
      }
      
      public static function §'!V§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            if(§@!3§)
            {
               if(!_loc2_)
               {
                  if(§@!3§.visible)
                  {
                     addr74:
                     while(true)
                     {
                        §=!_§ = §[#§;
                        addr77:
                        while(true)
                        {
                        }
                     }
                     addr74:
                  }
                  while(true)
                  {
                     §>@§("");
                     if(_loc2_ && _loc1_)
                     {
                        continue;
                     }
                     if(!(_loc2_ && §=H§))
                     {
                        break;
                     }
                     §§goto(addr74);
                  }
               }
               §§goto(addr74);
            }
            return;
         }
         §§goto(addr74);
      }
      
      public static function §"u§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(§@!3§)
            {
               if(!_loc1_)
               {
                  if(!§@!3§.visible)
                  {
                     if(!(_loc1_ && _loc2_))
                     {
                        addr43:
                        §>@§(§=!_§);
                     }
                  }
               }
               §§goto(addr43);
            }
            return;
         }
         §§goto(addr43);
      }
   }
}
