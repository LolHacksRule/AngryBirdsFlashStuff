package §^_§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §!>§
   {
      
      public static const §&u§:Boolean = true;
      
      public static const §7T§:Boolean = true;
      
      public static const §2=§:int = 0;
      
      public static const §0!=§:int = 1;
      
      public static const §<!%§:int = 500;
      
      private static var §'r§:Array = null;
      
      private static var §3n§:Number = 0;
      
      public static var §7W§:int = 112;
      
      public static var §"@§:int = 114;
      
      public static var §#G§:int = 113;
      
      public static var §,+§:int = 115;
      
      public static var §6!2§:Boolean = false;
      
      public static var § !w§:Sprite = null;
      
      private static var § x§:TextField = null;
      
      private static var §]o§:TextField = null;
      
      private static var §9!G§:TextField = null;
      
      private static var §#,§:TextField = null;
      
      public static var §1!I§:int = -1;
      
      public static var §<4§:String = "version: Unknown";
      
      public static var §`p§:String = "";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §&u§ = true;
            loop0:
            while(true)
            {
               §7T§ = true;
               loop1:
               while(true)
               {
                  §2=§ = 0;
                  loop2:
                  while(true)
                  {
                     §0!=§ = 1;
                     loop3:
                     while(true)
                     {
                        §<!%§ = 500;
                        while(true)
                        {
                           §'r§ = null;
                           while(!_loc1_)
                           {
                              §3n§ = 0;
                              while(true)
                              {
                                 §7W§ = Keyboard.F1;
                                 loop7:
                                 while(true)
                                 {
                                    §"@§ = Keyboard.F3;
                                    loop8:
                                    while(true)
                                    {
                                       §#G§ = Keyboard.F2;
                                       addr172:
                                       while(true)
                                       {
                                          §,+§ = Keyboard.F4;
                                          addr157:
                                          while(!_loc1_)
                                          {
                                             continue loop7;
                                          }
                                          continue loop8;
                                       }
                                    }
                                 }
                                 loop12:
                                 while(!(_loc1_ && _loc2_))
                                 {
                                    § x§ = null;
                                    while(_loc2_)
                                    {
                                       §]o§ = null;
                                       loop14:
                                       for(; !_loc1_; while(!(_loc1_ && §!>§))
                                       {
                                          if(_loc2_)
                                          {
                                             §1!I§ = -1;
                                             while(true)
                                             {
                                                §<4§ = "version: Unknown";
                                                addr71:
                                                while(!_loc1_)
                                                {
                                                   if(!_loc1_)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      continue loop3;
                                                   }
                                                   continue loop12;
                                                }
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr149);
                                          }
                                       })
                                       {
                                          §9!G§ = null;
                                          while(true)
                                          {
                                             §#,§ = null;
                                             continue loop14;
                                             addr52:
                                             if(!(_loc1_ && _loc2_))
                                             {
                                                continue loop2;
                                             }
                                          }
                                       }
                                    }
                                    continue loop1;
                                 }
                              }
                              if(!(_loc1_ && §!>§))
                              {
                                 return;
                                 addr45:
                              }
                           }
                        }
                     }
                  }
               }
               if(!(_loc2_ || §!>§))
               {
                  continue;
               }
               while(true)
               {
                  §`p§ = "";
                  §§goto(addr50);
               }
               §§goto(addr45);
               addr84:
            }
         }
         §§goto(addr84);
      }
      
      public function §!>§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
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
            if(!§&u§)
            {
               if(!_loc2_)
               {
                  return;
               }
               addr47:
               while(true)
               {
               }
               addr47:
            }
            while(true)
            {
               §'r§ = new Array(§<!%§);
               if(_loc1_)
               {
                  break;
               }
               §§goto(addr47);
            }
            return;
         }
         §§goto(addr47);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = NaN;
         if(!_loc6_)
         {
            §§push(§&u§);
            if(_loc7_ || param1)
            {
               if(§§pop())
               {
                  if(!_loc6_)
                  {
                     var _loc4_:*;
                     §§push((_loc4_ = §§findproperty(§3n§)).§3n§);
                     if(_loc7_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc7_)
                        {
                           addr41:
                           §§push(§§pop());
                           if(!(_loc6_ && param2))
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc5_:* = §§pop();
                           if(_loc7_ || §!>§)
                           {
                              _loc4_.§3n§ = _loc5_;
                           }
                        }
                        if(!(_loc6_ && param1))
                        {
                           §§push(§§pop() % §<!%§);
                           if(_loc7_ || §!>§)
                           {
                              addr89:
                              §§push(Number(§§pop()));
                           }
                           _loc3_ = §§pop();
                           if(_loc7_ || param2)
                           {
                              §'r§[_loc3_] = [param1,param2];
                              loop10:
                              while(true)
                              {
                                 §§push(param2);
                                 loop4:
                                 while(true)
                                 {
                                    §§push(§1!I§);
                                    addr173:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(_loc7_ || _loc3_)
                                       {
                                          if(§§pop())
                                          {
                                             loop6:
                                             while(!§§pop())
                                             {
                                                loop3:
                                                while(true)
                                                {
                                                   addr100:
                                                   while(true)
                                                   {
                                                      §§push(§7T§);
                                                      if(_loc7_)
                                                      {
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(!(_loc6_ && param2))
                                                               {
                                                                  addr111:
                                                                  if(!(_loc7_ || param1))
                                                                  {
                                                                     break loop6;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(!param1)
                                                                     {
                                                                     }
                                                                     addr123:
                                                                     return;
                                                                     §§goto(addr111);
                                                                  }
                                                               }
                                                               while(_loc6_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        if(_loc7_ || §!>§)
                                                                        {
                                                                           continue loop3;
                                                                        }
                                                                        continue loop10;
                                                                     }
                                                                     continue loop4;
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr123);
                                                         }
                                                         addr103:
                                                      }
                                                      else
                                                      {
                                                         addr139:
                                                         while(_loc7_ || §!>§)
                                                         {
                                                            continue loop6;
                                                         }
                                                         addr139:
                                                      }
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                §@!b§();
                                                §§goto(addr150);
                                             }
                                             addr146:
                                          }
                                       }
                                       addr183:
                                       while(true)
                                       {
                                          §§pop();
                                          continue loop4;
                                          §§goto(addr139);
                                       }
                                    }
                                 }
                              }
                              addr98:
                           }
                           §§goto(addr118);
                        }
                        §§goto(addr89);
                     }
                     §§goto(addr41);
                  }
                  §§goto(addr98);
               }
               §§goto(addr100);
            }
            §§goto(addr103);
         }
         §§goto(addr122);
      }
      
      public static function §5!B§(param1:Object, param2:int = 1) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = undefined;
         if(!(_loc7_ && §!>§))
         {
            §§push(§§findproperty(log));
            §§push("Object:");
            if(_loc6_)
            {
               §§push(§§pop() + getQualifiedClassName(param1));
            }
            §§pop().log(§§pop());
         }
         for(_loc3_ in param1)
         {
            if(_loc7_ && param2)
            {
               continue;
            }
            §§push(§§findproperty(log));
            §§push("-[");
            if(_loc6_ || param1)
            {
               §§push(§§pop() + _loc3_);
               if(_loc6_)
               {
                  §§push(§§pop() + "]: ");
                  if(!(_loc7_ && param1))
                  {
                     addr96:
                     §§push(§§pop() + param1[_loc3_]);
                  }
                  §§pop().log(§§pop());
                  continue;
               }
            }
            §§goto(addr96);
         }
      }
      
      private static function §@!b§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:* = false;
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:* = NaN;
         if(!(_loc6_ && _loc3_))
         {
            §§push(§&u§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  if(!_loc6_)
                  {
                     break;
                  }
                  while(true)
                  {
                     loop21:
                     while(_loc5_ || _loc2_)
                     {
                        while(true)
                        {
                           §9!G§.text = "Current channel: ALL";
                           loop20:
                           while(true)
                           {
                              loop11:
                              while(true)
                              {
                                 if(§<4§ != null)
                                 {
                                    loop12:
                                    while(!_loc6_)
                                    {
                                       §#,§.text = §<4§;
                                       loop13:
                                       while(true)
                                       {
                                          if(!(_loc5_ || _loc1_))
                                          {
                                             continue loop21;
                                          }
                                          if(_loc5_)
                                          {
                                             while(true)
                                             {
                                                §§push(true);
                                                addr284:
                                                loop15:
                                                while(!(_loc6_ && _loc2_))
                                                {
                                                   _loc1_ = §§pop();
                                                   loop16:
                                                   while(true)
                                                   {
                                                      if(!(_loc6_ && _loc3_))
                                                      {
                                                         if(§ x§.scrollV != § x§.numLines - int(§ x§.height / (§ x§.textHeight / § x§.numLines)))
                                                         {
                                                            addr281:
                                                            if(_loc5_)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  continue loop13;
                                                               }
                                                               §§push(false);
                                                               if(_loc6_)
                                                               {
                                                                  break;
                                                               }
                                                               if(!_loc5_)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               addr273:
                                                               if(!(_loc6_ && §!>§))
                                                               {
                                                                  _loc1_ = §§pop();
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     addr334:
                                                                     while(true)
                                                                     {
                                                                        break loop15;
                                                                     }
                                                                     §§goto(addr273);
                                                                  }
                                                                  addr363:
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                            }
                                                            addr281:
                                                         }
                                                         while(true)
                                                         {
                                                            _loc2_ = "";
                                                            continue loop16;
                                                            §§goto(addr281);
                                                         }
                                                         addr72:
                                                         §§push(_loc3_);
                                                         if(!_loc6_)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               if(_loc5_ || _loc3_)
                                                               {
                                                                  §§push(§<!%§);
                                                                  if(_loc5_)
                                                                  {
                                                                     if(_loc5_ || _loc1_)
                                                                     {
                                                                        if(§§pop() >= §§pop())
                                                                        {
                                                                           if(!_loc6_)
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 § x§.text = _loc2_;
                                                                                 addr103:
                                                                                 if(!(_loc6_ && §!>§))
                                                                                 {
                                                                                    §§push(_loc1_);
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       if(_loc5_ || §!>§)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                if(_loc5_ || _loc2_)
                                                                                                {
                                                                                                   if(!(_loc6_ && _loc2_))
                                                                                                   {
                                                                                                      § x§.scrollV = § x§.numLines;
                                                                                                      §§goto(addr69);
                                                                                                   }
                                                                                                   addr216:
                                                                                                   if(§'r§[_loc4_] != null)
                                                                                                   {
                                                                                                      addr197:
                                                                                                      §§push(§1!I§ < 0);
                                                                                                      if(!(§1!I§ < 0))
                                                                                                      {
                                                                                                         addr202:
                                                                                                         §§pop();
                                                                                                         addr203:
                                                                                                         §§push(§'r§);
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            §§push(_loc4_);
                                                                                                            if(_loc5_)
                                                                                                            {
                                                                                                               addr144:
                                                                                                               §§push(§§pop()[§§pop()][1] == §1!I§);
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  addr146:
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     addr148:
                                                                                                                     if(!(_loc6_ && _loc1_))
                                                                                                                     {
                                                                                                                        §§push(_loc2_);
                                                                                                                        if(_loc5_ || _loc1_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + (§'r§[_loc4_][0] + "\n"));
                                                                                                                        }
                                                                                                                        _loc2_ = §§pop();
                                                                                                                        addr183:
                                                                                                                        if(!(_loc6_ && _loc2_))
                                                                                                                        {
                                                                                                                           addr111:
                                                                                                                           §§push(_loc3_);
                                                                                                                           if(!(_loc6_ && _loc3_))
                                                                                                                           {
                                                                                                                              if(!_loc6_)
                                                                                                                              {
                                                                                                                                 addr123:
                                                                                                                                 §§push(§§pop() + 1);
                                                                                                                                 if(!_loc6_)
                                                                                                                                 {
                                                                                                                                    addr214:
                                                                                                                                    if(!_loc6_)
                                                                                                                                    {
                                                                                                                                       if(!_loc6_)
                                                                                                                                       {
                                                                                                                                          addr130:
                                                                                                                                          _loc3_ = §§pop();
                                                                                                                                          addr131:
                                                                                                                                          §§goto(addr72);
                                                                                                                                       }
                                                                                                                                       addr210:
                                                                                                                                       §§push(§§pop() + 1);
                                                                                                                                    }
                                                                                                                                    §§push(Number(§§pop() % 500));
                                                                                                                                 }
                                                                                                                                 _loc4_ = §§pop();
                                                                                                                                 §§goto(addr216);
                                                                                                                              }
                                                                                                                              addr208:
                                                                                                                              §§goto(addr210);
                                                                                                                              §§push(§§pop() + _loc3_);
                                                                                                                           }
                                                                                                                           §§goto(addr214);
                                                                                                                        }
                                                                                                                        §§goto(addr197);
                                                                                                                     }
                                                                                                                     §§goto(addr203);
                                                                                                                  }
                                                                                                                  §§goto(addr111);
                                                                                                               }
                                                                                                               §§goto(addr202);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr216);
                                                                                                      }
                                                                                                      §§goto(addr146);
                                                                                                   }
                                                                                                   §§goto(addr111);
                                                                                                }
                                                                                                §§goto(addr148);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr69);
                                                                                       }
                                                                                       §§goto(addr197);
                                                                                    }
                                                                                    §§goto(addr144);
                                                                                 }
                                                                                 §§goto(addr183);
                                                                              }
                                                                              §§goto(addr131);
                                                                           }
                                                                           §§goto(addr103);
                                                                        }
                                                                        §§goto(addr208);
                                                                        §§push(§3n§);
                                                                     }
                                                                     §§goto(addr210);
                                                                  }
                                                                  §§goto(addr214);
                                                               }
                                                               §§goto(addr111);
                                                            }
                                                            §§goto(addr123);
                                                         }
                                                         §§goto(addr130);
                                                         addr232:
                                                      }
                                                      addr336:
                                                      while(true)
                                                      {
                                                         §§push(§1!I§);
                                                         addr337:
                                                         while(true)
                                                         {
                                                            if(§§pop() >= 0)
                                                            {
                                                               §9!G§.text = "Current channel: " + §1!I§;
                                                               break loop12;
                                                            }
                                                            continue loop21;
                                                         }
                                                      }
                                                   }
                                                }
                                                while(§§pop())
                                                {
                                                   §§goto(addr336);
                                                   §§goto(addr284);
                                                }
                                                addr69:
                                                if(!_loc5_)
                                                {
                                                   §§goto(addr103);
                                                }
                                                return;
                                             }
                                             addr282:
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                             }
                                             addr373:
                                          }
                                          §§goto(addr334);
                                       }
                                       continue loop21;
                                    }
                                    while(true)
                                    {
                                       if(_loc5_)
                                       {
                                          continue loop11;
                                       }
                                       continue loop20;
                                    }
                                 }
                                 §§goto(addr282);
                              }
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  §§goto(addr363);
               }
            }
            return;
         }
         §§goto(addr356);
      }
      
      public static function §?!S§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!_loc8_)
         {
            if(§&u§)
            {
               loop0:
               while(true)
               {
                  § !w§ = new Sprite();
                  loop1:
                  while(_loc9_)
                  {
                     loop2:
                     while(true)
                     {
                        § !w§.visible = false;
                        addr41:
                        while(true)
                        {
                           param1.addChild(§ !w§);
                           if(!_loc8_)
                           {
                              if(_loc9_)
                              {
                                 if(_loc9_ || §!>§)
                                 {
                                    if(true)
                                    {
                                       break;
                                    }
                                    continue loop2;
                                 }
                                 continue loop0;
                              }
                              continue loop1;
                           }
                        }
                        var _loc7_:Graphics;
                        (_loc7_ = § !w§.graphics).beginFill(16777215,0);
                        if(!_loc8_)
                        {
                           _loc7_.drawRect(0,0,1000,1000);
                           while(true)
                           {
                              _loc7_.endFill();
                              while(true)
                              {
                                 _loc7_.beginFill(16777215,0.4);
                                 loop6:
                                 while(_loc9_)
                                 {
                                    _loc7_.drawRect(param2,param3,param4,param5);
                                    loop7:
                                    while(true)
                                    {
                                       _loc7_.endFill();
                                       loop8:
                                       while(true)
                                       {
                                          § x§ = new TextField();
                                          loop9:
                                          while(true)
                                          {
                                             § x§.width = param4;
                                             loop10:
                                             while(true)
                                             {
                                                § x§.height = param5 - 40;
                                                while(true)
                                                {
                                                   § x§.x = param2;
                                                   loop12:
                                                   for(; _loc9_; if(_loc9_ || §!>§)
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         continue loop10;
                                                      }
                                                      if(param6 >= 0)
                                                      {
                                                         if(!(_loc8_ && §!>§))
                                                         {
                                                            addr89:
                                                            if(_loc8_ && §!>§)
                                                            {
                                                               while(true)
                                                               {
                                                                  if(_loc9_)
                                                                  {
                                                                     §§goto(addr130);
                                                                  }
                                                                  §§goto(addr153);
                                                                  §§goto(addr89);
                                                               }
                                                               §§goto(addr194);
                                                               addr128:
                                                            }
                                                            if(_loc9_)
                                                            {
                                                               §§goto(addr98);
                                                            }
                                                            §§goto(addr183);
                                                         }
                                                         §§goto(addr109);
                                                      }
                                                      param1.addChild(§ !w§);
                                                      if(!_loc9_)
                                                      {
                                                         §§goto(addr109);
                                                      }
                                                      addr65:
                                                   },continue,while(true)
                                                   {
                                                      if(!(_loc8_ && param1))
                                                      {
                                                         if(!_loc8_)
                                                         {
                                                            § !w§.addChild(§#,§);
                                                            while(!_loc8_)
                                                            {
                                                               continue loop9;
                                                            }
                                                            while(true)
                                                            {
                                                               §9!G§.x = param2;
                                                            }
                                                            addr278:
                                                            addr153:
                                                         }
                                                         while(!(_loc8_ && param3))
                                                         {
                                                            §9!G§.y = param3;
                                                         }
                                                         while(true)
                                                         {
                                                            §9!G§.width = param4;
                                                            addr283:
                                                            while(true)
                                                            {
                                                               §9!G§.height = 20;
                                                               §§goto(addr278);
                                                            }
                                                            §§goto(addr266);
                                                         }
                                                         addr266:
                                                         addr289:
                                                      }
                                                      addr254:
                                                      addr351:
                                                      while(!(_loc8_ && param2))
                                                      {
                                                         § !w§.addChild(§9!G§);
                                                         continue loop30;
                                                      }
                                                      while(true)
                                                      {
                                                         §]o§.width = param4 / 2;
                                                         §§goto(addr346);
                                                         §§goto(addr254);
                                                      }
                                                      §§goto(addr109);
                                                   },addr65:,return)
                                                   {
                                                      § x§.y = param3 + 40;
                                                      loop13:
                                                      while(true)
                                                      {
                                                         § x§.wordWrap = true;
                                                         loop14:
                                                         while(true)
                                                         {
                                                            § !w§.addChild(§ x§);
                                                            loop15:
                                                            while(true)
                                                            {
                                                               §]o§ = new TextField();
                                                               while(true)
                                                               {
                                                                  §]o§.x = param2 + param4 / 2;
                                                                  continue loop14;
                                                                  loop22:
                                                                  while(!(_loc8_ && §!>§))
                                                                  {
                                                                     §]o§.borderColor = 16711680;
                                                                     loop23:
                                                                     while(_loc9_)
                                                                     {
                                                                        continue loop8;
                                                                        loop30:
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc8_ && param1))
                                                                           {
                                                                              addr233:
                                                                              if(_loc9_ || param1)
                                                                              {
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    continue loop7;
                                                                                 }
                                                                                 addr346:
                                                                                 while(true)
                                                                                 {
                                                                                    §]o§.height = 20;
                                                                                    break loop30;
                                                                                 }
                                                                              }
                                                                              break;
                                                                           }
                                                                           continue loop23;
                                                                           addr98:
                                                                           if(_loc8_ && param3)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           param1.addChildAt(§ !w§,param6);
                                                                           addr109:
                                                                           if(_loc9_ || param1)
                                                                           {
                                                                              addr116:
                                                                              if(!(_loc9_ || §!>§))
                                                                              {
                                                                                 loop32:
                                                                                 while(true)
                                                                                 {
                                                                                    §#,§.height = 20;
                                                                                    addr194:
                                                                                    while(true)
                                                                                    {
                                                                                       §#,§.x = param2;
                                                                                       addr183:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   continue loop6;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §#,§.y = param3 + 20;
                                                                                                   addr169:
                                                                                                   §§goto(addr65);
                                                                                                }
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          addr205:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                addr207:
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §#,§.width = param4;
                                                                                                   continue loop32;
                                                                                                }
                                                                                                continue loop15;
                                                                                             }
                                                                                          }
                                                                                          continue loop14;
                                                                                          §§goto(addr283);
                                                                                       }
                                                                                       addr334:
                                                                                       addr130:
                                                                                       while(true)
                                                                                       {
                                                                                          §]o§.border = true;
                                                                                          continue loop22;
                                                                                       }
                                                                                       if(_loc9_ || §!>§)
                                                                                       {
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             continue loop12;
                                                                                          }
                                                                                          continue loop22;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr65);
                                                                           }
                                                                           §§goto(addr169);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §]o§.text = "LOGGER CAPTURING INPUT, F4";
                                                                           §§goto(addr334);
                                                                           §§goto(addr233);
                                                                        }
                                                                     }
                                                                     continue loop13;
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
                                 }
                              }
                           }
                        }
                        §§goto(addr189);
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr41);
      }
      
      public static function §#!X§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(§&u§)
            {
               loop0:
               while(true)
               {
                  §6!2§ = param1;
                  loop1:
                  while(true)
                  {
                     § !w§.mouseChildren = §6!2§;
                     loop2:
                     while(!(_loc2_ && §!>§))
                     {
                        § !w§.mouseEnabled = §6!2§;
                        do
                        {
                           §9!G§.mouseEnabled = §6!2§;
                           loop4:
                           do
                           {
                              §#,§.mouseEnabled = §6!2§;
                              for(; _loc3_; while(!(_loc2_ && §!>§))
                              {
                                 §]o§.visible = §6!2§;
                                 if(!_loc2_)
                                 {
                                    continue loop4;
                                 }
                              })
                              {
                                 if(!(_loc3_ || param1))
                                 {
                                    continue loop1;
                                 }
                                 if(!(_loc2_ && param1))
                                 {
                                    § x§.mouseEnabled = §6!2§;
                                    continue;
                                 }
                              }
                              continue loop2;
                           }
                           while(_loc2_);
                           
                        }
                        while(_loc2_ && _loc3_);
                        
                        return;
                     }
                     continue loop0;
                  }
               }
            }
            return;
         }
         §§goto(addr123);
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(§&u§)
            {
               return;
            }
         }
      }
      
      public static function §5r§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || §!>§)
         {
            §7W§ = param1;
            while(true)
            {
               §#G§ = param2;
               §§goto(addr56);
            }
         }
         addr56:
         while(true)
         {
            §"@§ = param3;
            if(_loc5_)
            {
               if(_loc5_ || §!>§)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public static function §,!P§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §<4§ = param1;
         }
      }
   }
}
