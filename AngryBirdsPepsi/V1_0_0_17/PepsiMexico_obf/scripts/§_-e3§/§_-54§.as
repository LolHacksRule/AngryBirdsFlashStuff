package §_-e3§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §_-54§
   {
      
      public static const §_-9x§:Boolean = true;
      
      public static const §_-b0§:Boolean = true;
      
      public static const §_-Qp§:int = 0;
      
      public static const §_-im§:int = 1;
      
      public static const §_-C1§:int = 500;
      
      private static var §_-tV§:Array = null;
      
      private static var §_-R6§:Number = 0;
      
      public static var §_-p3§:int = 112;
      
      public static var §_-ds§:int = 114;
      
      public static var §_-qQ§:int = 113;
      
      public static var §_-La§:int = 115;
      
      public static var §_-x0§:Boolean = false;
      
      public static var §_-l6§:Sprite = null;
      
      private static var §_-W6§:TextField = null;
      
      private static var §_-rD§:TextField = null;
      
      private static var §_-5D§:TextField = null;
      
      private static var §_-76§:TextField = null;
      
      public static var §_-Xh§:int = -1;
      
      public static var §_-u9§:String = "version: Unknown";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §_-9x§ = true;
            §_-b0§ = true;
            §_-Qp§ = 0;
            if(!(_loc2_ && _loc1_))
            {
               §_-im§ = 1;
               §_-C1§ = 500;
               if(_loc1_ || §_-54§)
               {
                  §_-tV§ = null;
                  §_-R6§ = 0;
                  if(!(_loc2_ && §_-54§))
                  {
                     §_-p3§ = Keyboard.F1;
                     if(_loc1_)
                     {
                        §_-ds§ = Keyboard.F3;
                        addr79:
                        §_-qQ§ = Keyboard.F2;
                        if(_loc1_ || _loc1_)
                        {
                           §_-La§ = Keyboard.F4;
                           if(_loc1_ || §_-54§)
                           {
                              §_-x0§ = false;
                              if(!_loc2_)
                              {
                                 §§goto(addr106);
                              }
                           }
                           §§goto(addr125);
                        }
                     }
                     §§goto(addr116);
                  }
                  §§goto(addr79);
               }
            }
         }
         addr106:
         if(!(_loc2_ && §_-54§))
         {
            addr116:
            §_-W6§ = null;
            §_-rD§ = null;
            §_-5D§ = null;
            addr125:
            §_-76§ = null;
            if(_loc2_)
            {
            }
            §§goto(addr152);
         }
         if(!_loc2_)
         {
            §_-u9§ = "version: Unknown";
            if(_loc1_ || _loc1_)
            {
            }
            §§goto(addr152);
         }
         addr152:
         init();
      }
      
      public function §_-54§()
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
         if(_loc1_ || _loc1_)
         {
            if(!§_-9x§)
            {
               if(!(_loc2_ && _loc2_))
               {
                  return;
               }
            }
            §_-tV§ = new Array(§_-C1§);
         }
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = NaN;
         §§push(§_-9x§);
         if(_loc6_)
         {
            if(§§pop())
            {
               if(_loc6_)
               {
                  var _loc4_:*;
                  §§push((_loc4_ = §§findproperty(§_-R6§)).§_-R6§);
                  if(_loc6_ || param2)
                  {
                     §§push(Number(§§pop()));
                     if(!(_loc7_ && param1))
                     {
                        §§push(§§pop());
                        if(_loc6_ || param1)
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc5_:* = §§pop();
                        if(_loc6_)
                        {
                           _loc4_.§_-R6§ = _loc5_;
                        }
                     }
                  }
                  if(_loc6_)
                  {
                     §§push(§§pop() % §_-C1§);
                     if(!(_loc7_ && _loc3_))
                     {
                        addr75:
                        §§push(Number(§§pop()));
                     }
                     _loc3_ = §§pop();
                     §_-tV§[_loc3_] = [param1,param2];
                     §§push(param2);
                     if(!_loc7_)
                     {
                        §§push(§_-Xh§);
                        if(!_loc7_)
                        {
                           §§push(§§pop() == §§pop());
                           if(_loc6_ || param1)
                           {
                              if(!§§pop())
                              {
                                 if(!(_loc7_ && _loc3_))
                                 {
                                    addr106:
                                    §§pop();
                                    addr109:
                                    addr108:
                                    addr107:
                                    §§push(§_-Xh§ < 0);
                                    if(!_loc6_)
                                    {
                                    }
                                 }
                                 §§goto(addr125);
                              }
                              if(§§pop())
                              {
                                 if(!_loc7_)
                                 {
                                    §_-zB§();
                                    if(!(_loc7_ && param2))
                                    {
                                       addr124:
                                       addr125:
                                       if(§§pop())
                                       {
                                          if(_loc6_ || param1)
                                          {
                                             addr140:
                                             if(!param1)
                                             {
                                             }
                                             §§goto(addr143);
                                          }
                                          addr142:
                                       }
                                       addr143:
                                       return;
                                       §§push(§_-b0§);
                                    }
                                    §§goto(addr140);
                                 }
                                 §§goto(addr142);
                              }
                              §§goto(addr124);
                           }
                           §§goto(addr106);
                        }
                        §§goto(addr109);
                     }
                     §§goto(addr108);
                  }
                  §§goto(addr75);
               }
               §§goto(addr107);
            }
            §§goto(addr124);
         }
         §§goto(addr106);
      }
      
      public static function §_-6m§(param1:Object, param2:int = 1) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = undefined;
         if(_loc7_)
         {
            log("Object:" + getQualifiedClassName(param1));
         }
         for(_loc3_ in param1)
         {
            if(_loc6_)
            {
               continue;
            }
            §§push(§§findproperty(log));
            §§push("-[" + _loc3_);
            if(_loc7_)
            {
               §§push(§§pop() + "]: ");
               if(!_loc6_)
               {
                  addr64:
                  §§push(§§pop() + param1[_loc3_]);
               }
               §§pop().log(§§pop());
               continue;
            }
            §§goto(addr64);
         }
      }
      
      private static function §_-zB§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:* = false;
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!(_loc5_ && _loc1_))
         {
            §§push(§_-9x§);
            if(_loc6_)
            {
               if(!§§pop())
               {
                  return;
               }
               §§push(Boolean(§_-l6§));
               if(!(_loc5_ && _loc1_))
               {
                  if(§§pop())
                  {
                     if(!(_loc5_ && _loc1_))
                     {
                        §§pop();
                        if(!(_loc5_ && _loc3_))
                        {
                           addr61:
                           §§push(Boolean(§_-l6§.visible));
                           if(!(_loc5_ && §_-54§))
                           {
                              addr71:
                              if(§§pop())
                              {
                                 addr72:
                                 §§push(§_-Xh§);
                                 if(_loc6_)
                                 {
                                    if(§§pop() < 0)
                                    {
                                       §_-5D§.text = "Current channel: ALL";
                                    }
                                    else
                                    {
                                       §_-5D§.text = "Current channel: " + §_-Xh§;
                                    }
                                    if(§_-u9§ != null)
                                    {
                                       if(_loc6_)
                                       {
                                          §_-76§.text = §_-u9§;
                                          addr94:
                                          §§push(true);
                                          if(_loc6_ || _loc2_)
                                          {
                                             addr102:
                                             _loc1_ = §§pop();
                                             if(§_-W6§.scrollV != §_-W6§.numLines - int(§_-W6§.height / (§_-W6§.textHeight / §_-W6§.numLines)))
                                             {
                                                addr121:
                                                _loc1_ = false;
                                             }
                                             _loc2_ = "";
                                             if(_loc6_ || _loc2_)
                                             {
                                                addr132:
                                                _loc3_ = 0;
                                                addr131:
                                             }
                                             loop0:
                                             while(true)
                                             {
                                                §§push(_loc3_);
                                                loop1:
                                                while(true)
                                                {
                                                   §§push(§_-C1§);
                                                   while(true)
                                                   {
                                                      if(§§pop() >= §§pop())
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            break;
                                                         }
                                                         §§goto(addr289);
                                                      }
                                                      §§push(§_-R6§);
                                                      if(_loc6_ || _loc1_)
                                                      {
                                                         §§push(§§pop() + _loc3_);
                                                         if(!(_loc6_ || _loc2_))
                                                         {
                                                            continue loop1;
                                                         }
                                                         §§push(1);
                                                         if(!_loc6_)
                                                         {
                                                            continue;
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                         if(!_loc6_)
                                                         {
                                                            continue loop0;
                                                         }
                                                      }
                                                      §§push(500);
                                                      if(!_loc6_)
                                                      {
                                                         continue;
                                                      }
                                                      §§push(§§pop() % §§pop());
                                                      if(!(_loc6_ || §_-54§))
                                                      {
                                                         continue loop0;
                                                      }
                                                      _loc4_ = §§pop();
                                                      if(!_loc6_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(§_-tV§);
                                                      if(!(_loc5_ && _loc1_))
                                                      {
                                                         §§push(_loc4_);
                                                         if(!(_loc5_ && _loc1_))
                                                         {
                                                            if(§§pop()[§§pop()] != null)
                                                            {
                                                               §§push(§_-Xh§ < 0);
                                                               if(!_loc5_)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     if(_loc6_ || _loc3_)
                                                                     {
                                                                        §§goto(addr214);
                                                                     }
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     §§push(_loc2_);
                                                                     if(!(_loc5_ && _loc1_))
                                                                     {
                                                                        §§push(§§pop() + (§_-tV§[_loc4_][0] + "\n"));
                                                                     }
                                                                     _loc2_ = §§pop();
                                                                     if(_loc6_ || _loc2_)
                                                                     {
                                                                        addr255:
                                                                        §§push(_loc3_);
                                                                        if(_loc6_ || _loc3_)
                                                                        {
                                                                           §§push(§§pop() + 1);
                                                                        }
                                                                        continue loop0;
                                                                     }
                                                                     §§goto(addr285);
                                                                  }
                                                                  §§goto(addr255);
                                                               }
                                                               §§goto(addr214);
                                                            }
                                                            §§goto(addr255);
                                                         }
                                                         §§goto(addr214);
                                                      }
                                                      addr214:
                                                      §§pop();
                                                      §§push(§_-tV§[_loc4_][1] == §_-Xh§);
                                                      if(_loc5_ && _loc2_)
                                                      {
                                                         addr282:
                                                         if(§§pop())
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               addr285:
                                                               §_-W6§.scrollV = §_-W6§.numLines;
                                                            }
                                                         }
                                                         §§goto(addr289);
                                                      }
                                                      addr289:
                                                      return;
                                                      §§goto(addr289);
                                                   }
                                                   §_-W6§.text = _loc2_;
                                                   §§goto(addr282);
                                                }
                                             }
                                          }
                                          §§goto(addr121);
                                       }
                                       §§goto(addr131);
                                    }
                                    §§goto(addr94);
                                 }
                                 §§goto(addr132);
                              }
                              §§goto(addr289);
                           }
                           §§goto(addr102);
                        }
                        §§goto(addr72);
                     }
                     §§goto(addr121);
                  }
                  §§goto(addr71);
               }
            }
            §§goto(addr102);
         }
         §§goto(addr61);
      }
      
      public static function §_-H7§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!_loc8_)
         {
            if(!§_-9x§)
            {
               if(_loc9_ || §_-54§)
               {
                  return;
               }
            }
            else
            {
               §_-l6§ = new Sprite();
               if(!(_loc8_ && param2))
               {
                  §_-l6§.visible = false;
                  if(!_loc8_)
                  {
                     addr44:
                     param1.addChild(§_-l6§);
                  }
                  var _loc7_:Graphics;
                  (_loc7_ = §_-l6§.graphics).beginFill(16777215,0);
                  _loc7_.drawRect(0,0,1000,1000);
                  _loc7_.endFill();
                  if(_loc9_ || param3)
                  {
                     _loc7_.beginFill(16777215,0.4);
                     if(_loc9_)
                     {
                        _loc7_.drawRect(param2,param3,param4,param5);
                        _loc7_.endFill();
                        §_-W6§ = new TextField();
                        if(!_loc8_)
                        {
                           §_-W6§.width = param4;
                           if(_loc9_)
                           {
                              addr95:
                              §_-W6§.height = param5 - 40;
                              if(!_loc8_)
                              {
                                 §_-W6§.x = param2;
                                 §_-W6§.y = param3 + 40;
                                 §_-W6§.wordWrap = true;
                                 §_-l6§.addChild(§_-W6§);
                              }
                              §_-rD§ = new TextField();
                              §_-rD§.x = param2 + param4 / 2;
                              §_-rD§.y = param3;
                              §_-rD§.width = param4 / 2;
                              §_-rD§.height = 20;
                              if(!(_loc8_ && param3))
                              {
                                 addr152:
                                 §_-rD§.text = "LOGGER CAPTURING INPUT, F4";
                                 §_-rD§.border = true;
                                 if(!(_loc8_ && param1))
                                 {
                                    §_-rD§.borderColor = 16711680;
                                    §_-l6§.addChild(§_-rD§);
                                    §_-5D§ = new TextField();
                                 }
                                 §_-5D§.width = param4;
                                 if(_loc9_ || §_-54§)
                                 {
                                    addr185:
                                    §_-5D§.height = 20;
                                    if(_loc9_)
                                    {
                                       §_-5D§.x = param2;
                                       addr193:
                                       §_-5D§.y = param3;
                                       §_-l6§.addChild(§_-5D§);
                                       addr199:
                                       §_-76§ = new TextField();
                                       if(_loc9_ || param2)
                                       {
                                          §_-76§.width = param4;
                                          addr213:
                                          §_-76§.height = 20;
                                          if(_loc9_ || param2)
                                          {
                                             §_-76§.x = param2;
                                             §_-76§.y = param3 + 20;
                                             if(!(_loc8_ && param2))
                                             {
                                                addr238:
                                                §_-l6§.addChild(§_-76§);
                                                §_-WT§(§_-x0§);
                                                if(!_loc8_)
                                                {
                                                   if(param6 >= 0)
                                                   {
                                                      addr256:
                                                      param1.addChildAt(§_-l6§,param6);
                                                   }
                                                   else
                                                   {
                                                      param1.addChild(§_-l6§);
                                                   }
                                                   return;
                                                }
                                             }
                                          }
                                          §§goto(addr256);
                                       }
                                    }
                                    §§goto(addr238);
                                 }
                                 §§goto(addr213);
                              }
                              §§goto(addr199);
                           }
                           §§goto(addr152);
                        }
                        §§goto(addr193);
                     }
                     §§goto(addr185);
                  }
                  §§goto(addr95);
               }
            }
         }
         §§goto(addr44);
      }
      
      public static function §_-WT§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(!§_-9x§)
            {
               return;
            }
            §_-x0§ = param1;
            §_-l6§.mouseChildren = §_-x0§;
            §_-l6§.mouseEnabled = §_-x0§;
            if(_loc2_ || param1)
            {
               addr53:
               §_-5D§.mouseEnabled = §_-x0§;
            }
            §_-76§.mouseEnabled = §_-x0§;
            §_-W6§.mouseEnabled = §_-x0§;
            if(_loc2_)
            {
               §_-rD§.visible = §_-x0§;
            }
            return;
         }
         §§goto(addr53);
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(§_-9x§)
            {
               return;
            }
         }
      }
      
      public static function §_-rh§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            §_-p3§ = param1;
            if(!_loc6_)
            {
               §_-qQ§ = param2;
               if(!_loc6_)
               {
                  addr32:
                  §_-ds§ = param3;
               }
            }
            return;
         }
         §§goto(addr32);
      }
      
      public static function §_-9o§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §_-u9§ = "version:" + param1;
         }
      }
   }
}
