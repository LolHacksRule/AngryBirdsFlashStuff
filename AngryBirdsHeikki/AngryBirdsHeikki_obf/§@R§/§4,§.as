package §@R§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §4,§
   {
      
      public static const §8!d§:Boolean = true;
      
      public static const § !8§:Boolean = true;
      
      public static const §#=§:int = 0;
      
      public static const §2!+§:int = 1;
      
      public static const §>!6§:int = 500;
      
      private static var §7!I§:Array = null;
      
      private static var §5?§:Number = 0;
      
      public static var §!!C§:int = 112;
      
      public static var §2y§:int = 114;
      
      public static var §%!<§:int = 113;
      
      public static var §]i§:int = 115;
      
      public static var §@O§:Boolean = false;
      
      public static var §%h§:Sprite = null;
      
      private static var §5O§:TextField = null;
      
      private static var §+d§:TextField = null;
      
      private static var §+N§:TextField = null;
      
      private static var §+!3§:TextField = null;
      
      public static var §@n§:int = -1;
      
      public static var §?!`§:String = "version: Unknown";
      
      public static var §?+§:String = "";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §4,§)
         {
            §8!d§ = true;
            loop0:
            while(true)
            {
               § !8§ = true;
               addr256:
               loop1:
               while(true)
               {
                  §#=§ = 0;
                  loop2:
                  while(true)
                  {
                     §2!+§ = 1;
                     while(true)
                     {
                        §>!6§ = 500;
                        loop4:
                        while(_loc2_ || _loc2_)
                        {
                           §7!I§ = null;
                           while(true)
                           {
                              §5?§ = 0;
                              continue loop0;
                              addr167:
                              if(!(_loc1_ && _loc1_))
                              {
                                 §%h§ = null;
                                 loop12:
                                 while(_loc2_)
                                 {
                                    §5O§ = null;
                                    loop13:
                                    while(true)
                                    {
                                       if(_loc2_ || §4,§)
                                       {
                                          addr141:
                                          if(!(_loc1_ && _loc2_))
                                          {
                                             §+d§ = null;
                                             loop14:
                                             while(true)
                                             {
                                                §+N§ = null;
                                                while(true)
                                                {
                                                   §+!3§ = null;
                                                   loop16:
                                                   while(true)
                                                   {
                                                      §@n§ = -1;
                                                      addr97:
                                                      addr192:
                                                      loop17:
                                                      while(_loc2_ || _loc2_)
                                                      {
                                                         §?!`§ = "version: Unknown";
                                                         continue loop16;
                                                         while(true)
                                                         {
                                                            if(_loc2_ || _loc1_)
                                                            {
                                                               if(!_loc1_)
                                                               {
                                                                  if(!_loc1_)
                                                                  {
                                                                     addr71:
                                                                     if(!(_loc2_ || _loc1_))
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue;
                                                                  }
                                                                  continue loop12;
                                                               }
                                                               continue loop14;
                                                            }
                                                            continue loop17;
                                                         }
                                                         while(true)
                                                         {
                                                            §@O§ = false;
                                                            break loop13;
                                                            §§goto(addr71);
                                                         }
                                                      }
                                                      addr202:
                                                      while(!_loc1_)
                                                      {
                                                         if(_loc1_)
                                                         {
                                                            continue loop2;
                                                         }
                                                         §%!<§ = Keyboard.F2;
                                                         §§goto(addr97);
                                                      }
                                                      while(true)
                                                      {
                                                         §2y§ = Keyboard.F3;
                                                         §§goto(addr192);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             §]i§ = Keyboard.F4;
                                             §§goto(addr180);
                                             §§goto(addr141);
                                          }
                                       }
                                       break;
                                       if(!(_loc1_ && §4,§))
                                       {
                                          continue loop1;
                                       }
                                    }
                                    while(_loc2_ || _loc1_)
                                    {
                                       §§goto(addr167);
                                       §§goto(addr134);
                                    }
                                    addr134:
                                    continue loop0;
                                 }
                                 continue loop4;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr219);
      }
      
      public function §4,§()
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
         if(!_loc1_)
         {
            if(!§8!d§)
            {
               if(_loc2_ || _loc1_)
               {
                  return;
               }
               addr63:
               while(true)
               {
               }
               addr63:
            }
            while(true)
            {
               §7!I§ = new Array(§>!6§);
               if(_loc2_)
               {
                  break;
               }
               §§goto(addr63);
            }
            return;
         }
         §§goto(addr63);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = NaN;
         if(!_loc6_)
         {
            §§push(§8!d§);
            if(_loc7_)
            {
               if(§§pop())
               {
                  if(!(_loc6_ && §4,§))
                  {
                     var _loc4_:*;
                     §§push((_loc4_ = §§findproperty(§5?§)).§5?§);
                     if(_loc7_ || param2)
                     {
                        §§push(Number(§§pop()));
                        if(_loc7_ || param1)
                        {
                           §§push(§§pop());
                           if(!(_loc6_ && param1))
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc5_:* = §§pop();
                           if(!_loc6_)
                           {
                              _loc4_.§5?§ = _loc5_;
                           }
                        }
                     }
                     if(!_loc6_)
                     {
                        §§push(§§pop() % §>!6§);
                        if(_loc7_)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     _loc3_ = §§pop();
                     if(_loc7_ || param2)
                     {
                        §7!I§[_loc3_] = [param1,param2];
                        loop10:
                        while(true)
                        {
                           §§push(param2);
                           loop7:
                           while(true)
                           {
                              §§push(§@n§);
                              loop6:
                              while(true)
                              {
                                 §§push(§§pop() == §§pop());
                                 if(!_loc6_)
                                 {
                                    if(!§§pop())
                                    {
                                       addr163:
                                       loop9:
                                       while(true)
                                       {
                                          §§pop();
                                          addr164:
                                          while(true)
                                          {
                                             §§push(§@n§);
                                             if(!_loc6_)
                                             {
                                                §§push(0);
                                                if(!(_loc6_ && param1))
                                                {
                                                   §§push(§§pop() < §§pop());
                                                   while(true)
                                                   {
                                                      if(_loc6_ && _loc3_)
                                                      {
                                                         continue loop9;
                                                      }
                                                   }
                                                   continue loop9;
                                                   addr129:
                                                }
                                                continue loop6;
                                             }
                                             continue loop7;
                                          }
                                       }
                                       addr163:
                                    }
                                    loop2:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             if(!_loc7_)
                                             {
                                                break loop2;
                                                addr142:
                                             }
                                             §>![§();
                                             while(true)
                                             {
                                                if(_loc6_)
                                                {
                                                   continue loop10;
                                                }
                                             }
                                             continue loop10;
                                          }
                                          addr138:
                                       }
                                       while(true)
                                       {
                                          §§goto(addr95);
                                       }
                                    }
                                 }
                                 §§goto(addr163);
                              }
                           }
                        }
                        addr171:
                     }
                     §§goto(addr164);
                  }
                  §§goto(addr112);
               }
               addr95:
               while(true)
               {
                  §§push(§ !8§);
                  if(!_loc6_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc6_ && param2))
                        {
                           if(!param1)
                           {
                           }
                           break;
                        }
                        if(_loc7_)
                        {
                           if(_loc7_)
                           {
                              addr112:
                              break;
                           }
                           §§goto(addr138);
                        }
                        §§goto(addr142);
                     }
                     break;
                  }
                  §§goto(addr129);
               }
               return;
            }
            §§goto(addr163);
         }
         §§goto(addr171);
      }
      
      public static function §=k§(param1:Object, param2:int = 1) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = undefined;
         if(!(_loc6_ && param1))
         {
            log("Object:" + getQualifiedClassName(param1));
         }
         for(_loc3_ in param1)
         {
            if(!(_loc6_ && param1))
            {
               §§push(§§findproperty(log));
               §§push("-[" + _loc3_);
               if(!(_loc6_ && §4,§))
               {
                  §§push(§§pop() + "]: ");
                  if(_loc7_ || _loc3_)
                  {
                     §§push(§§pop() + param1[_loc3_]);
                  }
               }
               §§pop().log(§§pop());
            }
         }
      }
      
      private static function §>![§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:* = false;
         var _loc2_:* = null;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         if(_loc5_)
         {
            §§push(§8!d§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  addr393:
               }
               loop1:
               while(true)
               {
                  §§push(Boolean(§%h§));
                  if(_loc5_ || _loc1_)
                  {
                     continue loop0;
                  }
                  addr389:
                  loop14:
                  while(true)
                  {
                     §§pop();
                     loop15:
                     while(true)
                     {
                        §§push(Boolean(§%h§.visible));
                        addr342:
                        while(true)
                        {
                           loop3:
                           while(§§pop())
                           {
                              if(_loc5_ || _loc3_)
                              {
                                 §§push(§@n§);
                                 loop4:
                                 while(true)
                                 {
                                    if(§§pop() >= 0)
                                    {
                                       §+N§.text = "Current channel: " + §@n§;
                                       loop5:
                                       while(true)
                                       {
                                          if(_loc6_)
                                          {
                                             while(true)
                                             {
                                                if(_loc6_)
                                                {
                                                   continue loop15;
                                                }
                                                §+N§.text = "Current channel: ALL";
                                                while(true)
                                                {
                                                }
                                             }
                                             addr354:
                                          }
                                          while(true)
                                          {
                                             if(§?!`§ != null)
                                             {
                                                while(true)
                                                {
                                                   §+!3§.text = §?!`§;
                                                   addr326:
                                                   while(true)
                                                   {
                                                   }
                                                }
                                                addr323:
                                             }
                                             while(true)
                                             {
                                                §§push(true);
                                                loop10:
                                                while(true)
                                                {
                                                   _loc1_ = §§pop();
                                                   loop11:
                                                   while(!_loc6_)
                                                   {
                                                      while(true)
                                                      {
                                                         if(§5O§.scrollV != §5O§.numLines - int(§5O§.height / (§5O§.textHeight / §5O§.numLines)))
                                                         {
                                                            loop17:
                                                            while(!(_loc6_ && _loc1_))
                                                            {
                                                               if(_loc5_ || §4,§)
                                                               {
                                                                  §§push(false);
                                                                  if(_loc5_)
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        if(_loc5_ || _loc3_)
                                                                        {
                                                                           _loc1_ = §§pop();
                                                                           while(_loc5_)
                                                                           {
                                                                              if(_loc6_ && _loc1_)
                                                                              {
                                                                                 continue loop1;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 _loc2_ = "";
                                                                                 continue loop4;
                                                                              }
                                                                              if(!(_loc6_ && §4,§))
                                                                              {
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    continue loop5;
                                                                                 }
                                                                                 continue loop17;
                                                                              }
                                                                           }
                                                                           continue loop11;
                                                                        }
                                                                        continue loop14;
                                                                     }
                                                                     continue loop3;
                                                                  }
                                                                  continue loop10;
                                                               }
                                                               §§goto(addr323);
                                                            }
                                                            §§goto(addr326);
                                                         }
                                                         §§goto(addr254);
                                                      }
                                                      loop21:
                                                      while(true)
                                                      {
                                                         §§push(_loc3_);
                                                         if(_loc5_ || _loc1_)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  §§push(§>!6§);
                                                                  if(_loc5_)
                                                                  {
                                                                     if(§§pop() >= §§pop())
                                                                     {
                                                                        loop22:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc6_)
                                                                           {
                                                                              if(_loc5_)
                                                                              {
                                                                                 §5O§.text = _loc2_;
                                                                                 loop23:
                                                                                 for(; !_loc6_; if(_loc5_)
                                                                                 {
                                                                                    §5O§.scrollV = §5O§.numLines;
                                                                                 },if(_loc5_ || _loc1_)
                                                                                 {
                                                                                    continue loop22;
                                                                                 })
                                                                                 {
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       §§push(_loc1_);
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                break loop3;
                                                                                             }
                                                                                             continue;
                                                                                          }
                                                                                          loop31:
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop();
                                                                                             addr179:
                                                                                             loop33:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§7!I§);
                                                                                                if(_loc5_ || _loc3_)
                                                                                                {
                                                                                                   §§push(_loc4_);
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      §§push(§§pop()[§§pop()][1] == §@n§);
                                                                                                      loop32:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         addr133:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               break loop22;
                                                                                                            }
                                                                                                            addr89:
                                                                                                            loop30:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc3_);
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  if(_loc5_ || §4,§)
                                                                                                                  {
                                                                                                                     addr106:
                                                                                                                     §§push(§§pop() + 1);
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc3_ = §§pop();
                                                                                                                        break loop23;
                                                                                                                     }
                                                                                                                     addr106:
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(1);
                                                                                                                        if(!_loc6_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(500);
                                                                                                                              addr208:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() % §§pop());
                                                                                                                                 addr209:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    addr210:
                                                                                                                                    loop40:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc4_ = §§pop();
                                                                                                                                       addr211:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§7!I§);
                                                                                                                                          addr162:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc4_);
                                                                                                                                             addr163:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(§§pop()[§§pop()] != null)
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§@n§ < 0);
                                                                                                                                                      if(_loc5_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         if(!§§pop())
                                                                                                                                                         {
                                                                                                                                                            continue loop31;
                                                                                                                                                         }
                                                                                                                                                         continue loop32;
                                                                                                                                                      }
                                                                                                                                                      continue loop31;
                                                                                                                                                   }
                                                                                                                                                   addr166:
                                                                                                                                                }
                                                                                                                                                continue loop30;
                                                                                                                                             }
                                                                                                                                             continue loop33;
                                                                                                                                          }
                                                                                                                                          continue loop40;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr207:
                                                                                                                        }
                                                                                                                        §§goto(addr208);
                                                                                                                     }
                                                                                                                     addr203:
                                                                                                                  }
                                                                                                                  §§goto(addr208);
                                                                                                               }
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  §§goto(addr106);
                                                                                                                  §§push(Number(§§pop()));
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr207);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr163);
                                                                                                }
                                                                                                §§goto(addr162);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr133);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr89);
                                                                                    }
                                                                                 }
                                                                                 while(!(_loc5_ || _loc1_))
                                                                                 {
                                                                                    §§goto(addr211);
                                                                                    §§goto(addr106);
                                                                                 }
                                                                                 continue loop21;
                                                                              }
                                                                              §§goto(addr179);
                                                                           }
                                                                           break;
                                                                           if(!(_loc6_ && _loc2_))
                                                                           {
                                                                              break loop3;
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(_loc5_ || _loc3_)
                                                                           {
                                                                              §§push(_loc2_);
                                                                              if(!(_loc6_ && _loc1_))
                                                                              {
                                                                                 §§push(§§pop() + (§7!I§[_loc4_][0] + "\n"));
                                                                              }
                                                                              _loc2_ = §§pop();
                                                                              §§goto(addr159);
                                                                           }
                                                                           §§goto(addr166);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(§5?§);
                                                                        if(!(_loc6_ && _loc3_))
                                                                        {
                                                                           §§push(§§pop() + _loc3_);
                                                                        }
                                                                     }
                                                                     §§goto(addr203);
                                                                  }
                                                                  §§goto(addr208);
                                                               }
                                                               §§goto(addr209);
                                                            }
                                                            §§goto(addr210);
                                                         }
                                                         §§goto(addr106);
                                                      }
                                                   }
                                                   §§goto(addr393);
                                                }
                                             }
                                             §§goto(addr359);
                                          }
                                       }
                                       continue loop15;
                                    }
                                    §§goto(addr354);
                                 }
                              }
                              §§goto(addr359);
                           }
                           return;
                           continue loop15;
                        }
                     }
                  }
               }
               continue;
               return;
            }
         }
         §§goto(addr318);
      }
      
      public static function §10§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_ || §4,§)
         {
            if(§8!d§)
            {
               loop0:
               while(true)
               {
                  §%h§ = new Sprite();
                  loop1:
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        §%h§.visible = false;
                        while(true)
                        {
                           if(!(_loc8_ || §4,§))
                           {
                              continue loop1;
                           }
                           if(_loc9_)
                           {
                              break;
                           }
                           param1.addChild(§%h§);
                           if(_loc9_ && §4,§)
                           {
                              continue;
                           }
                           if(!(_loc8_ || §4,§))
                           {
                              break loop2;
                           }
                           if(false)
                           {
                              continue loop2;
                           }
                           var _loc7_:Graphics;
                           (_loc7_ = §%h§.graphics).beginFill(16777215,0);
                           if(!_loc9_)
                           {
                              _loc7_.drawRect(0,0,1000,1000);
                              _loc7_.endFill();
                              _loc7_.beginFill(16777215,0.4);
                              _loc7_.drawRect(param2,param3,param4,param5);
                              _loc7_.endFill();
                              §5O§ = new TextField();
                              §5O§.width = param4;
                              addr464:
                              addr485:
                              addr450:
                              addr458:
                              addr446:
                              if(_loc8_ || param1)
                              {
                                 §5O§.height = param5 - 40;
                                 §5O§.x = param2;
                                 §5O§.y = param3 + 40;
                                 addr409:
                                 addr421:
                                 addr428:
                                 if(_loc8_ || param1)
                                 {
                                    §5O§.wordWrap = true;
                                    §%h§.addChild(§5O§);
                                    §+d§ = new TextField();
                                    addr390:
                                    addr402:
                                    addr397:
                                    if(_loc8_)
                                    {
                                       §+d§.x = param2 + param4 / 2;
                                       §+d§.y = param3;
                                       addr384:
                                       if(!_loc9_)
                                       {
                                          §+d§.width = param4 / 2;
                                          §+d§.height = 20;
                                          addr368:
                                          if(!(_loc9_ && §4,§))
                                          {
                                             §+d§.text = "LOGGER CAPTURING INPUT, F4";
                                             §+d§.border = true;
                                             addr349:
                                             if(_loc8_ || param1)
                                             {
                                                §+d§.borderColor = 16711680;
                                                addr330:
                                                if(!_loc9_)
                                                {
                                                   §%h§.addChild(§+d§);
                                                   addr318:
                                                   if(!(_loc9_ && param2))
                                                   {
                                                      §+N§ = new TextField();
                                                      addr306:
                                                      if(_loc8_ || §4,§)
                                                      {
                                                         §+N§.width = param4;
                                                         §+N§.height = 20;
                                                         addr288:
                                                         addr300:
                                                         if(_loc8_ || §4,§)
                                                         {
                                                            §+N§.x = param2;
                                                            addr274:
                                                            if(!_loc9_)
                                                            {
                                                               if(!(_loc9_ && param3))
                                                               {
                                                                  §+N§.y = param3;
                                                                  addr267:
                                                                  if(_loc8_)
                                                                  {
                                                                     §%h§.addChild(§+N§);
                                                                     addr253:
                                                                     if(!_loc9_)
                                                                     {
                                                                        if(_loc8_ || param3)
                                                                        {
                                                                           §+!3§ = new TextField();
                                                                           addr239:
                                                                           if(!(_loc9_ && param1))
                                                                           {
                                                                              if(_loc8_)
                                                                              {
                                                                                 §+!3§.width = param4;
                                                                                 addr214:
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    if(!(_loc9_ && param2))
                                                                                    {
                                                                                       §+!3§.height = 20;
                                                                                       addr188:
                                                                                       if(!(_loc9_ && §4,§))
                                                                                       {
                                                                                          if(!(_loc9_ && §4,§))
                                                                                          {
                                                                                             if(!(_loc9_ && param1))
                                                                                             {
                                                                                                §+!3§.x = param2;
                                                                                                addr181:
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   §+!3§.y = param3 + 20;
                                                                                                   addr167:
                                                                                                   if(_loc8_ || param1)
                                                                                                   {
                                                                                                      if(_loc8_)
                                                                                                      {
                                                                                                         §%h§.addChild(§+!3§);
                                                                                                         addr146:
                                                                                                         if(_loc8_ || param3)
                                                                                                         {
                                                                                                            if(!(_loc9_ && param1))
                                                                                                            {
                                                                                                               §&&§(§@O§);
                                                                                                               if(param6 >= 0)
                                                                                                               {
                                                                                                                  addr119:
                                                                                                                  if(!(_loc9_ && §4,§))
                                                                                                                  {
                                                                                                                     if(!_loc9_)
                                                                                                                     {
                                                                                                                        if(!_loc9_)
                                                                                                                        {
                                                                                                                           param1.addChildAt(§%h§,param6);
                                                                                                                           addr134:
                                                                                                                           if(!_loc8_)
                                                                                                                           {
                                                                                                                              §§goto(addr239);
                                                                                                                           }
                                                                                                                           §§goto(addr79);
                                                                                                                        }
                                                                                                                        §§goto(addr464);
                                                                                                                     }
                                                                                                                     §§goto(addr267);
                                                                                                                  }
                                                                                                                  §§goto(addr214);
                                                                                                               }
                                                                                                               param1.addChild(§%h§);
                                                                                                               addr141:
                                                                                                               if(_loc8_)
                                                                                                               {
                                                                                                                  if(!(_loc9_ && §4,§))
                                                                                                                  {
                                                                                                                     if(!(_loc9_ && §4,§))
                                                                                                                     {
                                                                                                                        if(!(_loc9_ && param1))
                                                                                                                        {
                                                                                                                           if(_loc9_)
                                                                                                                           {
                                                                                                                              §§goto(addr368);
                                                                                                                           }
                                                                                                                           addr79:
                                                                                                                           return;
                                                                                                                        }
                                                                                                                        §§goto(addr146);
                                                                                                                     }
                                                                                                                     §§goto(addr141);
                                                                                                                  }
                                                                                                                  §§goto(addr119);
                                                                                                               }
                                                                                                               §§goto(addr134);
                                                                                                            }
                                                                                                            §§goto(addr318);
                                                                                                         }
                                                                                                         §§goto(addr167);
                                                                                                      }
                                                                                                      §§goto(addr188);
                                                                                                   }
                                                                                                   §§goto(addr181);
                                                                                                }
                                                                                                §§goto(addr253);
                                                                                             }
                                                                                             §§goto(addr485);
                                                                                          }
                                                                                          §§goto(addr330);
                                                                                       }
                                                                                       §§goto(addr288);
                                                                                    }
                                                                                    §§goto(addr409);
                                                                                 }
                                                                                 §§goto(addr349);
                                                                              }
                                                                              §§goto(addr300);
                                                                           }
                                                                           §§goto(addr274);
                                                                        }
                                                                        §§goto(addr368);
                                                                     }
                                                                     §§goto(addr306);
                                                                  }
                                                                  §§goto(addr421);
                                                               }
                                                               §§goto(addr450);
                                                            }
                                                            §§goto(addr428);
                                                         }
                                                      }
                                                      §§goto(addr384);
                                                   }
                                                   §§goto(addr349);
                                                }
                                                §§goto(addr390);
                                             }
                                             §§goto(addr464);
                                          }
                                          §§goto(addr402);
                                       }
                                       §§goto(addr397);
                                    }
                                    §§goto(addr458);
                                 }
                                 §§goto(addr446);
                                 addr440:
                              }
                              addr478:
                              §§goto(addr478);
                           }
                           §§goto(addr440);
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
      
      public static function §&&§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(§8!d§)
            {
               loop0:
               while(true)
               {
                  §@O§ = param1;
                  loop1:
                  while(true)
                  {
                     §%h§.mouseChildren = §@O§;
                     loop2:
                     while(!(_loc3_ && param1))
                     {
                        §%h§.mouseEnabled = §@O§;
                        loop3:
                        while(_loc2_)
                        {
                           §+N§.mouseEnabled = §@O§;
                           loop4:
                           while(true)
                           {
                              §+!3§.mouseEnabled = §@O§;
                              while(true)
                              {
                                 §5O§.mouseEnabled = §@O§;
                                 loop6:
                                 while(_loc2_ || param1)
                                 {
                                    if(!_loc3_)
                                    {
                                       if(_loc2_)
                                       {
                                          while(true)
                                          {
                                             §+d§.visible = §@O§;
                                             if(!(_loc3_ && §4,§))
                                             {
                                                if(!_loc3_)
                                                {
                                                   if(_loc3_ && §4,§)
                                                   {
                                                      continue loop2;
                                                   }
                                                   §§goto(addr43);
                                                   continue loop2;
                                                }
                                                continue loop4;
                                             }
                                             continue loop6;
                                          }
                                          return;
                                          continue;
                                       }
                                       continue loop1;
                                    }
                                    continue loop3;
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
         §§goto(addr69);
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(§8!d§)
            {
               return;
            }
         }
      }
      
      public static function §9r§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param3)
         {
            §!!C§ = param1;
         }
         while(true)
         {
            §%!<§ = param2;
            while(!(_loc5_ && param2))
            {
               §2y§ = param3;
               if(_loc6_ || param3)
               {
                  return;
               }
            }
         }
      }
      
      public static function §&!#§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §?!`§ = param1;
         }
      }
   }
}
