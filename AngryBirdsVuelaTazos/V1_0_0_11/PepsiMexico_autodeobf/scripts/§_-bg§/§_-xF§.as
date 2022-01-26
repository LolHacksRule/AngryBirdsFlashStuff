package §_-bg§
{
   import §_-0e§.§_-4l§;
   import §_-0e§.§_-J9§;
   import §_-0e§.§_-fO§;
   import §_-0e§.§_-i8§;
   import §_-1Y§.§_-De§;
   import §_-1Y§.§_-Ee§;
   import §_-5V§.§_-rV§;
   import §_-7X§.§_-R-§;
   import §_-7X§.§in §;
   import §_-Aa§.§_-Y4§;
   import §_-D8§.§_-36§;
   import §_-D8§.§_-55§;
   import §_-Fc§.§_-AW§;
   import §_-Fc§.§_-m1§;
   import §_-Sh§.§_-Lw§;
   import §_-Sh§.§_-pH§;
   import §_-Sh§.§_-wK§;
   import §_-WV§.§_-EO§;
   import §_-WV§.§_-Eo§;
   import §_-WV§.§_-OT§;
   import §_-WV§.§_-fX§;
   import §_-WV§.§_-j-§;
   import §_-ib§.§_-SV§;
   import §_-uz§.§_-2§;
   import §_-uz§.§_-un§;
   import §_-uz§.§_-wX§;
   import §_-wn§.§_-S7§;
   import §_-xG§.§_-W4§;
   import §_-xG§.§_-dg§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class §_-xF§
   {
      
      private static var §_-fM§:§_-S7§ = new §_-S7§();
      
      private static var §_-kB§:§_-36§ = new §_-36§(§_-fM§);
      
      private static var §_-7S§:§_-Y4§ = new §_-SV§();
      
      public static const VERSION:String = "0.2 (Alpha)";
      
      {
         §_-7S§.start();
         §_-55§.§_-Vo§(§_-fM§);
         §_-De§.§_-Vo§(§_-fM§);
         §_-Ee§.§_-Vo§(§_-fM§);
         §_-rV§.§_-Vo§(§_-fM§);
      }
      
      public function §_-xF§()
      {
         super();
      }
      
      public static function addChild(param1:DisplayObject, param2:DisplayObjectContainer) : §_-wX§
      {
         return new §_-Lw§(§_-7S§,param1,param2);
      }
      
      public static function §_-08§(param1:Function, param2:Array = null, param3:Boolean = false, param4:Function = null, param5:Array = null) : §_-wX§
      {
         return new §_-pH§(§_-7S§,param1,param2,param3,param4,param5);
      }
      
      public static function §_-pr§(... rest) : §_-un§
      {
         return §_-2v§(rest);
      }
      
      public static function scale(param1:§_-wX§, param2:Number) : §_-wX§
      {
         return new §_-fX§(param1 as §_-i8§,param2);
      }
      
      public static function §_-2v§(param1:Array) : §_-un§
      {
         return new §_-m1§(param1,§_-7S§,0);
      }
      
      public static function §_-RW§(param1:Object, param2:Object, param3:Object = null, param4:§_-R-§ = null) : §_-2§
      {
         var _loc5_:§_-J9§;
         (_loc5_ = new §_-J9§(§_-7S§)).§_-FJ§ = §_-kB§.§do §(param1,param2,param3,param4 || §_-W4§.§_-X8§());
         return _loc5_;
      }
      
      public static function §_-aQ§(param1:DisplayObject) : §_-wX§
      {
         return new §_-wK§(§_-7S§,param1);
      }
      
      public static function slice(param1:§_-wX§, param2:Number, param3:Number, param4:Boolean = false) : §_-wX§
      {
         if(param4)
         {
            param2 = param1.duration * param2;
            param3 = param1.duration * param3;
         }
         if(param2 > param3)
         {
            return new §_-OT§(new §_-Eo§(param1 as §_-i8§,param3,param2),0);
         }
         return new §_-Eo§(param1 as §_-i8§,param2,param3);
      }
      
      public static function repeat(param1:§_-wX§, param2:uint) : §_-wX§
      {
         return new §_-EO§(param1 as §_-i8§,param2);
      }
      
      public static function §_-wN§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§_-R-§ = null) : void
      {
         var _loc6_:§_-J9§;
         (_loc6_ = new §_-J9§(§_-7S§)).§_-FJ§ = §_-kB§.§do §(param1,param2,param3,param5 || §_-W4§.§_-X8§());
         _loc6_.update(param4);
      }
      
      public static function §_-cU§(param1:Object, param2:Object, param3:Object = null, param4:Object = null, param5:Number = 1.0, param6:§in § = null) : §_-2§
      {
         var _loc7_:§_-4l§;
         (_loc7_ = new §_-4l§(§_-7S§)).§_-FJ§ = §_-kB§.§_-wi§(param1,param2,param3,param4);
         _loc7_.time = param5;
         _loc7_.§_-HB§ = param6 || §_-dg§.§_-Tv§;
         return _loc7_;
      }
      
      public static function §_-C0§(param1:Object, param2:Object, param3:§_-R-§ = null) : §_-2§
      {
         var _loc4_:§_-J9§;
         (_loc4_ = new §_-J9§(§_-7S§)).§_-FJ§ = §_-kB§.§do §(param1,null,param2,param3 || §_-W4§.§_-X8§());
         return _loc4_;
      }
      
      public static function delay(param1:§_-wX§, param2:Number, param3:Number = 0.0) : §_-wX§
      {
         return new §_-j-§(param1 as §_-i8§,param2,param3);
      }
      
      public static function reverse(param1:§_-wX§, param2:Boolean = true) : §_-wX§
      {
         var _loc3_:Number = !!param2 ? Number(param1.duration - param1.position) : Number(0);
         if(param1 is §_-OT§)
         {
            return new §_-fO§((param1 as §_-OT§).§_-kA§,_loc3_);
         }
         if((param1 as Object).constructor == §_-fO§)
         {
            param1 = (param1 as §_-fO§).§_-kA§;
         }
         return new §_-OT§(param1 as §_-i8§,_loc3_);
      }
      
      public static function §_-PV§(param1:Object, param2:Object, param3:Number = 1.0, param4:§in § = null) : §_-2§
      {
         var _loc5_:§_-4l§;
         (_loc5_ = new §_-4l§(§_-7S§)).§_-FJ§ = §_-kB§.§_-KL§(param1,null,param2);
         _loc5_.time = param3;
         _loc5_.§_-HB§ = param4 || §_-dg§.§_-Tv§;
         return _loc5_;
      }
      
      public static function §_-JE§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§in § = null) : §_-2§
      {
         var _loc6_:§_-4l§;
         (_loc6_ = new §_-4l§(§_-7S§)).§_-FJ§ = §_-kB§.§_-KL§(param1,param2,param3);
         _loc6_.time = param4;
         _loc6_.§_-HB§ = param5 || §_-dg§.§_-Tv§;
         return _loc6_;
      }
      
      public static function apply(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Number = 1.0, param6:§in § = null) : void
      {
         var _loc7_:§_-4l§;
         (_loc7_ = new §_-4l§(§_-7S§)).§_-FJ§ = §_-kB§.§_-KL§(param1,param2,param3);
         _loc7_.time = param4;
         _loc7_.§_-HB§ = param6 || §_-dg§.§_-Tv§;
         _loc7_.update(param5);
      }
      
      public static function §_-D5§(param1:Object, param2:Object, param3:§_-R-§ = null) : §_-2§
      {
         var _loc4_:§_-J9§;
         (_loc4_ = new §_-J9§(§_-7S§)).§_-FJ§ = §_-kB§.§do §(param1,param2,null,param3 || §_-W4§.§_-X8§());
         return _loc4_;
      }
      
      public static function §_-fg§(... rest) : §_-un§
      {
         return §_-Ud§(rest);
      }
      
      public static function §_-RL§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§in § = null) : §_-2§
      {
         var _loc6_:§_-4l§;
         (_loc6_ = new §_-4l§(§_-7S§)).§_-FJ§ = §_-kB§.§_-wi§(param1,null,param2,param3);
         _loc6_.time = param4;
         _loc6_.§_-HB§ = param5 || §_-dg§.§_-Tv§;
         return _loc6_;
      }
      
      public static function §_-gE§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§in § = null) : §_-2§
      {
         var _loc6_:§_-4l§;
         (_loc6_ = new §_-4l§(§_-7S§)).§_-FJ§ = §_-kB§.§_-wi§(param1,param2,null,param3);
         _loc6_.time = param4;
         _loc6_.§_-HB§ = param5 || §_-dg§.§_-Tv§;
         return _loc6_;
      }
      
      public static function §_-kn§(param1:Object, param2:Object, param3:Number = 1.0, param4:§in § = null) : §_-2§
      {
         var _loc5_:§_-4l§;
         (_loc5_ = new §_-4l§(§_-7S§)).§_-FJ§ = §_-kB§.§_-KL§(param1,param2,null);
         _loc5_.time = param3;
         _loc5_.§_-HB§ = param4 || §_-dg§.§_-Tv§;
         return _loc5_;
      }
      
      public static function §_-Ud§(param1:Array) : §_-un§
      {
         return new §_-AW§(param1,§_-7S§,0);
      }
   }
}
