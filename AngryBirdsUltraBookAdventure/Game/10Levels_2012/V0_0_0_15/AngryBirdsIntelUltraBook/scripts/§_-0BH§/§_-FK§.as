package §_-0BH§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §_-FK§
   {
      
      public static const §_-5h§:Boolean = true;
      
      public static const §_-fb§:Boolean = true;
      
      public static const §_-pK§:int = 0;
      
      public static const §_-ea§:int = 1;
      
      public static const §_-pB§:int = 500;
      
      private static var §_-IA§:Array = null;
      
      private static var §_-YY§:Number = 0;
      
      public static var §_-3p§:int = 112;
      
      public static var §_-zv§:int = 114;
      
      public static var §_-JN§:int = 113;
      
      public static var §_-lW§:int = 115;
      
      public static var §_-lh§:Boolean = false;
      
      public static var §_-aG§:Sprite = null;
      
      private static var §_-BI§:TextField = null;
      
      private static var §_-C4§:TextField = null;
      
      private static var §_-2V§:TextField = null;
      
      private static var §_-QX§:TextField = null;
      
      public static var §_-0E7§:int = -1;
      
      public static var §_-2C§:String = "version: Unknown";
      
      public static var §_-Fe§:String = "";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §_-5h§ = true;
            loop0:
            while(true)
            {
               §_-fb§ = true;
               loop1:
               while(true)
               {
                  §_-pK§ = 0;
                  loop2:
                  while(true)
                  {
                     §_-ea§ = 1;
                     loop3:
                     while(true)
                     {
                        §_-pB§ = 500;
                        loop4:
                        while(true)
                        {
                           §_-IA§ = null;
                           loop5:
                           while(true)
                           {
                              §_-YY§ = 0;
                              loop6:
                              while(true)
                              {
                                 §_-3p§ = Keyboard.F1;
                                 loop7:
                                 while(true)
                                 {
                                    §_-zv§ = Keyboard.F3;
                                    while(_loc1_)
                                    {
                                       §_-JN§ = Keyboard.F2;
                                       while(true)
                                       {
                                          if(!_loc1_)
                                          {
                                             addr166:
                                             break;
                                             addr166:
                                          }
                                          §_-lW§ = Keyboard.F4;
                                          while(_loc1_)
                                          {
                                          }
                                          continue loop5;
                                          while(true)
                                          {
                                             if(_loc2_ && §_-FK§)
                                             {
                                                break;
                                                addr129:
                                             }
                                             §_-C4§ = null;
                                             while(!_loc2_)
                                             {
                                                continue loop1;
                                             }
                                             continue loop4;
                                             addr77:
                                             if(!(_loc1_ || _loc1_))
                                             {
                                                continue;
                                             }
                                             if(_loc1_)
                                             {
                                                §_-Fe§ = "";
                                                while(true)
                                                {
                                                   if(_loc1_)
                                                   {
                                                      if(!_loc1_)
                                                      {
                                                         break;
                                                      }
                                                      continue;
                                                   }
                                                   loop18:
                                                   while(true)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            addr95:
                                                            if(!(_loc2_ && _loc1_))
                                                            {
                                                               if(!_loc1_)
                                                               {
                                                                  break;
                                                               }
                                                               §_-2C§ = "version: Unknown";
                                                               loop19:
                                                               while(true)
                                                               {
                                                                  if(!(_loc2_ && §_-FK§))
                                                                  {
                                                                     §§goto(addr77);
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §_-QX§ = null;
                                                                        addr119:
                                                                        while(true)
                                                                        {
                                                                           §_-0E7§ = -1;
                                                                           continue loop18;
                                                                        }
                                                                        continue loop19;
                                                                     }
                                                                     addr124:
                                                                  }
                                                               }
                                                               §§goto(addr166);
                                                            }
                                                            while(true)
                                                            {
                                                               §_-aG§ = null;
                                                               §§goto(addr155);
                                                               §§goto(addr95);
                                                            }
                                                            addr160:
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr129);
                                                         }
                                                      }
                                                      §§goto(addr119);
                                                   }
                                                   continue loop7;
                                                }
                                                continue loop6;
                                             }
                                             §§goto(addr166);
                                          }
                                       }
                                       continue loop2;
                                       if(!(_loc2_ && §_-FK§))
                                       {
                                          continue loop0;
                                       }
                                    }
                                    continue loop3;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §_-lh§ = false;
            §§goto(addr160);
         }
      }
      
      public function §_-FK§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            if(§_-5h§)
            {
               do
               {
                  §_-IA§ = new Array(§_-pB§);
               }
               while(_loc2_ && _loc2_);
               
               if(_loc1_ || _loc1_)
               {
                  return;
               }
            }
         }
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = NaN;
         if(!(_loc6_ && param1))
         {
            §§push(§_-5h§);
            if(!(_loc6_ && §_-FK§))
            {
               if(§§pop())
               {
                  if(!(_loc6_ && _loc3_))
                  {
                     addr42:
                     var _loc4_:*;
                     §§push((_loc4_ = §§findproperty(§_-YY§)).§_-YY§);
                     if(!_loc6_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc7_)
                        {
                           §§push(§§pop());
                           if(_loc7_ || param1)
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc5_:* = §§pop();
                           if(!(_loc6_ && param1))
                           {
                              _loc4_.§_-YY§ = _loc5_;
                           }
                        }
                     }
                     if(!(_loc6_ && param2))
                     {
                        §§push(§§pop() % §_-pB§);
                        if(_loc7_)
                        {
                           addr94:
                           §§push(Number(§§pop()));
                        }
                        _loc3_ = §§pop();
                        if(_loc7_ || param2)
                        {
                           §_-IA§[_loc3_] = [param1,param2];
                           loop9:
                           while(true)
                           {
                              §§push(param2);
                              loop4:
                              while(true)
                              {
                                 §§push(§_-0E7§);
                                 loop3:
                                 while(true)
                                 {
                                    §§push(§§pop() == §§pop());
                                    if(_loc7_ || _loc3_)
                                    {
                                       if(!§§pop())
                                       {
                                          addr183:
                                          §§pop();
                                          while(true)
                                          {
                                             §§push(§_-0E7§);
                                             if(!_loc7_)
                                             {
                                                continue loop4;
                                             }
                                             §§push(0);
                                             if(_loc6_)
                                             {
                                                continue loop3;
                                             }
                                             §§push(§§pop() < §§pop());
                                             loop1:
                                             while(!_loc6_)
                                             {
                                                loop5:
                                                while(true)
                                                {
                                                   §§push(§_-fb§);
                                                   if(!(_loc6_ && _loc3_))
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(!(_loc6_ && §_-FK§))
                                                         {
                                                            if(!param1)
                                                            {
                                                            }
                                                            break;
                                                         }
                                                         if(_loc7_)
                                                         {
                                                            break;
                                                         }
                                                         addr169:
                                                         addr169:
                                                         while(true)
                                                         {
                                                            continue loop5;
                                                         }
                                                      }
                                                      break;
                                                   }
                                                   continue loop1;
                                                }
                                                return;
                                             }
                                             §§goto(addr183);
                                          }
                                          addr184:
                                       }
                                       while(true)
                                       {
                                          addr140:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(!_loc6_)
                                                {
                                                   if(!(_loc6_ && §_-FK§))
                                                   {
                                                      if(!(_loc7_ || §_-FK§))
                                                      {
                                                         continue loop9;
                                                      }
                                                      §_-B7§();
                                                      §§goto(addr169);
                                                   }
                                                   §§goto(addr184);
                                                }
                                                §§goto(addr169);
                                             }
                                             §§goto(addr104);
                                          }
                                       }
                                    }
                                    §§goto(addr183);
                                 }
                              }
                           }
                        }
                        §§goto(addr169);
                     }
                     §§goto(addr94);
                  }
                  §§goto(addr183);
               }
               §§goto(addr105);
            }
            §§goto(addr140);
         }
         §§goto(addr42);
      }
      
      public static function §_-Io§(param1:Object, param2:int = 1) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = undefined;
         if(_loc6_)
         {
            §§push(§§findproperty(log));
            §§push("Object:");
            if(!_loc7_)
            {
               §§push(§§pop() + getQualifiedClassName(param1));
            }
            §§pop().log(§§pop());
         }
         for(_loc3_ in param1)
         {
            if(_loc7_ && §_-FK§)
            {
               continue;
            }
            §§push(§§findproperty(log));
            §§push("-[");
            if(_loc6_)
            {
               §§push(§§pop() + _loc3_);
               if(_loc6_)
               {
                  §§push(§§pop() + "]: ");
                  if(!(_loc7_ && param2))
                  {
                     addr86:
                     §§push(§§pop() + param1[_loc3_]);
                  }
                  §§pop().log(§§pop());
                  continue;
               }
            }
            §§goto(addr86);
         }
      }
      
      private static function §_-B7§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:* = false;
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:* = NaN;
         if(!(_loc6_ && §_-FK§))
         {
            §§push(§_-5h§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(Boolean(§_-aG§));
                     loop2:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              §§pop();
                              loop4:
                              while(true)
                              {
                                 §§push(Boolean(§_-aG§.visible));
                                 while(true)
                                 {
                                    if(!_loc5_)
                                    {
                                       continue loop3;
                                    }
                                    if(_loc6_)
                                    {
                                       break;
                                    }
                                    loop14:
                                    for(; !(_loc6_ && §_-FK§); §§push(false),if(!(_loc5_ || _loc2_))
                                    {
                                       continue;
                                    },if(!(_loc5_ || §_-FK§))
                                    {
                                       continue loop2;
                                    },_loc1_ = §§pop(),§§goto(addr313))
                                    {
                                       _loc1_ = §§pop();
                                       loop15:
                                       while(_loc5_)
                                       {
                                          if(_loc5_)
                                          {
                                             if(§_-BI§.scrollV == §_-BI§.numLines - int(§_-BI§.height / (§_-BI§.textHeight / §_-BI§.numLines)))
                                             {
                                                while(true)
                                                {
                                                   _loc2_ = "";
                                                   while(true)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         if(_loc5_ || _loc3_)
                                                         {
                                                            §§push(0);
                                                            if(_loc6_ && _loc3_)
                                                            {
                                                               break;
                                                            }
                                                            continue;
                                                         }
                                                         while(true)
                                                         {
                                                            loop10:
                                                            while(true)
                                                            {
                                                               if(§_-2C§ != null)
                                                               {
                                                                  while(!_loc6_)
                                                                  {
                                                                     §_-QX§.text = §_-2C§;
                                                                     break loop15;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     continue loop10;
                                                                  }
                                                                  addr337:
                                                                  addr361:
                                                               }
                                                               addr318:
                                                               while(true)
                                                               {
                                                                  continue loop14;
                                                               }
                                                            }
                                                         }
                                                         addr378:
                                                      }
                                                      else
                                                      {
                                                         loop16:
                                                         while(true)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  if(_loc5_ || _loc3_)
                                                                  {
                                                                     continue loop14;
                                                                  }
                                                                  continue loop1;
                                                               }
                                                               addr375:
                                                               while(true)
                                                               {
                                                                  §_-2V§.text = "Current channel: ALL";
                                                                  break loop16;
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr378);
                                                         addr286:
                                                      }
                                                      §§goto(addr337);
                                                   }
                                                   addr373:
                                                   while(true)
                                                   {
                                                      if(§§pop() < 0)
                                                      {
                                                         §§goto(addr375);
                                                      }
                                                      else
                                                      {
                                                         §_-2V§.text = "Current channel: " + §_-0E7§;
                                                      }
                                                      §§goto(addr361);
                                                   }
                                                }
                                                if(_loc6_)
                                                {
                                                   continue loop4;
                                                }
                                                addr77:
                                                §§push(_loc3_);
                                                if(!(_loc6_ && §_-FK§))
                                                {
                                                   if(_loc5_)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         §§push(§_-pB§);
                                                         if(_loc5_ || _loc3_)
                                                         {
                                                            if(§§pop() >= §§pop())
                                                            {
                                                               addr99:
                                                               if(_loc5_)
                                                               {
                                                                  if(!(_loc6_ && _loc3_))
                                                                  {
                                                                     §_-BI§.text = _loc2_;
                                                                     addr111:
                                                                     if(_loc5_ || §_-FK§)
                                                                     {
                                                                        §§push(_loc1_);
                                                                        if(!_loc6_)
                                                                        {
                                                                           if(!(_loc6_ && §_-FK§))
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!(_loc6_ && §_-FK§))
                                                                                 {
                                                                                    if(!(_loc6_ && _loc2_))
                                                                                    {
                                                                                       §_-BI§.scrollV = §_-BI§.numLines;
                                                                                       addr67:
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          if(_loc6_ && _loc3_)
                                                                                          {
                                                                                             §§goto(addr99);
                                                                                          }
                                                                                          §§goto(addr33);
                                                                                       }
                                                                                       §§goto(addr111);
                                                                                    }
                                                                                    addr226:
                                                                                    if(§_-IA§[_loc4_] != null)
                                                                                    {
                                                                                       addr194:
                                                                                       §§push(§_-0E7§ < 0);
                                                                                       if(!(§_-0E7§ < 0))
                                                                                       {
                                                                                          addr196:
                                                                                          §§pop();
                                                                                          addr197:
                                                                                          §§push(§_-IA§);
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             §§push(_loc4_);
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                addr155:
                                                                                                §§push(§§pop()[§§pop()][1] == §_-0E7§);
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   addr157:
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      addr159:
                                                                                                      §§push(_loc2_);
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         §§push(§§pop() + (§_-IA§[_loc4_][0] + "\n"));
                                                                                                      }
                                                                                                      _loc2_ = §§pop();
                                                                                                      addr172:
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         addr119:
                                                                                                         addr121:
                                                                                                         §§push(_loc3_);
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            §§push(§§pop() + 1);
                                                                                                            if(_loc5_ || _loc3_)
                                                                                                            {
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  addr134:
                                                                                                                  _loc3_ = §§pop();
                                                                                                                  if(!(_loc6_ && _loc3_))
                                                                                                                  {
                                                                                                                     §§goto(addr77);
                                                                                                                  }
                                                                                                                  §§goto(addr172);
                                                                                                               }
                                                                                                               addr225:
                                                                                                               _loc4_ = §§pop();
                                                                                                               §§goto(addr226);
                                                                                                            }
                                                                                                            §§goto(addr134);
                                                                                                         }
                                                                                                         §§goto(addr225);
                                                                                                         §§push(Number(§§pop() % 500));
                                                                                                      }
                                                                                                      §§goto(addr197);
                                                                                                   }
                                                                                                   §§goto(addr119);
                                                                                                }
                                                                                                §§goto(addr196);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr226);
                                                                                       }
                                                                                       §§goto(addr157);
                                                                                    }
                                                                                    §§goto(addr119);
                                                                                 }
                                                                                 §§goto(addr67);
                                                                              }
                                                                              §§goto(addr33);
                                                                           }
                                                                           §§goto(addr194);
                                                                        }
                                                                        §§goto(addr155);
                                                                     }
                                                                     §§goto(addr194);
                                                                  }
                                                                  §§goto(addr159);
                                                               }
                                                               §§goto(addr134);
                                                            }
                                                            §§push(§_-YY§);
                                                            if(!(_loc6_ && §_-FK§))
                                                            {
                                                               §§push(§§pop() + _loc3_);
                                                               if(!(_loc6_ && _loc3_))
                                                               {
                                                                  §§push(1);
                                                                  if(_loc5_)
                                                                  {
                                                                     §§goto(addr119);
                                                                     §§push(§§pop() + §§pop());
                                                                  }
                                                                  §§goto(addr119);
                                                               }
                                                            }
                                                            §§goto(addr225);
                                                         }
                                                      }
                                                      §§goto(addr119);
                                                   }
                                                   §§goto(addr121);
                                                }
                                                §§goto(addr134);
                                             }
                                             §§goto(addr286);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                             }
                                             addr372:
                                          }
                                          §§goto(addr373);
                                       }
                                       while(true)
                                       {
                                          §§goto(addr318);
                                       }
                                    }
                                 }
                                 continue loop0;
                              }
                           }
                        }
                        while(§§pop())
                        {
                           §§goto(addr372);
                        }
                        addr33:
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr388);
      }
      
      public static function §_-ey§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!_loc9_)
         {
            if(§_-5h§)
            {
               loop0:
               while(true)
               {
                  §_-aG§ = new Sprite();
                  loop1:
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        §_-aG§.visible = false;
                        while(_loc8_)
                        {
                           param1.addChild(§_-aG§);
                           if(!_loc8_)
                           {
                              continue;
                           }
                           if(!_loc8_)
                           {
                              break loop2;
                           }
                           if(_loc8_ || param3)
                           {
                              if(false)
                              {
                                 continue loop2;
                              }
                              var _loc7_:Graphics;
                              (_loc7_ = §_-aG§.graphics).beginFill(16777215,0);
                              if(!_loc9_)
                              {
                                 _loc7_.drawRect(0,0,1000,1000);
                                 _loc7_.endFill();
                                 _loc7_.beginFill(16777215,0.4);
                                 _loc7_.drawRect(param2,param3,param4,param5);
                                 _loc7_.endFill();
                                 §_-BI§ = new TextField();
                                 §_-BI§.width = param4;
                                 §_-BI§.height = param5 - 40;
                                 §_-BI§.x = param2;
                                 §_-BI§.y = param3 + 40;
                                 addr458:
                                 addr420:
                                 addr408:
                                 addr436:
                                 addr415:
                                 addr448:
                                 addr465:
                                 addr440:
                                 if(!_loc9_)
                                 {
                                    §_-BI§.wordWrap = true;
                                    §_-aG§.addChild(§_-BI§);
                                    addr387:
                                    addr394:
                                    if(_loc8_)
                                    {
                                       §_-C4§ = new TextField();
                                       §_-C4§.x = param2 + param4 / 2;
                                       addr369:
                                       addr382:
                                       if(_loc8_ || param1)
                                       {
                                          §_-C4§.y = param3;
                                          §_-C4§.width = param4 / 2;
                                          §_-C4§.height = 20;
                                          §_-C4§.text = "LOGGER CAPTURING INPUT, F4";
                                          addr334:
                                          addr360:
                                          addr355:
                                          addr348:
                                          if(!(_loc9_ && param3))
                                          {
                                             if(_loc8_)
                                             {
                                                §_-C4§.border = true;
                                                addr313:
                                                if(_loc8_ || §_-FK§)
                                                {
                                                   if(!(_loc9_ && param1))
                                                   {
                                                      if(!_loc9_)
                                                      {
                                                         §_-C4§.borderColor = 16711680;
                                                         §_-aG§.addChild(§_-C4§);
                                                         §_-2V§ = new TextField();
                                                         addr308:
                                                         addr303:
                                                         if(!_loc9_)
                                                         {
                                                            §_-2V§.width = param4;
                                                            §_-2V§.height = 20;
                                                            addr276:
                                                            if(_loc8_)
                                                            {
                                                               if(_loc8_ || param3)
                                                               {
                                                                  §_-2V§.x = param2;
                                                                  §_-2V§.y = param3;
                                                                  addr257:
                                                                  addr271:
                                                                  if(_loc8_ || param2)
                                                                  {
                                                                     if(!_loc9_)
                                                                     {
                                                                        §_-aG§.addChild(§_-2V§);
                                                                        addr245:
                                                                        if(_loc8_ || param3)
                                                                        {
                                                                           §_-QX§ = new TextField();
                                                                           addr233:
                                                                           if(!(_loc9_ && param1))
                                                                           {
                                                                              §_-QX§.width = param4;
                                                                              addr225:
                                                                              if(!_loc9_)
                                                                              {
                                                                                 §_-QX§.height = 20;
                                                                                 addr206:
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       §_-QX§.x = param2;
                                                                                       addr194:
                                                                                       if(!(_loc9_ && param3))
                                                                                       {
                                                                                          §_-QX§.y = param3 + 20;
                                                                                          §_-aG§.addChild(§_-QX§);
                                                                                          addr159:
                                                                                          addr189:
                                                                                          if(_loc8_ || param1)
                                                                                          {
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                if(_loc8_ || param1)
                                                                                                {
                                                                                                   if(!(_loc9_ && param1))
                                                                                                   {
                                                                                                      §_-Ia§(§_-lh§);
                                                                                                      addr129:
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         if(_loc8_ || param3)
                                                                                                         {
                                                                                                            if(!(_loc9_ && param3))
                                                                                                            {
                                                                                                               if(_loc8_ || param3)
                                                                                                               {
                                                                                                                  if(_loc8_)
                                                                                                                  {
                                                                                                                     if(param6 >= 0)
                                                                                                                     {
                                                                                                                        addr104:
                                                                                                                        if(_loc8_)
                                                                                                                        {
                                                                                                                           if(!(_loc9_ && param2))
                                                                                                                           {
                                                                                                                              if(_loc9_ && param3)
                                                                                                                              {
                                                                                                                                 §§goto(addr334);
                                                                                                                              }
                                                                                                                              param1.addChildAt(§_-aG§,param6);
                                                                                                                              addr64:
                                                                                                                              return;
                                                                                                                              addr124:
                                                                                                                           }
                                                                                                                           §§goto(addr225);
                                                                                                                        }
                                                                                                                        §§goto(addr159);
                                                                                                                     }
                                                                                                                     param1.addChild(§_-aG§);
                                                                                                                     if(_loc8_ || param2)
                                                                                                                     {
                                                                                                                        if(!_loc9_)
                                                                                                                        {
                                                                                                                           if(_loc8_ || §_-FK§)
                                                                                                                           {
                                                                                                                              if(!(_loc9_ && param1))
                                                                                                                              {
                                                                                                                                 if(!_loc8_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr206);
                                                                                                                                 }
                                                                                                                                 §§goto(addr64);
                                                                                                                              }
                                                                                                                              §§goto(addr189);
                                                                                                                           }
                                                                                                                           §§goto(addr129);
                                                                                                                        }
                                                                                                                        §§goto(addr104);
                                                                                                                     }
                                                                                                                     §§goto(addr124);
                                                                                                                  }
                                                                                                                  §§goto(addr458);
                                                                                                               }
                                                                                                               §§goto(addr387);
                                                                                                            }
                                                                                                            §§goto(addr308);
                                                                                                         }
                                                                                                         §§goto(addr257);
                                                                                                      }
                                                                                                      §§goto(addr194);
                                                                                                   }
                                                                                                   §§goto(addr420);
                                                                                                }
                                                                                                §§goto(addr369);
                                                                                             }
                                                                                             §§goto(addr308);
                                                                                          }
                                                                                          §§goto(addr276);
                                                                                       }
                                                                                       §§goto(addr245);
                                                                                    }
                                                                                    §§goto(addr408);
                                                                                 }
                                                                                 §§goto(addr360);
                                                                              }
                                                                              §§goto(addr233);
                                                                           }
                                                                           §§goto(addr303);
                                                                        }
                                                                        §§goto(addr271);
                                                                     }
                                                                     §§goto(addr436);
                                                                  }
                                                                  §§goto(addr313);
                                                               }
                                                               §§goto(addr355);
                                                            }
                                                            addr290:
                                                            §§goto(addr290);
                                                         }
                                                         §§goto(addr415);
                                                      }
                                                      §§goto(addr448);
                                                   }
                                                   §§goto(addr394);
                                                }
                                                §§goto(addr348);
                                             }
                                             §§goto(addr458);
                                          }
                                          §§goto(addr382);
                                       }
                                       §§goto(addr465);
                                       addr389:
                                    }
                                    §§goto(addr440);
                                 }
                                 addr454:
                                 §§goto(addr454);
                              }
                              §§goto(addr389);
                           }
                        }
                        continue loop1;
                     }
                     continue loop0;
                  }
               }
            }
            return;
         }
         §§goto(addr52);
      }
      
      public static function §_-Ia§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(§_-5h§)
            {
               while(true)
               {
                  §_-lh§ = param1;
                  while(true)
                  {
                     §_-aG§.mouseChildren = §_-lh§;
                     loop2:
                     while(true)
                     {
                        §_-aG§.mouseEnabled = §_-lh§;
                        addr97:
                        while(_loc3_)
                        {
                           §_-2V§.mouseEnabled = §_-lh§;
                           loop4:
                           while(true)
                           {
                              §_-QX§.mouseEnabled = §_-lh§;
                              addr61:
                              while(true)
                              {
                                 if(_loc3_ || §_-FK§)
                                 {
                                    continue loop2;
                                 }
                                 continue loop4;
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr39);
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(§_-5h§)
            {
               return;
            }
         }
      }
      
      public static function §_-kt§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            §_-3p§ = param1;
         }
         do
         {
            §_-JN§ = param2;
            do
            {
               §_-zv§ = param3;
            }
            while(_loc6_);
            
         }
         while(!_loc5_);
         
      }
      
      public static function §_-Xk§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || §_-FK§)
         {
            §_-2C§ = param1;
         }
      }
   }
}
