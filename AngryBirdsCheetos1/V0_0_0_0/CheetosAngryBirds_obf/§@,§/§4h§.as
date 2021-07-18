package §@,§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §4h§
   {
      
      public static const §+;§:Boolean = true;
      
      public static const §-v§:Boolean = true;
      
      public static const §+e§:int = 0;
      
      public static const §0X§:int = 1;
      
      public static const §1z§:int = 500;
      
      private static var §8s§:Array = null;
      
      private static var §`?§:Number = 0;
      
      public static var §-d§:int = 112;
      
      public static var §^;§:int = 114;
      
      public static var §?@§:int = 113;
      
      public static var §@!6§:int = 115;
      
      public static var §?!'§:Boolean = false;
      
      public static var §7u§:Sprite = null;
      
      private static var §'J§:TextField = null;
      
      private static var §`d§:TextField = null;
      
      private static var §`!H§:TextField = null;
      
      private static var §4!B§:TextField = null;
      
      public static var §,f§:int = -1;
      
      public static var §]'§:String = "version: Unknown";
      
      public static var §`0§:String = "";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §+;§ = true;
            loop0:
            while(true)
            {
               §-v§ = true;
               loop1:
               while(true)
               {
                  §+e§ = 0;
                  loop2:
                  while(true)
                  {
                     §0X§ = 1;
                     loop3:
                     while(true)
                     {
                        §1z§ = 500;
                        while(true)
                        {
                           §8s§ = null;
                           addr205:
                           addr181:
                           while(true)
                           {
                              §`?§ = 0;
                              continue loop1;
                           }
                           loop7:
                           while(_loc1_ || §4h§)
                           {
                              §^;§ = Keyboard.F3;
                              loop8:
                              for(; _loc1_ || §4h§; if(!(_loc1_ || §4h§))
                              {
                                 continue;
                              },§,f§ = -1,§§goto(addr75))
                              {
                                 §?@§ = Keyboard.F2;
                                 loop9:
                                 while(_loc1_)
                                 {
                                    §@!6§ = Keyboard.F4;
                                    loop10:
                                    while(_loc1_)
                                    {
                                       §?!'§ = false;
                                       while(_loc1_)
                                       {
                                          §7u§ = null;
                                          loop12:
                                          while(!_loc2_)
                                          {
                                             §'J§ = null;
                                             while(true)
                                             {
                                                §`d§ = null;
                                                addr118:
                                                while(_loc1_)
                                                {
                                                   continue loop2;
                                                }
                                                continue loop12;
                                             }
                                          }
                                          continue loop9;
                                          loop17:
                                          while(!(_loc2_ && §4h§))
                                          {
                                             while(true)
                                             {
                                                §]'§ = "version: Unknown";
                                                loop19:
                                                while(_loc1_ || §4h§)
                                                {
                                                   §`0§ = "";
                                                   while(_loc1_)
                                                   {
                                                      init();
                                                      if(_loc1_ || _loc2_)
                                                      {
                                                         if(_loc2_ && _loc1_)
                                                         {
                                                            continue loop19;
                                                         }
                                                         addr40:
                                                         if(_loc1_ || _loc2_)
                                                         {
                                                            if(_loc1_)
                                                            {
                                                               if(!_loc2_)
                                                               {
                                                                  §§goto(addr51);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr205);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr132);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            while(_loc1_)
                                                            {
                                                               §4!B§ = null;
                                                               §§goto(addr87);
                                                               §§goto(addr40);
                                                            }
                                                            addr101:
                                                         }
                                                         §§goto(addr118);
                                                         continue loop19;
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         continue loop8;
                                                      }
                                                      continue loop10;
                                                   }
                                                   continue loop8;
                                                }
                                                continue loop17;
                                             }
                                             return;
                                          }
                                       }
                                       continue loop7;
                                    }
                                    continue loop3;
                                 }
                                 continue loop0;
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr82);
      }
      
      public function §4h§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
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
            if(!§+;§)
            {
               if(!_loc2_)
               {
                  §§goto(addr61);
               }
               else
               {
                  while(true)
                  {
                     §§goto(addr33);
                  }
               }
            }
            addr33:
            while(true)
            {
               §8s§ = new Array(§1z§);
               if(_loc1_ || _loc1_)
               {
                  break;
               }
               continue loop0;
            }
            return;
         }
         addr61:
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = NaN;
         if(!(_loc6_ && _loc3_))
         {
            §§push(§+;§);
            if(!(_loc6_ && _loc3_))
            {
               if(§§pop())
               {
                  if(_loc7_)
                  {
                     var _loc4_:*;
                     §§push((_loc4_ = §§findproperty(§`?§)).§`?§);
                     if(_loc7_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc7_)
                        {
                           addr46:
                           §§push(§§pop());
                           if(!(_loc6_ && §4h§))
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc5_:* = §§pop();
                           if(!(_loc6_ && §4h§))
                           {
                              _loc4_.§`?§ = _loc5_;
                           }
                        }
                        if(!(_loc6_ && _loc3_))
                        {
                           §§push(§§pop() % §1z§);
                           if(!_loc6_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        _loc3_ = §§pop();
                        if(_loc7_)
                        {
                           §8s§[_loc3_] = [param1,param2];
                           loop0:
                           while(true)
                           {
                              §§push(param2);
                              loop1:
                              while(true)
                              {
                                 §§push(§,f§);
                                 addr165:
                                 while(true)
                                 {
                                    §§push(§§pop() == §§pop());
                                    addr166:
                                    loop3:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          loop7:
                                          while(true)
                                          {
                                             addr137:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   if(!(_loc6_ && param1))
                                                   {
                                                      if(!(_loc6_ && §4h§))
                                                      {
                                                         continue loop0;
                                                      }
                                                      continue loop1;
                                                   }
                                                   addr161:
                                                   while(true)
                                                   {
                                                      addr110:
                                                      §§goto(addr118);
                                                   }
                                                   addr161:
                                                }
                                                while(true)
                                                {
                                                   addr95:
                                                   while(true)
                                                   {
                                                      §§push(§-v§);
                                                      if(_loc7_)
                                                      {
                                                         if(!(_loc6_ && _loc3_))
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(!param1)
                                                                     {
                                                                     }
                                                                     §§goto(addr118);
                                                                  }
                                                                  addr108:
                                                               }
                                                               §§goto(addr110);
                                                            }
                                                            addr118:
                                                            while(!(_loc7_ || §4h§))
                                                            {
                                                               continue loop9;
                                                            }
                                                         }
                                                         continue loop3;
                                                         addr118:
                                                         return;
                                                      }
                                                      while(_loc7_)
                                                      {
                                                         continue loop7;
                                                      }
                                                      addr134:
                                                   }
                                                   §§goto(addr161);
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
                        }
                        while(true)
                        {
                           §?!U§();
                           §§goto(addr161);
                        }
                     }
                     §§goto(addr46);
                  }
                  §§goto(addr108);
               }
               §§goto(addr95);
            }
            §§goto(addr137);
         }
         §§goto(addr117);
      }
      
      public static function §@9§(param1:Object, param2:int = 1) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = undefined;
         if(!(_loc6_ && §4h§))
         {
            log("Object:" + getQualifiedClassName(param1));
         }
         for(_loc3_ in param1)
         {
            if(!_loc7_)
            {
               continue;
            }
            §§push(§§findproperty(log));
            §§push("-[" + _loc3_);
            if(_loc7_ || param1)
            {
               §§push(§§pop() + "]: ");
               if(_loc7_)
               {
                  addr73:
                  §§push(§§pop() + param1[_loc3_]);
               }
               §§pop().log(§§pop());
               continue;
            }
            §§goto(addr73);
         }
      }
      
      private static function §?!U§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!(_loc6_ && _loc1_))
         {
            §§push(§+;§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  addr393:
                  return;
               }
               addr372:
               while(true)
               {
                  §§push(Boolean(§7u§));
                  continue loop0;
               }
            }
         }
         §§goto(addr323);
      }
      
      public static function §2!O§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_ || param2)
         {
            if(!§+;§)
            {
               if(!(_loc8_ && param3))
               {
                  §§goto(addr67);
               }
               else
               {
                  while(true)
                  {
                  }
                  addr68:
               }
            }
            loop1:
            while(true)
            {
               §7u§ = new Sprite();
               loop2:
               while(true)
               {
                  addr45:
                  while(true)
                  {
                     §7u§.visible = false;
                     while(!_loc8_)
                     {
                        param1.addChild(§7u§);
                        if(_loc9_ || param3)
                        {
                           continue loop2;
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         addr67:
      }
      
      public static function §4!Q§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(§+;§)
            {
               loop0:
               while(true)
               {
                  §?!'§ = param1;
                  loop1:
                  while(true)
                  {
                     §7u§.mouseChildren = §?!'§;
                     while(true)
                     {
                        §7u§.mouseEnabled = §?!'§;
                        loop3:
                        while(_loc3_ || _loc3_)
                        {
                           §`!H§.mouseEnabled = §?!'§;
                           loop4:
                           while(true)
                           {
                              §4!B§.mouseEnabled = §?!'§;
                              while(true)
                              {
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    if(!_loc3_)
                                    {
                                       break;
                                    }
                                    if(!_loc2_)
                                    {
                                       §'J§.mouseEnabled = §?!'§;
                                       continue;
                                    }
                                    continue loop0;
                                 }
                                 continue loop4;
                              }
                              continue loop3;
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr117);
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || §4h§)
         {
            if(§+;§)
            {
               return;
            }
         }
      }
      
      public static function §=L§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param2))
         {
            §-d§ = param1;
         }
         while(true)
         {
            §?@§ = param2;
            while(_loc6_ || param3)
            {
               §^;§ = param3;
               if(_loc6_)
               {
                  return;
               }
            }
         }
      }
      
      public static function §6§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §]'§ = param1;
         }
      }
   }
}
