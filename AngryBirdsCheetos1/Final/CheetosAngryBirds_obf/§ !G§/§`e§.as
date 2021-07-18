package § !G§
{
   import §1!K§.§<!I§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §`e§ extends Sprite
   {
      
      private static var §7"§:Boolean = false;
      
      private static const §3!C§:String = "Mouse_Cursors";
      
      private static var §7x§:Sprite;
      
      private static var §?l§:MovieClip;
      
      private static var §<!^§:String;
      
      private static var §1q§:String = "";
      
      private static var §^F§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §7"§ = false;
            loop0:
            do
            {
               §3!C§ = "Mouse_Cursors";
               while(true)
               {
                  §1q§ = "";
                  while(_loc1_)
                  {
                     §^F§ = false;
                     if(_loc1_ || _loc2_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(!(_loc1_ || §`e§));
            
         }
      }
      
      public function §`e§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super();
         }
      }
      
      public static function §=!U§(param1:String) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Sprite = null;
         if(!_loc6_)
         {
            if(§<!^§ == param1)
            {
               if(_loc5_ || _loc2_)
               {
                  §§push(true);
                  if(!(_loc6_ && _loc2_))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr40:
                  §§push(false);
               }
               var _loc2_:* = §§pop();
               if(!(_loc6_ && §`e§))
               {
                  §<!^§ = "";
                  §^F§ = false;
               }
               loop0:
               while(true)
               {
                  §§push(§7"§);
                  if(_loc5_ || param1)
                  {
                     §§push(!§§pop());
                  }
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
                           while(_loc5_)
                           {
                              §§push(!§?l§);
                              if(!(_loc6_ && §`e§))
                              {
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc6_)
                                       {
                                          §§push(§[O§());
                                          while(true)
                                          {
                                             if(_loc6_ && _loc3_)
                                             {
                                                continue loop2;
                                             }
                                             if(_loc6_)
                                             {
                                                break;
                                             }
                                             if(!§§pop())
                                             {
                                                continue;
                                             }
                                          }
                                          continue loop1;
                                          addr96:
                                       }
                                       continue loop3;
                                    }
                                    var _loc3_:int = 0;
                                    addr148:
                                    if(_loc3_ < §?l§.numChildren)
                                    {
                                       §?l§.getChildAt(_loc3_).visible = false;
                                       if(_loc5_)
                                       {
                                          _loc3_++;
                                          if(_loc5_)
                                          {
                                             §§goto(addr148);
                                          }
                                       }
                                    }
                                    if(!(_loc4_ = §?l§.getChildByName(param1) as Sprite))
                                    {
                                       if(_loc5_)
                                       {
                                          §?l§.visible = false;
                                          if(_loc5_ || _loc2_)
                                          {
                                             Mouse.show();
                                             addr390:
                                             §§push(false);
                                          }
                                          else
                                          {
                                             addr281:
                                             _loc3_ = 0;
                                             addr280:
                                             addr282:
                                             §§push(_loc3_);
                                             if(_loc5_)
                                             {
                                                if(§§pop() >= _loc4_.numChildren)
                                                {
                                                   if(_loc5_ || _loc3_)
                                                   {
                                                      if(!(_loc6_ && param1))
                                                      {
                                                         if(!(_loc6_ && _loc3_))
                                                         {
                                                            if(_loc5_ || §`e§)
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  _loc4_.getChildByName(§<!^§ + "_Up").visible = true;
                                                                  addr242:
                                                                  if(!(_loc6_ && param1))
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           addr174:
                                                                           §§push(_loc2_);
                                                                           if(!_loc6_)
                                                                           {
                                                                              if(_loc6_ && §`e§)
                                                                              {
                                                                                 addr290:
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    if(!(_loc6_ && param1))
                                                                                    {
                                                                                       addr299:
                                                                                       if(§§pop())
                                                                                       {
                                                                                          addr301:
                                                                                          if(_loc5_ || §`e§)
                                                                                          {
                                                                                             §^F§ = true;
                                                                                             addr270:
                                                                                             if(§^F§)
                                                                                             {
                                                                                                addr273:
                                                                                                if(_loc5_ || param1)
                                                                                                {
                                                                                                   §§goto(addr280);
                                                                                                }
                                                                                                §§goto(addr301);
                                                                                             }
                                                                                             §§goto(addr174);
                                                                                             addr311:
                                                                                          }
                                                                                          addr338:
                                                                                          §§push(_loc4_.numChildren > 1);
                                                                                          if(_loc5_ || param1)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                addr326:
                                                                                                §§pop();
                                                                                                addr361:
                                                                                                addr327:
                                                                                                if(!(_loc6_ && param1))
                                                                                                {
                                                                                                   §§goto(addr290);
                                                                                                   §§push(Boolean(_loc4_.getChildByName(§<!^§ + "_Up")));
                                                                                                }
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   addr341:
                                                                                                   §§push(true);
                                                                                                   if(_loc5_ || §`e§)
                                                                                                   {
                                                                                                      _loc2_ = §§pop();
                                                                                                      addr349:
                                                                                                      if(!(_loc6_ && _loc3_))
                                                                                                      {
                                                                                                         Mouse.hide();
                                                                                                         §§goto(addr338);
                                                                                                      }
                                                                                                      §<!^§ = param1;
                                                                                                   }
                                                                                                   return §§pop();
                                                                                                   addr363:
                                                                                                }
                                                                                                §?l§.visible = true;
                                                                                                _loc4_.visible = true;
                                                                                                §§goto(addr361);
                                                                                                addr368:
                                                                                             }
                                                                                             §§goto(addr299);
                                                                                          }
                                                                                          §§goto(addr341);
                                                                                       }
                                                                                       §§goto(addr270);
                                                                                    }
                                                                                    §§goto(addr338);
                                                                                 }
                                                                                 §§goto(addr326);
                                                                              }
                                                                              return §§pop();
                                                                           }
                                                                           §§goto(addr270);
                                                                        }
                                                                        §§goto(addr311);
                                                                     }
                                                                     §§goto(addr282);
                                                                  }
                                                                  if(!_loc6_)
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        _loc3_++;
                                                                        addr256:
                                                                        §§goto(addr280);
                                                                     }
                                                                     §§goto(addr368);
                                                                  }
                                                                  §§goto(addr273);
                                                               }
                                                               §§goto(addr390);
                                                            }
                                                            §§goto(addr349);
                                                         }
                                                         §§goto(addr327);
                                                      }
                                                      §§goto(addr256);
                                                   }
                                                   §§goto(addr242);
                                                }
                                                _loc4_.getChildAt(_loc3_).visible = false;
                                                §§goto(addr242);
                                             }
                                             §§goto(addr281);
                                          }
                                          §§goto(addr341);
                                       }
                                       §§goto(addr363);
                                    }
                                    §§goto(addr349);
                                 }
                                 addr90:
                              }
                              §§goto(addr96);
                           }
                           continue loop0;
                        }
                     }
                     §§goto(addr90);
                  }
               }
            }
         }
         §§goto(addr40);
      }
      
      private static function §[O§() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Class = §<!I§.§;!U§(§3!C§);
         if(!_loc2_)
         {
            §?l§ = new _loc1_();
            loop0:
            while(§?l§)
            {
               if(!_loc2_)
               {
                  §7x§.addChild(§?l§);
               }
               do
               {
                  §7x§.mouseChildren = false;
                  while(true)
                  {
                     §?l§.mouseEnabled = false;
                     while(!_loc2_)
                     {
                        §7x§.mouseEnabled = false;
                        loop4:
                        while(!(_loc2_ && _loc2_))
                        {
                           §?l§.enabled = false;
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              continue loop4;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
               while(!(_loc3_ || _loc3_));
               
               break;
            }
            §§push(§?l§ == null);
            if(!(_loc2_ && §`e§))
            {
               return !§§pop();
            }
         }
         §§goto(addr63);
      }
      
      public static function §`i§() : Boolean
      {
         return §%,§("_Down");
      }
      
      public static function §+z§() : Boolean
      {
         return §%,§("_Up");
      }
      
      private static function §%,§(param1:String) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §§push(!§?l§);
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
                        addr93:
                        loop8:
                        while(true)
                        {
                           loop7:
                           while(true)
                           {
                              §§push(§<!^§.length < 1);
                              if(_loc4_)
                              {
                                 loop3:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(!(_loc4_ || §`e§))
                                    {
                                       break;
                                    }
                                    if(§§pop())
                                    {
                                       while(§§pop())
                                       {
                                          if(!_loc5_)
                                          {
                                             §§push(false);
                                          }
                                          if(!(_loc4_ || param1))
                                          {
                                             loop5:
                                             while(true)
                                             {
                                                if(_loc5_ && §`e§)
                                                {
                                                   continue loop8;
                                                }
                                                §§push(§^F§);
                                                if(!_loc5_)
                                                {
                                                   if(_loc5_ && _loc3_)
                                                   {
                                                      continue loop2;
                                                   }
                                                   §§push(!§§pop());
                                                   if(_loc4_)
                                                   {
                                                      if(!(_loc5_ && _loc3_))
                                                      {
                                                         continue loop0;
                                                      }
                                                      addr79:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         continue loop5;
                                                      }
                                                      continue loop3;
                                                   }
                                                }
                                             }
                                             continue loop8;
                                          }
                                          if(true)
                                          {
                                             break;
                                          }
                                          continue loop7;
                                          return §§pop();
                                       }
                                       var _loc2_:Sprite = §?l§.getChildByName(§<!^§) as Sprite;
                                       if(_loc4_)
                                       {
                                          §§push(!_loc2_);
                                          if(_loc4_)
                                          {
                                             if(!§§pop())
                                             {
                                                if(_loc4_ || _loc3_)
                                                {
                                                   §§pop();
                                                   if(!_loc5_)
                                                   {
                                                      addr129:
                                                      §§push(!_loc2_.getChildByName(§<!^§ + param1));
                                                      if(_loc4_ || _loc2_)
                                                      {
                                                         addr142:
                                                         if(§§pop())
                                                         {
                                                            if(!(_loc5_ && _loc2_))
                                                            {
                                                               §§goto(addr151);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr151);
                                                   }
                                                   var _loc3_:int = 0;
                                                   addr160:
                                                   if(_loc3_ >= _loc2_.numChildren)
                                                   {
                                                      if(!(_loc5_ && param1))
                                                      {
                                                         _loc2_.getChildByName(§<!^§ + param1).visible = true;
                                                      }
                                                      if(_loc4_ || §`e§)
                                                      {
                                                         if(_loc5_ && _loc3_)
                                                         {
                                                            _loc3_++;
                                                            addr206:
                                                            §§goto(addr160);
                                                            addr214:
                                                         }
                                                         return true;
                                                      }
                                                      §§goto(addr206);
                                                   }
                                                   _loc2_.getChildAt(_loc3_).visible = false;
                                                   §§goto(addr214);
                                                }
                                             }
                                             §§goto(addr142);
                                          }
                                          addr151:
                                          return false;
                                       }
                                       §§goto(addr129);
                                       addr47:
                                    }
                                 }
                                 continue loop1;
                                 addr69:
                              }
                              §§goto(addr79);
                           }
                        }
                     }
                  }
                  §§goto(addr69);
               }
            }
         }
         §§goto(addr93);
      }
      
      public static function activate() : Sprite
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            if(§7"§)
            {
               if(!(_loc2_ && _loc1_))
               {
                  return §7x§;
               }
               addr80:
               while(true)
               {
               }
               addr80:
            }
            while(true)
            {
               §7x§ = new Sprite();
               while(_loc1_)
               {
                  §7"§ = true;
                  if(_loc1_ || _loc2_)
                  {
                     return §7x§;
                  }
               }
               §§goto(addr80);
            }
         }
         §§goto(addr80);
      }
      
      public static function §'9§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(§7"§);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr131:
                           while(true)
                           {
                              §§push(!§?l§);
                           }
                        }
                        addr130:
                     }
                     while(true)
                     {
                        loop6:
                        while(true)
                        {
                           §§push(§§pop());
                           if(_loc4_ && param1)
                           {
                              break;
                           }
                           if(§§pop())
                           {
                              loop9:
                              while(!§§pop())
                              {
                                 loop10:
                                 while(true)
                                 {
                                    §7x§.x = param1;
                                    while(true)
                                    {
                                       if(_loc3_)
                                       {
                                          §7x§.y = param2;
                                          if(_loc4_ && param1)
                                          {
                                             continue;
                                          }
                                          if(_loc4_ && param1)
                                          {
                                             continue loop10;
                                          }
                                          if(_loc4_)
                                          {
                                             break loop9;
                                          }
                                          if(_loc3_ || _loc3_)
                                          {
                                             return;
                                             addr50:
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§push(!§?l§.visible);
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                continue loop6;
                                             }
                                             addr105:
                                             while(_loc3_ || param1)
                                             {
                                                continue loop0;
                                             }
                                             continue loop1;
                                          }
                                          addr125:
                                       }
                                       §§goto(addr131);
                                    }
                                 }
                              }
                              return;
                              addr88:
                           }
                           §§goto(addr105);
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr50);
      }
      
      public static function §[P§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(§?l§)
            {
               if(_loc2_)
               {
                  if(§?l§.visible)
                  {
                     if(!(_loc1_ && _loc1_))
                     {
                        addr75:
                        §1q§ = §<!^§;
                     }
                     while(true)
                     {
                        §§goto(addr29);
                     }
                  }
                  addr29:
                  §§goto(addr25);
               }
               §§goto(addr75);
            }
            addr25:
            while(true)
            {
               §=!U§("");
               if(!(_loc1_ && §`e§))
               {
                  break;
               }
               continue loop0;
            }
            return;
         }
         §§goto(addr75);
      }
      
      public static function §8$§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(§?l§)
            {
               if(!_loc1_)
               {
                  if(!§?l§.visible)
                  {
                     if(_loc1_ && _loc1_)
                     {
                     }
                  }
                  §§goto(addr56);
               }
               §=!U§(§1q§);
            }
         }
         addr56:
      }
   }
}
