package §6o§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §+!k§
   {
      
      public static const §7S§:Boolean = true;
      
      public static const §6!C§:Boolean = true;
      
      public static const §?U§:int = 0;
      
      public static const §<l§:int = 1;
      
      public static const §1!X§:int = 500;
      
      private static var §&!R§:Array = null;
      
      private static var §@!+§:Number = 0;
      
      public static var §4e§:int = 112;
      
      public static var §set §:int = 114;
      
      public static var §'y§:int = 113;
      
      public static var §5!0§:int = 115;
      
      public static var §=8§:Boolean = false;
      
      public static var §1"F§:Sprite = null;
      
      private static var §'!a§:TextField = null;
      
      private static var §6!%§:TextField = null;
      
      private static var §>!_§:TextField = null;
      
      private static var §]!Y§:TextField = null;
      
      public static var §>O§:int = -1;
      
      public static var § n§:String = "version: Unknown";
      
      public static var §9>§:String = "";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §7S§ = true;
            while(true)
            {
               §6!C§ = true;
               addr234:
               while(!_loc1_)
               {
               }
            }
         }
         while(true)
         {
            §?U§ = 0;
            loop3:
            while(!_loc1_)
            {
               §<l§ = 1;
               loop4:
               while(true)
               {
                  §1!X§ = 500;
                  while(true)
                  {
                     §&!R§ = null;
                     loop6:
                     while(!(_loc1_ && §+!k§))
                     {
                        §@!+§ = 0;
                        continue loop4;
                        addr116:
                        if(!(_loc2_ || _loc1_))
                        {
                           continue;
                        }
                        §>!_§ = null;
                        loop16:
                        while(!(_loc1_ && §+!k§))
                        {
                           §]!Y§ = null;
                           while(true)
                           {
                              if(_loc1_ && §+!k§)
                              {
                                 continue loop16;
                              }
                              if(_loc2_)
                              {
                                 if(_loc2_)
                                 {
                                    if(!_loc2_)
                                    {
                                       break;
                                    }
                                    §>O§ = -1;
                                    loop18:
                                    while(true)
                                    {
                                       § n§ = "version: Unknown";
                                       while(true)
                                       {
                                          if(!(_loc2_ || _loc2_))
                                          {
                                             continue loop18;
                                          }
                                          addr55:
                                          if(_loc2_ || §+!k§)
                                          {
                                             if(!_loc2_)
                                             {
                                                break;
                                             }
                                             continue;
                                          }
                                          while(true)
                                          {
                                             §6!%§ = null;
                                             addr114:
                                             while(true)
                                             {
                                                if(_loc2_)
                                                {
                                                   §§goto(addr116);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      §5!0§ = Keyboard.F4;
                                                      while(!_loc1_)
                                                      {
                                                         §=8§ = false;
                                                         while(!(_loc1_ && _loc1_))
                                                         {
                                                            §1"F§ = null;
                                                            break loop16;
                                                         }
                                                      }
                                                      continue loop3;
                                                   }
                                                   addr159:
                                                }
                                             }
                                             continue loop6;
                                             §§goto(addr55);
                                          }
                                       }
                                       addr165:
                                       addr178:
                                       while(_loc2_ || _loc1_)
                                       {
                                          §'y§ = Keyboard.F2;
                                          §§goto(addr159);
                                       }
                                       while(true)
                                       {
                                          §set § = Keyboard.F3;
                                          §§goto(addr165);
                                       }
                                    }
                                 }
                                 §§goto(addr138);
                              }
                              §§goto(addr114);
                           }
                           continue loop4;
                        }
                        while(true)
                        {
                           §'!a§ = null;
                           §§goto(addr128);
                           §§goto(addr92);
                        }
                        addr92:
                     }
                  }
               }
            }
            §§goto(addr234);
         }
      }
      
      public function §+!k§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      public static function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §+!k§))
         {
            if(!§7S§)
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
               §&!R§ = new Array(§1!X§);
               if(!_loc1_)
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
         if(_loc7_ || §+!k§)
         {
            §§push(§7S§);
            if(_loc7_ || param2)
            {
               if(§§pop())
               {
                  if(_loc7_)
                  {
                     var _loc4_:*;
                     §§push((_loc4_ = §§findproperty(§@!+§)).§@!+§);
                     if(_loc7_ || param1)
                     {
                        §§push(Number(§§pop()));
                        if(_loc7_ || _loc3_)
                        {
                           addr56:
                           §§push(§§pop());
                           if(!_loc6_)
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc5_:* = §§pop();
                           if(!(_loc6_ && param1))
                           {
                              _loc4_.§@!+§ = _loc5_;
                           }
                        }
                        if(_loc7_ || param1)
                        {
                           §§push(§§pop() % §1!X§);
                           if(_loc7_)
                           {
                              addr94:
                              §§push(Number(§§pop()));
                           }
                           _loc3_ = §§pop();
                           if(_loc7_)
                           {
                              §&!R§[_loc3_] = [param1,param2];
                              while(true)
                              {
                                 §§push(param2);
                                 loop1:
                                 while(true)
                                 {
                                    §§push(§>O§);
                                    addr168:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(!(_loc6_ && §+!k§))
                                       {
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         § !`§();
                                                         addr164:
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                      addr162:
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr100);
                                                   }
                                                }
                                             }
                                          }
                                          addr176:
                                       }
                                       addr178:
                                       while(true)
                                       {
                                          §§pop();
                                          continue loop1;
                                          §§goto(addr143);
                                       }
                                    }
                                 }
                              }
                              addr98:
                           }
                           §§goto(addr121);
                        }
                        §§goto(addr94);
                     }
                     §§goto(addr56);
                  }
                  §§goto(addr98);
               }
               addr100:
               while(true)
               {
                  §§push(§6!C§);
                  if(_loc7_)
                  {
                     if(§§pop())
                     {
                        if(_loc7_ || param1)
                        {
                           if(_loc7_)
                           {
                              if(!param1)
                              {
                              }
                              break;
                           }
                           continue loop8;
                        }
                        if(!_loc6_)
                        {
                           if(_loc7_)
                           {
                              if(!_loc6_)
                              {
                                 addr121:
                                 break;
                              }
                              continue loop0;
                           }
                           continue loop1;
                        }
                        §§goto(addr162);
                     }
                     break;
                  }
                  addr143:
                  addr143:
                  while(!(_loc6_ && param1))
                  {
                     continue loop11;
                  }
               }
               return;
            }
            §§goto(addr176);
         }
         §§goto(addr121);
      }
      
      public static function §;!I§(param1:Object, param2:int = 1) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = undefined;
         if(_loc6_ || param1)
         {
            §§push(§§findproperty(log));
            §§push("Object:");
            if(_loc6_ || §+!k§)
            {
               §§push(§§pop() + getQualifiedClassName(param1));
            }
            §§pop().log(§§pop());
         }
         for(_loc3_ in param1)
         {
            if(!_loc6_)
            {
               continue;
            }
            §§push(§§findproperty(log));
            §§push("-[");
            if(!_loc7_)
            {
               §§push(§§pop() + _loc3_);
               if(!_loc7_)
               {
                  §§push(§§pop() + "]: ");
                  if(_loc6_)
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
      
      private static function § !`§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:* = false;
         var _loc2_:* = null;
         var _loc3_:* = NaN;
         var _loc4_:Number = NaN;
         if(!_loc6_)
         {
            §§push(§7S§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(Boolean(§1"F§));
                     if(!(_loc6_ && §+!k§))
                     {
                        if(!§§pop())
                        {
                           loop2:
                           for(; §§pop(); continue loop0)
                           {
                              loop3:
                              while(true)
                              {
                                 §§push(§>O§);
                                 loop4:
                                 while(true)
                                 {
                                    if(§§pop() >= 0)
                                    {
                                       §>!_§.text = "Current channel: " + §>O§;
                                       while(true)
                                       {
                                          if(!(_loc6_ && _loc2_))
                                          {
                                             if(_loc5_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   break;
                                                }
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §>!_§.text = "Current channel: ALL";
                                                   addr406:
                                                   while(true)
                                                   {
                                                   }
                                                }
                                                addr403:
                                             }
                                             while(true)
                                             {
                                                if(§ n§ != null)
                                                {
                                                   loop6:
                                                   while(true)
                                                   {
                                                      §]!Y§.text = § n§;
                                                      addr342:
                                                      addr420:
                                                      while(_loc6_ && _loc1_)
                                                      {
                                                      }
                                                      loop19:
                                                      while(true)
                                                      {
                                                         §§push(Boolean(§1"F§.visible));
                                                         addr374:
                                                         addr419:
                                                         while(!(_loc6_ && _loc1_))
                                                         {
                                                            continue loop2;
                                                         }
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            continue loop19;
                                                            §§goto(addr374);
                                                         }
                                                      }
                                                      loop10:
                                                      while(true)
                                                      {
                                                         if(!(_loc5_ || _loc2_))
                                                         {
                                                            continue loop6;
                                                         }
                                                         if(§'!a§.scrollV == §'!a§.numLines - int(§'!a§.height / (§'!a§.textHeight / §'!a§.numLines)))
                                                         {
                                                            while(true)
                                                            {
                                                               _loc2_ = "";
                                                               loop14:
                                                               while(true)
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     if(!(_loc6_ && _loc2_))
                                                                     {
                                                                        if(_loc5_)
                                                                        {
                                                                           §§push(0);
                                                                           if(_loc5_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           continue loop4;
                                                                        }
                                                                        continue loop3;
                                                                     }
                                                                     §§goto(addr342);
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(false);
                                                                        if(_loc5_)
                                                                        {
                                                                           _loc1_ = §§pop();
                                                                           break loop14;
                                                                        }
                                                                        break;
                                                                     }
                                                                     addr308:
                                                                  }
                                                                  addr324:
                                                                  while(!_loc6_)
                                                                  {
                                                                     _loc1_ = §§pop();
                                                                     continue loop10;
                                                                  }
                                                                  §§goto(addr374);
                                                               }
                                                               continue loop10;
                                                            }
                                                            if(!(_loc5_ || _loc2_))
                                                            {
                                                               break loop0;
                                                            }
                                                            addr60:
                                                            §§push(_loc3_);
                                                            if(!_loc6_)
                                                            {
                                                               §§push(§1!X§);
                                                               if(!(_loc6_ && _loc3_))
                                                               {
                                                                  if(§§pop() >= §§pop())
                                                                  {
                                                                     if(_loc5_ || _loc3_)
                                                                     {
                                                                        if(!(_loc6_ && _loc3_))
                                                                        {
                                                                           if(_loc5_ || _loc3_)
                                                                           {
                                                                              §'!a§.text = _loc2_;
                                                                              addr97:
                                                                              §§push(_loc1_);
                                                                              if(_loc5_ || _loc2_)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(_loc5_ || §+!k§)
                                                                                    {
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          §'!a§.scrollV = §'!a§.numLines;
                                                                                          addr55:
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                addr194:
                                                                                                if(!(_loc6_ && _loc2_))
                                                                                                {
                                                                                                   addr98:
                                                                                                   §§push(_loc3_);
                                                                                                   if(!(_loc6_ && _loc2_))
                                                                                                   {
                                                                                                      if(_loc5_ || §+!k§)
                                                                                                      {
                                                                                                         if(_loc5_ || _loc1_)
                                                                                                         {
                                                                                                            §§push(§§pop() + 1);
                                                                                                            if(_loc5_ || _loc2_)
                                                                                                            {
                                                                                                               addr130:
                                                                                                               §§push(Number(§§pop()));
                                                                                                               if(_loc5_ || _loc3_)
                                                                                                               {
                                                                                                                  if(_loc5_ || _loc3_)
                                                                                                                  {
                                                                                                                     _loc3_ = §§pop();
                                                                                                                     addr145:
                                                                                                                     if(!_loc6_)
                                                                                                                     {
                                                                                                                        §§goto(addr60);
                                                                                                                     }
                                                                                                                     addr176:
                                                                                                                     §§push(_loc2_);
                                                                                                                     if(!(_loc6_ && _loc1_))
                                                                                                                     {
                                                                                                                        §§push(§§pop() + (§&!R§[_loc4_][0] + "\n"));
                                                                                                                     }
                                                                                                                     _loc2_ = §§pop();
                                                                                                                     §§goto(addr194);
                                                                                                                  }
                                                                                                                  addr231:
                                                                                                                  §§push(§§pop() + _loc3_);
                                                                                                                  §§push(1);
                                                                                                                  if(_loc5_ || _loc1_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(!_loc6_)
                                                                                                                     {
                                                                                                                        addr243:
                                                                                                                        §§push(§§pop() % 500);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr243);
                                                                                                               }
                                                                                                               addr245:
                                                                                                               _loc4_ = §§pop();
                                                                                                               addr215:
                                                                                                               if(§&!R§[_loc4_] != null)
                                                                                                               {
                                                                                                                  addr221:
                                                                                                                  §§push(§>O§ < 0);
                                                                                                                  if(!(§>O§ < 0))
                                                                                                                  {
                                                                                                                     addr223:
                                                                                                                     §§pop();
                                                                                                                     §§push(§&!R§);
                                                                                                                     if(!(_loc6_ && _loc2_))
                                                                                                                     {
                                                                                                                        §§push(_loc4_);
                                                                                                                        if(_loc5_)
                                                                                                                        {
                                                                                                                           addr165:
                                                                                                                           §§push(§§pop()[§§pop()][1] == §>O§);
                                                                                                                           if(_loc5_)
                                                                                                                           {
                                                                                                                              if(!(_loc6_ && _loc2_))
                                                                                                                              {
                                                                                                                                 addr174:
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    §§goto(addr176);
                                                                                                                                 }
                                                                                                                                 §§goto(addr98);
                                                                                                                              }
                                                                                                                              §§goto(addr221);
                                                                                                                           }
                                                                                                                           §§goto(addr223);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr215);
                                                                                                                     addr224:
                                                                                                                  }
                                                                                                                  §§goto(addr174);
                                                                                                               }
                                                                                                               §§goto(addr98);
                                                                                                               addr246:
                                                                                                            }
                                                                                                            §§goto(addr130);
                                                                                                         }
                                                                                                         §§goto(addr231);
                                                                                                      }
                                                                                                      §§goto(addr245);
                                                                                                   }
                                                                                                   §§goto(addr130);
                                                                                                }
                                                                                                §§goto(addr224);
                                                                                             }
                                                                                             break loop2;
                                                                                          }
                                                                                          §§goto(addr97);
                                                                                       }
                                                                                       §§goto(addr145);
                                                                                    }
                                                                                    §§goto(addr55);
                                                                                 }
                                                                                 break loop2;
                                                                              }
                                                                              §§goto(addr165);
                                                                           }
                                                                           §§goto(addr246);
                                                                        }
                                                                        §§goto(addr221);
                                                                     }
                                                                     §§goto(addr97);
                                                                  }
                                                                  §§goto(addr231);
                                                                  §§push(§@!+§);
                                                               }
                                                               §§goto(addr243);
                                                            }
                                                            §§goto(addr130);
                                                            addr275:
                                                         }
                                                         §§goto(addr308);
                                                      }
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr324);
                                                }
                                             }
                                          }
                                          §§goto(addr406);
                                       }
                                       continue loop1;
                                    }
                                    §§goto(addr403);
                                 }
                              }
                           }
                           return;
                           addr398:
                        }
                     }
                     §§goto(addr419);
                  }
               }
               break;
               if(_loc6_ && _loc2_)
               {
                  continue;
               }
               §§goto(addr398);
            }
            return;
         }
         §§goto(addr420);
      }
      
      public static function §5?§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_)
         {
            if(!§7S§)
            {
               if(!(_loc9_ && §+!k§))
               {
                  return;
               }
               while(true)
               {
                  addr44:
                  loop2:
                  for(; !(_loc9_ && param2); while(true)
                  {
                     param1.addChild(§1"F§);
                     if(_loc9_ && param1)
                     {
                        continue;
                     }
                     if(!_loc8_)
                     {
                        continue loop2;
                     }
                     if(true)
                     {
                        break;
                     }
                     §§goto(addr34);
                  },var _loc7_:Graphics,(_loc7_ = §1"F§.graphics).beginFill(16777215,0),if(_loc8_)
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
                                 while(true)
                                 {
                                    §'!a§ = new TextField();
                                    loop10:
                                    while(true)
                                    {
                                       §'!a§.width = param4;
                                       while(true)
                                       {
                                          §'!a§.height = param5 - 40;
                                          continue loop6;
                                          loop30:
                                          while(_loc8_ || §+!k§)
                                          {
                                             §1"F§.addChild(§>!_§);
                                             loop31:
                                             while(_loc8_ || §+!k§)
                                             {
                                                continue loop5;
                                                loop32:
                                                while(true)
                                                {
                                                   if(!(_loc9_ && param2))
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         §]!Y§.width = param4;
                                                         loop33:
                                                         while(_loc8_)
                                                         {
                                                            if(_loc9_)
                                                            {
                                                               continue loop6;
                                                            }
                                                            §]!Y§.height = 20;
                                                            loop34:
                                                            while(_loc8_)
                                                            {
                                                               if(_loc8_)
                                                               {
                                                                  §]!Y§.x = param2;
                                                                  loop35:
                                                                  while(!_loc9_)
                                                                  {
                                                                     §]!Y§.y = param3 + 20;
                                                                     loop36:
                                                                     while(!_loc9_)
                                                                     {
                                                                        if(!_loc9_)
                                                                        {
                                                                           §1"F§.addChild(§]!Y§);
                                                                           while(true)
                                                                           {
                                                                              §#!F§(§=8§);
                                                                              loop38:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    continue loop36;
                                                                                 }
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 addr168:
                                                                                 if(_loc8_ || §+!k§)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(param6 >= 0)
                                                                                       {
                                                                                          continue loop38;
                                                                                       }
                                                                                       param1.addChild(§1"F§);
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          if(_loc9_ && param3)
                                                                                          {
                                                                                             continue loop38;
                                                                                          }
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             continue loop35;
                                                                                          }
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             §§goto(addr74);
                                                                                          }
                                                                                          addr376:
                                                                                          while(true)
                                                                                          {
                                                                                             §6!%§.y = param3;
                                                                                             break loop31;
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr143:
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             continue loop33;
                                                                                          }
                                                                                          addr145:
                                                                                          if(_loc8_ || param1)
                                                                                          {
                                                                                             addr152:
                                                                                             if(!(_loc9_ && §+!k§))
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             addr362:
                                                                                             while(true)
                                                                                             {
                                                                                                §6!%§.height = 20;
                                                                                                break loop32;
                                                                                                §§goto(addr152);
                                                                                             }
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc9_ && param2))
                                                                                             {
                                                                                                §1"F§.addChild(§6!%§);
                                                                                                break loop34;
                                                                                             }
                                                                                             break;
                                                                                             §§goto(addr145);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §6!%§.borderColor = 16711680;
                                                                                             §§goto(addr333);
                                                                                          }
                                                                                          addr333:
                                                                                       }
                                                                                    }
                                                                                    addr74:
                                                                                    return;
                                                                                    addr175:
                                                                                 }
                                                                                 while(_loc8_ || param1)
                                                                                 {
                                                                                    addr316:
                                                                                    if(_loc8_ || param2)
                                                                                    {
                                                                                       §>!_§.width = param4;
                                                                                       continue loop10;
                                                                                    }
                                                                                    addr399:
                                                                                    while(_loc8_)
                                                                                    {
                                                                                       §'!a§.wordWrap = true;
                                                                                       while(true)
                                                                                       {
                                                                                          §1"F§.addChild(§'!a§);
                                                                                          break loop33;
                                                                                       }
                                                                                       §§goto(addr316);
                                                                                    }
                                                                                    continue loop7;
                                                                                    §§goto(addr168);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §6!%§.x = param2 + param4 / 2;
                                                                                    §§goto(addr376);
                                                                                    §§goto(addr309);
                                                                                 }
                                                                                 addr309:
                                                                              }
                                                                              continue loop34;
                                                                              if(!(_loc8_ || §+!k§))
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              addr116:
                                                                              if(!(_loc9_ && param3))
                                                                              {
                                                                                 addr123:
                                                                                 if(!(_loc8_ || param1))
                                                                                 {
                                                                                    continue loop10;
                                                                                 }
                                                                                 addr130:
                                                                                 if(!(_loc9_ && param2))
                                                                                 {
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       continue loop8;
                                                                                    }
                                                                                    param1.addChildAt(§1"F§,param6);
                                                                                    §§goto(addr143);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §6!%§.border = true;
                                                                                    §§goto(addr345);
                                                                                    §§goto(addr130);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr282:
                                                                                 while(!(_loc9_ && param3))
                                                                                 {
                                                                                    §>!_§.x = param2;
                                                                                    while(true)
                                                                                    {
                                                                                       §>!_§.y = param3;
                                                                                       break loop36;
                                                                                    }
                                                                                    §§goto(addr116);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §'!a§.y = param3 + 40;
                                                                                    §§goto(addr399);
                                                                                    §§goto(addr282);
                                                                                 }
                                                                                 addr282:
                                                                                 addr406:
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr277);
                                                                     }
                                                                     continue loop30;
                                                                  }
                                                                  continue loop32;
                                                               }
                                                               §§goto(addr392);
                                                            }
                                                            while(true)
                                                            {
                                                               §>!_§ = new TextField();
                                                               §§goto(addr168);
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §6!%§ = new TextField();
                                                            §§goto(addr382);
                                                         }
                                                      }
                                                      break;
                                                   }
                                                   continue loop31;
                                                }
                                                while(true)
                                                {
                                                   §6!%§.text = "LOGGER CAPTURING INPUT, F4";
                                                   §§goto(addr350);
                                                }
                                             }
                                             while(true)
                                             {
                                                §6!%§.width = param4 / 2;
                                                §§goto(addr362);
                                                §§goto(addr246);
                                             }
                                             addr246:
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  },§§goto(addr175))
                  {
                     while(true)
                     {
                        §1"F§.visible = false;
                        continue loop2;
                     }
                  }
               }
               addr62:
            }
            while(true)
            {
               §1"F§ = new Sprite();
               §§goto(addr44);
               §§goto(addr62);
            }
         }
         §§goto(addr38);
      }
      
      public static function §#!F§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(!§7S§)
            {
               if(_loc3_)
               {
                  return;
               }
               loop0:
               while(true)
               {
                  loop5:
                  while(true)
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        §]!Y§.mouseEnabled = §=8§;
                        while(!_loc2_)
                        {
                           §'!a§.mouseEnabled = §=8§;
                           while(!_loc2_)
                           {
                              §6!%§.visible = §=8§;
                              if(!(_loc2_ && _loc3_))
                              {
                                 continue loop5;
                              }
                           }
                        }
                        while(true)
                        {
                           §>!_§.mouseEnabled = §=8§;
                           continue loop5;
                        }
                        return;
                        addr95:
                        addr54:
                     }
                     continue loop0;
                  }
               }
               addr113:
            }
            while(true)
            {
               §=8§ = param1;
               §§goto(addr107);
               §§goto(addr113);
            }
         }
         §§goto(addr95);
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(§7S§)
            {
               return;
            }
         }
      }
      
      public static function §[z§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            §4e§ = param1;
            while(true)
            {
               §'y§ = param2;
               loop1:
               while(_loc5_ || param2)
               {
                  while(true)
                  {
                     §set § = param3;
                     if(_loc5_ || param1)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr56);
      }
      
      public static function §0!2§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            § n§ = param1;
         }
      }
   }
}
