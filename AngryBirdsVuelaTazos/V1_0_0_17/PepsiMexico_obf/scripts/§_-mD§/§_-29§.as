package §_-mD§
{
   import §_-20§.§_-Wi§;
   import §_-20§.§_-eS§;
   import §_-20§.§_-j5§;
   import §_-5y§.§_-Bf§;
   import §_-5y§.§_-Yj§;
   import §_-Bt§.§_-9U§;
   import §_-Bt§.§_-wX§;
   import §_-V7§.§_-8P§;
   import §_-V7§.§_-M9§;
   import §_-VH§.§_-7W§;
   import §_-VH§.§_-HI§;
   import §_-VH§.§_-QD§;
   import §_-VH§.§_-jE§;
   import §_-VH§.§_-p1§;
   import §_-Xz§.§_-Ps§;
   import §_-hG§.§_-S4§;
   import §_-hG§.§_-l§;
   import §_-ix§.§_-5o§;
   import §_-vg§.§_-L9§;
   import §_-vg§.§_-wZ§;
   import §_-vg§.§_-z4§;
   import §_-wC§.§_-f§;
   import §_-wT§.§_-c9§;
   import §_-wp§.§_-3L§;
   import §_-wp§.§_-nL§;
   import §_-xo§.§_-Ar§;
   import §_-xo§.§_-Lk§;
   import §_-xo§.§_-OQ§;
   import §_-xo§.§_-bw§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class §_-29§
   {
      
      private static var §_-1P§:§_-c9§;
      
      private static var §_-kv§:§_-M9§;
      
      private static var §_-0A§:§_-Ps§;
      
      public static const VERSION:String = "0.2 (Alpha)";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §_-0A§ = new §_-f§();
            §_-0A§.start();
            §_-1P§ = new §_-c9§();
            §_-kv§ = new §_-M9§(§_-1P§);
            if(!(_loc2_ && _loc1_))
            {
               §_-8P§.§_-mO§(§_-1P§);
               if(_loc1_ || _loc1_)
               {
                  §_-3L§.§_-mO§(§_-1P§);
                  addr62:
                  if(!_loc2_)
                  {
                     §_-nL§.§_-mO§(§_-1P§);
                  }
               }
               §_-5o§.§_-mO§(§_-1P§);
               return;
            }
         }
         §§goto(addr62);
      }
      
      public function §_-29§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      public static function addChild(param1:DisplayObject, param2:DisplayObjectContainer) : §_-j5§
      {
         return new §_-L9§(§_-0A§,param1,param2);
      }
      
      public static function §_-ob§(param1:Function, param2:Array = null, param3:Boolean = false, param4:Function = null, param5:Array = null) : §_-j5§
      {
         return new §_-wZ§(§_-0A§,param1,param2,param3,param4,param5);
      }
      
      public static function §_-Y5§(... rest) : §_-eS§
      {
         return §_-Vx§(rest);
      }
      
      public static function scale(param1:§_-j5§, param2:Number) : §_-j5§
      {
         return new §_-QD§(param1 as §_-Lk§,param2);
      }
      
      public static function §_-Vx§(param1:Array) : §_-eS§
      {
         return new §_-9U§(param1,§_-0A§,0);
      }
      
      public static function §_-hy§(param1:Object, param2:Object, param3:Object = null, param4:§_-Bf§ = null) : §_-Wi§
      {
         var _loc5_:§_-OQ§;
         (_loc5_ = new §_-OQ§(§_-0A§)).§_-tz§ = §_-kv§.§_-2W§(param1,param2,param3,param4 || §_-l§.§_-Cp§());
         return _loc5_;
      }
      
      public static function §_-Lh§(param1:DisplayObject) : §_-j5§
      {
         return new §_-z4§(§_-0A§,param1);
      }
      
      public static function slice(param1:§_-j5§, param2:Number, param3:Number, param4:Boolean = false) : §_-j5§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            if(param4)
            {
               if(_loc6_)
               {
                  §§push(param1.duration);
                  §§push(param2);
                  if(_loc6_ || param2)
                  {
                     param2 = §§pop() * §§pop();
                     if(!_loc5_)
                     {
                        §§goto(addr35);
                     }
                     §§goto(addr62);
                  }
                  §§goto(addr52);
               }
               addr35:
               §§push(param1.duration);
               §§push(param3);
               if(_loc6_ || §_-29§)
               {
                  addr52:
                  param3 = §§pop() * §§pop();
                  §§goto(addr72);
               }
               if(§§pop() > §§pop())
               {
                  if(!(_loc5_ && param1))
                  {
                     addr72:
                     if(!(_loc5_ && §_-29§))
                     {
                        addr62:
                        §§push(param2);
                        §§push(param3);
                     }
                     return new §_-7W§(new §_-jE§(param1 as §_-Lk§,param3,param2),0);
                  }
               }
               return new §_-jE§(param1 as §_-Lk§,param2,param3);
            }
            §§goto(addr62);
         }
         §§goto(addr52);
      }
      
      public static function repeat(param1:§_-j5§, param2:uint) : §_-j5§
      {
         return new §_-HI§(param1 as §_-Lk§,param2);
      }
      
      public static function §_-AF§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§_-Bf§ = null) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:§_-OQ§;
         (_loc6_ = new §_-OQ§(§_-0A§)).§_-tz§ = §_-kv§.§_-2W§(param1,param2,param3,param5 || §_-l§.§_-Cp§());
         if(_loc8_)
         {
            _loc6_.update(param4);
         }
      }
      
      public static function §_-GE§(param1:Object, param2:Object, param3:Object = null, param4:Object = null, param5:Number = 1.0, param6:§_-Yj§ = null) : §_-Wi§
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:§_-bw§;
         (_loc7_ = new §_-bw§(§_-0A§)).§_-tz§ = §_-kv§.§_-Mk§(param1,param2,param3,param4);
         if(!_loc8_)
         {
            _loc7_.time = param5;
            if(_loc9_)
            {
               §§push(_loc7_);
               if(!(_loc8_ && param2))
               {
                  §§pop().§_-5E§ = param6 || §_-S4§.§_-ui§;
                  §§goto(addr65);
               }
               §§goto(addr61);
            }
         }
         addr65:
         return _loc7_;
      }
      
      public static function §_-8k§(param1:Object, param2:Object, param3:§_-Bf§ = null) : §_-Wi§
      {
         var _loc4_:§_-OQ§;
         (_loc4_ = new §_-OQ§(§_-0A§)).§_-tz§ = §_-kv§.§_-2W§(param1,null,param2,param3 || §_-l§.§_-Cp§());
         return _loc4_;
      }
      
      public static function delay(param1:§_-j5§, param2:Number, param3:Number = 0.0) : §_-j5§
      {
         return new §_-p1§(param1 as §_-Lk§,param2,param3);
      }
      
      public static function reverse(param1:§_-j5§, param2:Boolean = true) : §_-j5§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            if(param2)
            {
               addr17:
               §§push(param1.duration);
               if(!(_loc5_ && param1))
               {
                  §§push(§§pop() - param1.position);
                  if(!_loc5_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc4_ || param2)
                     {
                        addr53:
                        §§push(Number(§§pop()));
                     }
                  }
               }
               else
               {
                  addr43:
                  §§push(Number(§§pop()));
                  if(_loc4_)
                  {
                     §§goto(addr53);
                  }
               }
            }
            else
            {
               §§push(0);
               if(_loc4_)
               {
                  §§goto(addr43);
               }
            }
            var _loc3_:* = §§pop();
            if(!_loc5_)
            {
               if(param1 is §_-7W§)
               {
                  if(_loc4_ || param2)
                  {
                     §§goto(addr68);
                  }
               }
               if((param1 as Object).constructor == §_-Ar§)
               {
                  param1 = (param1 as §_-Ar§).§_-Y1§;
               }
               return new §_-7W§(param1 as §_-Lk§,_loc3_);
            }
            addr68:
            return new §_-Ar§((param1 as §_-7W§).§_-Y1§,_loc3_);
         }
         §§goto(addr17);
      }
      
      public static function §_-Af§(param1:Object, param2:Object, param3:Number = 1.0, param4:§_-Yj§ = null) : §_-Wi§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§_-bw§;
         (_loc5_ = new §_-bw§(§_-0A§)).§_-tz§ = §_-kv§.§_-6D§(param1,null,param2);
         if(!_loc7_)
         {
            _loc5_.time = param3;
            if(_loc6_)
            {
               addr39:
               §§push(_loc5_);
               if(!_loc7_)
               {
                  §§pop().§_-5E§ = param4 || §_-S4§.§_-ui§;
                  §§goto(addr58);
               }
               §§goto(addr54);
            }
            addr58:
            return _loc5_;
         }
         §§goto(addr39);
      }
      
      public static function §_-NW§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§_-Yj§ = null) : §_-Wi§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc6_:§_-bw§;
         (_loc6_ = new §_-bw§(§_-0A§)).§_-tz§ = §_-kv§.§_-6D§(param1,param2,param3);
         if(_loc7_ || param3)
         {
            _loc6_.time = param4;
            if(!(_loc8_ && param1))
            {
               addr49:
               §§push(_loc6_);
               if(_loc7_)
               {
                  §§pop().§_-5E§ = param5 || §_-S4§.§_-ui§;
                  §§goto(addr68);
               }
               §§goto(addr64);
            }
            addr68:
            return _loc6_;
         }
         §§goto(addr49);
      }
      
      public static function apply(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Number = 1.0, param6:§_-Yj§ = null) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:§_-bw§;
         (_loc7_ = new §_-bw§(§_-0A§)).§_-tz§ = §_-kv§.§_-6D§(param1,param2,param3);
         if(!_loc9_)
         {
            _loc7_.time = param4;
            if(_loc8_ || param1)
            {
               addr44:
               §§push(_loc7_);
               if(_loc8_ || param2)
               {
                  §§pop().§_-5E§ = param6 || §_-S4§.§_-ui§;
                  if(_loc8_ || param3)
                  {
                     _loc7_.update(param5);
                  }
                  §§goto(addr78);
               }
               §§goto(addr57);
            }
            addr78:
            return;
         }
         §§goto(addr44);
      }
      
      public static function § if§(param1:Object, param2:Object, param3:§_-Bf§ = null) : §_-Wi§
      {
         var _loc4_:§_-OQ§;
         (_loc4_ = new §_-OQ§(§_-0A§)).§_-tz§ = §_-kv§.§_-2W§(param1,param2,null,param3 || §_-l§.§_-Cp§());
         return _loc4_;
      }
      
      public static function §_-qG§(... rest) : §_-eS§
      {
         return §_-iY§(rest);
      }
      
      public static function §_-RT§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§_-Yj§ = null) : §_-Wi§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc6_:§_-bw§;
         (_loc6_ = new §_-bw§(§_-0A§)).§_-tz§ = §_-kv§.§_-Mk§(param1,null,param2,param3);
         if(_loc7_)
         {
            _loc6_.time = param4;
            if(!_loc8_)
            {
               §§push(_loc6_);
               if(_loc7_)
               {
                  §§pop().§_-5E§ = param5 || §_-S4§.§_-ui§;
                  §§goto(addr59);
               }
               §§goto(addr55);
            }
         }
         addr59:
         return _loc6_;
      }
      
      public static function §_-eF§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§_-Yj§ = null) : §_-Wi§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:§_-bw§;
         (_loc6_ = new §_-bw§(§_-0A§)).§_-tz§ = §_-kv§.§_-Mk§(param1,param2,null,param3);
         if(_loc8_)
         {
            _loc6_.time = param4;
            if(_loc8_ || §_-29§)
            {
               addr46:
               §§push(_loc6_);
               if(_loc8_)
               {
                  §§pop().§_-5E§ = param5 || §_-S4§.§_-ui§;
                  §§goto(addr65);
               }
               §§goto(addr61);
            }
            addr65:
            return _loc6_;
         }
         §§goto(addr46);
      }
      
      public static function §_-9N§(param1:Object, param2:Object, param3:Number = 1.0, param4:§_-Yj§ = null) : §_-Wi§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§_-bw§;
         (_loc5_ = new §_-bw§(§_-0A§)).§_-tz§ = §_-kv§.§_-6D§(param1,param2,null);
         if(_loc6_ || param3)
         {
            _loc5_.time = param3;
            if(_loc6_)
            {
               addr44:
               §§push(_loc5_);
               if(_loc6_ || §_-29§)
               {
                  §§pop().§_-5E§ = param4 || §_-S4§.§_-ui§;
                  §§goto(addr68);
               }
               §§goto(addr64);
            }
            addr68:
            return _loc5_;
         }
         §§goto(addr44);
      }
      
      public static function §_-iY§(param1:Array) : §_-eS§
      {
         return new §_-wX§(param1,§_-0A§,0);
      }
   }
}
