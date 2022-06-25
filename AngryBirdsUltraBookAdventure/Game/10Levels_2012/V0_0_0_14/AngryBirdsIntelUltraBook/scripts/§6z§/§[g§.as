package §6z§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §[g§
   {
      
      public static const §6A§:Boolean = true;
      
      public static const §%!h§:Boolean = true;
      
      public static const § 1§:int = 0;
      
      public static const §6h§:int = 1;
      
      public static const §5g§:int = 500;
      
      private static var §#%§:Array = null;
      
      private static var §@!c§:Number = 0;
      
      public static var §"t§:int = 112;
      
      public static var §-5§:int = 114;
      
      public static var §@!,§:int = 113;
      
      public static var §+x§:int = 115;
      
      public static var §;!!§:Boolean = false;
      
      public static var §4&§:Sprite = null;
      
      private static var §'!A§:TextField = null;
      
      private static var §=V§:TextField = null;
      
      private static var §'$§:TextField = null;
      
      private static var §9C§:TextField = null;
      
      public static var §&!M§:int = -1;
      
      public static var § !M§:String = "version: Unknown";
      
      public static var §`$§:String = "";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §6A§ = true;
            loop0:
            while(true)
            {
               §%!h§ = true;
               loop1:
               while(true)
               {
                  § 1§ = 0;
                  loop2:
                  while(true)
                  {
                     §6h§ = 1;
                     loop3:
                     while(true)
                     {
                        §5g§ = 500;
                        loop4:
                        while(true)
                        {
                           §#%§ = null;
                           loop5:
                           for(; !_loc1_; while(_loc2_ || §[g§)
                           {
                              if(!_loc2_)
                              {
                                 continue loop2;
                              }
                              §-5§ = Keyboard.F3;
                              while(true)
                              {
                                 §@!,§ = Keyboard.F2;
                                 §§goto(addr156);
                              }
                           })
                           {
                              §@!c§ = 0;
                              while(!_loc1_)
                              {
                                 §"t§ = Keyboard.F1;
                                 continue loop5;
                                 for(; !(_loc1_ && _loc1_); loop13:
                                 while(!(_loc1_ && _loc2_))
                                 {
                                    continue loop3;
                                    loop15:
                                    while(!(_loc1_ && §[g§))
                                    {
                                       if(!_loc1_)
                                       {
                                          §9C§ = null;
                                          while(_loc2_)
                                          {
                                             §&!M§ = -1;
                                             while(true)
                                             {
                                                if(!_loc1_)
                                                {
                                                   if(_loc1_)
                                                   {
                                                      break;
                                                   }
                                                   continue loop0;
                                                }
                                                continue loop15;
                                             }
                                             while(true)
                                             {
                                                §+x§ = Keyboard.F4;
                                                break loop13;
                                             }
                                          }
                                          continue loop5;
                                          addr75:
                                       }
                                       §§goto(addr132);
                                    }
                                 })
                                 {
                                    §;!!§ = false;
                                    while(true)
                                    {
                                       §4&§ = null;
                                       §§goto(addr132);
                                    }
                                 }
                              }
                              continue loop4;
                           }
                           continue loop1;
                        }
                        if(!(_loc2_ || _loc1_))
                        {
                           continue;
                        }
                        §=V§ = null;
                        while(!_loc1_)
                        {
                           §'$§ = null;
                           §§goto(addr82);
                        }
                        §§goto(addr162);
                     }
                  }
               }
               if(_loc1_ && §[g§)
               {
                  continue;
               }
               § !M§ = "version: Unknown";
               loop18:
               while(!_loc1_)
               {
                  §`$§ = "";
                  while(true)
                  {
                     if(_loc2_)
                     {
                        if(_loc1_)
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop18;
                  }
                  §§goto(addr59);
               }
               §§goto(addr106);
            }
         }
         addr132:
         addr38:
         while(true)
         {
            §'!A§ = null;
            continue loop10;
         }
      }
      
      public function §[g§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
         }
      }
      
      public static function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §[g§))
         {
            if(§6A§)
            {
               loop0:
               while(true)
               {
                  §#%§ = new Array(§5g§);
                  if(!(_loc1_ && §[g§))
                  {
                     break;
                  }
                  addr58:
                  while(true)
                  {
                     continue loop0;
                  }
               }
               if(!_loc1_)
               {
                  return;
               }
            }
            return;
         }
         §§goto(addr58);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = NaN;
         if(_loc6_)
         {
            §§push(§6A§);
            if(_loc6_)
            {
               if(§§pop())
               {
                  if(!(_loc7_ && param2))
                  {
                     var _loc4_:*;
                     §§push((_loc4_ = §§findproperty(§@!c§)).§@!c§);
                     if(!_loc7_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc6_)
                        {
                           addr40:
                           §§push(§§pop());
                           if(_loc6_ || param1)
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc5_:* = §§pop();
                           if(_loc6_)
                           {
                              _loc4_.§@!c§ = _loc5_;
                           }
                        }
                        if(!_loc7_)
                        {
                           §§push(§§pop() % §5g§);
                           if(_loc6_ || §[g§)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        _loc3_ = §§pop();
                        if(!(_loc7_ && param2))
                        {
                           §#%§[_loc3_] = [param1,param2];
                           loop14:
                           while(true)
                           {
                              §§push(param2);
                              loop7:
                              while(true)
                              {
                                 §§push(§&!M§);
                                 loop5:
                                 while(true)
                                 {
                                    §§push(§§pop() == §§pop());
                                    loop6:
                                    while(§§pop())
                                    {
                                       loop3:
                                       while(true)
                                       {
                                          loop4:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                addr171:
                                                while(true)
                                                {
                                                   §"9§();
                                                   addr173:
                                                   while(true)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         continue loop14;
                                                      }
                                                   }
                                                }
                                                addr171:
                                             }
                                             while(true)
                                             {
                                                addr79:
                                                while(true)
                                                {
                                                   §§push(§%!h§);
                                                   if(!_loc6_)
                                                   {
                                                      continue loop4;
                                                   }
                                                   if(_loc7_ && param1)
                                                   {
                                                      break loop6;
                                                   }
                                                   if(_loc7_ && _loc3_)
                                                   {
                                                      continue loop6;
                                                   }
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         addr107:
                                                         if(_loc6_ || _loc3_)
                                                         {
                                                            while(true)
                                                            {
                                                               if(!param1)
                                                               {
                                                               }
                                                               addr138:
                                                               return;
                                                               §§goto(addr107);
                                                            }
                                                            addr114:
                                                         }
                                                         while(true)
                                                         {
                                                            if(!(_loc7_ && param1))
                                                            {
                                                               if(_loc6_ || param1)
                                                               {
                                                                  if(!(_loc7_ && param2))
                                                                  {
                                                                     break;
                                                                  }
                                                                  addr183:
                                                                  while(true)
                                                                  {
                                                                     §§push(§&!M§);
                                                                     if(_loc6_ || §[g§)
                                                                     {
                                                                        §§push(0);
                                                                        if(!(_loc7_ && param2))
                                                                        {
                                                                           §§push(§§pop() < §§pop());
                                                                           continue loop3;
                                                                        }
                                                                        continue loop5;
                                                                     }
                                                                     continue loop7;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr171);
                                                               }
                                                            }
                                                            §§goto(addr173);
                                                         }
                                                      }
                                                      §§goto(addr138);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       §§pop();
                                       §§goto(addr183);
                                    }
                                 }
                              }
                           }
                           addr77:
                        }
                        §§goto(addr114);
                     }
                     §§goto(addr40);
                  }
                  §§goto(addr171);
               }
               §§goto(addr79);
            }
            §§goto(addr106);
         }
         §§goto(addr77);
      }
      
      public static function §'!T§(param1:Object, param2:int = 1) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = undefined;
         if(!(_loc6_ && param2))
         {
            §§push(§§findproperty(log));
            §§push("Object:");
            if(_loc7_ || _loc3_)
            {
               §§push(§§pop() + getQualifiedClassName(param1));
            }
            §§pop().log(§§pop());
         }
         for(_loc3_ in param1)
         {
            if(!(_loc6_ && param2))
            {
               §§push(§§findproperty(log));
               §§push("-[");
               if(_loc7_ || param2)
               {
                  §§push(§§pop() + _loc3_);
                  if(_loc7_)
                  {
                     §§push(§§pop() + "]: ");
                     if(_loc7_ || §[g§)
                     {
                        §§push(§§pop() + param1[_loc3_]);
                     }
                  }
               }
               §§pop().log(§§pop());
            }
         }
      }
      
      private static function §"9§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:* = false;
         var _loc2_:* = null;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         if(_loc6_)
         {
            §§push(§6A§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(Boolean(§4&§));
                     loop2:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr386:
                              while(true)
                              {
                                 §§push(Boolean(§4&§.visible));
                              }
                           }
                           addr385:
                        }
                        while(true)
                        {
                           loop6:
                           while(§§pop())
                           {
                              loop7:
                              while(!_loc5_)
                              {
                                 §§push(§&!M§);
                                 loop8:
                                 while(true)
                                 {
                                    if(§§pop() < 0)
                                    {
                                       if(_loc6_)
                                       {
                                          §'$§.text = "Current channel: ALL";
                                       }
                                       loop9:
                                       while(true)
                                       {
                                          addr327:
                                          loop10:
                                          while(true)
                                          {
                                             if(§ !M§ != null)
                                             {
                                                continue loop9;
                                             }
                                             loop13:
                                             while(true)
                                             {
                                                §§push(true);
                                                loop14:
                                                while(true)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      break loop13;
                                                   }
                                                   if(!(_loc6_ || _loc1_))
                                                   {
                                                      break;
                                                   }
                                                   _loc1_ = §§pop();
                                                   loop15:
                                                   while(_loc6_)
                                                   {
                                                      while(true)
                                                      {
                                                         if(§'!A§.scrollV != §'!A§.numLines - int(§'!A§.height / (§'!A§.textHeight / §'!A§.numLines)))
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               §§push(false);
                                                               if(!_loc5_)
                                                               {
                                                                  if(!(_loc5_ && §[g§))
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  continue loop6;
                                                                  continue loop6;
                                                               }
                                                               continue loop14;
                                                            }
                                                            addr307:
                                                            addr343:
                                                            loop18:
                                                            while(!_loc5_)
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  continue loop7;
                                                               }
                                                               while(true)
                                                               {
                                                                  if(_loc6_ || §[g§)
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        continue loop8;
                                                                     }
                                                                     continue loop10;
                                                                  }
                                                                  continue loop18;
                                                                  addr237:
                                                                  _loc3_ = Number(§§pop());
                                                                  if(_loc5_ && _loc1_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(!_loc6_)
                                                                  {
                                                                     continue loop15;
                                                                  }
                                                                  if(_loc5_ && _loc3_)
                                                                  {
                                                                     continue loop9;
                                                                  }
                                                                  addr68:
                                                                  §§push(_loc3_);
                                                                  if(!_loc5_)
                                                                  {
                                                                     §§push(§5g§);
                                                                     if(_loc6_ || §[g§)
                                                                     {
                                                                        if(§§pop() >= §§pop())
                                                                        {
                                                                           addr81:
                                                                           if(_loc6_ || §[g§)
                                                                           {
                                                                              if(!(_loc5_ && _loc1_))
                                                                              {
                                                                                 §'!A§.text = _loc2_;
                                                                                 addr98:
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    §§push(_loc1_);
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             if(!(_loc5_ && _loc3_))
                                                                                             {
                                                                                                if(_loc6_ || §[g§)
                                                                                                {
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      §'!A§.scrollV = §'!A§.numLines;
                                                                                                      addr60:
                                                                                                      if(_loc5_ && _loc1_)
                                                                                                      {
                                                                                                         §§goto(addr98);
                                                                                                      }
                                                                                                      break loop6;
                                                                                                   }
                                                                                                   addr193:
                                                                                                   §§push(§&!M§ < 0);
                                                                                                   if(!(_loc5_ && _loc1_))
                                                                                                   {
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         addr205:
                                                                                                         §§pop();
                                                                                                         §§push(§#%§);
                                                                                                         if(!(_loc5_ && §[g§))
                                                                                                         {
                                                                                                            §§push(_loc4_);
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               addr154:
                                                                                                               §§push(§§pop()[§§pop()][1] == §&!M§);
                                                                                                               if(!(_loc5_ && _loc3_))
                                                                                                               {
                                                                                                                  addr161:
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     addr163:
                                                                                                                     §§push(_loc2_);
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + (§#%§[_loc4_][0] + "\n"));
                                                                                                                     }
                                                                                                                     _loc2_ = §§pop();
                                                                                                                  }
                                                                                                                  addr101:
                                                                                                                  §§push(_loc3_);
                                                                                                                  if(_loc6_ || _loc2_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + 1);
                                                                                                                     if(_loc5_ && _loc1_)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     addr126:
                                                                                                                     if(!(_loc5_ && §[g§))
                                                                                                                     {
                                                                                                                        _loc3_ = §§pop();
                                                                                                                        addr134:
                                                                                                                        if(_loc6_)
                                                                                                                        {
                                                                                                                           §§goto(addr68);
                                                                                                                        }
                                                                                                                        §§goto(addr163);
                                                                                                                     }
                                                                                                                     addr231:
                                                                                                                     _loc4_ = §§pop();
                                                                                                                     if(§#%§[_loc4_] != null)
                                                                                                                     {
                                                                                                                        §§goto(addr193);
                                                                                                                     }
                                                                                                                     §§goto(addr101);
                                                                                                                     addr232:
                                                                                                                  }
                                                                                                                  if(_loc6_ || §[g§)
                                                                                                                  {
                                                                                                                     §§goto(addr126);
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                  }
                                                                                                                  §§goto(addr231);
                                                                                                                  §§push(Number(§§pop()));
                                                                                                               }
                                                                                                               §§goto(addr205);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr126);
                                                                                                         addr206:
                                                                                                      }
                                                                                                      §§goto(addr161);
                                                                                                   }
                                                                                                   §§goto(addr205);
                                                                                                }
                                                                                                §§goto(addr206);
                                                                                             }
                                                                                             §§goto(addr81);
                                                                                          }
                                                                                          §§goto(addr60);
                                                                                       }
                                                                                       break loop6;
                                                                                    }
                                                                                    §§goto(addr154);
                                                                                 }
                                                                                 §§goto(addr163);
                                                                              }
                                                                              §§goto(addr232);
                                                                           }
                                                                           §§goto(addr134);
                                                                        }
                                                                        §§push(§@!c§);
                                                                        if(!_loc5_)
                                                                        {
                                                                           §§push(§§pop() + _loc3_);
                                                                           if(!(_loc5_ && _loc1_))
                                                                           {
                                                                              §§push(1);
                                                                              if(_loc6_)
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    addr229:
                                                                                    §§goto(addr161);
                                                                                    §§push(§§pop() % 500);
                                                                                 }
                                                                              }
                                                                              §§goto(addr229);
                                                                           }
                                                                        }
                                                                        §§goto(addr126);
                                                                     }
                                                                     §§goto(addr229);
                                                                  }
                                                                  §§goto(addr126);
                                                               }
                                                               continue loop7;
                                                            }
                                                            while(true)
                                                            {
                                                               continue loop13;
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            _loc2_ = "";
                                                            §§goto(addr259);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr386);
                                                }
                                                continue loop2;
                                             }
                                             §§goto(addr385);
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §'$§.text = "Current channel: " + §&!M§;
                                    }
                                    while(true)
                                    {
                                       §§goto(addr327);
                                    }
                                 }
                              }
                              return;
                           }
                           return;
                        }
                     }
                  }
               }
               §§goto(addr389);
            }
         }
         §§goto(addr326);
      }
      
      public static function §-J§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_ || param1)
         {
            if(!§6A§)
            {
               if(!(_loc8_ && §[g§))
               {
                  return;
               }
               while(true)
               {
               }
               addr68:
            }
            loop0:
            while(true)
            {
               §4&§ = new Sprite();
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     §4&§.visible = false;
                     while(!(_loc8_ && param3))
                     {
                        param1.addChild(§4&§);
                        if(!_loc9_)
                        {
                           continue;
                        }
                        if(_loc8_ && param2)
                        {
                           break loop2;
                        }
                        if(false)
                        {
                           continue loop2;
                        }
                        var _loc7_:Graphics;
                        (_loc7_ = §4&§.graphics).beginFill(16777215,0);
                        if(_loc9_ || param1)
                        {
                           _loc7_.drawRect(0,0,1000,1000);
                        }
                        _loc7_.endFill();
                        _loc7_.beginFill(16777215,0.4);
                        _loc7_.drawRect(param2,param3,param4,param5);
                        _loc7_.endFill();
                        §'!A§ = new TextField();
                        addr474:
                        addr464:
                        addr481:
                        addr470:
                        if(!(_loc8_ && param3))
                        {
                           §'!A§.width = param4;
                           §'!A§.height = param5 - 40;
                           §'!A§.x = param2;
                           §'!A§.y = param3 + 40;
                           addr429:
                           addr424:
                           addr417:
                           if(!(_loc8_ && param1))
                           {
                              §'!A§.wordWrap = true;
                              §4&§.addChild(§'!A§);
                              addr386:
                              addr398:
                              if(!(_loc8_ && param1))
                              {
                                 §=V§ = new TextField();
                                 §=V§.x = param2 + param4 / 2;
                                 addr373:
                                 addr381:
                                 if(!_loc8_)
                                 {
                                    §=V§.y = param3;
                                    §=V§.width = param4 / 2;
                                    §=V§.height = 20;
                                    §=V§.text = "LOGGER CAPTURING INPUT, F4";
                                    addr364:
                                    addr352:
                                    addr359:
                                    if(!_loc8_)
                                    {
                                       §=V§.border = true;
                                       §=V§.borderColor = 16711680;
                                       §4&§.addChild(§=V§);
                                       addr326:
                                       addr340:
                                       if(_loc9_)
                                       {
                                          if(_loc9_)
                                          {
                                             §'$§ = new TextField();
                                             §'$§.width = param4;
                                             §'$§.height = 20;
                                             addr315:
                                             addr321:
                                             if(_loc9_)
                                             {
                                                if(_loc9_ || §[g§)
                                                {
                                                   §'$§.x = param2;
                                                   addr294:
                                                   if(_loc9_)
                                                   {
                                                      §'$§.y = param3;
                                                      addr287:
                                                      if(!_loc8_)
                                                      {
                                                         §4&§.addChild(§'$§);
                                                         addr280:
                                                         if(!_loc8_)
                                                         {
                                                            §9C§ = new TextField();
                                                            addr268:
                                                            if(!(_loc8_ && param3))
                                                            {
                                                               §9C§.width = param4;
                                                               §9C§.height = 20;
                                                               addr262:
                                                               if(!_loc8_)
                                                               {
                                                                  if(!_loc8_)
                                                                  {
                                                                     if(!(_loc8_ && §[g§))
                                                                     {
                                                                        §9C§.x = param2;
                                                                        addr227:
                                                                        if(!(_loc8_ && param1))
                                                                        {
                                                                           if(_loc9_ || §[g§)
                                                                           {
                                                                              §9C§.y = param3 + 20;
                                                                              addr198:
                                                                              if(!(_loc8_ && §[g§))
                                                                              {
                                                                                 if(!(_loc8_ && param3))
                                                                                 {
                                                                                    §4&§.addChild(§9C§);
                                                                                    §3s§(§;!!§);
                                                                                    addr191:
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          if(!(_loc8_ && param2))
                                                                                          {
                                                                                             if(param6 >= 0)
                                                                                             {
                                                                                                if(_loc9_ || §[g§)
                                                                                                {
                                                                                                   if(!(_loc8_ && param2))
                                                                                                   {
                                                                                                      param1.addChildAt(§4&§,param6);
                                                                                                      addr147:
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         if(!(_loc8_ && §[g§))
                                                                                                         {
                                                                                                            if(!(_loc8_ && §[g§))
                                                                                                            {
                                                                                                               if(!(_loc9_ || param1))
                                                                                                               {
                                                                                                                  §§goto(addr364);
                                                                                                               }
                                                                                                               §§goto(addr85);
                                                                                                            }
                                                                                                            §§goto(addr364);
                                                                                                         }
                                                                                                         §§goto(addr280);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr191);
                                                                                                }
                                                                                                §§goto(addr147);
                                                                                             }
                                                                                             param1.addChild(§4&§);
                                                                                             if(!(_loc8_ && param2))
                                                                                             {
                                                                                                if(!_loc8_)
                                                                                                {
                                                                                                   if(!(_loc8_ && param3))
                                                                                                   {
                                                                                                      if(!(_loc8_ && param3))
                                                                                                      {
                                                                                                         if(!_loc8_)
                                                                                                         {
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                               if(!_loc9_)
                                                                                                               {
                                                                                                                  §§goto(addr474);
                                                                                                               }
                                                                                                               addr85:
                                                                                                               return;
                                                                                                            }
                                                                                                            §§goto(addr464);
                                                                                                         }
                                                                                                         §§goto(addr429);
                                                                                                      }
                                                                                                      §§goto(addr326);
                                                                                                   }
                                                                                                   §§goto(addr315);
                                                                                                }
                                                                                                §§goto(addr262);
                                                                                             }
                                                                                             §§goto(addr147);
                                                                                          }
                                                                                          §§goto(addr321);
                                                                                       }
                                                                                       §§goto(addr227);
                                                                                    }
                                                                                    §§goto(addr198);
                                                                                 }
                                                                                 §§goto(addr294);
                                                                              }
                                                                              §§goto(addr262);
                                                                           }
                                                                           §§goto(addr386);
                                                                        }
                                                                        §§goto(addr315);
                                                                     }
                                                                     §§goto(addr352);
                                                                  }
                                                                  §§goto(addr287);
                                                               }
                                                               §§goto(addr268);
                                                            }
                                                            §§goto(addr429);
                                                         }
                                                         §§goto(addr398);
                                                      }
                                                      §§goto(addr474);
                                                   }
                                                   §§goto(addr373);
                                                }
                                                §§goto(addr381);
                                             }
                                             §§goto(addr340);
                                          }
                                          §§goto(addr359);
                                       }
                                       addr335:
                                       §§goto(addr335);
                                    }
                                    §§goto(addr424);
                                 }
                                 §§goto(addr481);
                              }
                              §§goto(addr417);
                           }
                           §§goto(addr470);
                        }
                        addr456:
                        §§goto(addr456);
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr68);
      }
      
      public static function §3s§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && §[g§))
         {
            if(§6A§)
            {
               loop0:
               while(true)
               {
                  §;!!§ = param1;
                  loop1:
                  while(true)
                  {
                     §4&§.mouseChildren = §;!!§;
                     loop2:
                     while(true)
                     {
                        §4&§.mouseEnabled = §;!!§;
                        loop3:
                        while(true)
                        {
                           if(_loc2_ || §[g§)
                           {
                              if(!_loc2_)
                              {
                                 break;
                              }
                              §'$§.mouseEnabled = §;!!§;
                              continue loop2;
                           }
                           continue loop0;
                           addr70:
                           if(!(_loc3_ && _loc3_))
                           {
                              §'!A§.mouseEnabled = §;!!§;
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    if(!(_loc2_ || param1))
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 addr63:
                                 while(true)
                                 {
                                    if(!(_loc2_ || _loc2_))
                                    {
                                       continue loop2;
                                    }
                                    §§goto(addr70);
                                 }
                                 continue loop3;
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(§6A§)
            {
               return;
            }
         }
      }
      
      public static function §'!L§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param2))
         {
            §"t§ = param1;
            while(true)
            {
               §@!,§ = param2;
               while(_loc5_)
               {
                  §-5§ = param3;
                  if(_loc5_)
                  {
                     return;
                     addr44:
                  }
               }
            }
         }
         §§goto(addr44);
      }
      
      public static function §7m§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && §[g§))
         {
            § !M§ = param1;
         }
      }
   }
}
