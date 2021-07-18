package § !r§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §`![§
   {
      
      public static const §'!X§:Boolean = true;
      
      public static const §<! §:Boolean = true;
      
      public static const §]!a§:int = 0;
      
      public static const §"p§:int = 1;
      
      public static const §=!Q§:int = 500;
      
      private static var §8o§:Array = null;
      
      private static var §!!e§:Number = 0;
      
      public static var §#o§:int = 112;
      
      public static var §>!-§:int = 114;
      
      public static var §0[§:int = Keyboard.F2;
      
      public static var §!<§:int = Keyboard.F4;
      
      public static var §1!A§:Boolean = false;
      
      public static var §[!f§:Sprite = null;
      
      private static var §"!^§:TextField = null;
      
      private static var §8`§:TextField = null;
      
      private static var §#!7§:TextField = null;
      
      private static var §24§:TextField = null;
      
      public static var §"!!§:int = -1;
      
      public static var §38§:String = "version: Unknown";
      
      public static var §[o§:String = "";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §`![§)
         {
            §<! § = true;
            if(!(_loc2_ && _loc1_))
            {
               §§goto(addr36);
            }
            §§goto(addr111);
         }
         addr36:
         if(_loc1_)
         {
            §=!Q§ = 500;
            if(_loc1_ || _loc1_)
            {
               §8o§ = null;
               §!!e§ = 0;
               if(!_loc2_)
               {
                  §#o§ = Keyboard.F1;
                  if(_loc1_)
                  {
                     §>!-§ = Keyboard.F3;
                     §§goto(addr82);
                  }
                  §§goto(addr157);
               }
            }
            §§goto(addr111);
         }
         addr82:
         if(_loc1_ || _loc2_)
         {
            §1!A§ = false;
         }
         if(_loc1_)
         {
            addr111:
            §#!7§ = null;
            if(_loc1_ || _loc2_)
            {
               §24§ = null;
               if(_loc1_ || §`![§)
               {
                  §"!!§ = -1;
                  §38§ = "version: Unknown";
                  if(_loc1_ || §`![§)
                  {
                     §[o§ = "";
                     addr157:
                     init();
                  }
               }
            }
         }
      }
      
      public function §`![§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(!§'!X§)
            {
               if(!(_loc2_ && _loc2_))
               {
                  return;
               }
            }
            §8o§ = new Array(§=!Q§);
         }
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = NaN;
         §§push(§'!X§);
         if(!(_loc7_ && §`![§))
         {
            if(§§pop())
            {
               var _loc4_:*;
               §§push((_loc4_ = §§findproperty(§!!e§)).§!!e§);
               if(!(_loc7_ && param2))
               {
                  §§push(Number(§§pop()));
                  if(!(_loc7_ && param2))
                  {
                     §§push(§§pop());
                     if(!(_loc7_ && _loc3_))
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc5_:* = §§pop();
                     if(!(_loc7_ && §`![§))
                     {
                        _loc4_.§!!e§ = _loc5_;
                     }
                  }
               }
               if(!_loc7_)
               {
                  §§push(§§pop() % §=!Q§);
                  if(_loc6_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               _loc3_ = §§pop();
               if(_loc6_)
               {
                  §8o§[_loc3_] = [param1,param2];
                  if(_loc6_)
                  {
                     §§push(param2);
                     if(_loc6_)
                     {
                        §§push(§"!!§);
                        if(!_loc7_)
                        {
                           §§push(§§pop() == §§pop());
                           if(!(_loc7_ && param2))
                           {
                              if(!§§pop())
                              {
                                 if(_loc6_)
                                 {
                                    addr114:
                                    §§pop();
                                    if(!(_loc7_ && param1))
                                    {
                                       §§goto(addr134);
                                    }
                                    §§goto(addr158);
                                 }
                              }
                              §§goto(addr142);
                           }
                           §§goto(addr114);
                        }
                        §§goto(addr134);
                     }
                     addr134:
                     §§push(§"!!§ < 0);
                     if(!(_loc7_ && §`![§))
                     {
                        addr142:
                        if(§§pop())
                        {
                           if(_loc6_)
                           {
                              addr145:
                              §>4§();
                              if(!(_loc7_ && _loc3_))
                              {
                                 §§goto(addr154);
                              }
                              §§goto(addr160);
                           }
                        }
                        addr154:
                        §§goto(addr155);
                     }
                     addr155:
                     if(§<! §)
                     {
                        if(_loc6_)
                        {
                           addr158:
                           if(param1)
                           {
                              addr160:
                           }
                        }
                        §§goto(addr160);
                     }
                     return;
                  }
                  §§goto(addr145);
               }
               §§goto(addr160);
            }
         }
         §§goto(addr154);
      }
      
      public static function §!1§(param1:Object, param2:int = 1) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = undefined;
         if(_loc7_)
         {
            §§push(§§findproperty(log));
            §§push("Object:");
            if(!_loc6_)
            {
               §§push(§§pop() + getQualifiedClassName(param1));
            }
            §§pop().log(§§pop());
         }
         for(_loc3_ in param1)
         {
            if(!(_loc7_ || param2))
            {
               continue;
            }
            §§push(§§findproperty(log));
            §§push("-[");
            if(_loc7_ || _loc3_)
            {
               §§push(§§pop() + _loc3_);
               if(!(_loc6_ && param1))
               {
                  addr88:
                  §§push(§§pop() + "]: ");
                  if(_loc7_ || param2)
                  {
                     addr97:
                     §§push(§§pop() + param1[_loc3_]);
                  }
                  §§pop().log(§§pop());
                  continue;
               }
               §§goto(addr97);
            }
            §§goto(addr88);
         }
      }
      
      private static function §>4§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:* = false;
         var _loc2_:* = null;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         §§push(§'!X§);
         if(_loc6_)
         {
            if(!§§pop())
            {
               if(_loc6_)
               {
                  return;
               }
               addr87:
               §§push(true);
               if(_loc6_)
               {
                  addr90:
                  _loc1_ = §§pop();
                  if(§"!^§.scrollV != §"!^§.numLines - int(§"!^§.height / (§"!^§.textHeight / §"!^§.numLines)))
                  {
                     if(!(_loc5_ && _loc3_))
                     {
                        addr116:
                        _loc1_ = false;
                        if(_loc6_ || §`![§)
                        {
                           addr124:
                           _loc2_ = "";
                           if(_loc5_)
                           {
                           }
                           addr131:
                           loop0:
                           while(true)
                           {
                              §§push(_loc3_);
                              loop1:
                              while(true)
                              {
                                 §§push(§=!Q§);
                                 while(true)
                                 {
                                    if(§§pop() >= §§pop())
                                    {
                                       if(_loc6_ || §`![§)
                                       {
                                          addr285:
                                          §"!^§.text = _loc2_;
                                       }
                                       addr288:
                                       §§push(_loc1_);
                                    }
                                    else
                                    {
                                       §§push(§!!e§ + _loc3_);
                                       §§push(1);
                                       if(!_loc5_)
                                       {
                                          §§push(§§pop() + §§pop());
                                          §§push(500);
                                          if(_loc5_)
                                          {
                                             continue;
                                          }
                                       }
                                       §§push(§§pop() % §§pop());
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          §§push(Number(§§pop()));
                                          if(_loc6_ || _loc1_)
                                          {
                                             _loc4_ = §§pop();
                                             if(!(_loc6_ || §`![§))
                                             {
                                                continue loop0;
                                             }
                                             §§push(§8o§);
                                             if(!(_loc5_ && §`![§))
                                             {
                                                §§push(_loc4_);
                                                if(_loc6_ || _loc3_)
                                                {
                                                   if(§§pop()[§§pop()] != null)
                                                   {
                                                      if(_loc6_ || _loc3_)
                                                      {
                                                         §§push(§"!!§ < 0);
                                                         if(!_loc5_)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  addr212:
                                                                  §§pop();
                                                                  if(!_loc5_)
                                                                  {
                                                                     §§goto(addr215);
                                                                  }
                                                                  §§goto(addr288);
                                                               }
                                                            }
                                                            §§goto(addr224);
                                                         }
                                                         §§goto(addr212);
                                                      }
                                                      addr215:
                                                      §§goto(addr217);
                                                   }
                                                   §§goto(addr245);
                                                }
                                                addr217:
                                                §§goto(addr216);
                                             }
                                             addr216:
                                             §§push(§8o§[_loc4_][1] == §"!!§);
                                             if(_loc6_)
                                             {
                                                addr224:
                                                if(§§pop())
                                                {
                                                   if(_loc6_)
                                                   {
                                                      §§push(_loc2_);
                                                      if(_loc6_ || _loc3_)
                                                      {
                                                         §§push(§§pop() + (§8o§[_loc4_][0] + "\n"));
                                                      }
                                                      _loc2_ = §§pop();
                                                      addr245:
                                                      §§push(_loc3_);
                                                      if(_loc6_ || §`![§)
                                                      {
                                                         addr254:
                                                         §§push(Number(§§pop() + 1));
                                                         if(_loc5_ && _loc1_)
                                                         {
                                                            continue loop1;
                                                         }
                                                      }
                                                      _loc3_ = §§pop();
                                                      if(_loc5_)
                                                      {
                                                         break;
                                                      }
                                                      continue loop0;
                                                   }
                                                   §§goto(addr285);
                                                }
                                                §§goto(addr245);
                                             }
                                             §§goto(addr289);
                                          }
                                       }
                                       §§goto(addr254);
                                    }
                                    addr289:
                                    if(§§pop())
                                    {
                                       break;
                                    }
                                    return;
                                 }
                                 §"!^§.scrollV = §"!^§.numLines;
                                 §§goto(addr215);
                              }
                           }
                        }
                        _loc3_ = Number(0);
                     }
                     §§goto(addr131);
                  }
                  §§goto(addr124);
               }
               §§goto(addr116);
            }
            else
            {
               §§push(Boolean(§[!f§));
               if(_loc6_ || _loc1_)
               {
                  addr42:
                  if(§§pop())
                  {
                     if(_loc6_ || _loc3_)
                     {
                        §§pop();
                        §§push(Boolean(§[!f§.visible));
                        if(_loc5_)
                        {
                        }
                        §§goto(addr90);
                     }
                  }
                  if(§§pop())
                  {
                     if(!_loc5_)
                     {
                        §§push(§"!!§);
                        if(_loc6_ || §`![§)
                        {
                           if(§§pop() < 0)
                           {
                              if(_loc6_)
                              {
                                 §#!7§.text = "Current channel: ALL";
                                 addr81:
                                 if(§38§ != null)
                                 {
                                    §24§.text = §38§;
                                 }
                                 §§goto(addr87);
                              }
                              §§goto(addr116);
                           }
                           else
                           {
                              §#!7§.text = "Current channel: " + §"!!§;
                              §§goto(addr81);
                           }
                        }
                        §§goto(addr116);
                     }
                     §§goto(addr81);
                  }
                  §§goto(addr215);
               }
            }
            §§goto(addr90);
         }
         §§goto(addr42);
      }
      
      public static function §;q§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_ || param1)
         {
            if(!§'!X§)
            {
               if(!_loc9_)
               {
                  return;
               }
            }
            else
            {
               §[!f§ = new Sprite();
               if(!(_loc9_ && §`![§))
               {
                  §[!f§.visible = false;
                  if(!_loc9_)
                  {
                     addr46:
                     param1.addChild(§[!f§);
                  }
               }
            }
            var _loc7_:Graphics;
            (_loc7_ = §[!f§.graphics).beginFill(16777215,0);
            _loc7_.drawRect(0,0,1000,1000);
            _loc7_.endFill();
            _loc7_.beginFill(16777215,0.4);
            if(!_loc9_)
            {
               _loc7_.drawRect(param2,param3,param4,param5);
               if(_loc8_)
               {
                  _loc7_.endFill();
               }
               §"!^§ = new TextField();
            }
            §"!^§.width = param4;
            if(_loc8_)
            {
               §"!^§.height = param5 - 40;
               §"!^§.x = param2;
               §"!^§.y = param3 + 40;
               §"!^§.wordWrap = true;
               if(!(_loc9_ && param2))
               {
                  §[!f§.addChild(§"!^§);
                  if(!(_loc9_ && param1))
                  {
                     addr123:
                     §8`§ = new TextField();
                     §8`§.x = param2 + param4 / 2;
                     §8`§.y = param3;
                     if(!(_loc9_ && param2))
                     {
                        §8`§.width = param4 / 2;
                        if(!(_loc9_ && param3))
                        {
                           §8`§.height = 20;
                           if(_loc8_)
                           {
                              §8`§.text = "LOGGER CAPTURING INPUT, F4";
                              addr174:
                              §8`§.border = true;
                              addr177:
                              §8`§.borderColor = 16711680;
                              if(_loc8_)
                              {
                                 §[!f§.addChild(§8`§);
                                 §#!7§ = new TextField();
                                 if(!_loc9_)
                                 {
                                    §#!7§.width = param4;
                                    if(!(_loc9_ && param3))
                                    {
                                       addr201:
                                       §#!7§.height = 20;
                                       addr204:
                                       §#!7§.x = param2;
                                       if(!_loc9_)
                                       {
                                          §#!7§.y = param3;
                                          §[!f§.addChild(§#!7§);
                                          if(!(_loc9_ && param1))
                                          {
                                             §24§ = new TextField();
                                             if(!_loc9_)
                                             {
                                                §24§.width = param4;
                                             }
                                             addr244:
                                             §24§.y = param3 + 20;
                                             §[!f§.addChild(§24§);
                                             if(!(_loc9_ && param1))
                                             {
                                                §05§(§1!A§);
                                                if(!(_loc9_ && param3))
                                                {
                                                   addr279:
                                                   if(param6 >= 0)
                                                   {
                                                      addr282:
                                                      param1.addChildAt(§[!f§,param6);
                                                   }
                                                   else
                                                   {
                                                      param1.addChild(§[!f§);
                                                   }
                                                }
                                                return;
                                             }
                                             §§goto(addr282);
                                          }
                                          §§goto(addr244);
                                       }
                                       §24§.height = 20;
                                       §24§.x = param2;
                                       if(!(_loc9_ && param3))
                                       {
                                          §§goto(addr244);
                                       }
                                       §§goto(addr279);
                                    }
                                    §§goto(addr244);
                                 }
                                 §§goto(addr204);
                              }
                              §§goto(addr201);
                           }
                           §§goto(addr282);
                        }
                        §§goto(addr177);
                     }
                     §§goto(addr174);
                  }
                  §§goto(addr201);
               }
               §§goto(addr282);
            }
            §§goto(addr123);
         }
         §§goto(addr46);
      }
      
      public static function §05§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(!§'!X§)
            {
               return;
            }
            §1!A§ = param1;
            if(!_loc2_)
            {
               §[!f§.mouseChildren = §1!A§;
               §[!f§.mouseEnabled = §1!A§;
               if(!(_loc2_ && param1))
               {
                  §#!7§.mouseEnabled = §1!A§;
                  if(_loc3_)
                  {
                     §24§.mouseEnabled = §1!A§;
                     if(_loc3_ || _loc2_)
                     {
                        addr87:
                        §"!^§.mouseEnabled = §1!A§;
                        addr90:
                        §8`§.visible = §1!A§;
                     }
                  }
                  §§goto(addr90);
               }
               return;
            }
            §§goto(addr87);
         }
         §§goto(addr87);
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(§'!X§)
            {
               return;
            }
         }
      }
      
      public static function §]^§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            §#o§ = param1;
            if(_loc6_)
            {
               §0[§ = param2;
               if(_loc6_)
               {
                  addr29:
                  §>!-§ = param3;
               }
            }
            return;
         }
         §§goto(addr29);
      }
      
      public static function §!!w§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §38§ = param1;
         }
      }
   }
}
