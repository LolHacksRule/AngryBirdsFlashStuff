package §_-He§
{
   import §_-G3§.§_-FK§;
   import §_-G3§.§_-ew§;
   import §_-GS§.§_-Ft§;
   import §_-GS§.§_-pT§;
   import §_-LP§.§_-FM§;
   import §_-LP§.§_-PH§;
   import §_-LP§.§_-Tq§;
   import §_-My§.§_-D8§;
   import §_-My§.§_-J9§;
   import §_-My§.§_-hK§;
   import §_-My§.§_-sA§;
   import §_-OS§.§_-rl§;
   import §_-T5§.§_-c7§;
   import §_-Wa§.§_-8X§;
   import §_-Wa§.§_-wQ§;
   import §_-bQ§.§_-GB§;
   import §_-bQ§.§_-TP§;
   import §_-bQ§.§_-ZR§;
   import §_-bQ§.§_-aa§;
   import §_-bQ§.§_-n0§;
   import §_-eW§.§_-Kv§;
   import §_-eW§.§_-eD§;
   import §_-h2§.§_-CC§;
   import §_-lV§.§_-mC§;
   import §_-lV§.§_-r4§;
   import §_-lp§.§_-NM§;
   import §_-lp§.§_-ox§;
   import §_-lp§.each;
   import §_-wR§.§_-jE§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class §_-05§
   {
      
      private static var §_-N-§:§_-rl§ = new §_-rl§();
      
      private static var §_-WO§:§_-r4§ = new §_-r4§(§_-N-§);
      
      private static var §function§:§_-CC§ = new §_-c7§();
      
      public static const VERSION:String = "0.2 (Alpha)";
      
      {
         §function§.start();
         §_-mC§.§_-5B§(§_-N-§);
         §_-ew§.§_-5B§(§_-N-§);
         §_-FK§.§_-5B§(§_-N-§);
         §_-jE§.§_-5B§(§_-N-§);
      }
      
      public function §_-05§()
      {
         super();
      }
      
      public static function addChild(param1:DisplayObject, param2:DisplayObjectContainer) : §_-PH§
      {
         return new §_-NM§(§function§,param1,param2);
      }
      
      public static function §_-6W§(param1:Function, param2:Array = null, param3:Boolean = false, param4:Function = null, param5:Array = null) : §_-PH§
      {
         return new each(§function§,param1,param2,param3,param4,param5);
      }
      
      public static function §_-5y§(... rest) : §_-FM§
      {
         return §_-8x§(rest);
      }
      
      public static function scale(param1:§_-PH§, param2:Number) : §_-PH§
      {
         return new §_-ZR§(param1 as §_-hK§,param2);
      }
      
      public static function §_-8x§(param1:Array) : §_-FM§
      {
         return new §_-pT§(param1,§function§,0);
      }
      
      public static function §_-sN§(param1:Object, param2:Object, param3:Object = null, param4:§_-8X§ = null) : §_-Tq§
      {
         var _loc5_:§_-D8§;
         (_loc5_ = new §_-D8§(§function§)).§_-EO§ = §_-WO§.§_-i4§(param1,param2,param3,param4 || §_-Kv§.§_-Gd§());
         return _loc5_;
      }
      
      public static function §_-N7§(param1:DisplayObject) : §_-PH§
      {
         return new §_-ox§(§function§,param1);
      }
      
      public static function slice(param1:§_-PH§, param2:Number, param3:Number, param4:Boolean = false) : §_-PH§
      {
         if(param4)
         {
            param2 = param1.duration * param2;
            param3 = param1.duration * param3;
         }
         if(param2 > param3)
         {
            return new §_-n0§(new §_-GB§(param1 as §_-hK§,param3,param2),0);
         }
         return new §_-GB§(param1 as §_-hK§,param2,param3);
      }
      
      public static function repeat(param1:§_-PH§, param2:uint) : §_-PH§
      {
         return new §_-TP§(param1 as §_-hK§,param2);
      }
      
      public static function §_-DM§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§_-8X§ = null) : void
      {
         var _loc6_:§_-D8§;
         (_loc6_ = new §_-D8§(§function§)).§_-EO§ = §_-WO§.§_-i4§(param1,param2,param3,param5 || §_-Kv§.§_-Gd§());
         _loc6_.update(param4);
      }
      
      public static function §_-YR§(param1:Object, param2:Object, param3:Object = null, param4:Object = null, param5:Number = 1.0, param6:§_-wQ§ = null) : §_-Tq§
      {
         var _loc7_:§_-sA§;
         (_loc7_ = new §_-sA§(§function§)).§_-EO§ = §_-WO§.§_-oV§(param1,param2,param3,param4);
         _loc7_.time = param5;
         _loc7_.§_-4g§ = param6 || §_-eD§.§_-jo§;
         return _loc7_;
      }
      
      public static function §_-ZJ§(param1:Object, param2:Object, param3:§_-8X§ = null) : §_-Tq§
      {
         var _loc4_:§_-D8§;
         (_loc4_ = new §_-D8§(§function§)).§_-EO§ = §_-WO§.§_-i4§(param1,null,param2,param3 || §_-Kv§.§_-Gd§());
         return _loc4_;
      }
      
      public static function delay(param1:§_-PH§, param2:Number, param3:Number = 0.0) : §_-PH§
      {
         return new §_-aa§(param1 as §_-hK§,param2,param3);
      }
      
      public static function reverse(param1:§_-PH§, param2:Boolean = true) : §_-PH§
      {
         var _loc3_:Number = !!param2 ? Number(param1.duration - param1.position) : Number(0);
         if(param1 is §_-n0§)
         {
            return new §_-J9§((param1 as §_-n0§).§_-fP§,_loc3_);
         }
         if((param1 as Object).constructor == §_-J9§)
         {
            param1 = (param1 as §_-J9§).§_-fP§;
         }
         return new §_-n0§(param1 as §_-hK§,_loc3_);
      }
      
      public static function §_-hQ§(param1:Object, param2:Object, param3:Number = 1.0, param4:§_-wQ§ = null) : §_-Tq§
      {
         var _loc5_:§_-sA§;
         (_loc5_ = new §_-sA§(§function§)).§_-EO§ = §_-WO§.§_-em§(param1,null,param2);
         _loc5_.time = param3;
         _loc5_.§_-4g§ = param4 || §_-eD§.§_-jo§;
         return _loc5_;
      }
      
      public static function §_-Yr§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§_-wQ§ = null) : §_-Tq§
      {
         var _loc6_:§_-sA§;
         (_loc6_ = new §_-sA§(§function§)).§_-EO§ = §_-WO§.§_-em§(param1,param2,param3);
         _loc6_.time = param4;
         _loc6_.§_-4g§ = param5 || §_-eD§.§_-jo§;
         return _loc6_;
      }
      
      public static function apply(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Number = 1.0, param6:§_-wQ§ = null) : void
      {
         var _loc7_:§_-sA§;
         (_loc7_ = new §_-sA§(§function§)).§_-EO§ = §_-WO§.§_-em§(param1,param2,param3);
         _loc7_.time = param4;
         _loc7_.§_-4g§ = param6 || §_-eD§.§_-jo§;
         _loc7_.update(param5);
      }
      
      public static function §_-iu§(param1:Object, param2:Object, param3:§_-8X§ = null) : §_-Tq§
      {
         var _loc4_:§_-D8§;
         (_loc4_ = new §_-D8§(§function§)).§_-EO§ = §_-WO§.§_-i4§(param1,param2,null,param3 || §_-Kv§.§_-Gd§());
         return _loc4_;
      }
      
      public static function §_-Dy§(... rest) : §_-FM§
      {
         return §_-7B§(rest);
      }
      
      public static function §_-S0§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§_-wQ§ = null) : §_-Tq§
      {
         var _loc6_:§_-sA§;
         (_loc6_ = new §_-sA§(§function§)).§_-EO§ = §_-WO§.§_-oV§(param1,null,param2,param3);
         _loc6_.time = param4;
         _loc6_.§_-4g§ = param5 || §_-eD§.§_-jo§;
         return _loc6_;
      }
      
      public static function §_-xJ§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§_-wQ§ = null) : §_-Tq§
      {
         var _loc6_:§_-sA§;
         (_loc6_ = new §_-sA§(§function§)).§_-EO§ = §_-WO§.§_-oV§(param1,param2,null,param3);
         _loc6_.time = param4;
         _loc6_.§_-4g§ = param5 || §_-eD§.§_-jo§;
         return _loc6_;
      }
      
      public static function §_-cc§(param1:Object, param2:Object, param3:Number = 1.0, param4:§_-wQ§ = null) : §_-Tq§
      {
         var _loc5_:§_-sA§;
         (_loc5_ = new §_-sA§(§function§)).§_-EO§ = §_-WO§.§_-em§(param1,param2,null);
         _loc5_.time = param3;
         _loc5_.§_-4g§ = param4 || §_-eD§.§_-jo§;
         return _loc5_;
      }
      
      public static function §_-7B§(param1:Array) : §_-FM§
      {
         return new §_-Ft§(param1,§function§,0);
      }
   }
}
