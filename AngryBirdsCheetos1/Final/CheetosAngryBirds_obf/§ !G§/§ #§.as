package § !G§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class § #§
   {
      
      public static const §;!V§:Boolean = true;
      
      public static const § ^§:Boolean = true;
      
      public static const §2!E§:int = 0;
      
      public static const §#!W§:int = 1;
      
      public static const §+G§:int = 500;
      
      private static var §@!4§:Array = null;
      
      private static var §1!F§:Number = 0;
      
      public static var §@! §:int = 112;
      
      public static var §'1§:int = 114;
      
      public static var §>r§:int = 113;
      
      public static var §;!N§:int = 115;
      
      public static var §5!0§:Boolean = false;
      
      public static var §4&§:Sprite = null;
      
      private static var §if §:TextField = null;
      
      private static var §15§:TextField = null;
      
      private static var §%!S§:TextField = null;
      
      private static var §3y§:TextField = null;
      
      public static var §=[§:int = -1;
      
      public static var §[!N§:String = "version: Unknown";
      
      public static var §,i§:String = "";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §;!V§ = true;
            loop0:
            while(true)
            {
               § ^§ = true;
               loop1:
               while(true)
               {
                  §2!E§ = 0;
                  while(true)
                  {
                     §#!W§ = 1;
                     while(true)
                     {
                        §+G§ = 500;
                        loop4:
                        for(; _loc2_ || _loc1_; while(_loc2_ || _loc2_)
                        {
                           §;!N§ = Keyboard.F4;
                           §§goto(addr163);
                        })
                        {
                           §@!4§ = null;
                           loop5:
                           while(true)
                           {
                              §1!F§ = 0;
                              while(!_loc1_)
                              {
                                 if(!_loc1_)
                                 {
                                    §@! § = Keyboard.F1;
                                    loop7:
                                    while(!(_loc1_ && _loc2_))
                                    {
                                       §'1§ = Keyboard.F3;
                                       while(true)
                                       {
                                          §>r§ = Keyboard.F2;
                                          continue loop4;
                                          loop13:
                                          while(_loc2_ || _loc1_)
                                          {
                                             §15§ = null;
                                             loop14:
                                             while(true)
                                             {
                                                §%!S§ = null;
                                                addr128:
                                                while(!_loc1_)
                                                {
                                                   §3y§ = null;
                                                   continue loop14;
                                                }
                                                continue loop7;
                                             }
                                             loop18:
                                             while(true)
                                             {
                                                if(_loc2_ || _loc1_)
                                                {
                                                   if(_loc1_)
                                                   {
                                                      break;
                                                   }
                                                   §,i§ = "";
                                                   while(true)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         if(!_loc1_)
                                                         {
                                                            continue loop5;
                                                         }
                                                         addr163:
                                                         while(true)
                                                         {
                                                            §5!0§ = false;
                                                            while(true)
                                                            {
                                                               §4&§ = null;
                                                               addr152:
                                                               while(true)
                                                               {
                                                                  §if § = null;
                                                                  continue loop13;
                                                               }
                                                               addr52:
                                                               if(!(_loc1_ && _loc2_))
                                                               {
                                                                  return;
                                                               }
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr128);
                                                      }
                                                      addr75:
                                                      init();
                                                      if(_loc2_)
                                                      {
                                                         continue loop18;
                                                      }
                                                   }
                                                   continue loop5;
                                                }
                                                continue loop13;
                                             }
                                             continue loop4;
                                          }
                                       }
                                    }
                                    continue;
                                 }
                                 continue loop0;
                              }
                              continue loop1;
                           }
                        }
                     }
                     if(!(_loc2_ || § #§))
                     {
                        continue;
                     }
                     §=[§ = -1;
                     §§goto(addr94);
                  }
               }
            }
         }
         §§goto(addr209);
      }
      
      public function § #§()
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
         if(_loc1_)
         {
            if(§;!V§)
            {
               loop0:
               while(true)
               {
                  §@!4§ = new Array(§+G§);
                  if(!(_loc2_ && _loc1_))
                  {
                     break;
                  }
                  addr62:
                  while(true)
                  {
                     continue loop0;
                  }
               }
               if(!_loc2_)
               {
                  return;
               }
            }
            return;
         }
         §§goto(addr62);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = NaN;
         if(!(_loc6_ && param1))
         {
            §§push(§;!V§);
            if(_loc7_)
            {
               if(§§pop())
               {
                  if(!(_loc6_ && param2))
                  {
                     var _loc4_:*;
                     §§push((_loc4_ = §§findproperty(§1!F§)).§1!F§);
                     if(_loc7_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc7_)
                        {
                           §§push(§§pop());
                           if(!(_loc6_ && param1))
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc5_:* = §§pop();
                           if(_loc7_ || § #§)
                           {
                              _loc4_.§1!F§ = _loc5_;
                           }
                        }
                     }
                     if(_loc7_ || param1)
                     {
                        §§push(§§pop() % §+G§);
                        if(_loc7_)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     _loc3_ = §§pop();
                     if(!_loc6_)
                     {
                        §@!4§[_loc3_] = [param1,param2];
                        loop0:
                        while(true)
                        {
                           §§push(param2);
                           addr164:
                           loop1:
                           while(true)
                           {
                              §§push(§=[§);
                              addr165:
                              while(true)
                              {
                                 §§push(§§pop() == §§pop());
                                 addr166:
                                 loop10:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       loop5:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             while(true)
                                             {
                                                §&!>§();
                                                addr152:
                                                while(_loc7_ || param1)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      continue loop0;
                                                   }
                                                }
                                                continue loop1;
                                                addr110:
                                                if(_loc7_ || param1)
                                                {
                                                   addr118:
                                                   return;
                                                   addr117:
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             addr95:
                                             while(true)
                                             {
                                                §§push(§ ^§);
                                                if(!_loc6_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!(_loc6_ && _loc3_))
                                                      {
                                                         if(!param1)
                                                         {
                                                         }
                                                         break;
                                                      }
                                                      if(_loc7_)
                                                      {
                                                         §§goto(addr110);
                                                      }
                                                      §§goto(addr152);
                                                   }
                                                   break;
                                                }
                                                addr139:
                                                while(!(_loc6_ && param2))
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      continue loop5;
                                                   }
                                                   continue loop10;
                                                }
                                             }
                                             §§goto(addr118);
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       §§pop();
                                       continue loop1;
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §§push(§=[§);
                     if(_loc7_ || § #§)
                     {
                        §§push(0);
                        if(_loc7_ || § #§)
                        {
                           §§goto(addr139);
                           §§push(§§pop() < §§pop());
                        }
                        §§goto(addr165);
                     }
                     §§goto(addr164);
                  }
               }
               §§goto(addr95);
            }
            §§goto(addr166);
         }
         §§goto(addr117);
      }
      
      public static function §"!S§(param1:Object, param2:int = 1) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = undefined;
         if(!_loc6_)
         {
            log("Object:" + getQualifiedClassName(param1));
         }
         for(_loc3_ in param1)
         {
            if(!_loc6_)
            {
               §§push(§§findproperty(log));
               §§push("-[" + _loc3_);
               if(!(_loc6_ && § #§))
               {
                  §§push(§§pop() + "]: ");
                  if(_loc7_)
                  {
                     §§push(§§pop() + param1[_loc3_]);
                  }
               }
               §§pop().log(§§pop());
            }
         }
      }
      
      private static function §&!>§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:* = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(_loc5_ || _loc3_)
         {
            §§push(§;!V§);
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(Boolean(§4&§));
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr408:
                              §§goto(addr413);
                           }
                        }
                        while(§§pop())
                        {
                           if(_loc5_ || § #§)
                           {
                              §§goto(addr386);
                              §§push(§=[§);
                           }
                           §§goto(addr388);
                        }
                        §§goto(addr33);
                     }
                  }
               }
               while(_loc5_ || _loc2_)
               {
                  _loc1_ = §§pop();
                  §§goto(addr336);
                  §§goto(addr298);
               }
            }
         }
         addr413:
         while(_loc5_)
         {
            §§push(Boolean(§4&§.visible));
            while(!(_loc6_ && _loc3_))
            {
               if(!(_loc6_ && _loc3_))
               {
                  continue loop3;
               }
            }
            continue loop2;
         }
      }
      
      public static function §=J§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!_loc9_)
         {
            if(§;!V§)
            {
               while(true)
               {
                  §4&§ = new Sprite();
                  loop1:
                  while(!(_loc9_ && param1))
                  {
                     if(!(_loc9_ && param1))
                     {
                        while(true)
                        {
                           loop3:
                           do
                           {
                              §4&§.visible = false;
                              while(_loc8_ || § #§)
                              {
                                 param1.addChild(§4&§);
                                 if(!_loc9_)
                                 {
                                    continue loop3;
                                 }
                              }
                              continue loop1;
                           }
                           while(false);
                           
                           var _loc7_:Graphics;
                           (_loc7_ = §4&§.graphics).beginFill(16777215,0);
                           if(!_loc9_)
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
                                    loop7:
                                    while(true)
                                    {
                                       _loc7_.drawRect(param2,param3,param4,param5);
                                       loop8:
                                       while(true)
                                       {
                                          _loc7_.endFill();
                                          loop9:
                                          while(true)
                                          {
                                             §if § = new TextField();
                                             loop10:
                                             while(true)
                                             {
                                                §if §.width = param4;
                                                loop11:
                                                while(true)
                                                {
                                                   §if §.height = param5 - 40;
                                                   while(true)
                                                   {
                                                      §if §.x = param2;
                                                      loop29:
                                                      while(_loc8_ || param3)
                                                      {
                                                         §%!S§.y = param3;
                                                         loop30:
                                                         while(true)
                                                         {
                                                            if(!_loc9_)
                                                            {
                                                               if(_loc9_)
                                                               {
                                                                  break;
                                                               }
                                                               §4&§.addChild(§%!S§);
                                                               loop31:
                                                               while(true)
                                                               {
                                                                  §3y§ = new TextField();
                                                                  loop32:
                                                                  while(true)
                                                                  {
                                                                     if(_loc9_ && § #§)
                                                                     {
                                                                        continue loop31;
                                                                     }
                                                                     if(_loc9_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §3y§.width = param4;
                                                                     loop33:
                                                                     while(!(_loc9_ && param2))
                                                                     {
                                                                        §3y§.height = 20;
                                                                        do
                                                                        {
                                                                           if(_loc8_)
                                                                           {
                                                                              continue loop11;
                                                                           }
                                                                           continue loop33;
                                                                        }
                                                                        while(_loc9_);
                                                                        
                                                                        addr129:
                                                                        if(!(_loc9_ && param3))
                                                                        {
                                                                           addr74:
                                                                           return;
                                                                        }
                                                                        addr264:
                                                                        while(true)
                                                                        {
                                                                           §%!S§.x = param2;
                                                                           continue loop29;
                                                                           §§goto(addr129);
                                                                        }
                                                                     }
                                                                     loop15:
                                                                     while(true)
                                                                     {
                                                                        §4&§.addChild(§if §);
                                                                        addr377:
                                                                        loop16:
                                                                        while(_loc8_ || § #§)
                                                                        {
                                                                           if(_loc9_)
                                                                           {
                                                                              continue loop7;
                                                                           }
                                                                           §15§ = new TextField();
                                                                           while(true)
                                                                           {
                                                                              §15§.x = param2 + param4 / 2;
                                                                              break loop32;
                                                                              addr284:
                                                                              loop26:
                                                                              while(_loc8_ || param2)
                                                                              {
                                                                                 §%!S§.width = param4;
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc9_ && param1)
                                                                                    {
                                                                                       continue loop6;
                                                                                    }
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §%!S§.height = 20;
                                                                                    §§goto(addr264);
                                                                                    loop37:
                                                                                    while(_loc8_ || § #§)
                                                                                    {
                                                                                       §&!#§(§5!0§);
                                                                                       do
                                                                                       {
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             continue loop37;
                                                                                          }
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             continue loop8;
                                                                                          }
                                                                                          if(param6 >= 0)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          param1.addChild(§4&§);
                                                                                          if(_loc8_ || param2)
                                                                                          {
                                                                                             if(_loc8_)
                                                                                             {
                                                                                                continue loop30;
                                                                                             }
                                                                                             continue;
                                                                                          }
                                                                                          §§goto(addr127);
                                                                                       }
                                                                                       while(!_loc8_);
                                                                                       
                                                                                       addr114:
                                                                                       if(!(_loc8_ || param3))
                                                                                       {
                                                                                          loop36:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc8_)
                                                                                             {
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   continue loop32;
                                                                                                }
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   addr170:
                                                                                                   if(!(_loc9_ && param2))
                                                                                                   {
                                                                                                      §4&§.addChild(§3y§);
                                                                                                      continue loop37;
                                                                                                   }
                                                                                                   addr303:
                                                                                                   while(!_loc9_)
                                                                                                   {
                                                                                                      §4&§.addChild(§15§);
                                                                                                      §§goto(addr170);
                                                                                                   }
                                                                                                   loop23:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc8_)
                                                                                                      {
                                                                                                         if(!_loc8_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         continue loop5;
                                                                                                      }
                                                                                                      addr326:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §15§.border = true;
                                                                                                         continue loop23;
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop9;
                                                                                                }
                                                                                                while(_loc8_)
                                                                                                {
                                                                                                   §%!S§ = new TextField();
                                                                                                   continue loop26;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §if §.y = param3 + 40;
                                                                                                   break loop16;
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §3y§.y = param3 + 20;
                                                                                                   continue loop36;
                                                                                                }
                                                                                                addr182:
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          continue loop29;
                                                                                       }
                                                                                       param1.addChildAt(§4&§,param6);
                                                                                       §§goto(addr127);
                                                                                    }
                                                                                 }
                                                                                 continue loop16;
                                                                              }
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §if §.wordWrap = true;
                                                                           continue loop15;
                                                                           §§goto(addr377);
                                                                        }
                                                                     }
                                                                     addr201:
                                                                  }
                                                                  continue loop10;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr284);
                                                            }
                                                            §§goto(addr372);
                                                         }
                                                         while(true)
                                                         {
                                                            §15§.text = "LOGGER CAPTURING INPUT, F4";
                                                            §§goto(addr326);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr403);
                        }
                        addr58:
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr58);
      }
      
      public static function §&!#§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(§;!V§)
            {
               loop0:
               while(true)
               {
                  §5!0§ = param1;
                  while(true)
                  {
                     §4&§.mouseChildren = §5!0§;
                     loop2:
                     while(!_loc2_)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           §4&§.mouseEnabled = §5!0§;
                           do
                           {
                              §%!S§.mouseEnabled = §5!0§;
                              while(_loc3_ || _loc2_)
                              {
                                 §3y§.mouseEnabled = §5!0§;
                                 while(_loc3_ || _loc3_)
                                 {
                                    §if §.mouseEnabled = §5!0§;
                                    while(_loc3_ || _loc3_)
                                    {
                                       §15§.visible = §5!0§;
                                       if(!(_loc3_ || § #§))
                                       {
                                          continue;
                                       }
                                       if(_loc3_)
                                       {
                                          §§goto(addr37);
                                       }
                                       §§goto(addr66);
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                           while(_loc2_);
                           
                           return;
                           addr39:
                        }
                        continue loop0;
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
            if(§;!V§)
            {
               return;
            }
         }
      }
      
      public static function §7`§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            §@! § = param1;
         }
         while(true)
         {
            §>r§ = param2;
            while(!(_loc5_ && param1))
            {
               §'1§ = param3;
               if(_loc6_)
               {
                  return;
               }
            }
         }
      }
      
      public static function §8R§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || § #§)
         {
            §[!N§ = param1;
         }
      }
   }
}
