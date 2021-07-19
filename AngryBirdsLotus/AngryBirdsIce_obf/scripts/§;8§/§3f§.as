package §;8§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §3f§
   {
      
      public static const §7C§:Boolean = true;
      
      public static const §?D§:Boolean = true;
      
      public static const §!!$§:int = 0;
      
      public static const §;n§:int = 1;
      
      public static const §3! §:int = 500;
      
      private static var §@f§:Array = null;
      
      private static var §,n§:Number = 0;
      
      public static var §#>§:int = 112;
      
      public static var §[!A§:int = 114;
      
      public static var §%%§:int = 113;
      
      public static var §3!9§:int = 115;
      
      public static var §<!%§:Boolean = false;
      
      public static var §5!2§:Sprite = null;
      
      private static var §#]§:TextField = null;
      
      private static var §"!&§:TextField = null;
      
      private static var §`N§:TextField = null;
      
      private static var §3z§:TextField = null;
      
      public static var § I§:int = -1;
      
      public static var §7f§:String = "version: Unknown";
      
      public static var §;E§:String = "";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         loop0:
         while(true)
         {
            §3! § = 500;
            §@f§ = null;
            §,n§ = 0;
            loop1:
            while(true)
            {
               §#>§ = Keyboard.F1;
               while(true)
               {
                  §[!A§ = Keyboard.F3;
                  continue loop1;
                  addr121:
                  loop4:
                  while(true)
                  {
                     §3!9§ = Keyboard.F4;
                     §<!%§ = false;
                     if(_loc1_ && §3f§)
                     {
                        break;
                     }
                     §5!2§ = null;
                     §#]§ = null;
                     loop5:
                     while(true)
                     {
                        §"!&§ = null;
                        while(true)
                        {
                           if(_loc2_)
                           {
                              §`N§ = null;
                              §3z§ = null;
                              continue loop0;
                           }
                           continue loop5;
                           addr48:
                           §;E§ = "";
                           init();
                           if(!_loc1_)
                           {
                              if(!_loc1_)
                              {
                                 return;
                              }
                              continue loop4;
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
      }
      
      public function §3f§()
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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            if(!§7C§)
            {
               if(!(_loc1_ && _loc2_))
               {
                  §§goto(addr57);
               }
               else
               {
                  while(true)
                  {
                  }
                  addr58:
               }
            }
            while(true)
            {
               §@f§ = new Array(§3! §);
               if(_loc2_)
               {
                  break;
               }
               §§goto(addr58);
            }
            return;
         }
         addr57:
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = NaN;
         §§push(§7C§);
         if(!_loc6_)
         {
            if(§§pop())
            {
               var _loc4_:*;
               §§push((_loc4_ = §§findproperty(§,n§)).§,n§);
               if(_loc7_ || §3f§)
               {
                  §§push(Number(§§pop()));
                  if(!(_loc6_ && §3f§))
                  {
                     §§push(§§pop());
                     if(!_loc6_)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc5_:* = §§pop();
                     if(!_loc6_)
                     {
                        _loc4_.§,n§ = _loc5_;
                     }
                  }
               }
               if(_loc7_ || param1)
               {
                  §§push(§§pop() % §3! §);
                  if(_loc7_ || §3f§)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               _loc3_ = §§pop();
               §@f§[_loc3_] = [param1,param2];
               §§push(param2);
               loop0:
               while(true)
               {
                  §§push(§ I§);
                  addr155:
                  while(true)
                  {
                     §§push(§§pop() == §§pop());
                     addr156:
                     loop2:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop6:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop7:
                                 while(!_loc6_)
                                 {
                                    §#s§();
                                    while(true)
                                    {
                                       addr102:
                                       if(!(_loc6_ && param1))
                                       {
                                          if(!_loc6_)
                                          {
                                             §§goto(addr112);
                                          }
                                          continue loop7;
                                       }
                                    }
                                 }
                                 continue loop0;
                              }
                              while(true)
                              {
                                 addr84:
                                 while(true)
                                 {
                                    §§push(§?D§);
                                    if(!(_loc6_ && §3f§))
                                    {
                                       if(!(_loc6_ && param1))
                                       {
                                          while(§§pop())
                                          {
                                             if(param1)
                                             {
                                                §§goto(addr102);
                                             }
                                             break;
                                          }
                                          addr112:
                                       }
                                       continue loop2;
                                       return;
                                    }
                                    while(_loc7_ || §3f§)
                                    {
                                       continue loop6;
                                    }
                                    addr138:
                                 }
                                 §§goto(addr151);
                              }
                           }
                        }
                        while(true)
                        {
                           §§pop();
                           continue loop0;
                        }
                     }
                  }
               }
            }
            §§goto(addr84);
         }
         §§goto(addr99);
      }
      
      public static function §5G§(param1:Object, param2:int = 1) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = undefined;
         if(!(_loc6_ && _loc3_))
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
            if(!(_loc7_ || param1))
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
                  if(_loc7_ || _loc3_)
                  {
                     addr92:
                     §§push(§§pop() + param1[_loc3_]);
                  }
                  §§pop().log(§§pop());
                  continue;
               }
            }
            §§goto(addr92);
         }
      }
      
      private static function §#s§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:* = false;
         var _loc2_:* = null;
         var _loc3_:* = NaN;
         var _loc4_:Number = NaN;
         if(_loc6_ || _loc3_)
         {
            §§push(§7C§);
            loop0:
            for(; §§pop(); while(!(_loc5_ && _loc3_))
            {
               §§pop();
            })
            {
               §§push(Boolean(§5!2§));
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop3:
                     while(§§pop())
                     {
                        §§push(§ I§);
                        loop4:
                        while(true)
                        {
                           if(§§pop() < 0)
                           {
                              loop13:
                              while(true)
                              {
                                 §`N§.text = "Current channel: ALL";
                                 addr271:
                                 while(true)
                                 {
                                    if(§7f§ != null)
                                    {
                                       §3z§.text = §7f§;
                                       while(true)
                                       {
                                       }
                                       addr278:
                                    }
                                    loop8:
                                    while(true)
                                    {
                                       §§push(true);
                                       while(true)
                                       {
                                          if(_loc5_ && _loc1_)
                                          {
                                             continue loop0;
                                          }
                                          _loc1_ = §§pop();
                                          if(§#]§.scrollV != §#]§.numLines - int(§#]§.height / (§#]§.textHeight / §#]§.numLines)))
                                          {
                                             addr259:
                                             if(_loc6_ || §3f§)
                                             {
                                                §§push(false);
                                                if(!_loc6_)
                                                {
                                                   continue;
                                                }
                                                if(_loc5_)
                                                {
                                                   break;
                                                }
                                                _loc1_ = §§pop();
                                             }
                                             while(true)
                                             {
                                             }
                                             addr259:
                                          }
                                          while(true)
                                          {
                                             _loc2_ = "";
                                             addr225:
                                             while(true)
                                             {
                                                if(!_loc5_)
                                                {
                                                   continue loop4;
                                                }
                                             }
                                             continue loop4;
                                             §§goto(addr259);
                                          }
                                          if(!_loc5_)
                                          {
                                             break loop8;
                                          }
                                          §§goto(addr278);
                                       }
                                       addr302:
                                       while(true)
                                       {
                                          if(_loc6_)
                                          {
                                             continue loop3;
                                          }
                                          continue loop1;
                                       }
                                    }
                                    if(!_loc5_)
                                    {
                                       break;
                                    }
                                    continue loop13;
                                 }
                                 addr55:
                                 §§push(_loc3_);
                                 if(!_loc5_)
                                 {
                                    if(!_loc5_)
                                    {
                                       if(!_loc5_)
                                       {
                                          §§push(§3! §);
                                          if(_loc6_ || _loc1_)
                                          {
                                             if(§§pop() >= §§pop())
                                             {
                                                §#]§.text = _loc2_;
                                                if(_loc6_ || §3f§)
                                                {
                                                   §§push(_loc1_);
                                                   if(_loc6_ || _loc1_)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         addr175:
                                                         §§pop();
                                                         addr176:
                                                         §§push(§@f§);
                                                         if(!_loc5_)
                                                         {
                                                            §§push(_loc4_);
                                                            if(!(_loc5_ && _loc2_))
                                                            {
                                                               addr122:
                                                               §§push(§§pop()[§§pop()][1] == § I§);
                                                               if(!(_loc5_ && _loc1_))
                                                               {
                                                                  addr129:
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc6_ || _loc3_)
                                                                     {
                                                                        §§push(_loc2_);
                                                                        if(_loc6_)
                                                                        {
                                                                           §§push(§§pop() + (§@f§[_loc4_][0] + "\n"));
                                                                        }
                                                                        _loc2_ = §§pop();
                                                                     }
                                                                     addr161:
                                                                  }
                                                                  §§push(_loc3_ + 1);
                                                                  if(_loc6_ || §3f§)
                                                                  {
                                                                     addr94:
                                                                     §§push(Number(§§pop()));
                                                                     if(_loc6_)
                                                                     {
                                                                        _loc3_ = §§pop();
                                                                        addr97:
                                                                        if(_loc6_ || _loc2_)
                                                                        {
                                                                           §§goto(addr55);
                                                                        }
                                                                        §§goto(addr161);
                                                                     }
                                                                     addr195:
                                                                     _loc4_ = §§pop() % 500;
                                                                     if(§@f§[_loc4_] != null)
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           addr173:
                                                                           §§push(§ I§ < 0);
                                                                           if(!(§ I§ < 0))
                                                                           {
                                                                              §§goto(addr175);
                                                                           }
                                                                           §§goto(addr129);
                                                                        }
                                                                        §§goto(addr176);
                                                                     }
                                                                     §§goto(addr129);
                                                                     addr192:
                                                                     addr193:
                                                                  }
                                                                  §§goto(addr94);
                                                               }
                                                               §§goto(addr173);
                                                            }
                                                         }
                                                         §§goto(addr94);
                                                      }
                                                      if(§§pop())
                                                      {
                                                         §#]§.scrollV = §#]§.numLines;
                                                         break loop3;
                                                      }
                                                      break loop3;
                                                   }
                                                   §§goto(addr122);
                                                }
                                                §§goto(addr97);
                                             }
                                             addr181:
                                             §§push(§,n§ + _loc3_);
                                             §§push(1);
                                             if(!(_loc5_ && _loc2_))
                                             {
                                                §§goto(addr192);
                                                §§push(§§pop() + §§pop());
                                             }
                                          }
                                          §§goto(addr193);
                                       }
                                       §§goto(addr181);
                                    }
                                    §§goto(addr195);
                                 }
                                 §§goto(addr94);
                              }
                           }
                           else
                           {
                              §`N§.text = "Current channel: " + § I§;
                           }
                           while(true)
                           {
                              §§goto(addr271);
                           }
                        }
                     }
                  }
                  continue loop0;
                  return;
               }
            }
            return;
         }
         while(true)
         {
            §§goto(addr302);
         }
      }
      
      public static function §=a§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!_loc9_)
         {
            if(§7C§)
            {
               loop0:
               while(true)
               {
                  §5!2§ = new Sprite();
                  loop1:
                  while(_loc8_)
                  {
                     loop2:
                     while(true)
                     {
                        §5!2§.visible = false;
                        loop3:
                        while(!(_loc9_ && param3))
                        {
                           while(true)
                           {
                              param1.addChild(§5!2§);
                              if(!(_loc9_ && param2))
                              {
                                 if(!(_loc9_ && param3))
                                 {
                                    if(true)
                                    {
                                       break;
                                    }
                                    continue loop2;
                                 }
                                 continue loop1;
                              }
                              continue loop3;
                           }
                           var _loc7_:Graphics;
                           (_loc7_ = §5!2§.graphics).beginFill(16777215,0);
                           _loc7_.drawRect(0,0,1000,1000);
                           loop5:
                           while(true)
                           {
                              _loc7_.endFill();
                              _loc7_.beginFill(16777215,0.4);
                              loop6:
                              while(true)
                              {
                                 _loc7_.drawRect(param2,param3,param4,param5);
                                 loop7:
                                 while(true)
                                 {
                                    _loc7_.endFill();
                                    loop8:
                                    while(true)
                                    {
                                       §#]§ = new TextField();
                                       §#]§.width = param4;
                                       while(true)
                                       {
                                          §#]§.height = param5 - 40;
                                          §#]§.x = param2;
                                          §#]§.y = param3 + 40;
                                          §#]§.wordWrap = true;
                                          §5!2§.addChild(§#]§);
                                          §"!&§ = new TextField();
                                          §"!&§.x = param2 + param4 / 2;
                                          continue loop8;
                                          addr148:
                                          §5!2§.addChild(§3z§);
                                          if(!(_loc9_ && param2))
                                          {
                                             §@T§(§<!%§);
                                             while(true)
                                             {
                                                if(param6 < 0)
                                                {
                                                   param1.addChild(§5!2§);
                                                   break;
                                                }
                                                if(!(_loc9_ && §3f§))
                                                {
                                                   if(_loc8_)
                                                   {
                                                      if(!_loc9_)
                                                      {
                                                         if(_loc8_)
                                                         {
                                                            param1.addChildAt(§5!2§,param6);
                                                            addr104:
                                                            if(!_loc9_)
                                                            {
                                                               addr106:
                                                               if(!(_loc9_ && param1))
                                                               {
                                                                  if(_loc8_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §3z§.height = 20;
                                                                  }
                                                                  addr172:
                                                               }
                                                               while(_loc8_)
                                                               {
                                                                  §3z§.x = param2;
                                                                  addr167:
                                                                  if(!(_loc9_ && param1))
                                                                  {
                                                                     §3z§.y = param3 + 20;
                                                                     if(!_loc9_)
                                                                     {
                                                                        addr141:
                                                                        if(_loc8_ || param1)
                                                                        {
                                                                           §§goto(addr148);
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §`N§.x = param2;
                                                                              while(!_loc9_)
                                                                              {
                                                                                 §`N§.y = param3;
                                                                                 while(!(_loc9_ && §3f§))
                                                                                 {
                                                                                    §3z§.width = param4;
                                                                                    §§goto(addr172);
                                                                                 }
                                                                              }
                                                                              addr290:
                                                                              while(true)
                                                                              {
                                                                                 §"!&§.width = param4 / 2;
                                                                                 addr285:
                                                                                 while(true)
                                                                                 {
                                                                                    §"!&§.height = 20;
                                                                                    §"!&§.text = "LOGGER CAPTURING INPUT, F4";
                                                                                    §"!&§.border = true;
                                                                                    continue loop7;
                                                                                    §§goto(addr167);
                                                                                 }
                                                                              }
                                                                              §§goto(addr141);
                                                                           }
                                                                           addr224:
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §5!2§.addChild(§`N§);
                                                                        if(!(_loc8_ || param2))
                                                                        {
                                                                           break;
                                                                        }
                                                                        §3z§ = new TextField();
                                                                        §§goto(addr188);
                                                                        §§goto(addr160);
                                                                     }
                                                                     addr160:
                                                                     while(true)
                                                                     {
                                                                        §`N§.height = 20;
                                                                        §§goto(addr224);
                                                                        §§goto(addr212);
                                                                     }
                                                                     addr212:
                                                                     addr229:
                                                                  }
                                                                  §§goto(addr285);
                                                                  §§goto(addr106);
                                                               }
                                                               continue loop5;
                                                            }
                                                            continue;
                                                         }
                                                         continue loop6;
                                                      }
                                                      continue loop7;
                                                   }
                                                   §§goto(addr188);
                                                }
                                                §§goto(addr104);
                                             }
                                             return;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        continue loop0;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr50);
      }
      
      public static function §@T§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(§7C§)
            {
               loop0:
               do
               {
                  §<!%§ = param1;
                  while(true)
                  {
                     §5!2§.mouseChildren = §<!%§;
                     if(_loc3_)
                     {
                        break;
                     }
                     §5!2§.mouseEnabled = §<!%§;
                     §`N§.mouseEnabled = §<!%§;
                     if(!(_loc3_ && param1))
                     {
                        continue loop0;
                     }
                  }
               }
               while(§3z§.mouseEnabled = §<!%§, §#]§.mouseEnabled = §<!%§, !(_loc2_ || param1));
               
               §"!&§.visible = §<!%§;
               return;
            }
         }
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            if(§7C§)
            {
               return;
            }
         }
      }
      
      public static function §1!$§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            §#>§ = param1;
         }
         do
         {
            §%%§ = param2;
            do
            {
               §[!A§ = param3;
            }
            while(!(_loc5_ || §3f§));
            
         }
         while(_loc6_ && §3f§);
         
      }
      
      public static function §'! §(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §7f§ = param1;
         }
      }
   }
}
