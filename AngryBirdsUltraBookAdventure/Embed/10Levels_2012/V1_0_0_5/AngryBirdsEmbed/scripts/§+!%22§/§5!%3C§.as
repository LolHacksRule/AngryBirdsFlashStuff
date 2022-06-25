package §+!"§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §5!<§
   {
      
      public static const §%!,§:Boolean = true;
      
      public static const §#G§:Boolean = true;
      
      public static const §"S§:int = 0;
      
      public static const §`N§:int = 1;
      
      public static const §7V§:int = 500;
      
      private static var §?!%§:Array = null;
      
      private static var §2x§:Number = 0;
      
      public static var §5G§:int = 112;
      
      public static var §7v§:int = 114;
      
      public static var §2!'§:int = 113;
      
      public static var §5n§:int = 115;
      
      public static var §[x§:Boolean = false;
      
      public static var §`q§:Sprite = null;
      
      private static var §?A§:TextField = null;
      
      private static var §]!3§:TextField = null;
      
      private static var §>>§:TextField = null;
      
      private static var §?l§:TextField = null;
      
      public static var § !I§:int = -1;
      
      public static var §!!0§:String = "version: Unknown";
      
      public static var §&j§:String = "";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §5!<§)
         {
            §#G§ = true;
            if(_loc1_)
            {
               addr31:
               §"S§ = 0;
               §`N§ = 1;
               if(_loc1_)
               {
                  §7V§ = 500;
                  if(_loc1_)
                  {
                     §?!%§ = null;
                  }
                  §2x§ = 0;
                  if(_loc1_)
                  {
                     §5G§ = Keyboard.F1;
                     §7v§ = Keyboard.F3;
                     if(!(_loc2_ && §5!<§))
                     {
                        §2!'§ = Keyboard.F2;
                        §5n§ = Keyboard.F4;
                        §[x§ = false;
                        if(!(_loc2_ && _loc1_))
                        {
                           §`q§ = null;
                           if(!(_loc2_ && §5!<§))
                           {
                              §?A§ = null;
                              §]!3§ = null;
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
                     §>>§ = null;
                     §?l§ = null;
                  }
                  § !I§ = -1;
                  if(!_loc2_)
                  {
                     addr134:
                     §!!0§ = "version: Unknown";
                     if(_loc1_ || _loc1_)
                     {
                        addr144:
                        §&j§ = "";
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
      
      public function §5!<§()
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
            if(!§%!,§)
            {
               if(!_loc1_)
               {
                  §§goto(addr38);
               }
            }
            §?!%§ = new Array(§7V§);
            return;
         }
         addr38:
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = NaN;
         §§push(§%!,§);
         if(!_loc7_)
         {
            if(§§pop())
            {
               if(_loc6_)
               {
                  var _loc4_:*;
                  §§push((_loc4_ = §§findproperty(§2x§)).§2x§);
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
                        if(_loc6_ || §5!<§)
                        {
                           _loc4_.§2x§ = _loc5_;
                        }
                     }
                     if(!(_loc7_ && param2))
                     {
                        §§push(§§pop() % §7V§);
                        if(_loc6_)
                        {
                           addr76:
                           §§push(Number(§§pop()));
                        }
                        _loc3_ = §§pop();
                        if(_loc6_)
                        {
                           addr80:
                           §?!%§[_loc3_] = [param1,param2];
                           if(!_loc7_)
                           {
                              §§push(param2);
                              if(!_loc7_)
                              {
                                 §§push(§ !I§);
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
                                             §§push(§ !I§ < 0);
                                             if(!(_loc7_ && param1))
                                             {
                                                addr127:
                                                if(§§pop())
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      addr130:
                                                      §%!5§();
                                                      §§goto(addr132);
                                                   }
                                                   §§goto(addr134);
                                                }
                                                addr132:
                                                §§goto(addr133);
                                             }
                                          }
                                          addr133:
                                          if(§#G§)
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
      
      public static function §+!A§(param1:Object, param2:int = 1) : void
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
      
      private static function §%!5§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:* = false;
         var _loc2_:* = null;
         var _loc3_:* = NaN;
         var _loc4_:Number = NaN;
         if(!_loc5_)
         {
            §§push(§%!,§);
            if(!(_loc5_ && §5!<§))
            {
               if(!§§pop())
               {
                  if(_loc6_ || _loc2_)
                  {
                     return;
                  }
                  addr93:
                  §?l§.text = §!!0§;
                  §§push(true);
                  if(_loc6_)
                  {
                     addr99:
                     _loc1_ = §§pop();
                     if(§?A§.scrollV != §?A§.numLines - int(§?A§.height / (§?A§.textHeight / §?A§.numLines)))
                     {
                        if(!(_loc5_ && §5!<§))
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
                                 §§push(§7V§);
                                 while(true)
                                 {
                                    if(§§pop() >= §§pop())
                                    {
                                       break loop0;
                                    }
                                    §§push(§2x§ + _loc3_);
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
                                          §§push(§?!%§);
                                          if(!(_loc5_ && _loc1_))
                                          {
                                             §§push(_loc4_);
                                             if(_loc6_)
                                             {
                                                if(§§pop()[§§pop()] != null)
                                                {
                                                   if(!(_loc5_ && _loc3_))
                                                   {
                                                      §§push(§ !I§ < 0);
                                                      if(!(_loc5_ && _loc1_))
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            if(_loc6_ || §5!<§)
                                                            {
                                                               §§pop();
                                                               if(!(_loc5_ && §5!<§))
                                                               {
                                                                  addr222:
                                                                  §§push(§?!%§[_loc4_][1] == § !I§);
                                                                  if(!(_loc5_ && _loc3_))
                                                                  {
                                                                     addr234:
                                                                     if(§§pop())
                                                                     {
                                                                        §§push(_loc2_);
                                                                        if(!(_loc5_ && §5!<§))
                                                                        {
                                                                           §§push(§§pop() + (§?!%§[_loc4_][0] + "\n"));
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
                                                                           §?A§.text = _loc2_;
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
                                       §?A§.scrollV = §?A§.numLines;
                                       §§goto(addr301);
                                    }
                                 }
                                 addr301:
                                 if(!(_loc5_ && §5!<§))
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
                  §§push(Boolean(§`q§));
                  if(_loc6_)
                  {
                     addr49:
                     if(§§pop())
                     {
                        if(_loc6_)
                        {
                           §§pop();
                           §§push(Boolean(§`q§.visible));
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
                           §§push(§ !I§);
                           if(!_loc5_)
                           {
                              if(§§pop() < 0)
                              {
                                 if(_loc6_ || _loc3_)
                                 {
                                    §>>§.text = "Current channel: ALL";
                                    if(_loc6_)
                                    {
                                       addr90:
                                       if(§!!0§ != null)
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
                                 §>>§.text = "Current channel: " + § !I§;
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
      
      public static function §'Z§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_)
         {
            if(!§%!,§)
            {
               if(!(_loc8_ && param2))
               {
                  return;
               }
            }
         }
         §`q§ = new Sprite();
         if(!(_loc8_ && §5!<§))
         {
            §`q§.visible = false;
            if(_loc9_)
            {
               param1.addChild(§`q§);
            }
         }
         var _loc7_:Graphics;
         (_loc7_ = §`q§.graphics).beginFill(16777215,0);
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
                     §?A§ = new TextField();
                     if(_loc9_)
                     {
                        §?A§.width = param4;
                        if(!(_loc8_ && §5!<§))
                        {
                           §?A§.height = param5 - 40;
                           if(!_loc9_)
                           {
                           }
                           addr253:
                           §?l§.x = param2;
                           if(!_loc8_)
                           {
                              addr258:
                              §?l§.y = param3 + 20;
                              §`q§.addChild(§?l§);
                              if(_loc9_)
                              {
                                 § Z§(§[x§);
                                 if(!(_loc8_ && §5!<§))
                                 {
                                    addr288:
                                    if(param6 >= 0)
                                    {
                                       if(!_loc8_)
                                       {
                                          addr293:
                                          param1.addChildAt(§`q§,param6);
                                          if(_loc9_ || param1)
                                          {
                                          }
                                          §§goto(addr308);
                                       }
                                    }
                                    else
                                    {
                                       param1.addChild(§`q§);
                                    }
                                 }
                                 addr308:
                                 return;
                              }
                           }
                           §§goto(addr288);
                        }
                        §?A§.x = param2;
                        §?A§.y = param3 + 40;
                        §?A§.wordWrap = true;
                        if(_loc9_)
                        {
                           §`q§.addChild(§?A§);
                           addr150:
                           §]!3§ = new TextField();
                           §]!3§.x = param2 + param4 / 2;
                           §]!3§.y = param3;
                           if(!_loc8_)
                           {
                              §]!3§.width = param4 / 2;
                              if(!(_loc8_ && param2))
                              {
                                 §]!3§.height = 20;
                                 if(_loc9_)
                                 {
                                    §]!3§.text = "LOGGER CAPTURING INPUT, F4";
                                    §]!3§.border = true;
                                    addr189:
                                    §]!3§.borderColor = 16711680;
                                    §`q§.addChild(§]!3§);
                                    if(!(_loc8_ && param2))
                                    {
                                       §>>§ = new TextField();
                                       addr206:
                                       §>>§.width = param4;
                                       §>>§.height = 20;
                                       §>>§.x = param2;
                                       if(_loc9_ || param2)
                                       {
                                          §>>§.y = param3;
                                          if(!_loc8_)
                                          {
                                             §`q§.addChild(§>>§);
                                             if(_loc9_)
                                             {
                                                addr232:
                                                §?l§ = new TextField();
                                                if(_loc9_)
                                                {
                                                   §?l§.width = param4;
                                                   if(!_loc8_)
                                                   {
                                                      addr243:
                                                      §?l§.height = 20;
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
      
      public static function § Z§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(!§%!,§)
            {
               return;
            }
            §[x§ = param1;
            if(!_loc3_)
            {
               §`q§.mouseChildren = §[x§;
               if(!(_loc3_ && _loc3_))
               {
                  §`q§.mouseEnabled = §[x§;
                  if(_loc2_)
                  {
                     addr68:
                     §>>§.mouseEnabled = §[x§;
                     if(!(_loc3_ && §5!<§))
                     {
                        §?l§.mouseEnabled = §[x§;
                        if(!_loc2_)
                        {
                        }
                        §§goto(addr91);
                     }
                  }
               }
               §?A§.mouseEnabled = §[x§;
               if(_loc2_)
               {
                  §]!3§.visible = §[x§;
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
            if(§%!,§)
            {
               return;
            }
         }
      }
      
      public static function §=y§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            §5G§ = param1;
            if(!_loc5_)
            {
               §2!'§ = param2;
               if(!(_loc5_ && param1))
               {
                  §7v§ = param3;
               }
            }
         }
      }
      
      public static function §3!9§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §!!0§ = param1;
         }
      }
   }
}
