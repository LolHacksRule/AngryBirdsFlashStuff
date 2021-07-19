package §@R§
{
   import §]!6§.§false§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §!!%§ extends Sprite
   {
      
      private static var §%r§:Boolean = false;
      
      private static const §2M§:String = "Mouse_Cursors";
      
      private static var §'4§:Sprite;
      
      private static var §8!X§:MovieClip;
      
      private static var §#6§:String;
      
      private static var §"]§:String = "";
      
      private static var §-!P§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §%r§ = false;
         }
         loop0:
         while(true)
         {
            §2M§ = "Mouse_Cursors";
            while(true)
            {
               §"]§ = "";
               while(!(_loc1_ && _loc1_))
               {
                  continue loop0;
                  §-!P§ = false;
                  if(_loc2_)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      public function §!!%§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §&b§(param1:String) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Sprite = null;
         if(!_loc6_)
         {
            if(§#6§ == param1)
            {
               if(_loc5_ || _loc2_)
               {
                  addr31:
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
               if(_loc5_ || _loc3_)
               {
                  §#6§ = "";
               }
               §-!P§ = false;
               §§push(§%r§);
               loop0:
               while(true)
               {
                  §§push(!§§pop());
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr134:
                           while(true)
                           {
                              §§push(!§8!X§);
                           }
                        }
                        addr133:
                     }
                     loop4:
                     while(true)
                     {
                        while(true)
                        {
                           if(§§pop())
                           {
                              §§push(§?!6§());
                              while(true)
                              {
                                 if(!(_loc5_ || _loc3_))
                                 {
                                    continue loop1;
                                 }
                                 if(!§§pop())
                                 {
                                    if(!(_loc5_ || param1))
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                              }
                              §§goto(addr134);
                           }
                           var _loc3_:int = 0;
                           addr163:
                           if(_loc3_ < §8!X§.numChildren)
                           {
                              §8!X§.getChildAt(_loc3_).visible = false;
                              if(_loc5_ || _loc2_)
                              {
                                 _loc3_++;
                                 if(!_loc6_)
                                 {
                                    §§goto(addr163);
                                 }
                              }
                           }
                           if(!(_loc4_ = §8!X§.getChildByName(param1) as Sprite))
                           {
                              if(_loc5_)
                              {
                                 §8!X§.visible = false;
                                 if(_loc5_)
                                 {
                                    Mouse.show();
                                 }
                                 else
                                 {
                                    §8!X§.visible = true;
                                    _loc4_.visible = true;
                                    addr367:
                                    _loc2_ = true;
                                    Mouse.hide();
                                    addr393:
                                    addr373:
                                    addr368:
                                    addr378:
                                    if(_loc5_ || _loc2_)
                                    {
                                       addr341:
                                       §§push(_loc4_.numChildren > 1);
                                       if(_loc4_.numChildren > 1)
                                       {
                                          addr343:
                                          if(!(_loc6_ && §!!%§))
                                          {
                                             §§pop();
                                             addr351:
                                             if(!_loc6_)
                                             {
                                                addr312:
                                                §§push(Boolean(_loc4_.getChildByName(§#6§ + "_Up")));
                                                if(_loc5_ || _loc2_)
                                                {
                                                   if(!(_loc6_ && _loc2_))
                                                   {
                                                      addr326:
                                                      if(§§pop())
                                                      {
                                                         addr328:
                                                         §-!P§ = true;
                                                         addr331:
                                                         if(_loc5_)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               addr283:
                                                               §§push(§-!P§);
                                                               if(!(_loc6_ && §!!%§))
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     addr291:
                                                                     if(!_loc6_)
                                                                     {
                                                                        addr294:
                                                                        _loc3_ = 0;
                                                                        addr295:
                                                                        if(!(_loc6_ && _loc3_))
                                                                        {
                                                                           if(!_loc6_)
                                                                           {
                                                                              addr208:
                                                                              §§push(_loc3_);
                                                                              if(_loc5_ || _loc3_)
                                                                              {
                                                                                 if(§§pop() >= _loc4_.numChildren)
                                                                                 {
                                                                                    if(_loc5_ || _loc2_)
                                                                                    {
                                                                                       if(!(_loc6_ && param1))
                                                                                       {
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                _loc4_.getChildByName(§#6§ + "_Up").visible = true;
                                                                                                addr245:
                                                                                                if(!(_loc6_ && §!!%§))
                                                                                                {
                                                                                                   if(!(_loc6_ && _loc3_))
                                                                                                   {
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         addr184:
                                                                                                         §§push(_loc2_);
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            §§goto(addr283);
                                                                                                         }
                                                                                                         if(!(_loc6_ && _loc2_))
                                                                                                         {
                                                                                                            return §§pop();
                                                                                                         }
                                                                                                         addr396:
                                                                                                         return §§pop();
                                                                                                         addr261:
                                                                                                      }
                                                                                                      §§goto(addr291);
                                                                                                   }
                                                                                                   §§goto(addr295);
                                                                                                }
                                                                                                addr264:
                                                                                                §§goto(addr208);
                                                                                             }
                                                                                             §#6§ = param1;
                                                                                             addr380:
                                                                                             §§goto(addr393);
                                                                                          }
                                                                                          §§goto(addr373);
                                                                                       }
                                                                                       addr273:
                                                                                       if(!(_loc6_ && §!!%§))
                                                                                       {
                                                                                          _loc3_++;
                                                                                          §§goto(addr264);
                                                                                       }
                                                                                       §§goto(addr331);
                                                                                    }
                                                                                    §§goto(addr245);
                                                                                 }
                                                                                 _loc4_.getChildAt(_loc3_).visible = false;
                                                                                 §§goto(addr273);
                                                                              }
                                                                              §§goto(addr294);
                                                                           }
                                                                           §§goto(addr368);
                                                                        }
                                                                        §§goto(addr328);
                                                                     }
                                                                     §§goto(addr351);
                                                                  }
                                                                  §§goto(addr184);
                                                               }
                                                               §§goto(addr312);
                                                            }
                                                            §§goto(addr378);
                                                         }
                                                         §§goto(addr393);
                                                      }
                                                      §§goto(addr283);
                                                   }
                                                   §§goto(addr341);
                                                }
                                                §§goto(addr343);
                                             }
                                             §§goto(addr393);
                                          }
                                          §§goto(addr367);
                                       }
                                       §§goto(addr326);
                                    }
                                 }
                                 §§goto(addr396);
                                 §§push(false);
                              }
                              §§goto(addr261);
                           }
                           §§goto(addr380);
                           if(_loc6_ && param1)
                           {
                              continue;
                           }
                           if(!_loc6_)
                           {
                              break loop4;
                           }
                           §§goto(addr133);
                        }
                     }
                     continue loop0;
                  }
               }
            }
            §§goto(addr40);
         }
         §§goto(addr31);
      }
      
      private static function §?!6§() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Class = §false§.§5#§(§2M§);
         if(_loc3_ || _loc2_)
         {
            §8!X§ = new _loc1_();
            loop0:
            while(§8!X§)
            {
               loop1:
               while(true)
               {
                  §'4§.addChild(§8!X§);
                  addr130:
                  while(true)
                  {
                     §'4§.mouseChildren = false;
                     loop3:
                     for(; _loc3_; while(_loc3_ || _loc2_)
                     {
                        continue loop1;
                     })
                     {
                        while(true)
                        {
                           §8!X§.mouseEnabled = false;
                           continue loop3;
                        }
                     }
                     continue loop0;
                  }
                  if(!(_loc3_ || _loc1_))
                  {
                     continue;
                  }
                  §'4§.mouseEnabled = false;
                  while(true)
                  {
                     if(_loc3_ || _loc2_)
                     {
                        continue;
                     }
                     §§goto(addr130);
                  }
               }
            }
            §§push(§8!X§ == null);
            if(!(_loc2_ && _loc3_))
            {
               return !§§pop();
            }
         }
         §§goto(addr113);
      }
      
      public static function §;"§() : Boolean
      {
         return §]!<§("_Down");
      }
      
      public static function §<!c§() : Boolean
      {
         return §]!<§("_Up");
      }
      
      private static function §]!<§(param1:String) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && _loc2_))
         {
            §§push(!§8!X§);
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop6:
                     while(true)
                     {
                        §§push(§§pop());
                        if(_loc5_ && _loc3_)
                        {
                           continue loop1;
                        }
                        if(!§§pop())
                        {
                           loop7:
                           while(true)
                           {
                              if(_loc4_ || _loc3_)
                              {
                                 §§pop();
                                 while(true)
                                 {
                                    §§push(§-!P§);
                                    if(_loc4_ || §!!%§)
                                    {
                                       §§push(!§§pop());
                                       if(_loc5_)
                                       {
                                          return §§pop();
                                       }
                                       addr62:
                                    }
                                    continue loop7;
                                 }
                                 continue loop0;
                                 addr97:
                              }
                              else
                              {
                                 addr102:
                              }
                              while(true)
                              {
                                 §§pop();
                                 break loop7;
                              }
                           }
                           while(true)
                           {
                              addr67:
                              while(true)
                              {
                                 §§push(§#6§.length < 1);
                                 continue loop0;
                              }
                           }
                           addr113:
                        }
                        loop9:
                        while(§§pop())
                        {
                           if(_loc4_ || _loc3_)
                           {
                              if(!_loc5_)
                              {
                                 break loop6;
                              }
                           }
                           else
                           {
                              if(_loc4_)
                              {
                                 while(true)
                                 {
                                    if(true)
                                    {
                                       break loop9;
                                    }
                                 }
                                 addr65:
                              }
                              else
                              {
                                 §§goto(addr97);
                              }
                              §§goto(addr67);
                           }
                           §§goto(addr113);
                        }
                        var _loc2_:Sprite = §8!X§.getChildByName(§#6§) as Sprite;
                        if(_loc4_)
                        {
                           §§push(!_loc2_);
                           if(!(_loc5_ && _loc3_))
                           {
                              if(!§§pop())
                              {
                                 if(!_loc5_)
                                 {
                                    §§pop();
                                    if(!(_loc5_ && param1))
                                    {
                                       §§push(!_loc2_.getChildByName(§#6§ + param1));
                                       if(!_loc5_)
                                       {
                                          addr152:
                                          if(§§pop())
                                          {
                                             if(!(_loc4_ || _loc2_))
                                             {
                                                §§goto(addr162);
                                             }
                                             addr160:
                                             §§push(false);
                                          }
                                          §§goto(addr162);
                                       }
                                       return §§pop();
                                    }
                                    addr162:
                                    var _loc3_:int = 0;
                                    while(true)
                                    {
                                       if(_loc3_ >= _loc2_.numChildren)
                                       {
                                          if(_loc4_ || _loc3_)
                                          {
                                             _loc2_.getChildByName(§#6§ + param1).visible = true;
                                          }
                                          if(!(_loc5_ && _loc2_))
                                          {
                                             break;
                                          }
                                          loop12:
                                          while(!(_loc4_ || _loc2_))
                                          {
                                             while(true)
                                             {
                                                _loc3_++;
                                                continue loop12;
                                             }
                                          }
                                          continue;
                                       }
                                       _loc2_.getChildAt(_loc3_).visible = false;
                                       §§goto(addr224);
                                    }
                                    return true;
                                 }
                              }
                           }
                           §§goto(addr152);
                        }
                        §§goto(addr160);
                     }
                     §§goto(addr62);
                     §§push(false);
                     addr79:
                  }
                  §§goto(addr102);
               }
            }
         }
         §§goto(addr65);
      }
      
      public static function activate() : Sprite
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            if(!§%r§)
            {
               do
               {
                  §'4§ = new Sprite();
                  do
                  {
                     §%r§ = true;
                  }
                  while(_loc1_);
                  
               }
               while(_loc1_);
               
               if(_loc2_ || _loc2_)
               {
                  return §'4§;
               }
            }
         }
         return §'4§;
      }
      
      public static function §`0§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(§%r§);
            while(true)
            {
               §§push(!§§pop());
               if(_loc3_ || param1)
               {
                  §§push(§§pop());
                  while(true)
                  {
                     if(§§pop())
                     {
                        continue;
                     }
                  }
               }
               §§goto(addr125);
            }
         }
         §§goto(addr126);
      }
      
      public static function §;@§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            if(§8!X§)
            {
               if(_loc1_ || _loc1_)
               {
                  if(§8!X§.visible)
                  {
                     addr74:
                     while(true)
                     {
                        §"]§ = §#6§;
                        addr77:
                        while(true)
                        {
                        }
                     }
                     addr74:
                  }
                  while(true)
                  {
                     §&b§("");
                     if(!(_loc1_ || §!!%§))
                     {
                        continue;
                     }
                     if(_loc1_)
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
      
      public static function §46§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(§8!X§)
            {
               if(_loc1_)
               {
                  addr32:
                  if(!§8!X§.visible)
                  {
                     if(_loc2_ && §!!%§)
                     {
                     }
                  }
                  §§goto(addr55);
               }
               §&b§(§"]§);
            }
            addr55:
            return;
         }
         §§goto(addr32);
      }
   }
}
