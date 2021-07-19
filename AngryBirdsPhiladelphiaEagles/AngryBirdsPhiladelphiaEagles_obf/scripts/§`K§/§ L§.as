package §`K§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class § L§
   {
      
      public static const §1!N§:Boolean = true;
      
      public static const §9b§:Boolean = true;
      
      public static const §3?§:int = 0;
      
      public static const §@!5§:int = 1;
      
      public static const §&P§:int = 500;
      
      private static var §^!B§:Array = null;
      
      private static var §9v§:Number = 0;
      
      public static var §1!D§:int = 112;
      
      public static var §`! §:int = 114;
      
      public static var §6>§:int = 113;
      
      public static var §2!?§:int = 115;
      
      public static var §"!9§:Boolean = false;
      
      public static var §5%§:Sprite = null;
      
      private static var §-"§:TextField = null;
      
      private static var §9$§:TextField = null;
      
      private static var §>!,§:TextField = null;
      
      private static var §!!+§:TextField = null;
      
      public static var §>C§:int = -1;
      
      public static var §;!+§:String = "version: Unknown";
      
      public static var §-g§:String = "";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         loop0:
         while(true)
         {
            §&P§ = 500;
            loop1:
            while(true)
            {
               §^!B§ = null;
               §9v§ = 0;
               loop2:
               while(true)
               {
                  §1!D§ = Keyboard.F1;
                  loop3:
                  while(true)
                  {
                     §`! § = Keyboard.F3;
                     §6>§ = Keyboard.F2;
                     §2!?§ = Keyboard.F4;
                     loop4:
                     while(_loc1_)
                     {
                        if(!_loc2_)
                        {
                           §"!9§ = false;
                           while(_loc1_)
                           {
                              §5%§ = null;
                              continue loop3;
                              addr55:
                              if(!(_loc2_ && _loc2_))
                              {
                                 §-g§ = "";
                                 init();
                                 addr62:
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    if(_loc1_ || § L§)
                                    {
                                       return;
                                    }
                                    continue loop4;
                                    continue loop4;
                                 }
                                 loop8:
                                 while(true)
                                 {
                                    if(!(_loc1_ || § L§))
                                    {
                                       while(!_loc2_)
                                       {
                                          §;!+§ = "version: Unknown";
                                          continue loop8;
                                       }
                                       continue loop3;
                                       addr67:
                                    }
                                    §§goto(addr55);
                                 }
                              }
                           }
                           continue loop1;
                        }
                        continue loop0;
                     }
                     continue loop2;
                  }
               }
            }
         }
      }
      
      public function § L§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
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
            if(§1!N§)
            {
               do
               {
                  §^!B§ = new Array(§&P§);
               }
               while(!_loc2_);
               
               if(_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = NaN;
         §§push(§1!N§);
         if(!(_loc7_ && § L§))
         {
            if(§§pop())
            {
               var _loc4_:*;
               §§push((_loc4_ = §§findproperty(§9v§)).§9v§);
               if(_loc6_)
               {
                  §§push(Number(§§pop()));
                  if(!(_loc7_ && _loc3_))
                  {
                     §§push(§§pop());
                     if(!(_loc7_ && _loc3_))
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc5_:* = §§pop();
                     if(_loc6_ || _loc3_)
                     {
                        _loc4_.§9v§ = _loc5_;
                     }
                  }
               }
               if(!_loc7_)
               {
                  §§push(§§pop() % §&P§);
                  if(_loc6_ || param1)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               _loc3_ = §§pop();
               if(!(_loc7_ && param1))
               {
                  §^!B§[_loc3_] = [param1,param2];
               }
               §§push(param2);
               loop0:
               while(true)
               {
                  §§push(§>C§);
                  addr147:
                  while(true)
                  {
                     §§push(§§pop() == §§pop());
                     addr148:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           continue loop0;
                        }
                        addr139:
                        while(true)
                        {
                           addr140:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 §;g§();
                              }
                           }
                        }
                     }
                  }
               }
            }
            while(true)
            {
               §§push(§9b§);
               if(_loc7_)
               {
                  continue;
               }
               if(!(_loc7_ && param2))
               {
                  if(!_loc7_)
                  {
                     break;
                  }
                  §§goto(addr148);
               }
               §§goto(addr150);
            }
            if(§§pop())
            {
               if(_loc6_)
               {
                  if(!param1)
                  {
                  }
                  §§goto(addr113);
               }
            }
            addr113:
            return;
         }
         §§goto(addr148);
      }
      
      public static function §;!'§(param1:Object, param2:int = 1) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = undefined;
         if(!_loc6_)
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
            if(!(_loc7_ || _loc3_))
            {
               continue;
            }
            §§push(§§findproperty(log));
            §§push("-[");
            if(_loc7_ || § L§)
            {
               §§push(§§pop() + _loc3_);
               if(!(_loc6_ && param1))
               {
                  §§push(§§pop() + "]: ");
                  if(_loc7_ || § L§)
                  {
                     addr97:
                     §§push(§§pop() + param1[_loc3_]);
                  }
               }
               §§pop().log(§§pop());
               continue;
            }
            §§goto(addr97);
         }
      }
      
      private static function §;g§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:* = false;
         var _loc2_:* = null;
         var _loc3_:* = NaN;
         var _loc4_:Number = NaN;
         §§push(§1!N§);
         loop0:
         while(true)
         {
            if(§§pop())
            {
               §§push(Boolean(§5%§));
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr332:
                        while(true)
                        {
                           §§push(Boolean(§5%§.visible));
                        }
                     }
                     addr331:
                  }
                  while(true)
                  {
                     loop5:
                     for(; §§pop(); while(true)
                     {
                        if(!(_loc6_ || _loc1_))
                        {
                           continue loop5;
                        }
                        if(!_loc6_)
                        {
                           continue loop1;
                        }
                        §§goto(addr268);
                        §§goto(addr233);
                     },§§goto(addr197))
                     {
                        loop6:
                        while(true)
                        {
                           §§push(§>C§);
                           while(true)
                           {
                              if(§§pop() < 0)
                              {
                                 §>!,§.text = "Current channel: ALL";
                              }
                              else
                              {
                                 §>!,§.text = "Current channel: " + §>C§;
                                 while(_loc6_ || _loc3_)
                                 {
                                 }
                                 continue loop6;
                                 addr305:
                              }
                              loop8:
                              while(true)
                              {
                                 if(§;!+§ != null)
                                 {
                                    §!!+§.text = §;!+§;
                                    while(_loc6_)
                                    {
                                       _loc1_ = §§pop();
                                       if(!(_loc6_ || _loc1_))
                                       {
                                          continue;
                                       }
                                       if(§-"§.scrollV != §-"§.numLines - int(§-"§.height / (§-"§.textHeight / §-"§.numLines)))
                                       {
                                          addr233:
                                          §§push(false);
                                          if(_loc5_ && _loc2_)
                                          {
                                             continue loop5;
                                          }
                                          if(_loc6_ || _loc2_)
                                          {
                                             continue loop0;
                                          }
                                          §§goto(addr331);
                                       }
                                       else
                                       {
                                          addr197:
                                          _loc2_ = "";
                                          if(!(_loc5_ && § L§))
                                          {
                                             break loop8;
                                          }
                                          §§goto(addr305);
                                       }
                                    }
                                    §§goto(addr332);
                                 }
                                 while(true)
                                 {
                                    §§push(true);
                                    continue loop5;
                                 }
                                 §§goto(addr312);
                              }
                              if(_loc5_ && _loc2_)
                              {
                                 break;
                              }
                              §§push(0);
                              if(!_loc6_)
                              {
                                 continue;
                              }
                              _loc3_ = Number(§§pop());
                              addr54:
                              §§push(_loc3_);
                              if(!_loc5_)
                              {
                                 if(_loc6_)
                                 {
                                    §§push(§&P§);
                                    if(!_loc5_)
                                    {
                                       if(_loc6_ || _loc2_)
                                       {
                                          if(§§pop() >= §§pop())
                                          {
                                             addr71:
                                             if(_loc6_ || _loc2_)
                                             {
                                                §-"§.text = _loc2_;
                                                addr81:
                                                §§push(_loc1_);
                                                if(_loc6_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            if(!(_loc5_ && _loc2_))
                                                            {
                                                               §-"§.scrollV = §-"§.numLines;
                                                               addr51:
                                                               if(!_loc6_)
                                                               {
                                                                  §§goto(addr81);
                                                               }
                                                               break loop5;
                                                            }
                                                            addr163:
                                                            §§push(§>C§ < 0);
                                                            if(!(§>C§ < 0))
                                                            {
                                                               addr168:
                                                               §§pop();
                                                               if(_loc6_ || _loc1_)
                                                               {
                                                                  §§push(§^!B§);
                                                                  if(!(_loc5_ && § L§))
                                                                  {
                                                                     §§push(_loc4_);
                                                                     if(_loc6_ || _loc3_)
                                                                     {
                                                                        addr112:
                                                                        §§push(§§pop()[§§pop()][1] == §>C§);
                                                                        if(_loc6_ || § L§)
                                                                        {
                                                                           if(!(_loc5_ && § L§))
                                                                           {
                                                                              addr126:
                                                                              if(§§pop())
                                                                              {
                                                                                 §§push(_loc2_);
                                                                                 if(!(_loc5_ && § L§))
                                                                                 {
                                                                                    §§push(§§pop() + (§^!B§[_loc4_][0] + "\n"));
                                                                                 }
                                                                                 _loc2_ = §§pop();
                                                                              }
                                                                              addr82:
                                                                              addr86:
                                                                              §§push(Number(_loc3_ + 1));
                                                                              if(_loc6_)
                                                                              {
                                                                                 _loc3_ = §§pop();
                                                                                 addr89:
                                                                                 §§goto(addr54);
                                                                              }
                                                                              addr187:
                                                                              _loc4_ = (§§pop() + _loc3_ + 1) % 500;
                                                                              if(§^!B§[_loc4_] != null)
                                                                              {
                                                                                 §§goto(addr163);
                                                                              }
                                                                              §§goto(addr82);
                                                                              addr189:
                                                                              addr181:
                                                                              addr184:
                                                                              addr186:
                                                                           }
                                                                           §§goto(addr163);
                                                                        }
                                                                        §§goto(addr168);
                                                                     }
                                                                  }
                                                                  §§goto(addr82);
                                                               }
                                                               §§goto(addr189);
                                                            }
                                                            §§goto(addr126);
                                                         }
                                                         §§goto(addr71);
                                                      }
                                                      §§goto(addr51);
                                                   }
                                                   break loop5;
                                                }
                                                §§goto(addr112);
                                             }
                                             §§goto(addr89);
                                          }
                                          §§goto(addr181);
                                          §§push(§9v§);
                                       }
                                       §§goto(addr184);
                                    }
                                    §§goto(addr186);
                                 }
                                 §§goto(addr187);
                              }
                              §§goto(addr86);
                           }
                        }
                     }
                     return;
                  }
               }
            }
            return;
         }
      }
      
      public static function §2e§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_)
         {
            if(§1!N§)
            {
               loop0:
               while(true)
               {
                  §5%§ = new Sprite();
                  loop1:
                  while(_loc8_ || param2)
                  {
                     loop2:
                     while(true)
                     {
                        §5%§.visible = false;
                        while(_loc8_)
                        {
                           param1.addChild(§5%§);
                           if(_loc9_)
                           {
                              continue;
                           }
                           if(_loc9_)
                           {
                              break loop2;
                           }
                           while(false)
                           {
                              continue loop2;
                           }
                           var _loc7_:Graphics;
                           (_loc7_ = §5%§.graphics).beginFill(16777215,0);
                           if(_loc8_)
                           {
                              _loc7_.drawRect(0,0,1000,1000);
                              loop5:
                              while(true)
                              {
                                 _loc7_.endFill();
                                 loop6:
                                 while(true)
                                 {
                                    _loc7_.beginFill(16777215,0.4);
                                    _loc7_.drawRect(param2,param3,param4,param5);
                                    _loc7_.endFill();
                                    §-"§ = new TextField();
                                    while(true)
                                    {
                                       §-"§.width = param4;
                                       loop12:
                                       for(; !(_loc9_ && § L§); §5%§.addChild(§9$§),if(_loc9_)
                                       {
                                          continue;
                                       },§>!,§ = new TextField(),§§goto(addr222))
                                       {
                                          §9$§.width = param4 / 2;
                                          §9$§.height = 20;
                                          loop13:
                                          while(true)
                                          {
                                             §9$§.text = "LOGGER CAPTURING INPUT, F4";
                                             §9$§.border = true;
                                             loop14:
                                             while(true)
                                             {
                                                §9$§.borderColor = 16711680;
                                                while(_loc8_)
                                                {
                                                   continue loop12;
                                                   while(true)
                                                   {
                                                      if(_loc9_ && § L§)
                                                      {
                                                         break;
                                                         addr183:
                                                      }
                                                      §>!,§.y = param3;
                                                      while(_loc8_)
                                                      {
                                                         continue loop13;
                                                      }
                                                      continue loop6;
                                                      addr150:
                                                      §!!+§.x = param2;
                                                      if(_loc9_)
                                                      {
                                                         continue;
                                                      }
                                                      §!!+§.y = param3 + 20;
                                                      if(!(_loc8_ || param2))
                                                      {
                                                         continue loop14;
                                                      }
                                                      if(_loc8_)
                                                      {
                                                         §5%§.addChild(§!!+§);
                                                         loop21:
                                                         while(true)
                                                         {
                                                            §?!!§(§"!9§);
                                                            while(true)
                                                            {
                                                               if(param6 < 0)
                                                               {
                                                                  param1.addChild(§5%§);
                                                                  if(_loc8_ || param1)
                                                                  {
                                                                     if(_loc8_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     addr321:
                                                                     while(true)
                                                                     {
                                                                        §-"§.x = param2;
                                                                        §-"§.y = param3 + 40;
                                                                        §-"§.wordWrap = true;
                                                                        §5%§.addChild(§-"§);
                                                                        §9$§ = new TextField();
                                                                        continue loop6;
                                                                     }
                                                                  }
                                                               }
                                                               if(_loc8_)
                                                               {
                                                                  addr90:
                                                                  if(_loc8_ || param2)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  continue loop5;
                                                               }
                                                               continue loop21;
                                                            }
                                                            return;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            §>!,§.width = param4;
                                                            continue loop14;
                                                         }
                                                         addr222:
                                                      }
                                                   }
                                                }
                                                addr279:
                                                while(true)
                                                {
                                                   §9$§.y = param3;
                                                   continue loop12;
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr326);
                        }
                        continue loop1;
                     }
                     continue loop0;
                  }
               }
            }
            return;
         }
         §§goto(addr27);
      }
      
      public static function §?!!§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            if(!§1!N§)
            {
               if(_loc3_)
               {
                  return;
               }
            }
            §"!9§ = param1;
            §5%§.mouseChildren = §"!9§;
         }
         while(true)
         {
            §5%§.mouseEnabled = §"!9§;
            while(_loc3_ || § L§)
            {
               §>!,§.mouseEnabled = §"!9§;
               while(_loc3_)
               {
                  §!!+§.mouseEnabled = §"!9§;
                  if(_loc3_)
                  {
                     §-"§.mouseEnabled = §"!9§;
                     do
                     {
                        §9$§.visible = §"!9§;
                     }
                     while(!_loc3_);
                     
                     return;
                  }
               }
            }
         }
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(§1!N§)
            {
               return;
            }
         }
      }
      
      public static function §;_§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || § L§)
         {
            §1!D§ = param1;
            while(true)
            {
               §6>§ = param2;
               §§goto(addr57);
            }
         }
         addr57:
         while(true)
         {
            §`! § = param3;
            if(!_loc5_)
            {
               if(!(_loc5_ && param1))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public static function §8;§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §;!+§ = param1;
         }
      }
   }
}
