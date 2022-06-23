package §>K§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §9X§
   {
      
      public static const §9d§:Boolean = true;
      
      public static const §6!4§:Boolean = true;
      
      public static const §#!,§:int = 0;
      
      public static const §4!G§:int = 1;
      
      public static const §7,§:int = 500;
      
      private static var §+Y§:Array = null;
      
      private static var §^+§:Number = 0;
      
      public static var §=&§:int = 112;
      
      public static var §%G§:int = 114;
      
      public static var §#!=§:int = 113;
      
      public static var §2P§:int = 115;
      
      public static var §4X§:Boolean = false;
      
      public static var §,@§:Sprite = null;
      
      private static var §1e§:TextField = null;
      
      private static var §%^§:TextField = null;
      
      private static var §5C§:TextField = null;
      
      private static var §[A§:TextField = null;
      
      public static var §&z§:int = -1;
      
      public static var § G§:String = "version: Unknown";
      
      public static var §;n§:String = "";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §9X§)
         {
            §6!4§ = true;
            if(_loc1_)
            {
               addr31:
               §#!,§ = 0;
               §4!G§ = 1;
               if(_loc1_)
               {
                  §7,§ = 500;
                  if(_loc1_)
                  {
                     §+Y§ = null;
                  }
                  §^+§ = 0;
                  if(_loc1_)
                  {
                     §=&§ = Keyboard.F1;
                     §%G§ = Keyboard.F3;
                     if(!(_loc2_ && §9X§))
                     {
                        §#!=§ = Keyboard.F2;
                        §2P§ = Keyboard.F4;
                        §4X§ = false;
                        if(!(_loc2_ && _loc1_))
                        {
                           §,@§ = null;
                           if(!(_loc2_ && §9X§))
                           {
                              §1e§ = null;
                              §%^§ = null;
                              §§goto(addr108);
                           }
                           §§goto(addr147);
                        }
                     }
                     §§goto(addr144);
                  }
                  addr108:
                  if(_loc1_)
                  {
                     §5C§ = null;
                     §[A§ = null;
                  }
                  §&z§ = -1;
                  if(!_loc2_)
                  {
                     addr134:
                     § G§ = "version: Unknown";
                     if(_loc1_ || _loc1_)
                     {
                        addr144:
                        §;n§ = "";
                        addr147:
                        init();
                     }
                     §§goto(addr147);
                  }
                  return;
               }
               §§goto(addr134);
            }
            §§goto(addr144);
         }
         §§goto(addr31);
      }
      
      public function §9X§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      public static function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            if(!§9d§)
            {
               if(!_loc1_)
               {
                  §§goto(addr38);
               }
            }
            §+Y§ = new Array(§7,§);
            return;
         }
         addr38:
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = NaN;
         §§push(§9d§);
         if(!_loc7_)
         {
            if(§§pop())
            {
               if(_loc6_)
               {
                  var _loc4_:*;
                  §§push((_loc4_ = §§findproperty(§^+§)).§^+§);
                  if(!_loc7_)
                  {
                     §§push(Number(§§pop()));
                     if(!(_loc7_ && param2))
                     {
                        addr38:
                        §§push(§§pop());
                        if(_loc6_)
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc5_:* = §§pop();
                        if(_loc6_ || §9X§)
                        {
                           _loc4_.§^+§ = _loc5_;
                        }
                     }
                     if(!(_loc7_ && param2))
                     {
                        §§push(§§pop() % §7,§);
                        if(_loc6_)
                        {
                           addr76:
                           §§push(Number(§§pop()));
                        }
                        _loc3_ = §§pop();
                        if(_loc6_)
                        {
                           addr80:
                           §+Y§[_loc3_] = [param1,param2];
                           if(!_loc7_)
                           {
                              §§push(param2);
                              if(!_loc7_)
                              {
                                 §§push(§&z§);
                                 if(_loc6_ || param2)
                                 {
                                    §§push(§§pop() == §§pop());
                                    if(!_loc7_)
                                    {
                                       if(!§§pop())
                                       {
                                          if(!_loc7_)
                                          {
                                             addr116:
                                             §§pop();
                                             §§push(§&z§ < 0);
                                             if(!(_loc7_ && param1))
                                             {
                                                addr127:
                                                if(§§pop())
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      addr130:
                                                      §1n§();
                                                      §§goto(addr132);
                                                   }
                                                   §§goto(addr134);
                                                }
                                                addr132:
                                                §§goto(addr133);
                                             }
                                          }
                                          addr133:
                                          if(§6!4§)
                                          {
                                             addr134:
                                             if(!param1)
                                             {
                                             }
                                          }
                                          return;
                                       }
                                       §§goto(addr127);
                                    }
                                 }
                              }
                              §§goto(addr116);
                           }
                           §§goto(addr132);
                        }
                        §§goto(addr130);
                     }
                     §§goto(addr76);
                  }
                  §§goto(addr38);
               }
               §§goto(addr80);
            }
            §§goto(addr130);
         }
         §§goto(addr127);
      }
      
      public static function §^B§(param1:Object, param2:int = 1) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = undefined;
         if(_loc6_)
         {
            §§push(§§findproperty(log));
            §§push("Object:");
            if(_loc6_)
            {
               §§push(§§pop() + getQualifiedClassName(param1));
            }
            §§pop().log(§§pop());
         }
         for(_loc3_ in param1)
         {
            if(_loc7_)
            {
               continue;
            }
            §§push(§§findproperty(log));
            §§push("-[");
            if(!_loc7_)
            {
               §§push(§§pop() + _loc3_);
               if(!_loc7_)
               {
                  addr72:
                  §§push(§§pop() + "]: ");
                  if(_loc6_)
                  {
                     addr76:
                     §§push(§§pop() + param1[_loc3_]);
                  }
                  §§pop().log(§§pop());
                  continue;
               }
               §§goto(addr76);
            }
            §§goto(addr72);
         }
      }
      
      private static function §1n§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:* = false;
         var _loc2_:* = null;
         var _loc3_:* = NaN;
         var _loc4_:Number = NaN;
         if(!_loc5_)
         {
            §§push(§9d§);
            if(!(_loc5_ && §9X§))
            {
               if(!§§pop())
               {
                  if(_loc6_ || _loc2_)
                  {
                     return;
                  }
                  addr93:
                  §[A§.text = § G§;
                  §§push(true);
                  if(_loc6_)
                  {
                     addr99:
                     _loc1_ = §§pop();
                     if(§1e§.scrollV != §1e§.numLines - int(§1e§.height / (§1e§.textHeight / §1e§.numLines)))
                     {
                        if(!(_loc5_ && §9X§))
                        {
                           addr125:
                           _loc1_ = false;
                           addr124:
                           if(_loc6_ || _loc3_)
                           {
                              addr133:
                              _loc2_ = "";
                              _loc3_ = Number(0);
                           }
                           addr148:
                           loop0:
                           while(true)
                           {
                              §§push(_loc3_);
                              loop1:
                              while(true)
                              {
                                 §§push(§7,§);
                                 while(true)
                                 {
                                    if(§§pop() >= §§pop())
                                    {
                                       break loop0;
                                    }
                                    §§push(§^+§ + _loc3_);
                                    §§push(1);
                                    if(!_loc6_)
                                    {
                                       continue;
                                    }
                                    §§push(§§pop() + §§pop());
                                    §§push(500);
                                    if(_loc5_)
                                    {
                                       continue;
                                    }
                                    §§push(§§pop() % §§pop());
                                    if(!_loc5_)
                                    {
                                       _loc4_ = §§pop();
                                       if(_loc6_ || _loc1_)
                                       {
                                          §§push(§+Y§);
                                          if(!(_loc5_ && _loc1_))
                                          {
                                             §§push(_loc4_);
                                             if(_loc6_)
                                             {
                                                if(§§pop()[§§pop()] != null)
                                                {
                                                   if(!(_loc5_ && _loc3_))
                                                   {
                                                      §§push(§&z§ < 0);
                                                      if(!(_loc5_ && _loc1_))
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            if(_loc6_ || §9X§)
                                                            {
                                                               §§pop();
                                                               if(!(_loc5_ && §9X§))
                                                               {
                                                                  addr222:
                                                                  §§push(§+Y§[_loc4_][1] == §&z§);
                                                                  if(!(_loc5_ && _loc3_))
                                                                  {
                                                                     addr234:
                                                                     if(§§pop())
                                                                     {
                                                                        §§push(_loc2_);
                                                                        if(!(_loc5_ && §9X§))
                                                                        {
                                                                           §§push(§§pop() + (§+Y§[_loc4_][0] + "\n"));
                                                                        }
                                                                        _loc2_ = §§pop();
                                                                        if(!_loc5_)
                                                                        {
                                                                           addr255:
                                                                           §§push(_loc3_);
                                                                           if(!_loc5_)
                                                                           {
                                                                              addr259:
                                                                              §§push(Number(§§pop() + 1));
                                                                              if(_loc6_ || _loc2_)
                                                                              {
                                                                                 break loop1;
                                                                              }
                                                                              continue loop1;
                                                                           }
                                                                           §§goto(addr259);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr283:
                                                                           §1e§.text = _loc2_;
                                                                           §§goto(addr301);
                                                                        }
                                                                     }
                                                                     §§goto(addr255);
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr293);
                                                            }
                                                            break;
                                                         }
                                                      }
                                                      §§goto(addr234);
                                                   }
                                                   §§goto(addr297);
                                                }
                                                §§goto(addr255);
                                             }
                                          }
                                          §§goto(addr222);
                                       }
                                       §§goto(addr255);
                                    }
                                    §§goto(addr259);
                                 }
                                 if(§§pop())
                                 {
                                    if(_loc6_)
                                    {
                                       addr297:
                                       §1e§.scrollV = §1e§.numLines;
                                       §§goto(addr301);
                                    }
                                 }
                                 addr301:
                                 if(!(_loc5_ && §9X§))
                                 {
                                    addr293:
                                    §§push(_loc1_);
                                    break loop2;
                                 }
                                 return;
                              }
                              _loc3_ = §§pop();
                           }
                           if(_loc6_)
                           {
                              §§goto(addr283);
                           }
                           §§goto(addr297);
                        }
                     }
                     §§goto(addr133);
                  }
                  §§goto(addr125);
               }
               else
               {
                  §§push(Boolean(§,@§));
                  if(_loc6_)
                  {
                     addr49:
                     if(§§pop())
                     {
                        if(_loc6_)
                        {
                           §§pop();
                           §§push(Boolean(§,@§.visible));
                           if(!_loc6_)
                           {
                           }
                           §§goto(addr99);
                        }
                     }
                     if(§§pop())
                     {
                        if(!(_loc5_ && _loc1_))
                        {
                           addr67:
                           §§push(§&z§);
                           if(!_loc5_)
                           {
                              if(§§pop() < 0)
                              {
                                 if(_loc6_ || _loc3_)
                                 {
                                    §5C§.text = "Current channel: ALL";
                                    if(_loc6_)
                                    {
                                       addr90:
                                       if(§ G§ != null)
                                       {
                                       }
                                       §§goto(addr93);
                                    }
                                    §§goto(addr124);
                                 }
                                 §§goto(addr133);
                              }
                              else
                              {
                                 §5C§.text = "Current channel: " + §&z§;
                              }
                              §§goto(addr90);
                           }
                           §§goto(addr133);
                        }
                        §§goto(addr148);
                     }
                     §§goto(addr283);
                  }
               }
               §§goto(addr99);
            }
            §§goto(addr49);
         }
         §§goto(addr67);
      }
      
      public static function §'!&§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_)
         {
            if(!§9d§)
            {
               if(!(_loc8_ && param2))
               {
                  return;
               }
            }
         }
         §,@§ = new Sprite();
         if(!(_loc8_ && §9X§))
         {
            §,@§.visible = false;
            if(_loc9_)
            {
               param1.addChild(§,@§);
            }
         }
         var _loc7_:Graphics;
         (_loc7_ = §,@§.graphics).beginFill(16777215,0);
         if(!(_loc8_ && param1))
         {
            _loc7_.drawRect(0,0,1000,1000);
            _loc7_.endFill();
            _loc7_.beginFill(16777215,0.4);
            if(_loc9_ || param1)
            {
               _loc7_.drawRect(param2,param3,param4,param5);
               if(_loc9_)
               {
                  _loc7_.endFill();
                  if(!_loc8_)
                  {
                     §1e§ = new TextField();
                     if(_loc9_)
                     {
                        §1e§.width = param4;
                        if(!(_loc8_ && §9X§))
                        {
                           §1e§.height = param5 - 40;
                           if(!_loc9_)
                           {
                           }
                           addr253:
                           §[A§.x = param2;
                           if(!_loc8_)
                           {
                              addr258:
                              §[A§.y = param3 + 20;
                              §,@§.addChild(§[A§);
                              if(_loc9_)
                              {
                                 §7#§(§4X§);
                                 if(!(_loc8_ && §9X§))
                                 {
                                    addr288:
                                    if(param6 >= 0)
                                    {
                                       if(!_loc8_)
                                       {
                                          addr293:
                                          param1.addChildAt(§,@§,param6);
                                          if(_loc9_ || param1)
                                          {
                                          }
                                          §§goto(addr308);
                                       }
                                    }
                                    else
                                    {
                                       param1.addChild(§,@§);
                                    }
                                 }
                                 addr308:
                                 return;
                              }
                           }
                           §§goto(addr288);
                        }
                        §1e§.x = param2;
                        §1e§.y = param3 + 40;
                        §1e§.wordWrap = true;
                        if(_loc9_)
                        {
                           §,@§.addChild(§1e§);
                           addr150:
                           §%^§ = new TextField();
                           §%^§.x = param2 + param4 / 2;
                           §%^§.y = param3;
                           if(!_loc8_)
                           {
                              §%^§.width = param4 / 2;
                              if(!(_loc8_ && param2))
                              {
                                 §%^§.height = 20;
                                 if(_loc9_)
                                 {
                                    §%^§.text = "LOGGER CAPTURING INPUT, F4";
                                    §%^§.border = true;
                                    addr189:
                                    §%^§.borderColor = 16711680;
                                    §,@§.addChild(§%^§);
                                    if(!(_loc8_ && param2))
                                    {
                                       §5C§ = new TextField();
                                       addr206:
                                       §5C§.width = param4;
                                       §5C§.height = 20;
                                       §5C§.x = param2;
                                       if(_loc9_ || param2)
                                       {
                                          §5C§.y = param3;
                                          if(!_loc8_)
                                          {
                                             §,@§.addChild(§5C§);
                                             if(_loc9_)
                                             {
                                                addr232:
                                                §[A§ = new TextField();
                                                if(_loc9_)
                                                {
                                                   §[A§.width = param4;
                                                   if(!_loc8_)
                                                   {
                                                      addr243:
                                                      §[A§.height = 20;
                                                      if(_loc9_ || param2)
                                                      {
                                                         §§goto(addr253);
                                                      }
                                                   }
                                                }
                                                §§goto(addr293);
                                             }
                                          }
                                          §§goto(addr288);
                                       }
                                       §§goto(addr258);
                                    }
                                    §§goto(addr288);
                                 }
                                 §§goto(addr243);
                              }
                              §§goto(addr232);
                           }
                           §§goto(addr206);
                        }
                        §§goto(addr189);
                     }
                     §§goto(addr253);
                  }
                  §§goto(addr150);
               }
               §§goto(addr206);
            }
         }
         §§goto(addr150);
      }
      
      public static function §7#§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(!§9d§)
            {
               return;
            }
            §4X§ = param1;
            if(!_loc3_)
            {
               §,@§.mouseChildren = §4X§;
               if(!(_loc3_ && _loc3_))
               {
                  §,@§.mouseEnabled = §4X§;
                  if(_loc2_)
                  {
                     addr68:
                     §5C§.mouseEnabled = §4X§;
                     if(!(_loc3_ && §9X§))
                     {
                        §[A§.mouseEnabled = §4X§;
                        if(!_loc2_)
                        {
                        }
                        §§goto(addr91);
                     }
                  }
               }
               §1e§.mouseEnabled = §4X§;
               if(_loc2_)
               {
                  §%^§.visible = §4X§;
               }
               §§goto(addr91);
            }
            §§goto(addr68);
         }
         addr91:
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(§9d§)
            {
               return;
            }
         }
      }
      
      public static function §%8§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            §=&§ = param1;
            if(!_loc5_)
            {
               §#!=§ = param2;
               if(!(_loc5_ && param1))
               {
                  §%G§ = param3;
               }
            }
         }
      }
      
      public static function §8y§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            § G§ = param1;
         }
      }
   }
}
