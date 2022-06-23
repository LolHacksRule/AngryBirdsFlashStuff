package §3a§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §7!+§
   {
      
      public static const §9^§:Boolean = true;
      
      public static const §[!K§:Boolean = true;
      
      public static const § K§:int = 0;
      
      public static const §`N§:int = 1;
      
      public static const §[!,§:int = 500;
      
      private static var §-!K§:Array = null;
      
      private static var §`1§:Number = 0;
      
      public static var §4M§:int = 112;
      
      public static var §`>§:int = 114;
      
      public static var §4!7§:int = 113;
      
      public static var §`!B§:int = 115;
      
      public static var §^?§:Boolean = false;
      
      public static var §19§:Sprite = null;
      
      private static var §8j§:TextField = null;
      
      private static var §<u§:TextField = null;
      
      private static var §<5§:TextField = null;
      
      private static var §=]§:TextField = null;
      
      public static var §+O§:int = -1;
      
      public static var §9h§:String = "version: Unknown";
      
      public static var §+M§:String = "";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §7!+§))
         {
            §[!K§ = true;
            if(_loc2_)
            {
               § K§ = 0;
               if(!_loc1_)
               {
                  §`N§ = 1;
                  §[!,§ = 500;
                  §-!K§ = null;
                  if(!(_loc1_ && _loc1_))
                  {
                     §`1§ = 0;
                     if(!_loc1_)
                     {
                        §4M§ = Keyboard.F1;
                        if(_loc1_ && _loc2_)
                        {
                        }
                        §§goto(addr150);
                     }
                     §§goto(addr90);
                  }
                  §`>§ = Keyboard.F3;
                  if(!(_loc1_ && §7!+§))
                  {
                     §§goto(addr90);
                  }
                  §§goto(addr113);
               }
               addr90:
               §4!7§ = Keyboard.F2;
               if(_loc2_)
               {
                  §`!B§ = Keyboard.F4;
                  §^?§ = false;
               }
               §19§ = null;
               if(_loc2_ || §7!+§)
               {
                  addr113:
                  §8j§ = null;
                  if(!_loc1_)
                  {
                     §<u§ = null;
                     if(_loc2_ || §7!+§)
                     {
                        §<5§ = null;
                        §=]§ = null;
                        §+O§ = -1;
                        §§goto(addr147);
                     }
                     addr147:
                     §9h§ = "version: Unknown";
                     §§goto(addr150);
                  }
               }
               §§goto(addr150);
            }
            §§goto(addr147);
         }
         addr150:
         if(_loc2_ || _loc2_)
         {
            init();
         }
      }
      
      public function §7!+§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(!§9^§)
            {
               if(!_loc1_)
               {
                  return;
               }
            }
            else
            {
               §-!K§ = new Array(§[!,§);
            }
         }
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = NaN;
         if(!_loc6_)
         {
            §§push(§9^§);
            if(_loc7_ || param2)
            {
               if(§§pop())
               {
                  var _loc4_:*;
                  §§push((_loc4_ = §§findproperty(§`1§)).§`1§);
                  if(_loc7_ || param1)
                  {
                     §§push(Number(§§pop()));
                     if(!(_loc6_ && _loc3_))
                     {
                        §§push(§§pop());
                        if(!(_loc6_ && _loc3_))
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc5_:* = §§pop();
                        if(!_loc6_)
                        {
                           _loc4_.§`1§ = _loc5_;
                        }
                     }
                  }
                  if(!(_loc6_ && param2))
                  {
                     §§push(§§pop() % §[!,§);
                     if(!(_loc6_ && §7!+§))
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  _loc3_ = §§pop();
                  §-!K§[_loc3_] = [param1,param2];
                  if(_loc7_)
                  {
                     §§push(param2);
                     if(!(_loc6_ && §7!+§))
                     {
                        §§push(§+O§);
                        if(_loc7_ || _loc3_)
                        {
                           §§push(§§pop() == §§pop());
                           if(!_loc6_)
                           {
                              addr131:
                              if(!§§pop())
                              {
                                 if(!(_loc6_ && param2))
                                 {
                                    §§pop();
                                    addr143:
                                    addr142:
                                    addr141:
                                    §§push(§+O§ < 0);
                                    if(_loc6_)
                                    {
                                    }
                                 }
                                 §§goto(addr152);
                              }
                              if(§§pop())
                              {
                                 §<Z§();
                                 if(_loc7_)
                                 {
                                    addr151:
                                    addr152:
                                    if(§§pop())
                                    {
                                       if(param1)
                                       {
                                          addr155:
                                       }
                                    }
                                    return;
                                    §§push(§[!K§);
                                 }
                                 §§goto(addr155);
                              }
                              §§goto(addr151);
                           }
                           §§goto(addr152);
                        }
                        §§goto(addr143);
                     }
                     §§goto(addr142);
                  }
                  §§goto(addr141);
               }
               §§goto(addr151);
            }
            §§goto(addr131);
         }
         §§goto(addr151);
      }
      
      public static function §"-§(param1:Object, param2:int = 1) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = undefined;
         if(_loc7_)
         {
            §§push(§§findproperty(log));
            §§push("Object:");
            if(!(_loc6_ && §7!+§))
            {
               §§push(§§pop() + getQualifiedClassName(param1));
            }
            §§pop().log(§§pop());
         }
         for(_loc3_ in param1)
         {
            if(_loc6_)
            {
               continue;
            }
            §§push(§§findproperty(log));
            §§push("-[");
            if(_loc7_)
            {
               §§push(§§pop() + _loc3_);
               if(_loc7_)
               {
                  §§push(§§pop() + "]: ");
                  if(!(_loc6_ && §7!+§))
                  {
                     addr87:
                     §§push(§§pop() + param1[_loc3_]);
                  }
                  §§pop().log(§§pop());
                  continue;
               }
            }
            §§goto(addr87);
         }
      }
      
      private static function §<Z§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:* = false;
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:* = NaN;
         §§push(§9^§);
         if(_loc5_)
         {
            if(!§§pop())
            {
               if(!_loc6_)
               {
                  return;
               }
               addr107:
               §§push(true);
               if(!_loc6_)
               {
                  addr110:
                  _loc1_ = §§pop();
                  if(§8j§.scrollV != §8j§.numLines - int(§8j§.height / (§8j§.textHeight / §8j§.numLines)))
                  {
                     addr129:
                     _loc1_ = false;
                     if(!(_loc6_ && §7!+§))
                     {
                        addr147:
                        _loc2_ = "";
                        if(_loc5_)
                        {
                           addr152:
                           _loc3_ = 0;
                        }
                     }
                     addr154:
                     loop0:
                     while(true)
                     {
                        §§push(_loc3_);
                        loop1:
                        while(true)
                        {
                           §§push(§[!,§);
                           while(true)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 if(_loc5_ || _loc1_)
                                 {
                                    break;
                                 }
                              }
                              else
                              {
                                 §§push(§`1§ + _loc3_);
                                 §§push(1);
                                 if(!(_loc6_ && §7!+§))
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc6_ && §7!+§))
                                    {
                                       §§push(500);
                                       if(!_loc5_)
                                       {
                                          continue;
                                       }
                                       addr178:
                                       §§push(§§pop() % §§pop());
                                       if(!_loc5_)
                                       {
                                          continue loop0;
                                       }
                                       §§push(Number(§§pop()));
                                       if(_loc5_)
                                       {
                                          addr184:
                                          _loc4_ = §§pop();
                                          if(_loc5_)
                                          {
                                             §§push(§-!K§);
                                             if(_loc5_)
                                             {
                                                §§push(_loc4_);
                                                if(!_loc6_)
                                                {
                                                   if(§§pop()[§§pop()] != null)
                                                   {
                                                      if(_loc5_ || _loc1_)
                                                      {
                                                         §§push(§+O§ < 0);
                                                         if(!_loc6_)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  §§pop();
                                                                  addr215:
                                                                  §§push(§-!K§[_loc4_][1] == §+O§);
                                                                  if(_loc6_)
                                                                  {
                                                                     addr282:
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc5_ || _loc3_)
                                                                        {
                                                                           addr290:
                                                                           §8j§.scrollV = §8j§.numLines;
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr294);
                                                               }
                                                               §§goto(addr282);
                                                            }
                                                            if(§§pop())
                                                            {
                                                               §§push(_loc2_);
                                                               if(!_loc6_)
                                                               {
                                                                  §§push(§§pop() + (§-!K§[_loc4_][0] + "\n"));
                                                               }
                                                               _loc2_ = §§pop();
                                                               if(!_loc5_)
                                                               {
                                                                  addr294:
                                                                  return;
                                                               }
                                                               addr238:
                                                               §§push(_loc3_);
                                                               if(!_loc5_)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               addr241:
                                                               §§push(§§pop() + 1);
                                                               if(_loc5_ || _loc2_)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               continue loop1;
                                                            }
                                                            §§goto(addr238);
                                                         }
                                                         §§goto(addr282);
                                                      }
                                                      §§goto(addr290);
                                                   }
                                                   §§goto(addr238);
                                                }
                                             }
                                             §§goto(addr215);
                                          }
                                          §§goto(addr238);
                                       }
                                       §§goto(addr241);
                                    }
                                    §§goto(addr184);
                                 }
                                 §§goto(addr178);
                              }
                              §§goto(addr290);
                           }
                           addr278:
                           §8j§.text = _loc2_;
                           §§goto(addr282);
                        }
                     }
                  }
                  §§goto(addr147);
               }
            }
            else
            {
               §§push(Boolean(§19§));
               if(!(_loc6_ && _loc2_))
               {
                  if(§§pop())
                  {
                     if(_loc5_ || _loc3_)
                     {
                        addr50:
                        §§pop();
                        if(!_loc6_)
                        {
                           §§push(Boolean(§19§.visible));
                           if(!(_loc6_ && _loc3_))
                           {
                              addr63:
                              if(§§pop())
                              {
                                 §§push(§+O§);
                                 if(_loc5_ || _loc2_)
                                 {
                                    if(§§pop() < 0)
                                    {
                                       if(!(_loc6_ && §7!+§))
                                       {
                                          §<5§.text = "Current channel: ALL";
                                          if(_loc5_)
                                          {
                                             addr94:
                                             if(§9h§ != null)
                                             {
                                                if(!(_loc6_ && §7!+§))
                                                {
                                                   §=]§.text = §9h§;
                                                   §§goto(addr107);
                                                }
                                             }
                                             §§goto(addr107);
                                          }
                                       }
                                       §§goto(addr147);
                                    }
                                    else
                                    {
                                       §<5§.text = "Current channel: " + §+O§;
                                       if(_loc5_)
                                       {
                                          §§goto(addr94);
                                       }
                                    }
                                    §§goto(addr154);
                                 }
                                 §§goto(addr152);
                              }
                              §§goto(addr290);
                           }
                           §§goto(addr110);
                        }
                        §§goto(addr107);
                     }
                  }
                  §§goto(addr63);
               }
            }
            §§goto(addr129);
         }
         §§goto(addr50);
      }
      
      public static function §[W§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!(_loc9_ && param1))
         {
            if(!§9^§)
            {
               if(!(_loc9_ && param2))
               {
                  return;
               }
            }
         }
         §19§ = new Sprite();
         if(!_loc9_)
         {
            §19§.visible = false;
            if(_loc8_ || param1)
            {
               param1.addChild(§19§);
            }
         }
         var _loc7_:Graphics;
         (_loc7_ = §19§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         if(_loc8_)
         {
            _loc7_.drawRect(param2,param3,param4,param5);
            _loc7_.endFill();
            §8j§ = new TextField();
            if(_loc8_)
            {
               §8j§.width = param4;
               §8j§.height = param5 - 40;
               §8j§.x = param2;
               §8j§.y = param3 + 40;
               §8j§.wordWrap = true;
               if(!(_loc9_ && param2))
               {
                  §19§.addChild(§8j§);
                  if(_loc8_ || param1)
                  {
                     §<u§ = new TextField();
                     if(_loc8_)
                     {
                        §<u§.x = param2 + param4 / 2;
                        if(_loc8_)
                        {
                           §<u§.y = param3;
                           addr159:
                           §<u§.width = param4 / 2;
                           if(_loc8_)
                           {
                              §<u§.height = 20;
                              if(_loc8_)
                              {
                                 §<u§.text = "LOGGER CAPTURING INPUT, F4";
                                 §<u§.border = true;
                                 if(_loc8_ || §7!+§)
                                 {
                                    §<u§.borderColor = 16711680;
                                    if(!_loc9_)
                                    {
                                       §19§.addChild(§<u§);
                                       addr192:
                                       §<5§ = new TextField();
                                       §<5§.width = param4;
                                       §<5§.height = 20;
                                       addr202:
                                       §<5§.x = param2;
                                       §<5§.y = param3;
                                       §19§.addChild(§<5§);
                                       if(_loc8_ || param1)
                                       {
                                          §=]§ = new TextField();
                                       }
                                       addr260:
                                       §4u§(§^?§);
                                       if(!_loc9_)
                                       {
                                          addr265:
                                          if(param6 >= 0)
                                          {
                                             addr268:
                                             param1.addChildAt(§19§,param6);
                                             addr272:
                                          }
                                          else
                                          {
                                             param1.addChild(§19§);
                                          }
                                          §§goto(addr276);
                                       }
                                       §§goto(addr272);
                                    }
                                    §=]§.width = param4;
                                    if(_loc8_ || param3)
                                    {
                                       §=]§.height = 20;
                                       if(!_loc9_)
                                       {
                                          §=]§.x = param2;
                                          §§goto(addr250);
                                       }
                                       §§goto(addr268);
                                    }
                                    §§goto(addr265);
                                 }
                              }
                              §§goto(addr192);
                           }
                           §§goto(addr202);
                        }
                        §§goto(addr250);
                     }
                     addr250:
                     §=]§.y = param3 + 20;
                     §19§.addChild(§=]§);
                     if(_loc8_)
                     {
                        §§goto(addr260);
                     }
                     addr276:
                     return;
                  }
                  §§goto(addr192);
               }
               §§goto(addr265);
            }
         }
         §§goto(addr159);
      }
      
      public static function §4u§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!§9^§)
         {
            return;
         }
         §^?§ = param1;
         if(_loc3_ || §7!+§)
         {
            §19§.mouseChildren = §^?§;
            if(!_loc2_)
            {
               addr62:
               §19§.mouseEnabled = §^?§;
               if(!_loc2_)
               {
                  §<5§.mouseEnabled = §^?§;
                  if(!_loc2_)
                  {
                     §§goto(addr72);
                  }
               }
               §§goto(addr82);
            }
            addr72:
            §=]§.mouseEnabled = §^?§;
            if(!(_loc2_ && param1))
            {
               addr82:
               §8j§.mouseEnabled = §^?§;
               if(_loc3_)
               {
                  §<u§.visible = §^?§;
               }
            }
            return;
         }
         §§goto(addr62);
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(§9^§)
            {
               return;
            }
         }
      }
      
      public static function §>§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param2)
         {
            §4M§ = param1;
            if(!(_loc5_ && §7!+§))
            {
               addr44:
               §4!7§ = param2;
               if(_loc6_ || param1)
               {
                  §`>§ = param3;
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      public static function §9!!§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && §7!+§))
         {
            §9h§ = param1;
         }
      }
   }
}
