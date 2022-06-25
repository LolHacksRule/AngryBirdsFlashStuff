package §6b§
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
      
      public static const §%!_§:Boolean = true;
      
      public static const §#l§:Boolean = true;
      
      public static const §1o§:int = 0;
      
      public static const §?J§:int = 1;
      
      public static const §`d§:int = 500;
      
      private static var §[G§:Array = null;
      
      private static var § 4§:Number = 0;
      
      public static var §^M§:int = 112;
      
      public static var §%a§:int = 114;
      
      public static var §?C§:int = 113;
      
      public static var §>!7§:int = 115;
      
      public static var §;+§:Boolean = false;
      
      public static var §'!M§:Sprite = null;
      
      private static var §+!O§:TextField = null;
      
      private static var § in§:TextField = null;
      
      private static var §#§:TextField = null;
      
      private static var §#o§:TextField = null;
      
      public static var §^!=§:int = -1;
      
      public static var §@!=§:String = "version: Unknown";
      
      public static var §5!§:String = "";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || Log)
         {
            §%!_§ = true;
            loop0:
            while(true)
            {
               §#l§ = true;
               loop1:
               while(true)
               {
                  §1o§ = 0;
                  while(true)
                  {
                     §?J§ = 1;
                     loop3:
                     while(true)
                     {
                        §`d§ = 500;
                        loop4:
                        while(true)
                        {
                           §[G§ = null;
                           addr169:
                           if(_loc2_ && Log)
                           {
                              continue;
                           }
                           if(!_loc1_)
                           {
                              continue loop1;
                           }
                           §;+§ = false;
                           loop11:
                           while(true)
                           {
                              §'!M§ = null;
                              while(true)
                              {
                                 §+!O§ = null;
                                 loop13:
                                 while(true)
                                 {
                                    § in§ = null;
                                    loop14:
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          if(_loc2_)
                                          {
                                             break;
                                             addr107:
                                          }
                                          §#§ = null;
                                          loop15:
                                          while(_loc1_ || _loc2_)
                                          {
                                             §#o§ = null;
                                             while(true)
                                             {
                                                if(_loc1_ || _loc1_)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      break;
                                                      addr86:
                                                   }
                                                   §^!=§ = -1;
                                                   while(!_loc2_)
                                                   {
                                                      §@!=§ = "version: Unknown";
                                                      continue loop14;
                                                   }
                                                   continue loop3;
                                                }
                                                continue loop15;
                                                addr43:
                                                if(_loc1_ || Log)
                                                {
                                                   continue loop11;
                                                }
                                             }
                                             while(true)
                                             {
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   addr162:
                                                   if(!(_loc2_ && _loc2_))
                                                   {
                                                      §§goto(addr169);
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         §^M§ = Keyboard.F1;
                                                         break loop15;
                                                         §§goto(addr162);
                                                      }
                                                      addr235:
                                                   }
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      §?C§ = Keyboard.F2;
                                                      continue loop3;
                                                   }
                                                   addr206:
                                                }
                                             }
                                             continue loop4;
                                          }
                                          continue loop0;
                                       }
                                       continue loop13;
                                    }
                                    addr240:
                                    while(true)
                                    {
                                       § 4§ = 0;
                                       §§goto(addr235);
                                    }
                                 }
                                 if(!(_loc1_ || _loc1_))
                                 {
                                    continue;
                                 }
                                 §§goto(addr81);
                              }
                           }
                        }
                     }
                     if(!(_loc1_ || Log))
                     {
                        continue;
                     }
                     §>!7§ = Keyboard.F4;
                     §§goto(addr155);
                  }
               }
            }
         }
         §§goto(addr240);
      }
      
      public function Log()
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
         if(!(_loc1_ && _loc2_))
         {
            §§push(§%!_§);
            if(!(_loc1_ && Log))
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               if(!(_loc1_ && _loc2_))
               {
                  §§goto(addr77);
               }
               else
               {
                  while(true)
                  {
                  }
                  addr78:
               }
            }
            while(true)
            {
               §[G§ = new Array(§`d§);
               if(_loc2_)
               {
                  break;
               }
               §§goto(addr78);
            }
            return;
         }
         addr77:
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = NaN;
         if(!_loc7_)
         {
            §§push(§%!_§);
            if(_loc6_ || Log)
            {
               if(§§pop())
               {
                  if(!_loc7_)
                  {
                     var _loc4_:*;
                     §§push((_loc4_ = §§findproperty(§ 4§)).§ 4§);
                     if(_loc6_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc6_)
                        {
                           §§push(§§pop());
                           if(_loc6_ || _loc3_)
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc5_:* = §§pop();
                           if(!(_loc7_ && _loc3_))
                           {
                              _loc4_.§ 4§ = _loc5_;
                           }
                        }
                     }
                     if(_loc6_ || param1)
                     {
                        §§push(§§pop() % §`d§);
                        if(!(_loc7_ && param1))
                        {
                           addr80:
                           §§push(Number(§§pop()));
                        }
                        _loc3_ = §§pop();
                        if(!_loc7_)
                        {
                           §[G§[_loc3_] = [param1,param2];
                           while(true)
                           {
                              §§push(param2);
                              loop1:
                              while(true)
                              {
                                 §§push(§^!=§);
                                 addr188:
                                 while(true)
                                 {
                                    §§push(§§pop() == §§pop());
                                    addr189:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(_loc6_)
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                          if(§§pop())
                                          {
                                             while(true)
                                             {
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      while(_loc6_ || _loc3_)
                                                      {
                                                         while(true)
                                                         {
                                                            §2,§();
                                                            addr183:
                                                            while(true)
                                                            {
                                                            }
                                                         }
                                                      }
                                                      continue loop1;
                                                      addr163:
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr86);
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr195);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§goto(addr131);
                        }
                     }
                     §§goto(addr80);
                  }
                  §§goto(addr147);
               }
               addr86:
               loop14:
               while(true)
               {
                  §§push(§#l§);
                  if(!(_loc7_ && param2))
                  {
                     addr105:
                     if(_loc6_ || param1)
                     {
                        if(§§pop())
                        {
                           if(!_loc7_)
                           {
                              if(!(_loc7_ && Log))
                              {
                                 continue loop0;
                              }
                              §§goto(addr163);
                           }
                           else
                           {
                              addr140:
                              while(true)
                              {
                                 if(!(_loc7_ && param2))
                                 {
                                    addr147:
                                    break loop14;
                                 }
                              }
                              addr140:
                           }
                           §§goto(addr183);
                        }
                        break;
                     }
                     continue loop8;
                  }
                  addr131:
                  while(true)
                  {
                     if(_loc7_)
                     {
                        continue loop9;
                     }
                     if(_loc6_)
                     {
                        if(!_loc7_)
                        {
                           if(_loc6_)
                           {
                              while(§§pop())
                              {
                                 §§goto(addr140);
                              }
                              break loop14;
                              addr139:
                           }
                           continue loop3;
                        }
                        continue loop4;
                     }
                     addr195:
                     while(true)
                     {
                        §§pop();
                        continue loop1;
                     }
                  }
                  §§goto(addr140);
                  continue loop11;
               }
               return;
            }
            §§goto(addr139);
         }
         §§goto(addr180);
      }
      
      public static function §;!C§(param1:Object, param2:int = 1) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = undefined;
         if(!(_loc6_ && param2))
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
            if(!(_loc7_ || param1))
            {
               continue;
            }
            §§push(§§findproperty(log));
            §§push("-[");
            if(_loc7_)
            {
               §§push(§§pop() + _loc3_);
               if(_loc7_ || Log)
               {
                  addr89:
                  §§push(§§pop() + "]: ");
                  if(!_loc6_)
                  {
                     §§push(§§pop() + param1[_loc3_]);
                  }
               }
               §§pop().log(§§pop());
               continue;
            }
            §§goto(addr89);
         }
      }
      
      private static function §2,§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(_loc6_ || Log)
         {
            §§push(§%!_§);
            while(true)
            {
               §§push(!§§pop());
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§push(Boolean(§'!M§));
                        while(true)
                        {
                           §§push(§§pop());
                           if(_loc6_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           if(§§pop())
                           {
                              loop4:
                              while(true)
                              {
                                 §§pop();
                                 addr474:
                                 while(true)
                                 {
                                    §§push(Boolean(§'!M§.visible));
                                    continue loop4;
                                 }
                              }
                           }
                           while(§§pop())
                           {
                              §§goto(addr453);
                           }
                           §§goto(addr34);
                        }
                     }
                  }
                  §§goto(addr479);
               }
            }
         }
         §§goto(addr428);
      }
      
      public static function §0!=§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_ || param3)
         {
            §§push(§%!_§);
            if(_loc9_)
            {
               §§push(!§§pop());
            }
            if(!§§pop())
            {
               loop0:
               while(true)
               {
                  §'!M§ = new Sprite();
                  while(!(_loc8_ && param1))
                  {
                     loop2:
                     while(true)
                     {
                        §'!M§.visible = false;
                        while(!(_loc8_ && param2))
                        {
                           param1.addChild(§'!M§);
                           if(_loc9_ || param2)
                           {
                              continue loop2;
                           }
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
      }
      
      public static function §0!H§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || Log)
         {
            §§push(§%!_§);
            if(_loc2_ || Log)
            {
               §§push(!§§pop());
            }
            if(!§§pop())
            {
               while(true)
               {
                  §;+§ = param1;
                  while(!(_loc3_ && Log))
                  {
                     §'!M§.mouseChildren = §;+§;
                     while(true)
                     {
                        §'!M§.mouseEnabled = §;+§;
                        while(true)
                        {
                           §#§.mouseEnabled = §;+§;
                           §§goto(addr94);
                        }
                     }
                  }
               }
            }
            return;
         }
         addr94:
         loop4:
         while(true)
         {
            §#o§.mouseEnabled = §;+§;
            while(!_loc3_)
            {
               if(!(_loc3_ && param1))
               {
                  §+!O§.mouseEnabled = §;+§;
                  continue loop4;
               }
               continue loop1;
               if(_loc2_ || _loc2_)
               {
                  if(!_loc3_)
                  {
                     break loop4;
                  }
                  continue loop2;
               }
            }
            continue loop3;
         }
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(§%!_§);
            if(_loc3_)
            {
               §§push(!§§pop());
            }
            if(!§§pop())
            {
               return;
            }
         }
      }
      
      public static function §8s§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param3)
         {
            §^M§ = param1;
            while(true)
            {
               §?C§ = param2;
               loop1:
               while(_loc5_ || param3)
               {
                  while(true)
                  {
                     §%a§ = param3;
                     if(!_loc6_)
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
      
      public static function §%x§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §@!=§ = param1;
         }
      }
   }
}
