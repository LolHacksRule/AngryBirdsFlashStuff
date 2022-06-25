package §1!B§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §<m§
   {
      
      public static const §^+§:Boolean = true;
      
      public static const §]!"§:Boolean = true;
      
      public static const §>`§:int = 0;
      
      public static const §<y§:int = 1;
      
      public static const § u§:int = 500;
      
      private static var §#!S§:Array = null;
      
      private static var §9l§:Number = 0;
      
      public static var §>""§:int = 112;
      
      public static var §^!B§:int = 114;
      
      public static var set:int = 113;
      
      public static var §-d§:int = 115;
      
      public static var §`'§:Boolean = false;
      
      public static var §8v§:Sprite = null;
      
      private static var §3!o§:TextField = null;
      
      private static var §^Q§:TextField = null;
      
      private static var §;s§:TextField = null;
      
      private static var §,"!§:TextField = null;
      
      public static var §^o§:int = -1;
      
      public static var §[![§:String = "version: Unknown";
      
      public static var §>! §:String = "";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §<m§))
         {
            §^+§ = true;
            loop0:
            while(true)
            {
               §]!"§ = true;
               loop1:
               while(true)
               {
                  §>`§ = 0;
                  loop2:
                  while(true)
                  {
                     §<y§ = 1;
                     loop3:
                     while(true)
                     {
                        § u§ = 500;
                        loop4:
                        while(true)
                        {
                           §#!S§ = null;
                           loop5:
                           while(true)
                           {
                              §9l§ = 0;
                              loop6:
                              while(true)
                              {
                                 §>""§ = Keyboard.F1;
                                 while(true)
                                 {
                                    §^!B§ = Keyboard.F3;
                                    while(true)
                                    {
                                       set = Keyboard.F2;
                                       while(_loc2_)
                                       {
                                          §-d§ = Keyboard.F4;
                                          while(true)
                                          {
                                             §`'§ = false;
                                             loop11:
                                             while(true)
                                             {
                                                §8v§ = null;
                                                addr163:
                                                while(_loc2_)
                                                {
                                                   §3!o§ = null;
                                                   while(true)
                                                   {
                                                      §^Q§ = null;
                                                      continue loop11;
                                                   }
                                                }
                                                continue loop2;
                                             }
                                          }
                                          if(!(_loc1_ && §<m§))
                                          {
                                             continue loop1;
                                          }
                                       }
                                       continue loop5;
                                       addr88:
                                       if(!(_loc1_ && _loc2_))
                                       {
                                          if(!_loc1_)
                                          {
                                             continue loop3;
                                          }
                                          continue loop6;
                                       }
                                    }
                                    if(_loc2_ || _loc1_)
                                    {
                                       while(true)
                                       {
                                          §;s§ = null;
                                          loop16:
                                          while(_loc2_)
                                          {
                                             if(_loc1_)
                                             {
                                                continue loop4;
                                             }
                                             §,"!§ = null;
                                             while(true)
                                             {
                                                if(!_loc1_)
                                                {
                                                   if(!_loc1_)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      §^o§ = -1;
                                                      while(true)
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            §§goto(addr88);
                                                         }
                                                         break;
                                                         addr46:
                                                         if(!(_loc2_ || _loc1_))
                                                         {
                                                            continue;
                                                         }
                                                         if(!_loc1_)
                                                         {
                                                            §§goto(addr55);
                                                         }
                                                         §§goto(addr163);
                                                      }
                                                      §§goto(addr158);
                                                   }
                                                   break;
                                                }
                                                continue loop16;
                                             }
                                             §§goto(addr176);
                                          }
                                          §§goto(addr139);
                                       }
                                       return;
                                       addr69:
                                       addr153:
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
         §§goto(addr153);
      }
      
      public function §<m§()
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
         if(_loc1_ || §<m§)
         {
            if(§^+§)
            {
               do
               {
                  §#!S§ = new Array(§ u§);
               }
               while(_loc2_);
               
               if(_loc1_)
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
         if(!_loc7_)
         {
            §§push(§^+§);
            if(_loc6_ || param2)
            {
               if(§§pop())
               {
                  if(_loc6_ || param1)
                  {
                     var _loc4_:*;
                     §§push((_loc4_ = §§findproperty(§9l§)).§9l§);
                     if(!_loc7_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc6_ || §<m§)
                        {
                           §§push(§§pop());
                           if(_loc6_)
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc5_:* = §§pop();
                           if(_loc6_)
                           {
                              _loc4_.§9l§ = _loc5_;
                           }
                        }
                     }
                     if(_loc6_ || §<m§)
                     {
                        §§push(§§pop() % § u§);
                        if(!_loc7_)
                        {
                           addr73:
                           §§push(Number(§§pop()));
                        }
                        _loc3_ = §§pop();
                        if(_loc6_)
                        {
                           §#!S§[_loc3_] = [param1,param2];
                           loop0:
                           while(true)
                           {
                              §§push(param2);
                              loop1:
                              while(true)
                              {
                                 §§push(§^o§);
                                 addr167:
                                 while(true)
                                 {
                                    §§push(§§pop() == §§pop());
                                    if(!(_loc7_ && param2))
                                    {
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             loop4:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   continue loop0;
                                                }
                                                loop6:
                                                while(true)
                                                {
                                                   addr89:
                                                   while(true)
                                                   {
                                                      §§push(§]!"§);
                                                      if(!(_loc6_ || §<m§))
                                                      {
                                                         continue loop4;
                                                      }
                                                      if(!_loc7_)
                                                      {
                                                         while(§§pop())
                                                         {
                                                            if(_loc6_ || _loc3_)
                                                            {
                                                               if(!(_loc7_ && §<m§))
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     if(!param1)
                                                                     {
                                                                     }
                                                                     break;
                                                                  }
                                                                  continue loop1;
                                                               }
                                                               addr163:
                                                               while(true)
                                                               {
                                                                  continue loop6;
                                                               }
                                                            }
                                                            if(_loc6_)
                                                            {
                                                               addr120:
                                                               break;
                                                            }
                                                            continue loop0;
                                                         }
                                                         return;
                                                         addr99:
                                                      }
                                                   }
                                                }
                                             }
                                             addr141:
                                          }
                                       }
                                    }
                                    addr177:
                                    while(true)
                                    {
                                       §§pop();
                                       continue loop1;
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr161);
                     }
                     §§goto(addr73);
                  }
                  §§goto(addr161);
               }
               §§goto(addr89);
            }
            §§goto(addr99);
         }
         §§goto(addr120);
      }
      
      public static function §#F§(param1:Object, param2:int = 1) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = undefined;
         if(!(_loc6_ && param1))
         {
            §§push(§§findproperty(log));
            §§push("Object:");
            if(!(_loc6_ && param1))
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
            if(_loc7_ || §<m§)
            {
               §§push(§§pop() + _loc3_);
               if(_loc7_ || param1)
               {
                  addr93:
                  §§push(§§pop() + "]: ");
                  if(_loc7_)
                  {
                     addr97:
                     §§push(§§pop() + param1[_loc3_]);
                  }
                  §§pop().log(§§pop());
                  continue;
               }
               §§goto(addr97);
            }
            §§goto(addr93);
         }
      }
      
      private static function §[0§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:* = false;
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(_loc6_)
         {
            §§push(§^+§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(Boolean(§8v§));
                     if(!_loc5_)
                     {
                        if(§§pop())
                        {
                           addr425:
                           while(true)
                           {
                              §§pop();
                              addr426:
                              while(true)
                              {
                                 §§push(Boolean(§8v§.visible));
                              }
                           }
                           addr425:
                        }
                        loop2:
                        while(true)
                        {
                           loop3:
                           while(§§pop())
                           {
                              loop4:
                              while(true)
                              {
                                 §§push(§^o§);
                                 loop5:
                                 while(true)
                                 {
                                    if(§§pop() >= 0)
                                    {
                                       §;s§.text = "Current channel: " + §^o§;
                                       loop6:
                                       while(true)
                                       {
                                          if(!(_loc5_ && _loc2_))
                                          {
                                             loop7:
                                             while(true)
                                             {
                                                if(§[![§ == null)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(true);
                                                      loop11:
                                                      while(true)
                                                      {
                                                         if(_loc5_ && _loc1_)
                                                         {
                                                            continue loop3;
                                                         }
                                                         if(_loc6_)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               _loc1_ = §§pop();
                                                               loop12:
                                                               while(!_loc5_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(§3!o§.scrollV == §3!o§.numLines - int(§3!o§.height / (§3!o§.textHeight / §3!o§.numLines)))
                                                                     {
                                                                        loop20:
                                                                        while(true)
                                                                        {
                                                                           _loc2_ = "";
                                                                           for(; _loc6_; _loc3_ = §§pop(),if(_loc5_ && §<m§)
                                                                           {
                                                                              continue;
                                                                           },if(!_loc6_)
                                                                           {
                                                                              continue loop12;
                                                                           },if(_loc5_ && _loc3_)
                                                                           {
                                                                              continue loop7;
                                                                           },if(_loc5_ && _loc2_)
                                                                           {
                                                                              continue loop1;
                                                                           },addr82:,§§push(_loc3_),if(!(_loc5_ && §<m§))
                                                                           {
                                                                              if(!(_loc5_ && _loc1_))
                                                                              {
                                                                                 if(_loc6_ || §<m§)
                                                                                 {
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       §§push(§ u§);
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          if(!(_loc5_ && §<m§))
                                                                                          {
                                                                                             if(§§pop() >= §§pop())
                                                                                             {
                                                                                                addr118:
                                                                                                §3!o§.text = _loc2_;
                                                                                                addr121:
                                                                                                §§push(_loc1_);
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(_loc6_ || _loc3_)
                                                                                                      {
                                                                                                         if(_loc6_ || _loc3_)
                                                                                                         {
                                                                                                            if(!(_loc5_ && _loc2_))
                                                                                                            {
                                                                                                               §3!o§.scrollV = §3!o§.numLines;
                                                                                                               addr63:
                                                                                                               if(!_loc5_)
                                                                                                               {
                                                                                                                  if(_loc6_)
                                                                                                                  {
                                                                                                                     if(!(_loc5_ && _loc3_))
                                                                                                                     {
                                                                                                                        if(!(_loc6_ || _loc1_))
                                                                                                                        {
                                                                                                                           addr252:
                                                                                                                           if(§#!S§[_loc4_] != null)
                                                                                                                           {
                                                                                                                              addr219:
                                                                                                                              §§push(§^o§ < 0);
                                                                                                                              if(!(_loc5_ && _loc2_))
                                                                                                                              {
                                                                                                                                 if(!§§pop())
                                                                                                                                 {
                                                                                                                                    addr231:
                                                                                                                                    §§pop();
                                                                                                                                    addr232:
                                                                                                                                    §§push(§#!S§);
                                                                                                                                    if(!(_loc5_ && §<m§))
                                                                                                                                    {
                                                                                                                                       §§push(_loc4_);
                                                                                                                                       if(_loc6_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          addr171:
                                                                                                                                          §§push(§§pop()[§§pop()][1] == §^o§);
                                                                                                                                          if(_loc6_)
                                                                                                                                          {
                                                                                                                                             addr173:
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                addr175:
                                                                                                                                                §§push(_loc2_);
                                                                                                                                                if(_loc6_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() + (§#!S§[_loc4_][0] + "\n"));
                                                                                                                                                }
                                                                                                                                                _loc2_ = §§pop();
                                                                                                                                                addr188:
                                                                                                                                                if(_loc6_ || §<m§)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc5_ && _loc2_))
                                                                                                                                                   {
                                                                                                                                                      addr122:
                                                                                                                                                      §§push(_loc3_ + 1);
                                                                                                                                                      if(!(_loc5_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         addr249:
                                                                                                                                                         if(_loc6_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc5_ && §<m§))
                                                                                                                                                            {
                                                                                                                                                               addr147:
                                                                                                                                                               _loc3_ = §§pop();
                                                                                                                                                               addr148:
                                                                                                                                                               §§goto(addr82);
                                                                                                                                                            }
                                                                                                                                                            addr246:
                                                                                                                                                            §§push(§§pop() + 1);
                                                                                                                                                         }
                                                                                                                                                         §§push(§§pop() % 500);
                                                                                                                                                      }
                                                                                                                                                      _loc4_ = §§pop();
                                                                                                                                                      §§goto(addr252);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr219);
                                                                                                                                                }
                                                                                                                                                §§goto(addr232);
                                                                                                                                             }
                                                                                                                                             §§goto(addr122);
                                                                                                                                          }
                                                                                                                                          §§goto(addr231);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr252);
                                                                                                                                 }
                                                                                                                                 §§goto(addr173);
                                                                                                                              }
                                                                                                                              §§goto(addr231);
                                                                                                                           }
                                                                                                                           §§goto(addr122);
                                                                                                                        }
                                                                                                                        break loop3;
                                                                                                                     }
                                                                                                                     §§goto(addr188);
                                                                                                                  }
                                                                                                                  §§goto(addr148);
                                                                                                               }
                                                                                                               §§goto(addr118);
                                                                                                            }
                                                                                                            §§goto(addr175);
                                                                                                         }
                                                                                                         §§goto(addr121);
                                                                                                      }
                                                                                                      §§goto(addr63);
                                                                                                   }
                                                                                                   break loop3;
                                                                                                }
                                                                                                §§goto(addr171);
                                                                                             }
                                                                                             §§push(§9l§);
                                                                                             if(!(_loc5_ && §<m§))
                                                                                             {
                                                                                                §§push(§§pop() + _loc3_);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr246);
                                                                                       }
                                                                                       §§goto(addr249);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr122);
                                                                           },§§goto(addr147))
                                                                           {
                                                                              if(_loc6_ || _loc1_)
                                                                              {
                                                                                 if(_loc6_ || §<m§)
                                                                                 {
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          break loop11;
                                                                                       }
                                                                                       §§push(0);
                                                                                       if(!(_loc5_ && _loc2_))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       continue loop5;
                                                                                    }
                                                                                    continue loop4;
                                                                                 }
                                                                                 continue loop6;
                                                                              }
                                                                           }
                                                                           addr346:
                                                                           while(true)
                                                                           {
                                                                              continue loop20;
                                                                           }
                                                                        }
                                                                     }
                                                                     while(_loc6_ || §<m§)
                                                                     {
                                                                        continue loop11;
                                                                        §§goto(addr293);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr429);
                                                            }
                                                            continue loop0;
                                                         }
                                                         §§goto(addr425);
                                                      }
                                                      continue loop2;
                                                   }
                                                   addr347:
                                                }
                                                while(true)
                                                {
                                                   §,"!§.text = §[![§;
                                                   continue loop6;
                                                }
                                                addr417:
                                                while(true)
                                                {
                                                   continue loop7;
                                                }
                                             }
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §;s§.text = "Current channel: ALL";
                                             }
                                             addr414:
                                          }
                                          §§goto(addr417);
                                       }
                                    }
                                    §§goto(addr414);
                                 }
                              }
                           }
                           return;
                        }
                     }
                     §§goto(addr425);
                  }
               }
               addr429:
               return;
            }
         }
         §§goto(addr363);
      }
      
      public static function §3! §(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_)
         {
            if(§^+§)
            {
               loop0:
               while(true)
               {
                  §8v§ = new Sprite();
                  loop1:
                  while(_loc9_ || param2)
                  {
                     loop2:
                     while(true)
                     {
                        §8v§.visible = false;
                        loop3:
                        while(!_loc8_)
                        {
                           while(true)
                           {
                              param1.addChild(§8v§);
                              if(_loc9_ || param3)
                              {
                                 if(!_loc8_)
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
                           (_loc7_ = §8v§.graphics).beginFill(16777215,0);
                           if(_loc9_)
                           {
                              _loc7_.drawRect(0,0,1000,1000);
                              while(true)
                              {
                                 _loc7_.endFill();
                                 loop6:
                                 while(!_loc8_)
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
                                             §3!o§ = new TextField();
                                             while(true)
                                             {
                                                §3!o§.width = param4;
                                                continue loop9;
                                                addr385:
                                                while(_loc9_ || §<m§)
                                                {
                                                   §3!o§.x = param2;
                                                   while(true)
                                                   {
                                                      §3!o§.y = param3 + 40;
                                                      addr373:
                                                      while(true)
                                                      {
                                                         §3!o§.wordWrap = true;
                                                         continue loop8;
                                                      }
                                                   }
                                                   addr269:
                                                   if(!(_loc9_ || param2))
                                                   {
                                                      continue;
                                                   }
                                                   §;s§.height = 20;
                                                   loop28:
                                                   while(!_loc8_)
                                                   {
                                                      §;s§.x = param2;
                                                      loop29:
                                                      while(!(_loc8_ && §<m§))
                                                      {
                                                         §;s§.y = param3;
                                                         loop30:
                                                         while(true)
                                                         {
                                                            §8v§.addChild(§;s§);
                                                            loop31:
                                                            while(true)
                                                            {
                                                               if(_loc9_)
                                                               {
                                                                  if(!_loc9_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §,"!§ = new TextField();
                                                                  loop32:
                                                                  do
                                                                  {
                                                                     if(_loc8_)
                                                                     {
                                                                        continue loop28;
                                                                     }
                                                                     addr222:
                                                                     if(_loc9_ || param2)
                                                                     {
                                                                        §,"!§.width = param4;
                                                                        loop33:
                                                                        while(true)
                                                                        {
                                                                           §,"!§.height = 20;
                                                                           loop34:
                                                                           while(true)
                                                                           {
                                                                              if(_loc8_)
                                                                              {
                                                                                 continue loop33;
                                                                              }
                                                                              if(!_loc9_)
                                                                              {
                                                                                 continue loop29;
                                                                              }
                                                                              if(_loc9_)
                                                                              {
                                                                                 addr183:
                                                                                 if(!(_loc8_ && param2))
                                                                                 {
                                                                                    addr190:
                                                                                    if(_loc8_ && param3)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       §,"!§.x = param2;
                                                                                       do
                                                                                       {
                                                                                          §,"!§.y = param3 + 20;
                                                                                          loop36:
                                                                                          do
                                                                                          {
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                §8v§.addChild(§,"!§);
                                                                                                loop37:
                                                                                                while(_loc9_)
                                                                                                {
                                                                                                   § !J§(§`'§);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc8_ && param1))
                                                                                                      {
                                                                                                         if(param6 >= 0)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         param1.addChild(§8v§);
                                                                                                         if(!(_loc8_ && param3))
                                                                                                         {
                                                                                                            if(!_loc9_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            continue;
                                                                                                         }
                                                                                                         addr137:
                                                                                                         if(!_loc8_)
                                                                                                         {
                                                                                                            §§goto(addr70);
                                                                                                         }
                                                                                                         continue loop6;
                                                                                                      }
                                                                                                      continue loop37;
                                                                                                   }
                                                                                                   continue loop36;
                                                                                                }
                                                                                                continue loop34;
                                                                                             }
                                                                                             continue loop31;
                                                                                          }
                                                                                          while(!(_loc9_ || param3));
                                                                                          
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             continue loop30;
                                                                                          }
                                                                                          addr119:
                                                                                          if(!(_loc8_ && param3))
                                                                                          {
                                                                                             addr126:
                                                                                             if(!(_loc8_ && param2))
                                                                                             {
                                                                                                param1.addChildAt(§8v§,param6);
                                                                                                §§goto(addr137);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §^Q§.height = 20;
                                                                                                   addr320:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §^Q§.text = "LOGGER CAPTURING INPUT, F4";
                                                                                                      addr313:
                                                                                                      addr354:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            §^Q§.border = true;
                                                                                                            break loop28;
                                                                                                         }
                                                                                                         break;
                                                                                                         §§goto(addr222);
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §^Q§ = new TextField();
                                                                                                         break loop29;
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr126);
                                                                                                }
                                                                                                addr327:
                                                                                             }
                                                                                          }
                                                                                          while(_loc9_)
                                                                                          {
                                                                                             §§goto(addr269);
                                                                                             §§goto(addr119);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §^Q§.width = param4 / 2;
                                                                                             §§goto(addr327);
                                                                                          }
                                                                                       }
                                                                                       while(!(_loc9_ || param1));
                                                                                       
                                                                                       continue loop32;
                                                                                    }
                                                                                    §§goto(addr373);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          continue loop7;
                                                                                       }
                                                                                       §;s§ = new TextField();
                                                                                       while(true)
                                                                                       {
                                                                                          §;s§.width = param4;
                                                                                          §§goto(addr267);
                                                                                       }
                                                                                    }
                                                                                    break;
                                                                                    §§goto(addr183);
                                                                                 }
                                                                                 §§goto(addr320);
                                                                                 addr287:
                                                                              }
                                                                              §§goto(addr282);
                                                                           }
                                                                           continue loop8;
                                                                        }
                                                                     }
                                                                     §§goto(addr313);
                                                                  }
                                                                  while(!_loc9_);
                                                                  
                                                                  addr70:
                                                                  return;
                                                               }
                                                               addr296:
                                                               while(true)
                                                               {
                                                                  §8v§.addChild(§^Q§);
                                                                  §§goto(addr287);
                                                               }
                                                            }
                                                            §§goto(addr378);
                                                         }
                                                      }
                                                      while(_loc9_)
                                                      {
                                                         §^Q§.x = param2 + param4 / 2;
                                                         while(true)
                                                         {
                                                            §^Q§.y = param3;
                                                            §§goto(addr332);
                                                            break loop28;
                                                         }
                                                         §§goto(addr248);
                                                      }
                                                      addr248:
                                                      continue loop9;
                                                   }
                                                   while(_loc9_ || param3)
                                                   {
                                                      §^Q§.borderColor = 16711680;
                                                      §§goto(addr296);
                                                   }
                                                   §§goto(addr341);
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr378);
                        }
                        continue loop0;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr41);
      }
      
      public static function § !J§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            if(§^+§)
            {
               while(true)
               {
                  §`'§ = param1;
                  loop1:
                  while(true)
                  {
                     §8v§.mouseChildren = §`'§;
                     loop2:
                     while(true)
                     {
                        §8v§.mouseEnabled = §`'§;
                        addr86:
                        while(_loc2_)
                        {
                           §;s§.mouseEnabled = §`'§;
                           loop4:
                           while(true)
                           {
                              §,"!§.mouseEnabled = §`'§;
                              addr58:
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    continue loop2;
                                 }
                                 continue loop4;
                              }
                           }
                        }
                        continue loop1;
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
            if(§^+§)
            {
               return;
            }
         }
      }
      
      public static function §#k§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            §>""§ = param1;
            while(true)
            {
               set = param2;
               while(!(_loc6_ && §<m§))
               {
                  §^!B§ = param3;
                  if(!_loc5_)
                  {
                     continue;
                  }
                  return;
                  addr39:
               }
            }
         }
         §§goto(addr39);
      }
      
      public static function §^2§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §[![§ = param1;
         }
      }
   }
}
