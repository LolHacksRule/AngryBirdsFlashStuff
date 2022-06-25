package §"x§
{
   import com.rovio.assets.§`!t§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §?8§ extends Sprite
   {
      
      private static var §,!0§:Boolean = false;
      
      private static const §^!$§:String = "Mouse_Cursors";
      
      private static var §7!;§:Sprite;
      
      private static var §+b§:MovieClip;
      
      private static var §8! §:String;
      
      private static var §>2§:String = "";
      
      private static var §`D§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §,!0§ = false;
            while(true)
            {
               §^!$§ = "Mouse_Cursors";
            }
            addr62:
         }
         loop1:
         while(true)
         {
            §>2§ = "";
            while(!(_loc2_ && _loc2_))
            {
               §`D§ = false;
               if(!_loc1_)
               {
                  continue;
               }
               if(!_loc2_)
               {
                  break loop1;
               }
               §§goto(addr62);
            }
         }
      }
      
      public function §?8§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
         }
      }
      
      public static function §8,§(param1:String) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:Sprite = null;
         if(_loc6_ || param1)
         {
            if(§8! § == param1)
            {
               if(_loc6_ || _loc3_)
               {
                  §§push(true);
                  if(!(_loc5_ && param1))
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
               if(_loc6_ || _loc3_)
               {
                  §8! § = "";
                  loop7:
                  while(true)
                  {
                     §`D§ = false;
                     loop3:
                     while(true)
                     {
                        §§push(§,!0§);
                        if(!_loc5_)
                        {
                           §§push(!§§pop());
                           if(_loc6_ || §?8§)
                           {
                              addr110:
                              if(§§pop())
                              {
                                 loop1:
                                 while(§§pop())
                                 {
                                    if(_loc6_ || §?8§)
                                    {
                                       addr90:
                                       §§push(§"T§());
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             break loop1;
                                          }
                                       }
                                       addr90:
                                    }
                                    while(true)
                                    {
                                       if(_loc5_)
                                       {
                                          continue loop3;
                                       }
                                       Mouse.show();
                                       if(_loc5_)
                                       {
                                          continue loop7;
                                       }
                                       §§push(false);
                                       if(_loc6_)
                                       {
                                          if(!_loc5_)
                                          {
                                             return §§pop();
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr90);
                                       }
                                    }
                                    continue loop3;
                                 }
                                 addr125:
                                 var _loc3_:* = 0;
                                 while(_loc3_ < §+b§.numChildren)
                                 {
                                    §+b§.getChildAt(_loc3_).visible = false;
                                    if(!_loc6_)
                                    {
                                       break;
                                    }
                                    _loc3_++;
                                    if(_loc5_ && _loc2_)
                                    {
                                       break;
                                    }
                                 }
                                 if(!(_loc4_ = §+b§.getChildByName(param1) as Sprite))
                                 {
                                    if(_loc6_)
                                    {
                                       §+b§.visible = false;
                                       if(_loc6_)
                                       {
                                          Mouse.show();
                                          addr376:
                                          return false;
                                       }
                                       else
                                       {
                                          loop9:
                                          while(true)
                                          {
                                             §§push(true);
                                             loop10:
                                             while(true)
                                             {
                                                _loc2_ = §§pop();
                                                loop11:
                                                while(true)
                                                {
                                                   Mouse.hide();
                                                   loop12:
                                                   for(; _loc6_ || §?8§; while(_loc6_ || param1)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         continue loop11;
                                                      }
                                                      §§goto(addr249);
                                                   })
                                                   {
                                                      §§push(_loc4_.numChildren > 1);
                                                      loop13:
                                                      for(; _loc6_ || §?8§; if(_loc5_ && param1)
                                                      {
                                                         continue;
                                                      },if(§§pop())
                                                      {
                                                         §§goto(addr266);
                                                      },§§goto(addr165))
                                                      {
                                                         if(§§pop())
                                                         {
                                                            loop14:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               addr308:
                                                               addr251:
                                                               while(true)
                                                               {
                                                                  §§push(Boolean(_loc4_.getChildByName(§8! § + "_Up")));
                                                                  addr276:
                                                                  while(!_loc5_)
                                                                  {
                                                                  }
                                                                  continue loop10;
                                                               }
                                                               loop21:
                                                               while(true)
                                                               {
                                                                  if(_loc5_ && _loc2_)
                                                                  {
                                                                     continue loop14;
                                                                     addr165:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc2_);
                                                                        if(_loc5_ && _loc2_)
                                                                        {
                                                                           continue loop21;
                                                                        }
                                                                        if(_loc6_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§goto(addr276);
                                                                     }
                                                                  }
                                                                  continue loop13;
                                                                  addr165:
                                                                  return §§pop();
                                                               }
                                                               §§goto(addr308);
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  §`D§ = true;
                                                                  continue loop12;
                                                                  addr207:
                                                                  if(!(_loc6_ || _loc3_))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  _loc4_.getChildByName(§8! § + "_Up").visible = true;
                                                                  addr221:
                                                                  if(_loc6_)
                                                                  {
                                                                     addr223:
                                                                     if(!_loc6_)
                                                                     {
                                                                        loop24:
                                                                        while(true)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc3_);
                                                                              if(!_loc5_)
                                                                              {
                                                                                 if(§§pop() >= _loc4_.numChildren)
                                                                                 {
                                                                                    if(_loc6_ || param1)
                                                                                    {
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          §§goto(addr207);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(0);
                                                                                             addr267:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc3_ = §§pop();
                                                                                                continue loop24;
                                                                                             }
                                                                                          }
                                                                                          addr266:
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr221);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    _loc4_.getChildAt(_loc3_).visible = false;
                                                                                    _loc3_++;
                                                                                    addr248:
                                                                                    continue;
                                                                                    addr248:
                                                                                 }
                                                                                 §§goto(addr248);
                                                                              }
                                                                              §§goto(addr267);
                                                                           }
                                                                           §§goto(addr223);
                                                                        }
                                                                     }
                                                                     if(!(_loc6_ || _loc3_))
                                                                     {
                                                                        continue loop12;
                                                                     }
                                                                     if(_loc6_)
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr165);
                                                                           }
                                                                           addr236:
                                                                        }
                                                                        else
                                                                        {
                                                                           loop30:
                                                                           while(!(_loc5_ && _loc2_))
                                                                           {
                                                                              if(!(_loc5_ && _loc2_))
                                                                              {
                                                                                 _loc4_.visible = true;
                                                                                 break loop12;
                                                                              }
                                                                              addr359:
                                                                              while(true)
                                                                              {
                                                                                 §8! § = param1;
                                                                                 break loop30;
                                                                                 §§goto(addr373);
                                                                              }
                                                                              addr373:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc5_ && param1))
                                                                              {
                                                                                 §+b§.visible = true;
                                                                                 §§goto(addr333);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr376);
                                                                              }
                                                                           }
                                                                           addr333:
                                                                        }
                                                                     }
                                                                     §§goto(addr308);
                                                                  }
                                                                  §§goto(addr248);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  §§goto(addr251);
                                                               }
                                                               addr249:
                                                            }
                                                         }
                                                      }
                                                   }
                                                   continue loop9;
                                                }
                                             }
                                          }
                                       }
                                       return §§pop();
                                    }
                                    §§goto(addr236);
                                 }
                                 §§goto(addr359);
                                 addr79:
                              }
                           }
                           while(true)
                           {
                              §§pop();
                              continue loop3;
                           }
                        }
                        §§goto(addr110);
                     }
                     addr115:
                     while(true)
                     {
                        §§push(!§+b§);
                        if(_loc6_)
                        {
                           §§goto(addr79);
                        }
                        §§goto(addr90);
                        §§goto(addr115);
                     }
                  }
               }
               else if(false)
               {
                  §§goto(addr115);
               }
               §§goto(addr125);
            }
         }
         §§goto(addr46);
      }
      
      private static function §"T§() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Class = §`!t§.§=J§(§^!$§);
         if(_loc2_)
         {
            §+b§ = new _loc1_();
         }
         loop0:
         for(; §+b§; loop2:
         while(!(_loc3_ && _loc2_))
         {
            §7!;§.mouseChildren = false;
            loop3:
            while(true)
            {
               §+b§.mouseEnabled = false;
               while(true)
               {
                  §7!;§.mouseEnabled = false;
                  while(!_loc3_)
                  {
                     continue loop3;
                     §+b§.enabled = false;
                     do
                     {
                        §+b§.cacheAsBitmap = true;
                     }
                     while(_loc3_ && _loc2_);
                     
                     if(!(_loc2_ || _loc1_))
                     {
                        continue;
                     }
                     if(!_loc2_)
                     {
                        continue loop2;
                     }
                     §§goto(addr69);
                  }
               }
            }
         })
         {
            while(true)
            {
               §7!;§.addChild(§+b§);
               continue loop0;
               addr69:
               if(!(_loc3_ && §?8§))
               {
                  break loop0;
               }
            }
         }
         §§push(§+b§ == null);
         if(_loc2_ || _loc1_)
         {
            return !§§pop();
         }
      }
      
      public static function §&#§() : Boolean
      {
         return §61§("_Down");
      }
      
      public static function §]!%§() : Boolean
      {
         return §61§("_Up");
      }
      
      private static function §61§(param1:String) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(!§+b§);
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           loop4:
                           while(true)
                           {
                              §§push(§8! §.length < 1);
                              if(_loc5_)
                              {
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(_loc4_)
                                    {
                                       break;
                                    }
                                    if(!§§pop())
                                    {
                                       while(true)
                                       {
                                          §§pop();
                                          addr78:
                                          while(true)
                                          {
                                             §§push(§`D§);
                                             if(_loc5_ || param1)
                                             {
                                                if(_loc4_ && _loc2_)
                                                {
                                                   continue;
                                                }
                                                §§push(!§§pop());
                                                if(!_loc5_)
                                                {
                                                   continue loop0;
                                                }
                                             }
                                             if(!_loc5_)
                                             {
                                                continue loop2;
                                             }
                                          }
                                       }
                                       addr77:
                                    }
                                    while(§§pop())
                                    {
                                       if(!(_loc4_ && param1))
                                       {
                                          if(_loc5_)
                                          {
                                             §§push(false);
                                             continue loop0;
                                          }
                                          continue loop3;
                                       }
                                       if(_loc5_)
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                          continue loop4;
                                       }
                                       §§goto(addr78);
                                    }
                                    var _loc2_:Sprite = §+b§.getChildByName(§8! §) as Sprite;
                                    if(!_loc4_)
                                    {
                                       §§push(!_loc2_);
                                       if(!(_loc4_ && param1))
                                       {
                                          if(!§§pop())
                                          {
                                             if(_loc5_)
                                             {
                                                §§pop();
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   addr125:
                                                   §§push(!_loc2_.getChildByName(§8! § + param1));
                                                   if(_loc5_ || _loc2_)
                                                   {
                                                      addr138:
                                                      if(§§pop())
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            §§goto(addr142);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr142);
                                                }
                                                var _loc3_:int = 0;
                                                addr151:
                                                if(_loc3_ >= _loc2_.numChildren)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         _loc2_.getChildByName(§8! § + param1).visible = true;
                                                         §§goto(addr177);
                                                      }
                                                      §§goto(addr187);
                                                   }
                                                   addr177:
                                                   if(!(_loc5_ || §?8§))
                                                   {
                                                      _loc3_++;
                                                      addr187:
                                                      §§goto(addr151);
                                                      addr195:
                                                   }
                                                   return true;
                                                }
                                                _loc2_.getChildAt(_loc3_).visible = false;
                                                §§goto(addr195);
                                             }
                                          }
                                          §§goto(addr138);
                                       }
                                       addr142:
                                       return false;
                                    }
                                    §§goto(addr125);
                                 }
                                 continue loop1;
                                 addr72:
                              }
                              §§goto(addr77);
                           }
                        }
                     }
                  }
                  §§goto(addr72);
               }
            }
         }
         §§goto(addr78);
      }
      
      public static function activate() : Sprite
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(!§,!0§)
            {
               while(true)
               {
                  §7!;§ = new Sprite();
                  loop1:
                  while(_loc1_ || §?8§)
                  {
                     while(true)
                     {
                        §,!0§ = true;
                        if(!_loc2_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                     if(_loc1_ || _loc2_)
                     {
                        return §7!;§;
                     }
                  }
               }
            }
            return §7!;§;
         }
         §§goto(addr75);
      }
      
      public static function §^!#§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(§,!0§);
            if(!(_loc3_ && param2))
            {
               §§push(!§§pop());
            }
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
                        if(_loc3_)
                        {
                           break;
                        }
                        if(!§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              addr112:
                              while(!_loc3_)
                              {
                                 continue loop4;
                              }
                              addr127:
                              while(true)
                              {
                                 §§push(!§+b§);
                                 if(_loc4_ || param2)
                                 {
                                    if(_loc3_)
                                    {
                                       break;
                                    }
                                    continue loop0;
                                 }
                                 continue loop4;
                              }
                              while(true)
                              {
                                 §§pop();
                                 §§goto(addr127);
                              }
                           }
                        }
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop6:
                              while(true)
                              {
                                 §7!;§.x = param1;
                                 loop7:
                                 while(!_loc3_)
                                 {
                                    if(_loc4_ || _loc3_)
                                    {
                                       while(true)
                                       {
                                          §7!;§.y = param2;
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             if(_loc4_)
                                             {
                                                break;
                                             }
                                             continue loop6;
                                          }
                                          continue loop7;
                                       }
                                       return;
                                       addr61:
                                    }
                                    §§goto(addr112);
                                 }
                              }
                           }
                           return;
                        }
                     }
                     continue;
                     addr106:
                  }
                  §§goto(addr127);
               }
            }
         }
         §§goto(addr61);
      }
      
      public static function §`!H§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(§+b§)
            {
               if(!_loc1_)
               {
                  if(§+b§.visible)
                  {
                     if(_loc2_ || _loc2_)
                     {
                        addr55:
                        §>2§ = §8! §;
                        addr58:
                        while(true)
                        {
                        }
                        addr58:
                     }
                     §§goto(addr58);
                  }
                  while(true)
                  {
                     §8,§("");
                     if(_loc2_)
                     {
                        break;
                     }
                     §§goto(addr58);
                  }
                  §§goto(addr30);
               }
               §§goto(addr55);
            }
            addr30:
            return;
         }
         §§goto(addr55);
      }
      
      public static function §#!$§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(§+b§)
            {
               if(_loc2_)
               {
                  if(!§+b§.visible)
                  {
                     if(!(_loc1_ && §?8§))
                     {
                        addr43:
                        §8,§(§>2§);
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr43);
      }
   }
}
