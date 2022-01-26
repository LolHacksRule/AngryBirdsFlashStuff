package §in §
{
   import §_-3I§.§_-9a§;
   import §_-3I§.§_-eg§;
   import §_-3I§.§_-v9§;
   import §_-6M§.§_-hl§;
   import §_-6M§.§break§;
   import §_-9w§.§_-1U§;
   import §_-9w§.§_-PC§;
   import §_-JU§.§_-Is§;
   import §_-JU§.§_-lc§;
   import §_-Kj§.§_-6F§;
   import §_-Kj§.§_-8u§;
   import §_-Kj§.§_-j2§;
   import §_-SJ§.§_-Q5§;
   import §_-aL§.§_-7t§;
   import §_-e1§.§_-YI§;
   import §_-e1§.§_-cX§;
   import §_-ej§.§_-2i§;
   import §_-ej§.§_-ax§;
   import §_-nZ§.§_-qJ§;
   import §_-oE§.§_-77§;
   import §_-oE§.§_-7k§;
   import §_-oE§.§_-Am§;
   import §_-oE§.§_-Ta§;
   import §_-oE§.§_-VL§;
   import §_-rM§.§_-1E§;
   import §_-sN§.§_-eX§;
   import §_-sN§.§_-oe§;
   import §_-sN§.§_-qR§;
   import §_-sN§.§_-x5§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class §_-tX§
   {
      
      private static var §_-P§:§_-1E§ = new §_-1E§();
      
      private static var §_-hu§:§_-1U§ = new §_-1U§(§_-P§);
      
      private static var §_-MR§:§_-Q5§ = new §_-7t§();
      
      public static const VERSION:String = "0.2 (Alpha)";
      
      {
         §_-MR§.start();
         §_-PC§.§_-Mv§(§_-P§);
         §_-cX§.§_-Mv§(§_-P§);
         §_-YI§.§_-Mv§(§_-P§);
         §_-qJ§.§_-Mv§(§_-P§);
      }
      
      public function §_-tX§()
      {
         super();
      }
      
      public static function addChild(param1:DisplayObject, param2:DisplayObjectContainer) : §_-8u§
      {
         return new §_-v9§(§_-MR§,param1,param2);
      }
      
      public static function §_-ql§(param1:Function, param2:Array = null, param3:Boolean = false, param4:Function = null, param5:Array = null) : §_-8u§
      {
         return new §_-9a§(§_-MR§,param1,param2,param3,param4,param5);
      }
      
      public static function §_-oj§(... rest) : §_-j2§
      {
         return §_-3M§(rest);
      }
      
      public static function scale(param1:§_-8u§, param2:Number) : §_-8u§
      {
         return new §_-VL§(param1 as §_-x5§,param2);
      }
      
      public static function §_-3M§(param1:Array) : §_-j2§
      {
         return new §break§(param1,§_-MR§,0);
      }
      
      public static function §_-Aw§(param1:Object, param2:Object, param3:Object = null, param4:§_-Is§ = null) : §_-6F§
      {
         var _loc5_:§_-eX§;
         (_loc5_ = new §_-eX§(§_-MR§)).§_-pQ§ = §_-hu§.§_-12§(param1,param2,param3,param4 || §_-ax§.§_-hP§());
         return _loc5_;
      }
      
      public static function §_-R1§(param1:DisplayObject) : §_-8u§
      {
         return new §_-eg§(§_-MR§,param1);
      }
      
      public static function slice(param1:§_-8u§, param2:Number, param3:Number, param4:Boolean = false) : §_-8u§
      {
         if(param4)
         {
            param2 = param1.duration * param2;
            param3 = param1.duration * param3;
         }
         if(param2 > param3)
         {
            return new §_-77§(new §_-7k§(param1 as §_-x5§,param3,param2),0);
         }
         return new §_-7k§(param1 as §_-x5§,param2,param3);
      }
      
      public static function repeat(param1:§_-8u§, param2:uint) : §_-8u§
      {
         return new §_-Ta§(param1 as §_-x5§,param2);
      }
      
      public static function §_-d6§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§_-Is§ = null) : void
      {
         var _loc6_:§_-eX§;
         (_loc6_ = new §_-eX§(§_-MR§)).§_-pQ§ = §_-hu§.§_-12§(param1,param2,param3,param5 || §_-ax§.§_-hP§());
         _loc6_.update(param4);
      }
      
      public static function §_-ex§(param1:Object, param2:Object, param3:Object = null, param4:Object = null, param5:Number = 1.0, param6:§_-lc§ = null) : §_-6F§
      {
         var _loc7_:§_-oe§;
         (_loc7_ = new §_-oe§(§_-MR§)).§_-pQ§ = §_-hu§.§_-CG§(param1,param2,param3,param4);
         _loc7_.time = param5;
         _loc7_.§_-gl§ = param6 || §_-2i§.§_-DF§;
         return _loc7_;
      }
      
      public static function §_-Zu§(param1:Object, param2:Object, param3:§_-Is§ = null) : §_-6F§
      {
         var _loc4_:§_-eX§;
         (_loc4_ = new §_-eX§(§_-MR§)).§_-pQ§ = §_-hu§.§_-12§(param1,null,param2,param3 || §_-ax§.§_-hP§());
         return _loc4_;
      }
      
      public static function delay(param1:§_-8u§, param2:Number, param3:Number = 0.0) : §_-8u§
      {
         return new §_-Am§(param1 as §_-x5§,param2,param3);
      }
      
      public static function reverse(param1:§_-8u§, param2:Boolean = true) : §_-8u§
      {
         var _loc3_:Number = !!param2 ? Number(param1.duration - param1.position) : Number(0);
         if(param1 is §_-77§)
         {
            return new §_-qR§((param1 as §_-77§).§false§,_loc3_);
         }
         if((param1 as Object).constructor == §_-qR§)
         {
            param1 = (param1 as §_-qR§).§false§;
         }
         return new §_-77§(param1 as §_-x5§,_loc3_);
      }
      
      public static function §_-Fo§(param1:Object, param2:Object, param3:Number = 1.0, param4:§_-lc§ = null) : §_-6F§
      {
         var _loc5_:§_-oe§;
         (_loc5_ = new §_-oe§(§_-MR§)).§_-pQ§ = §_-hu§.§_-nB§(param1,null,param2);
         _loc5_.time = param3;
         _loc5_.§_-gl§ = param4 || §_-2i§.§_-DF§;
         return _loc5_;
      }
      
      public static function §finally§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§_-lc§ = null) : §_-6F§
      {
         var _loc6_:§_-oe§;
         (_loc6_ = new §_-oe§(§_-MR§)).§_-pQ§ = §_-hu§.§_-nB§(param1,param2,param3);
         _loc6_.time = param4;
         _loc6_.§_-gl§ = param5 || §_-2i§.§_-DF§;
         return _loc6_;
      }
      
      public static function apply(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Number = 1.0, param6:§_-lc§ = null) : void
      {
         var _loc7_:§_-oe§;
         (_loc7_ = new §_-oe§(§_-MR§)).§_-pQ§ = §_-hu§.§_-nB§(param1,param2,param3);
         _loc7_.time = param4;
         _loc7_.§_-gl§ = param6 || §_-2i§.§_-DF§;
         _loc7_.update(param5);
      }
      
      public static function §_-jX§(param1:Object, param2:Object, param3:§_-Is§ = null) : §_-6F§
      {
         var _loc4_:§_-eX§;
         (_loc4_ = new §_-eX§(§_-MR§)).§_-pQ§ = §_-hu§.§_-12§(param1,param2,null,param3 || §_-ax§.§_-hP§());
         return _loc4_;
      }
      
      public static function §_-Ur§(... rest) : §_-j2§
      {
         return §_-l1§(rest);
      }
      
      public static function §_-QZ§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§_-lc§ = null) : §_-6F§
      {
         var _loc6_:§_-oe§;
         (_loc6_ = new §_-oe§(§_-MR§)).§_-pQ§ = §_-hu§.§_-CG§(param1,null,param2,param3);
         _loc6_.time = param4;
         _loc6_.§_-gl§ = param5 || §_-2i§.§_-DF§;
         return _loc6_;
      }
      
      public static function §_-GM§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§_-lc§ = null) : §_-6F§
      {
         var _loc6_:§_-oe§;
         (_loc6_ = new §_-oe§(§_-MR§)).§_-pQ§ = §_-hu§.§_-CG§(param1,param2,null,param3);
         _loc6_.time = param4;
         _loc6_.§_-gl§ = param5 || §_-2i§.§_-DF§;
         return _loc6_;
      }
      
      public static function §_-rb§(param1:Object, param2:Object, param3:Number = 1.0, param4:§_-lc§ = null) : §_-6F§
      {
         var _loc5_:§_-oe§;
         (_loc5_ = new §_-oe§(§_-MR§)).§_-pQ§ = §_-hu§.§_-nB§(param1,param2,null);
         _loc5_.time = param3;
         _loc5_.§_-gl§ = param4 || §_-2i§.§_-DF§;
         return _loc5_;
      }
      
      public static function §_-l1§(param1:Array) : §_-j2§
      {
         return new §_-hl§(param1,§_-MR§,0);
      }
   }
}
