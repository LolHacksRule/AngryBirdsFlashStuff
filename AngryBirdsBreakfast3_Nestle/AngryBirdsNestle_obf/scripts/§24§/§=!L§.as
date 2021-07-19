package §24§
{
   import com.rovio.assets.§=!V§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §=!L§ extends Sprite
   {
      
      private static var §?!8§:Boolean = false;
      
      private static const §4Q§:String = "Mouse_Cursors";
      
      private static var §6!2§:Sprite;
      
      private static var §-!Q§:MovieClip;
      
      private static var §8!,§:String;
      
      private static var §-!A§:String = "";
      
      private static var §-d§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §=!L§)
         {
            §?!8§ = false;
         }
         while(true)
         {
            §4Q§ = "Mouse_Cursors";
            while(!_loc1_)
            {
               §-!A§ = "";
               while(!(_loc1_ && _loc2_))
               {
                  §-d§ = false;
                  if(!_loc1_)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      public function §=!L§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
      
      public static function §`a§(param1:String) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:Sprite = null;
         if(!(_loc5_ && param1))
         {
            if(§8!,§ == param1)
            {
               if(_loc6_ || §=!L§)
               {
                  addr37:
                  §§push(true);
                  if(!(_loc5_ && _loc2_))
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
               if(!(_loc5_ && param1))
               {
                  §8!,§ = "";
                  while(true)
                  {
                     §-d§ = false;
                     loop1:
                     for(; _loc6_ || §=!L§; while(true)
                     {
                        if(!(_loc6_ || _loc2_))
                        {
                           continue loop1;
                        }
                        Mouse.show();
                        §§push(false);
                        if(_loc5_)
                        {
                           continue;
                        }
                        §§goto(addr60);
                     },§§goto(addr117))
                     {
                        §§push(§?!8§);
                        do
                        {
                           §§push(!§§pop());
                           loop3:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 addr117:
                                 while(true)
                                 {
                                    §§pop();
                                    addr118:
                                    while(true)
                                    {
                                       §§push(!§-!Q§);
                                    }
                                 }
                                 addr117:
                              }
                              while(true)
                              {
                                 do
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc6_)
                                       {
                                          continue loop1;
                                       }
                                       if(!_loc5_)
                                       {
                                          while(true)
                                          {
                                             §§push(§["#§());
                                             addr94:
                                             while(true)
                                             {
                                                if(!(_loc5_ && _loc2_))
                                                {
                                                   if(!§§pop())
                                                   {
                                                      continue loop1;
                                                   }
                                                   addr135:
                                                   var _loc3_:int = 0;
                                                   addr159:
                                                   if(_loc3_ < §-!Q§.numChildren)
                                                   {
                                                      §-!Q§.getChildAt(_loc3_).visible = false;
                                                      if(!(_loc5_ && param1))
                                                      {
                                                         _loc3_++;
                                                         if(_loc6_ || §=!L§)
                                                         {
                                                         }
                                                         addr163:
                                                         if(!(_loc4_ = §-!Q§.getChildByName(param1) as Sprite))
                                                         {
                                                            if(!(_loc5_ && _loc2_))
                                                            {
                                                               §-!Q§.visible = false;
                                                               if(_loc6_ || _loc3_)
                                                               {
                                                                  Mouse.show();
                                                               }
                                                               else
                                                               {
                                                                  addr354:
                                                                  _loc2_ = true;
                                                                  addr355:
                                                                  addr367:
                                                                  if(!(_loc5_ && param1))
                                                                  {
                                                                     Mouse.hide();
                                                                     addr347:
                                                                     if(_loc6_)
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           §§push(_loc4_.numChildren > 1);
                                                                           if(!_loc5_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 addr321:
                                                                                 if(!(_loc5_ && param1))
                                                                                 {
                                                                                    if(_loc6_ || §=!L§)
                                                                                    {
                                                                                       §§pop();
                                                                                       addr336:
                                                                                       if(!(_loc5_ && _loc3_))
                                                                                       {
                                                                                          addr307:
                                                                                          addr306:
                                                                                          if(_loc4_.getChildByName(§8!,§ + "_Up"))
                                                                                          {
                                                                                             addr308:
                                                                                             §-d§ = true;
                                                                                             addr311:
                                                                                          }
                                                                                          addr277:
                                                                                          §§push(§-d§);
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             if(!(_loc5_ && _loc3_))
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   addr287:
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      addr290:
                                                                                                      _loc3_ = 0;
                                                                                                      addr291:
                                                                                                      if(_loc6_ || §=!L§)
                                                                                                      {
                                                                                                         addr207:
                                                                                                         §§push(_loc3_);
                                                                                                         if(!(_loc5_ && _loc2_))
                                                                                                         {
                                                                                                            if(§§pop() >= _loc4_.numChildren)
                                                                                                            {
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  if(!(_loc5_ && param1))
                                                                                                                  {
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        if(_loc6_)
                                                                                                                        {
                                                                                                                           _loc4_.getChildByName(§8!,§ + "_Up").visible = true;
                                                                                                                           addr200:
                                                                                                                           §§push(_loc2_);
                                                                                                                           if(!_loc6_)
                                                                                                                           {
                                                                                                                              §§goto(addr277);
                                                                                                                           }
                                                                                                                           return §§pop();
                                                                                                                           addr239:
                                                                                                                        }
                                                                                                                        §§goto(addr311);
                                                                                                                     }
                                                                                                                     addr260:
                                                                                                                     if(!(_loc5_ && _loc2_))
                                                                                                                     {
                                                                                                                        if(!(_loc5_ && _loc2_))
                                                                                                                        {
                                                                                                                           _loc3_++;
                                                                                                                           addr242:
                                                                                                                           if(!(_loc5_ && _loc2_))
                                                                                                                           {
                                                                                                                              if(_loc6_)
                                                                                                                              {
                                                                                                                                 §§goto(addr207);
                                                                                                                              }
                                                                                                                              §§goto(addr355);
                                                                                                                           }
                                                                                                                           §§goto(addr291);
                                                                                                                           addr274:
                                                                                                                        }
                                                                                                                        §§goto(addr336);
                                                                                                                     }
                                                                                                                     §§goto(addr287);
                                                                                                                  }
                                                                                                                  §§goto(addr242);
                                                                                                               }
                                                                                                               §§goto(addr239);
                                                                                                            }
                                                                                                            _loc4_.getChildAt(_loc3_).visible = false;
                                                                                                            §§goto(addr260);
                                                                                                         }
                                                                                                         §§goto(addr290);
                                                                                                      }
                                                                                                      §§goto(addr308);
                                                                                                   }
                                                                                                   §§goto(addr347);
                                                                                                }
                                                                                                §§goto(addr200);
                                                                                             }
                                                                                             §§goto(addr321);
                                                                                          }
                                                                                          §§goto(addr307);
                                                                                       }
                                                                                       §-!Q§.visible = true;
                                                                                       addr372:
                                                                                       if(!(_loc5_ && _loc2_))
                                                                                       {
                                                                                          _loc4_.visible = true;
                                                                                          §§goto(addr367);
                                                                                       }
                                                                                       §8!,§ = param1;
                                                                                       addr394:
                                                                                       §§goto(addr394);
                                                                                    }
                                                                                    §§goto(addr397);
                                                                                 }
                                                                                 §§goto(addr354);
                                                                              }
                                                                              §§goto(addr306);
                                                                           }
                                                                           §§goto(addr321);
                                                                        }
                                                                        §§goto(addr372);
                                                                     }
                                                                     §§goto(addr354);
                                                                  }
                                                               }
                                                               addr397:
                                                               return §§pop();
                                                               §§push(false);
                                                            }
                                                            §§goto(addr274);
                                                         }
                                                         §§goto(addr372);
                                                      }
                                                      §§goto(addr159);
                                                   }
                                                   §§goto(addr163);
                                                }
                                                else
                                                {
                                                   §§goto(addr117);
                                                }
                                             }
                                          }
                                          addr92:
                                       }
                                       §§goto(addr118);
                                    }
                                    §§goto(addr135);
                                 }
                                 while(_loc5_);
                                 
                                 if(_loc6_ || param1)
                                 {
                                    break loop3;
                                 }
                                 continue loop3;
                              }
                           }
                        }
                        while(!_loc6_);
                        
                        return §§pop();
                     }
                  }
               }
               §§goto(addr92);
            }
            §§goto(addr46);
         }
         §§goto(addr37);
      }
      
      private static function §["#§() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Class = §=!V§.§?!O§(§4Q§);
         if(_loc2_ || _loc2_)
         {
            §-!Q§ = new _loc1_();
            loop0:
            while(§-!Q§)
            {
               loop1:
               while(true)
               {
                  §6!2§.addChild(§-!Q§);
                  while(true)
                  {
                     §6!2§.mouseChildren = false;
                     loop3:
                     for(; !_loc3_; if(_loc2_ || §=!L§)
                     {
                        if(_loc2_)
                        {
                           if(!_loc3_)
                           {
                              break loop0;
                           }
                           continue loop0;
                        }
                        continue loop1;
                     })
                     {
                        §-!Q§.mouseEnabled = false;
                        loop4:
                        while(true)
                        {
                           §6!2§.mouseEnabled = false;
                           while(true)
                           {
                              §-!Q§.enabled = false;
                              while(_loc2_)
                              {
                                 §-!Q§.cacheAsBitmap = true;
                                 if(!_loc3_)
                                 {
                                    if(_loc2_)
                                    {
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
            }
            §§push(§-!Q§ == null);
            if(_loc2_ || _loc3_)
            {
               return !§§pop();
            }
         }
         §§goto(addr90);
      }
      
      public static function mouseDown() : Boolean
      {
         return §^!C§("_Down");
      }
      
      public static function mouseUp() : Boolean
      {
         return §^!C§("_Up");
      }
      
      private static function §^!C§(param1:String) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || _loc3_)
         {
            §§push(!§-!Q§);
            if(_loc5_)
            {
               §§push(§§pop());
               loop0:
               while(true)
               {
                  if(!§§pop())
                  {
                     addr93:
                     while(true)
                     {
                        §§pop();
                        addr104:
                        while(true)
                        {
                           addr75:
                           while(true)
                           {
                              §§push(§8!,§.length < 1);
                           }
                        }
                     }
                     addr93:
                  }
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        §§push(§§pop());
                        if(!_loc5_)
                        {
                           continue loop0;
                        }
                        if(!§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              §§pop();
                              addr86:
                              loop9:
                              while(true)
                              {
                                 §§push(§-d§);
                                 if(!(_loc4_ && §=!L§))
                                 {
                                    continue loop3;
                                 }
                                 addr52:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc4_)
                                       {
                                          if(!(_loc5_ || _loc3_))
                                          {
                                             continue loop9;
                                          }
                                          §§push(false);
                                          while(true)
                                          {
                                             if(!_loc4_)
                                             {
                                                break loop2;
                                             }
                                             continue loop2;
                                          }
                                       }
                                       else
                                       {
                                          if(_loc4_ && _loc2_)
                                          {
                                             break;
                                          }
                                          if(false)
                                          {
                                             §§goto(addr75);
                                          }
                                       }
                                    }
                                    var _loc2_:Sprite = §-!Q§.getChildByName(§8!,§) as Sprite;
                                    if(_loc5_ || param1)
                                    {
                                       §§push(!_loc2_);
                                       if(!(_loc4_ && param1))
                                       {
                                          if(!§§pop())
                                          {
                                             if(!(_loc4_ && param1))
                                             {
                                                §§pop();
                                                if(!_loc4_)
                                                {
                                                   §§push(!_loc2_.getChildByName(§8!,§ + param1));
                                                   if(_loc5_ || param1)
                                                   {
                                                      addr153:
                                                      if(§§pop())
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            addr157:
                                                            return false;
                                                            addr156:
                                                         }
                                                      }
                                                      var _loc3_:int = 0;
                                                      addr166:
                                                      if(_loc3_ >= _loc2_.numChildren)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               _loc2_.getChildByName(§8!,§ + param1).visible = true;
                                                               §§goto(addr182);
                                                            }
                                                            §§goto(addr197);
                                                         }
                                                         addr182:
                                                         if(_loc4_)
                                                         {
                                                            _loc3_++;
                                                            addr197:
                                                            §§goto(addr166);
                                                            addr205:
                                                         }
                                                         return true;
                                                      }
                                                      _loc2_.getChildAt(_loc3_).visible = false;
                                                      §§goto(addr205);
                                                   }
                                                }
                                                §§goto(addr156);
                                             }
                                             §§goto(addr157);
                                          }
                                       }
                                       §§goto(addr153);
                                    }
                                    §§goto(addr157);
                                 }
                                 §§goto(addr104);
                              }
                           }
                        }
                        §§goto(addr51);
                     }
                     return §§pop();
                  }
               }
            }
            §§goto(addr93);
         }
         §§goto(addr86);
      }
      
      public static function activate() : Sprite
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §=!L§))
         {
            if(§?!8§)
            {
               if(!_loc1_)
               {
                  §§goto(addr74);
               }
               else
               {
                  while(true)
                  {
                     §§goto(addr54);
                  }
               }
            }
            addr54:
            while(true)
            {
               §6!2§ = new Sprite();
               do
               {
                  §?!8§ = true;
               }
               while(!_loc2_);
               
               if(_loc2_ || _loc2_)
               {
                  break;
               }
               continue loop0;
            }
            return §6!2§;
         }
         addr74:
         return §6!2§;
      }
      
      public static function mouseMove(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(§?!8§);
            if(_loc4_ || param1)
            {
               §§push(!§§pop());
            }
            loop0:
            while(true)
            {
               §§push(§§pop());
               while(true)
               {
                  if(!§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr117:
                        while(true)
                        {
                           §§push(!§-!Q§);
                           addr79:
                           do
                           {
                              if(!(_loc4_ || param2))
                              {
                                 continue loop2;
                              }
                           }
                           while(!_loc3_);
                           
                           continue loop0;
                        }
                     }
                  }
                  while(true)
                  {
                     §§push(§§pop());
                     if(_loc3_)
                     {
                        break;
                     }
                     if(!§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           loop7:
                           while(true)
                           {
                              §§push(!§-!Q§.visible);
                              if(!_loc4_)
                              {
                                 break;
                              }
                              if(_loc4_)
                              {
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       loop9:
                                       while(true)
                                       {
                                          §6!2§.x = param1;
                                          while(true)
                                          {
                                             if(_loc4_)
                                             {
                                                §6!2§.y = param2;
                                                if(!(_loc4_ || param2))
                                                {
                                                   continue;
                                                }
                                                if(!_loc3_)
                                                {
                                                   break loop9;
                                                }
                                                if(!_loc3_)
                                                {
                                                   continue loop9;
                                                }
                                                §§goto(addr117);
                                             }
                                          }
                                       }
                                       return;
                                    }
                                    if(!(_loc3_ && §=!L§))
                                    {
                                       break;
                                    }
                                    continue loop7;
                                 }
                                 addr72:
                                 return;
                                 addr63:
                              }
                              §§goto(addr79);
                           }
                        }
                     }
                     §§goto(addr63);
                  }
               }
            }
         }
         §§goto(addr72);
      }
      
      public static function §&f§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(§-!Q§)
            {
               if(!(_loc2_ && _loc1_))
               {
                  if(§-!Q§.visible)
                  {
                     while(true)
                     {
                        §-!A§ = §8!,§;
                        addr77:
                        while(true)
                        {
                        }
                        addr44:
                        if(!(_loc1_ || §=!L§))
                        {
                           continue;
                        }
                        addr19:
                        return;
                        addr51:
                     }
                  }
                  while(true)
                  {
                     §`a§("");
                     if(_loc2_ && _loc1_)
                     {
                        continue;
                     }
                     §§goto(addr44);
                  }
                  §§goto(addr51);
               }
               §§goto(addr77);
            }
            §§goto(addr19);
         }
         §§goto(addr77);
      }
      
      public static function §@Y§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(§-!Q§)
            {
               if(!_loc1_)
               {
                  addr43:
                  if(!§-!Q§.visible)
                  {
                     if(!_loc1_)
                     {
                        §`a§(§-!A§);
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
