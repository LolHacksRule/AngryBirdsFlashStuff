package §5t§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class Log
   {
      
      public static const §0"i§:Boolean = true;
      
      public static const §!"§:Boolean = true;
      
      public static const §%#H§:int = 0;
      
      public static const §7#a§:int = 1;
      
      public static const §]Y§:int = 500;
      
      private static var §!"X§:Array = null;
      
      private static var §'#+§:Number = 0;
      
      public static var § #N§:int = 112;
      
      public static var §##-§:int = 114;
      
      public static var §^"=§:int = 113;
      
      public static var § #X§:int = 115;
      
      public static var §"#W§:Boolean = false;
      
      public static var §?!n§:Sprite = null;
      
      private static var §;#Y§:TextField = null;
      
      private static var §&"O§:TextField = null;
      
      private static var §21§:TextField = null;
      
      private static var § "'§:TextField = null;
      
      public static var §7"j§:int = -1;
      
      public static var §,#1§:String = "version: Unknown";
      
      public static var §<"a§:String = "";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §0"i§ = true;
            while(true)
            {
               §!"§ = true;
               loop1:
               while(true)
               {
                  §%#H§ = 0;
                  while(true)
                  {
                     §7#a§ = 1;
                     loop3:
                     for(; _loc1_ || _loc1_; if(!(_loc2_ && _loc1_))
                     {
                        continue loop1;
                     })
                     {
                        §]Y§ = 500;
                        loop4:
                        while(true)
                        {
                           §!"X§ = null;
                           while(true)
                           {
                              §'#+§ = 0;
                              loop6:
                              while(true)
                              {
                                 § #N§ = Keyboard.F1;
                                 while(true)
                                 {
                                    §##-§ = Keyboard.F3;
                                    loop8:
                                    while(true)
                                    {
                                       §^"=§ = Keyboard.F2;
                                       loop9:
                                       while(true)
                                       {
                                          § #X§ = Keyboard.F4;
                                          loop10:
                                          while(true)
                                          {
                                             §"#W§ = false;
                                             addr174:
                                             while(true)
                                             {
                                                §?!n§ = null;
                                                loop12:
                                                while(true)
                                                {
                                                   §;#Y§ = null;
                                                   loop13:
                                                   while(true)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         continue loop3;
                                                      }
                                                      continue loop6;
                                                      addr107:
                                                      if(!(_loc2_ && Log))
                                                      {
                                                         if(_loc1_)
                                                         {
                                                            §,#1§ = "version: Unknown";
                                                            while(true)
                                                            {
                                                               if(!_loc2_)
                                                               {
                                                                  if(!_loc1_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop9;
                                                               }
                                                               loop17:
                                                               while(true)
                                                               {
                                                                  if(_loc2_ && _loc2_)
                                                                  {
                                                                     loop15:
                                                                     while(_loc1_)
                                                                     {
                                                                        § "'§ = null;
                                                                        do
                                                                        {
                                                                           §7"j§ = -1;
                                                                           continue loop17;
                                                                        }
                                                                        while(_loc2_ && _loc2_);
                                                                        
                                                                        addr52:
                                                                        if(!_loc1_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §21§ = null;
                                                                              continue loop15;
                                                                              continue loop17;
                                                                              §§goto(addr52);
                                                                           }
                                                                           addr143:
                                                                        }
                                                                        continue loop8;
                                                                     }
                                                                     continue loop4;
                                                                  }
                                                                  §§goto(addr107);
                                                               }
                                                               continue loop13;
                                                               addr38:
                                                               if(!(_loc1_ || _loc2_))
                                                               {
                                                                  continue;
                                                               }
                                                               §§goto(addr45);
                                                            }
                                                            continue loop12;
                                                         }
                                                         continue loop10;
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
                     }
                  }
                  if(_loc2_ && Log)
                  {
                     continue;
                  }
                  §&"O§ = null;
                  §§goto(addr143);
               }
               if(_loc2_ && _loc2_)
               {
                  continue;
               }
               §§goto(addr77);
            }
         }
         §§goto(addr213);
      }
      
      public function Log()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
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
            if(!§0"i§)
            {
               if(!_loc2_)
               {
                  §§goto(addr66);
               }
               else
               {
                  while(true)
                  {
                     §§goto(addr38);
                  }
               }
            }
            addr38:
            while(true)
            {
               §!"X§ = new Array(§]Y§);
               if(!(_loc2_ && Log))
               {
                  break;
               }
               continue loop0;
            }
            return;
         }
         addr66:
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = NaN;
         if(_loc6_ || param2)
         {
            §§push(§0"i§);
            if(_loc6_)
            {
               if(§§pop())
               {
                  if(!_loc7_)
                  {
                     var _loc4_:*;
                     §§push((_loc4_ = §§findproperty(§'#+§)).§'#+§);
                     if(!(_loc7_ && param2))
                     {
                        §§push(Number(§§pop()));
                        if(_loc6_ || param1)
                        {
                           addr50:
                           §§push(§§pop());
                           if(_loc6_)
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc5_:* = §§pop();
                           if(!_loc7_)
                           {
                              _loc4_.§'#+§ = _loc5_;
                           }
                        }
                        if(!_loc7_)
                        {
                           §§push(§§pop() % §]Y§);
                           if(_loc6_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        _loc3_ = §§pop();
                        if(!(_loc7_ && Log))
                        {
                           §!"X§[_loc3_] = [param1,param2];
                           loop0:
                           while(true)
                           {
                              §§push(param2);
                              loop1:
                              while(true)
                              {
                                 §§push(§7"j§);
                                 addr149:
                                 while(true)
                                 {
                                    §§push(§§pop() == §§pop());
                                    addr150:
                                    loop3:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          loop7:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                while(true)
                                                {
                                                   §4!J§();
                                                   addr143:
                                                   while(!_loc7_)
                                                   {
                                                   }
                                                   continue loop1;
                                                   addr106:
                                                   if(!(_loc7_ && Log))
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         addr116:
                                                         return;
                                                         addr115:
                                                      }
                                                      continue loop0;
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                addr89:
                                                while(true)
                                                {
                                                   §§push(§!"§);
                                                   if(_loc7_)
                                                   {
                                                      while(_loc6_ || param1)
                                                      {
                                                         continue loop7;
                                                      }
                                                      continue loop3;
                                                      addr132:
                                                   }
                                                   if(_loc6_)
                                                   {
                                                      while(§§pop())
                                                      {
                                                         if(!(_loc7_ && param1))
                                                         {
                                                            if(!param1)
                                                            {
                                                            }
                                                            break;
                                                         }
                                                         if(!_loc7_)
                                                         {
                                                            §§goto(addr106);
                                                         }
                                                         §§goto(addr143);
                                                      }
                                                      §§goto(addr116);
                                                      addr94:
                                                   }
                                                }
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
                           addr87:
                        }
                        §§goto(addr115);
                     }
                     §§goto(addr50);
                  }
                  §§goto(addr87);
               }
               §§goto(addr89);
            }
            §§goto(addr94);
         }
         §§goto(addr116);
      }
      
      public static function §9u§(param1:Object, param2:int = 1) : void
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
            if(!(_loc6_ && param2))
            {
               §§push(§§findproperty(log));
               §§push("-[" + _loc3_);
               if(!(_loc6_ && param1))
               {
                  §§push(§§pop() + "]: ");
                  if(!_loc6_)
                  {
                     §§push(§§pop() + param1[_loc3_]);
                  }
               }
               §§pop().log(§§pop());
            }
         }
      }
      
      private static function §4!J§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:* = false;
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:* = NaN;
         if(!(_loc5_ && _loc3_))
         {
            §§push(§0"i§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(Boolean(§?!n§));
                     loop2:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              §§pop();
                              while(true)
                              {
                                 §§push(Boolean(§?!n§.visible));
                                 while(true)
                                 {
                                    if(_loc5_)
                                    {
                                       continue loop3;
                                    }
                                    if(_loc5_)
                                    {
                                       break;
                                    }
                                    addr295:
                                    if(!(_loc6_ || _loc3_))
                                    {
                                       continue;
                                    }
                                    _loc1_ = §§pop();
                                    loop20:
                                    while(true)
                                    {
                                       if(_loc6_ || _loc3_)
                                       {
                                          loop14:
                                          while(true)
                                          {
                                             _loc2_ = "";
                                             while(true)
                                             {
                                                if(_loc5_ && _loc2_)
                                                {
                                                   continue loop20;
                                                }
                                                if(_loc6_)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      §§goto(addr404);
                                                   }
                                                   §§push(0);
                                                   if(_loc6_ || _loc3_)
                                                   {
                                                      _loc3_ = §§pop();
                                                      if(!(_loc6_ || Log))
                                                      {
                                                         continue;
                                                      }
                                                      if(!(_loc5_ && _loc3_))
                                                      {
                                                         addr71:
                                                         §§push(_loc3_);
                                                         if(!(_loc5_ && _loc2_))
                                                         {
                                                            if(_loc6_ || _loc1_)
                                                            {
                                                               if(!(_loc5_ && Log))
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     §§push(§]Y§);
                                                                     if(_loc6_ || Log)
                                                                     {
                                                                        if(§§pop() >= §§pop())
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 §;#Y§.text = _loc2_;
                                                                                 addr112:
                                                                                 §§push(_loc1_);
                                                                                 if(_loc6_ || _loc1_)
                                                                                 {
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!(_loc5_ && _loc2_))
                                                                                          {
                                                                                             if(_loc6_ || Log)
                                                                                             {
                                                                                                §;#Y§.scrollV = §;#Y§.numLines;
                                                                                             }
                                                                                             §§goto(addr112);
                                                                                          }
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             addr178:
                                                                                             §§push(_loc3_ + 1);
                                                                                             if(_loc6_ || _loc3_)
                                                                                             {
                                                                                                addr231:
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   addr126:
                                                                                                   _loc3_ = §§pop();
                                                                                                   addr127:
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      §§goto(addr71);
                                                                                                   }
                                                                                                   addr201:
                                                                                                   if(_loc6_ || Log)
                                                                                                   {
                                                                                                      §§push(§!"X§);
                                                                                                      if(!(_loc5_ && _loc1_))
                                                                                                      {
                                                                                                         §§push(_loc4_);
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            addr147:
                                                                                                            §§push(§§pop()[§§pop()][1] == §7"j§);
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               addr149:
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  if(_loc6_ || _loc2_)
                                                                                                                  {
                                                                                                                     if(!_loc5_)
                                                                                                                     {
                                                                                                                        §§push(_loc2_);
                                                                                                                        if(_loc6_ || _loc2_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + (§!"X§[_loc4_][0] + "\n"));
                                                                                                                        }
                                                                                                                        _loc2_ = §§pop();
                                                                                                                        §§goto(addr178);
                                                                                                                     }
                                                                                                                     addr185:
                                                                                                                     §§push(§7"j§ < 0);
                                                                                                                     if(!(§7"j§ < 0))
                                                                                                                     {
                                                                                                                        addr190:
                                                                                                                        §§pop();
                                                                                                                        §§goto(addr201);
                                                                                                                     }
                                                                                                                     §§goto(addr149);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr178);
                                                                                                            }
                                                                                                            §§goto(addr190);
                                                                                                         }
                                                                                                         addr182:
                                                                                                         if(§§pop()[§§pop()] != null)
                                                                                                         {
                                                                                                            §§goto(addr185);
                                                                                                         }
                                                                                                         §§goto(addr178);
                                                                                                      }
                                                                                                      addr181:
                                                                                                      §§goto(addr182);
                                                                                                      §§push(_loc4_);
                                                                                                   }
                                                                                                   §§goto(addr181);
                                                                                                   §§push(§!"X§);
                                                                                                }
                                                                                                _loc4_ = §§pop();
                                                                                                §§goto(addr201);
                                                                                             }
                                                                                             §§goto(addr126);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr34);
                                                                                    }
                                                                                    §§goto(addr185);
                                                                                 }
                                                                                 §§goto(addr147);
                                                                              }
                                                                              §§goto(addr127);
                                                                           }
                                                                           §§goto(addr112);
                                                                        }
                                                                        §§push(§'#+§);
                                                                        if(!_loc5_)
                                                                        {
                                                                           addr217:
                                                                           §§push(§§pop() + _loc3_);
                                                                           §§push(1);
                                                                           if(!(_loc5_ && _loc1_))
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!_loc5_)
                                                                              {
                                                                                 addr229:
                                                                                 §§push(Number(§§pop() % 500));
                                                                              }
                                                                              §§goto(addr231);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr229);
                                                                  }
                                                                  §§goto(addr217);
                                                               }
                                                               §§goto(addr229);
                                                            }
                                                            §§goto(addr178);
                                                         }
                                                         §§goto(addr126);
                                                      }
                                                      else
                                                      {
                                                         addr292:
                                                         while(true)
                                                         {
                                                            §§push(false);
                                                            if(!_loc6_)
                                                            {
                                                               while(_loc6_)
                                                               {
                                                                  _loc1_ = §§pop();
                                                                  break loop14;
                                                               }
                                                               continue loop0;
                                                               addr313:
                                                            }
                                                            §§goto(addr295);
                                                         }
                                                         addr292:
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      if(§§pop() >= 0)
                                                      {
                                                         §21§.text = "Current channel: " + §7"j§;
                                                         loop9:
                                                         while(true)
                                                         {
                                                            addr319:
                                                            loop10:
                                                            while(§,#1§ != null)
                                                            {
                                                               if(_loc6_ || _loc3_)
                                                               {
                                                                  continue loop9;
                                                               }
                                                               addr349:
                                                               addr349:
                                                               addr349:
                                                               while(true)
                                                               {
                                                                  break loop10;
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr313);
                                                               §§goto(addr349);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr372);
                                                   }
                                                }
                                                §§goto(addr349);
                                             }
                                             continue loop20;
                                          }
                                          addr259:
                                       }
                                       while(_loc6_)
                                       {
                                          if(§;#Y§.scrollV == §;#Y§.numLines - int(§;#Y§.height / (§;#Y§.textHeight / §;#Y§.numLines)))
                                          {
                                             §§goto(addr259);
                                          }
                                          §§goto(addr292);
                                          continue loop20;
                                       }
                                       addr369:
                                       while(true)
                                       {
                                          §§goto(addr370);
                                       }
                                    }
                                 }
                                 continue loop2;
                              }
                           }
                        }
                        while(§§pop())
                        {
                           §§goto(addr369);
                        }
                        addr34:
                        return;
                     }
                  }
               }
               addr404:
               return;
            }
         }
         §§goto(addr292);
      }
      
      public static function §!"7§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!_loc9_)
         {
            if(!§0"i§)
            {
               if(!(_loc9_ && param1))
               {
                  §§goto(addr66);
               }
               else
               {
                  while(true)
                  {
                     addr37:
                     if(_loc9_ && param1)
                     {
                        continue;
                     }
                     if(false)
                     {
                        while(true)
                        {
                           §?!n§.visible = false;
                           do
                           {
                              param1.addChild(§?!n§);
                           }
                           while(!(_loc8_ || Log));
                           
                           if(!(_loc8_ || param3))
                           {
                              break;
                           }
                           §§goto(addr37);
                        }
                        while(true)
                        {
                           §§goto(addr46);
                        }
                        addr46:
                        addr56:
                     }
                     var _loc7_:Graphics;
                     (_loc7_ = §?!n§.graphics).beginFill(16777215,0);
                     if(_loc8_ || param2)
                     {
                        _loc7_.drawRect(0,0,1000,1000);
                        _loc7_.endFill();
                        _loc7_.beginFill(16777215,0.4);
                        _loc7_.drawRect(param2,param3,param4,param5);
                        _loc7_.endFill();
                        §;#Y§ = new TextField();
                        §;#Y§.width = param4;
                        §;#Y§.height = param5 - 40;
                        §;#Y§.x = param2;
                        §;#Y§.y = param3 + 40;
                        §;#Y§.wordWrap = true;
                        addr443:
                        addr478:
                        addr498:
                        addr484:
                        addr470:
                        addr455:
                        addr448:
                        addr505:
                        addr466:
                        if(!_loc9_)
                        {
                           §?!n§.addChild(§;#Y§);
                           §&"O§ = new TextField();
                           addr410:
                           addr429:
                           if(!(_loc9_ && param3))
                           {
                              if(_loc8_ || param2)
                              {
                                 §&"O§.x = param2 + param4 / 2;
                                 §&"O§.y = param3;
                                 §&"O§.width = param4 / 2;
                                 §&"O§.height = 20;
                                 addr390:
                                 addr404:
                                 addr395:
                                 if(!_loc9_)
                                 {
                                    if(!(_loc9_ && param1))
                                    {
                                       §&"O§.text = "LOGGER CAPTURING INPUT, F4";
                                       addr367:
                                       if(_loc8_)
                                       {
                                          §&"O§.border = true;
                                          §&"O§.borderColor = 16711680;
                                          §?!n§.addChild(§&"O§);
                                          addr357:
                                          addr362:
                                          if(_loc8_ || param3)
                                          {
                                             §21§ = new TextField();
                                             addr338:
                                             if(_loc8_)
                                             {
                                                §21§.width = param4;
                                                addr323:
                                                if(!(_loc9_ && param2))
                                                {
                                                   if(_loc8_)
                                                   {
                                                      §21§.height = 20;
                                                      addr311:
                                                      if(!(_loc9_ && Log))
                                                      {
                                                         §21§.x = param2;
                                                         §21§.y = param3;
                                                         §?!n§.addChild(§21§);
                                                         § "'§ = new TextField();
                                                         addr296:
                                                         addr301:
                                                         addr306:
                                                         if(!_loc9_)
                                                         {
                                                            if(_loc8_)
                                                            {
                                                               if(_loc8_)
                                                               {
                                                                  § "'§.width = param4;
                                                                  addr265:
                                                                  if(!(_loc9_ && param2))
                                                                  {
                                                                     if(!(_loc9_ && param1))
                                                                     {
                                                                        § "'§.height = 20;
                                                                        addr234:
                                                                        if(_loc8_ || param1)
                                                                        {
                                                                           if(_loc8_ || Log)
                                                                           {
                                                                              if(!_loc9_)
                                                                              {
                                                                                 § "'§.x = param2;
                                                                                 addr222:
                                                                                 if(_loc8_ || Log)
                                                                                 {
                                                                                    § "'§.y = param3 + 20;
                                                                                    addr203:
                                                                                    if(_loc8_ || Log)
                                                                                    {
                                                                                       if(!(_loc9_ && Log))
                                                                                       {
                                                                                          §?!n§.addChild(§ "'§);
                                                                                          addr175:
                                                                                          if(_loc8_ || param1)
                                                                                          {
                                                                                             if(!(_loc9_ && param3))
                                                                                             {
                                                                                                if(_loc8_ || param3)
                                                                                                {
                                                                                                   §6"<§(§"#W§);
                                                                                                   addr156:
                                                                                                   if(!(_loc9_ && param1))
                                                                                                   {
                                                                                                      if(_loc8_ || Log)
                                                                                                      {
                                                                                                         if(param6 >= 0)
                                                                                                         {
                                                                                                            addr115:
                                                                                                            if(!(_loc9_ && param3))
                                                                                                            {
                                                                                                               if(!(_loc9_ && Log))
                                                                                                               {
                                                                                                                  if(_loc8_)
                                                                                                                  {
                                                                                                                     if(_loc8_)
                                                                                                                     {
                                                                                                                        param1.addChildAt(§?!n§,param6);
                                                                                                                        addr137:
                                                                                                                        if(!(_loc9_ && param3))
                                                                                                                        {
                                                                                                                           if(!(_loc8_ || param2))
                                                                                                                           {
                                                                                                                              §§goto(addr390);
                                                                                                                           }
                                                                                                                           §§goto(addr84);
                                                                                                                        }
                                                                                                                        §§goto(addr296);
                                                                                                                     }
                                                                                                                     §§goto(addr404);
                                                                                                                  }
                                                                                                                  §§goto(addr203);
                                                                                                               }
                                                                                                               §§goto(addr175);
                                                                                                            }
                                                                                                            §§goto(addr156);
                                                                                                         }
                                                                                                         param1.addChild(§?!n§);
                                                                                                         if(!(_loc9_ && param2))
                                                                                                         {
                                                                                                            if(!_loc9_)
                                                                                                            {
                                                                                                               if(_loc9_ && param3)
                                                                                                               {
                                                                                                                  §§goto(addr357);
                                                                                                               }
                                                                                                               addr84:
                                                                                                               return;
                                                                                                            }
                                                                                                            §§goto(addr115);
                                                                                                         }
                                                                                                         §§goto(addr137);
                                                                                                      }
                                                                                                      §§goto(addr443);
                                                                                                   }
                                                                                                   §§goto(addr395);
                                                                                                }
                                                                                                §§goto(addr410);
                                                                                             }
                                                                                             §§goto(addr323);
                                                                                          }
                                                                                          §§goto(addr301);
                                                                                       }
                                                                                       §§goto(addr357);
                                                                                    }
                                                                                    §§goto(addr222);
                                                                                 }
                                                                                 §§goto(addr234);
                                                                              }
                                                                              §§goto(addr478);
                                                                           }
                                                                           §§goto(addr296);
                                                                        }
                                                                        §§goto(addr265);
                                                                     }
                                                                     §§goto(addr498);
                                                                  }
                                                                  §§goto(addr306);
                                                               }
                                                               §§goto(addr367);
                                                            }
                                                            §§goto(addr338);
                                                         }
                                                         §§goto(addr311);
                                                      }
                                                      §§goto(addr362);
                                                   }
                                                   §§goto(addr484);
                                                }
                                                §§goto(addr443);
                                             }
                                             §§goto(addr470);
                                          }
                                          §§goto(addr390);
                                       }
                                       §§goto(addr429);
                                    }
                                    §§goto(addr455);
                                 }
                                 §§goto(addr448);
                                 addr424:
                              }
                              §§goto(addr505);
                           }
                           §§goto(addr466);
                        }
                        addr460:
                        §§goto(addr460);
                     }
                     §§goto(addr424);
                  }
                  addr67:
               }
            }
            while(true)
            {
               §?!n§ = new Sprite();
               §§goto(addr56);
               §§goto(addr67);
            }
         }
         addr66:
      }
      
      public static function §6"<§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(§0"i§)
            {
               loop0:
               while(true)
               {
                  §"#W§ = param1;
                  while(true)
                  {
                     §?!n§.mouseChildren = §"#W§;
                     while(_loc3_)
                     {
                        §?!n§.mouseEnabled = §"#W§;
                        loop3:
                        while(!(_loc2_ && param1))
                        {
                           §21§.mouseEnabled = §"#W§;
                           while(!_loc2_)
                           {
                              § "'§.mouseEnabled = §"#W§;
                              continue loop3;
                              loop5:
                              while(!(_loc2_ && _loc2_))
                              {
                                 §;#Y§.mouseEnabled = §"#W§;
                                 while(!(_loc2_ && _loc3_))
                                 {
                                    §&"O§.visible = §"#W§;
                                    if(_loc2_ && param1)
                                    {
                                       continue;
                                    }
                                    if(_loc2_)
                                    {
                                       continue loop5;
                                    }
                                    §§goto(addr37);
                                 }
                                 return;
                              }
                              if(_loc3_ || _loc2_)
                              {
                                 return;
                              }
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
            §§goto(addr122);
         }
         §§goto(addr123);
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(§0"i§)
            {
               return;
            }
         }
      }
      
      public static function §9#M§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param1))
         {
            § #N§ = param1;
         }
         do
         {
            §^"=§ = param2;
            do
            {
               §##-§ = param3;
            }
            while(!(_loc5_ || Log));
            
         }
         while(!_loc5_);
         
      }
      
      public static function §#!4§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §,#1§ = param1;
         }
      }
   }
}
