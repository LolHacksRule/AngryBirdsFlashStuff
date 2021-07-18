package §-y§
{
   import § w§.§"^§;
   import § w§.§]!u§;
   import § w§.§`@§;
   import §"E§.§&!h§;
   import §%!n§.§;!'§;
   import §&x§.§%p§;
   import §0§.§6!B§;
   import §0§.§`B§;
   import §0x§.§6z§;
   import §0x§.§?"3§;
   import §?"6§.§ !j§;
   import §@!e§.§!!>§;
   import §@!e§.§0"=§;
   import §]!-§.§&"@§;
   import §]!-§.§5C§;
   import §]6§.§+l§;
   import §]6§.§[f§;
   import §]6§.§`<§;
   import §]_§.§%!T§;
   import §]_§.§2I§;
   import §]_§.§8"5§;
   import §]_§.§=!X§;
   import §]_§.§^!B§;
   import §`!#§.§"!&§;
   import §`!#§.§1!B§;
   import §`!#§.§9!0§;
   import §`!#§.§?f§;
   import §`4§.§#!]§;
   import §`4§.§&"$§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class §]D§
   {
      
      private static var §9! §:§&!h§;
      
      private static var § ,§:§6!B§;
      
      private static var §`!D§:§;!'§;
      
      public static const VERSION:String = "0.2 (Alpha)";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §]D§))
         {
            VERSION = "0.2 (Alpha)";
            loop0:
            while(true)
            {
               §`!D§ = new § !j§();
               addr126:
               while(true)
               {
                  §`!D§.start();
                  continue loop0;
               }
            }
         }
         §§goto(addr43);
      }
      
      public function §]D§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function addChild(param1:DisplayObject, param2:DisplayObjectContainer) : §[f§
      {
         return new §]!u§(§`!D§,param1,param2);
      }
      
      public static function §4<§(param1:Function, param2:Array = null, param3:Boolean = false, param4:Function = null, param5:Array = null) : §[f§
      {
         return new §`@§(§`!D§,param1,param2,param3,param4,param5);
      }
      
      public static function §2!r§(... rest) : §`<§
      {
         return § !l§(rest);
      }
      
      public static function scale(param1:§[f§, param2:Number) : §[f§
      {
         return new §=!X§(param1 as §?f§,param2);
      }
      
      public static function § !l§(param1:Array) : §`<§
      {
         return new §!!>§(param1,§`!D§,0);
      }
      
      public static function §^!V§(param1:Object, param2:Object, param3:Object = null, param4:§?"3§ = null) : §+l§
      {
         var _loc5_:§1!B§;
         (_loc5_ = new §1!B§(§`!D§)).§#!!§ = § ,§.§'"1§(param1,param2,param3,param4 || §5C§.§3Y§());
         return _loc5_;
      }
      
      public static function §?J§(param1:DisplayObject) : §[f§
      {
         return new §"^§(§`!D§,param1);
      }
      
      public static function slice(param1:§[f§, param2:Number, param3:Number, param4:Boolean = false) : §[f§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param2)
         {
            if(param4)
            {
               addr135:
               while(true)
               {
                  §§push(param1.duration);
                  addr137:
                  while(true)
                  {
                     §§push(param2);
                     addr138:
                     while(true)
                     {
                        §§push(§§pop() * §§pop());
                        addr139:
                        loop2:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           loop3:
                           while(true)
                           {
                              param2 = §§pop();
                              addr141:
                              addr121:
                              addr122:
                              loop1:
                              while(true)
                              {
                                 §§push(param1.duration);
                                 if(_loc5_ || param2)
                                 {
                                    if(_loc6_ && param3)
                                    {
                                       continue loop2;
                                    }
                                    §§push(param3);
                                    while(true)
                                    {
                                       §§push(§§pop() * §§pop());
                                       addr118:
                                       while(true)
                                       {
                                          if(!_loc6_)
                                          {
                                             §§push(Number(§§pop()));
                                             break loop1;
                                          }
                                          continue loop3;
                                       }
                                    }
                                 }
                                 break;
                              }
                              param3 = §§pop();
                           }
                        }
                     }
                  }
               }
               addr135:
            }
            while(true)
            {
               §§push(param2);
               if(_loc5_)
               {
                  if(!(_loc6_ && param3))
                  {
                     if(_loc5_ || param3)
                     {
                        §§push(param3);
                        if(_loc5_)
                        {
                           if(!_loc6_)
                           {
                              if(§§pop() > §§pop())
                              {
                                 if(_loc5_ || param1)
                                 {
                                    if(!_loc6_)
                                    {
                                       return new §2I§(new §8"5§(param1 as §?f§,param3,param2),0);
                                    }
                                    §§goto(addr141);
                                 }
                                 else
                                 {
                                    if(!_loc5_)
                                    {
                                       continue;
                                    }
                                    if(_loc5_ || param2)
                                    {
                                       break;
                                    }
                                    §§goto(addr135);
                                 }
                              }
                              break;
                           }
                           §§goto(addr138);
                        }
                        §§goto(addr117);
                     }
                     §§goto(addr137);
                  }
                  §§goto(addr118);
               }
               §§goto(addr121);
            }
            return new §8"5§(param1 as §?f§,param2,param3);
         }
         §§goto(addr135);
      }
      
      public static function repeat(param1:§[f§, param2:uint) : §[f§
      {
         return new §%!T§(param1 as §?f§,param2);
      }
      
      public static function §=!Q§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§?"3§ = null) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc6_:§1!B§;
         (_loc6_ = new §1!B§(§`!D§)).§#!!§ = § ,§.§'"1§(param1,param2,param3,param5 || §5C§.§3Y§());
         if(!(_loc8_ && param2))
         {
            _loc6_.update(param4);
         }
      }
      
      public static function §5"=§(param1:Object, param2:Object, param3:Object = null, param4:Object = null, param5:Number = 1.0, param6:§6z§ = null) : §+l§
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:§"!&§;
         (_loc7_ = new §"!&§(§`!D§)).§#!!§ = § ,§.§1!m§(param1,param2,param3,param4);
         if(_loc8_ || param2)
         {
            _loc7_.time = param5;
         }
         do
         {
            §§push(_loc7_);
            if(!(_loc9_ && §]D§))
            {
               §§push(param6);
            }
            §§pop().§3!`§ = §&"@§.§4l§;
         }
         while(!_loc8_);
         
         return _loc7_;
      }
      
      public static function §3!o§(param1:Object, param2:Object, param3:§?"3§ = null) : §+l§
      {
         var _loc4_:§1!B§;
         (_loc4_ = new §1!B§(§`!D§)).§#!!§ = § ,§.§'"1§(param1,null,param2,param3 || §5C§.§3Y§());
         return _loc4_;
      }
      
      public static function delay(param1:§[f§, param2:Number, param3:Number = 0.0) : §[f§
      {
         return new §^!B§(param1 as §?f§,param2,param3);
      }
      
      public static function reverse(param1:§[f§, param2:Boolean = true) : §[f§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            if(param2)
            {
               addr21:
               §§push(param1.duration);
               if(_loc5_)
               {
                  §§push(§§pop() - param1.position);
                  if(!_loc4_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc4_)
                     {
                     }
                     addr46:
                     var _loc3_:* = §§pop();
                     if(!(_loc4_ && §]D§))
                     {
                        if(param1 is §2I§)
                        {
                           if(_loc5_)
                           {
                              return new §9!0§((param1 as §2I§).§]!2§,_loc3_);
                           }
                           param1 = (param1 as §9!0§).§]!2§;
                           addr91:
                        }
                        else if((param1 as Object).constructor == §9!0§)
                        {
                           §§goto(addr91);
                        }
                        return new §2I§(param1 as §?f§,_loc3_);
                     }
                     §§goto(addr91);
                  }
               }
               addr45:
               §§push(Number(§§pop()));
            }
            else
            {
               §§push(0);
               if(_loc5_)
               {
                  §§push(Number(§§pop()));
                  if(!(_loc4_ && §]D§))
                  {
                     §§goto(addr45);
                  }
               }
            }
            §§goto(addr46);
         }
         §§goto(addr21);
      }
      
      public static function §="6§(param1:Object, param2:Object, param3:Number = 1.0, param4:§6z§ = null) : §+l§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§"!&§;
         (_loc5_ = new §"!&§(§`!D§)).§#!!§ = § ,§.§?!S§(param1,null,param2);
         if(!_loc7_)
         {
            _loc5_.time = param3;
            do
            {
               §§push(_loc5_);
               if(!_loc7_)
               {
                  §§push(param4);
               }
               §§pop().§3!`§ = §&"@§.§4l§;
            }
            while(_loc7_);
            
         }
         return _loc5_;
      }
      
      public static function §@! §(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§6z§ = null) : §+l§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:§"!&§;
         (_loc6_ = new §"!&§(§`!D§)).§#!!§ = § ,§.§?!S§(param1,param2,param3);
         if(!_loc7_)
         {
            _loc6_.time = param4;
         }
         do
         {
            §§push(_loc6_);
            if(!(_loc7_ && param2))
            {
               §§push(param5);
            }
            §§pop().§3!`§ = §&"@§.§4l§;
         }
         while(!(_loc8_ || param1));
         
         return _loc6_;
      }
      
      public static function apply(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Number = 1.0, param6:§6z§ = null) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:§"!&§;
         (_loc7_ = new §"!&§(§`!D§)).§#!!§ = § ,§.§?!S§(param1,param2,param3);
         if(!(_loc9_ && param1))
         {
            _loc7_.time = param4;
            while(true)
            {
               §§push(_loc7_);
               if(!_loc9_)
               {
                  §§pop().§3!`§ = param6 || §&"@§.§4l§;
                  continue;
               }
               §§goto(addr66);
            }
         }
         §§goto(addr87);
      }
      
      public static function §[C§(param1:Object, param2:Object, param3:§?"3§ = null) : §+l§
      {
         var _loc4_:§1!B§;
         (_loc4_ = new §1!B§(§`!D§)).§#!!§ = § ,§.§'"1§(param1,param2,null,param3 || §5C§.§3Y§());
         return _loc4_;
      }
      
      public static function §'J§(... rest) : §`<§
      {
         return §^,§(rest);
      }
      
      public static function §+A§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§6z§ = null) : §+l§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc6_:§"!&§;
         (_loc6_ = new §"!&§(§`!D§)).§#!!§ = § ,§.§1!m§(param1,null,param2,param3);
         if(_loc7_ || §]D§)
         {
            _loc6_.time = param4;
            do
            {
               §§push(_loc6_);
               if(_loc7_)
               {
                  §§push(param5);
               }
               §§pop().§3!`§ = §&"@§.§4l§;
            }
            while(_loc8_);
            
         }
         return _loc6_;
      }
      
      public static function §`!b§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§6z§ = null) : §+l§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:§"!&§;
         (_loc6_ = new §"!&§(§`!D§)).§#!!§ = § ,§.§1!m§(param1,param2,null,param3);
         if(!_loc7_)
         {
            _loc6_.time = param4;
            do
            {
               §§push(_loc6_);
               if(!_loc7_)
               {
                  §§push(param5);
               }
               §§pop().§3!`§ = §&"@§.§4l§;
            }
            while(!_loc8_);
            
         }
         return _loc6_;
      }
      
      public static function §[g§(param1:Object, param2:Object, param3:Number = 1.0, param4:§6z§ = null) : §+l§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§"!&§;
         (_loc5_ = new §"!&§(§`!D§)).§#!!§ = § ,§.§?!S§(param1,param2,null);
         if(_loc6_ || param3)
         {
            _loc5_.time = param3;
         }
         do
         {
            §§push(_loc5_);
            if(_loc6_)
            {
               §§push(param4);
            }
            §§pop().§3!`§ = §&"@§.§4l§;
         }
         while(_loc7_ && param2);
         
         return _loc5_;
      }
      
      public static function §^,§(param1:Array) : §`<§
      {
         return new §0"=§(param1,§`!D§,0);
      }
   }
}
