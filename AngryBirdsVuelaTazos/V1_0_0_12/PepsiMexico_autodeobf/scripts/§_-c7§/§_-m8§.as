package §_-c7§
{
   import §_-60§.§_-5O§;
   import §_-60§.§_-P-§;
   import §_-Jd§.§_-G6§;
   import §_-Og§.§_-bt§;
   import §_-Ou§.§_-DP§;
   import §_-Rr§.§_-Sg§;
   import §_-Rr§.§_-hk§;
   import §_-Rz§.§_-89§;
   import §_-VN§.§_-FU§;
   import §_-VN§.§_-eS§;
   import §_-Xf§.§_-9x§;
   import §_-Xf§.§_-AY§;
   import §_-Xf§.§_-GP§;
   import §_-Xf§.§_-Kd§;
   import §_-Xf§.§_-Qn§;
   import §_-ZI§.§_-Vu§;
   import §_-ZI§.§_-hS§;
   import §_-ZI§.§_-k0§;
   import §_-hn§.§_-pg§;
   import §_-hn§.§_-ti§;
   import §_-hn§.§_-u9§;
   import §_-hn§.§_-uk§;
   import §_-lT§.§_-Vt§;
   import §_-lT§.§_-g7§;
   import §_-nb§.§_-HO§;
   import §_-nb§.§_-N7§;
   import §_-nb§.§_-mR§;
   import §_-ur§.§_-KN§;
   import §_-ur§.§_-rH§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class §_-m8§
   {
      
      private static var §_-dv§:§_-bt§ = new §_-bt§();
      
      private static var §_-3z§:§_-5O§ = new §_-5O§(§_-dv§);
      
      private static var §_-2E§:§_-DP§ = new §_-G6§();
      
      public static const VERSION:String = "0.2 (Alpha)";
      
      {
         §_-2E§.start();
         §_-P-§.§_-0m§(§_-dv§);
         §_-KN§.§_-0m§(§_-dv§);
         §_-rH§.§_-0m§(§_-dv§);
         §_-89§.§_-0m§(§_-dv§);
      }
      
      public function §_-m8§()
      {
         super();
      }
      
      public static function addChild(param1:DisplayObject, param2:DisplayObjectContainer) : §_-Vu§
      {
         return new §_-mR§(§_-2E§,param1,param2);
      }
      
      public static function §_-Gn§(param1:Function, param2:Array = null, param3:Boolean = false, param4:Function = null, param5:Array = null) : §_-Vu§
      {
         return new §_-HO§(§_-2E§,param1,param2,param3,param4,param5);
      }
      
      public static function §_-eA§(... rest) : §_-k0§
      {
         return §_-Jl§(rest);
      }
      
      public static function scale(param1:§_-Vu§, param2:Number) : §_-Vu§
      {
         return new §_-9x§(param1 as §_-pg§,param2);
      }
      
      public static function §_-Jl§(param1:Array) : §_-k0§
      {
         return new §_-hk§(param1,§_-2E§,0);
      }
      
      public static function §_-ST§(param1:Object, param2:Object, param3:Object = null, param4:§_-g7§ = null) : §_-hS§
      {
         var _loc5_:§_-ti§;
         (_loc5_ = new §_-ti§(§_-2E§)).§_-TR§ = §_-3z§.§_-4U§(param1,param2,param3,param4 || §_-eS§.§_-L7§());
         return _loc5_;
      }
      
      public static function §_-Ch§(param1:DisplayObject) : §_-Vu§
      {
         return new §_-N7§(§_-2E§,param1);
      }
      
      public static function slice(param1:§_-Vu§, param2:Number, param3:Number, param4:Boolean = false) : §_-Vu§
      {
         if(param4)
         {
            param2 = param1.duration * param2;
            param3 = param1.duration * param3;
         }
         if(param2 > param3)
         {
            return new §_-AY§(new §_-Kd§(param1 as §_-pg§,param3,param2),0);
         }
         return new §_-Kd§(param1 as §_-pg§,param2,param3);
      }
      
      public static function repeat(param1:§_-Vu§, param2:uint) : §_-Vu§
      {
         return new §_-GP§(param1 as §_-pg§,param2);
      }
      
      public static function §_-Nb§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§_-g7§ = null) : void
      {
         var _loc6_:§_-ti§;
         (_loc6_ = new §_-ti§(§_-2E§)).§_-TR§ = §_-3z§.§_-4U§(param1,param2,param3,param5 || §_-eS§.§_-L7§());
         _loc6_.update(param4);
      }
      
      public static function §_-6Q§(param1:Object, param2:Object, param3:Object = null, param4:Object = null, param5:Number = 1.0, param6:§_-Vt§ = null) : §_-hS§
      {
         var _loc7_:§_-uk§;
         (_loc7_ = new §_-uk§(§_-2E§)).§_-TR§ = §_-3z§.§_-QX§(param1,param2,param3,param4);
         _loc7_.time = param5;
         _loc7_.§_-H9§ = param6 || §_-FU§.§_-VE§;
         return _loc7_;
      }
      
      public static function §_-eE§(param1:Object, param2:Object, param3:§_-g7§ = null) : §_-hS§
      {
         var _loc4_:§_-ti§;
         (_loc4_ = new §_-ti§(§_-2E§)).§_-TR§ = §_-3z§.§_-4U§(param1,null,param2,param3 || §_-eS§.§_-L7§());
         return _loc4_;
      }
      
      public static function delay(param1:§_-Vu§, param2:Number, param3:Number = 0.0) : §_-Vu§
      {
         return new §_-Qn§(param1 as §_-pg§,param2,param3);
      }
      
      public static function reverse(param1:§_-Vu§, param2:Boolean = true) : §_-Vu§
      {
         var _loc3_:Number = !!param2 ? Number(param1.duration - param1.position) : Number(0);
         if(param1 is §_-AY§)
         {
            return new §_-u9§((param1 as §_-AY§).§_-hC§,_loc3_);
         }
         if((param1 as Object).constructor == §_-u9§)
         {
            param1 = (param1 as §_-u9§).§_-hC§;
         }
         return new §_-AY§(param1 as §_-pg§,_loc3_);
      }
      
      public static function §_-Cu§(param1:Object, param2:Object, param3:Number = 1.0, param4:§_-Vt§ = null) : §_-hS§
      {
         var _loc5_:§_-uk§;
         (_loc5_ = new §_-uk§(§_-2E§)).§_-TR§ = §_-3z§.§_-2J§(param1,null,param2);
         _loc5_.time = param3;
         _loc5_.§_-H9§ = param4 || §_-FU§.§_-VE§;
         return _loc5_;
      }
      
      public static function §_-Y8§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§_-Vt§ = null) : §_-hS§
      {
         var _loc6_:§_-uk§;
         (_loc6_ = new §_-uk§(§_-2E§)).§_-TR§ = §_-3z§.§_-2J§(param1,param2,param3);
         _loc6_.time = param4;
         _loc6_.§_-H9§ = param5 || §_-FU§.§_-VE§;
         return _loc6_;
      }
      
      public static function apply(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Number = 1.0, param6:§_-Vt§ = null) : void
      {
         var _loc7_:§_-uk§;
         (_loc7_ = new §_-uk§(§_-2E§)).§_-TR§ = §_-3z§.§_-2J§(param1,param2,param3);
         _loc7_.time = param4;
         _loc7_.§_-H9§ = param6 || §_-FU§.§_-VE§;
         _loc7_.update(param5);
      }
      
      public static function §_-8f§(param1:Object, param2:Object, param3:§_-g7§ = null) : §_-hS§
      {
         var _loc4_:§_-ti§;
         (_loc4_ = new §_-ti§(§_-2E§)).§_-TR§ = §_-3z§.§_-4U§(param1,param2,null,param3 || §_-eS§.§_-L7§());
         return _loc4_;
      }
      
      public static function §_-n9§(... rest) : §_-k0§
      {
         return §_-2Q§(rest);
      }
      
      public static function §_-9F§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§_-Vt§ = null) : §_-hS§
      {
         var _loc6_:§_-uk§;
         (_loc6_ = new §_-uk§(§_-2E§)).§_-TR§ = §_-3z§.§_-QX§(param1,null,param2,param3);
         _loc6_.time = param4;
         _loc6_.§_-H9§ = param5 || §_-FU§.§_-VE§;
         return _loc6_;
      }
      
      public static function §_-nA§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§_-Vt§ = null) : §_-hS§
      {
         var _loc6_:§_-uk§;
         (_loc6_ = new §_-uk§(§_-2E§)).§_-TR§ = §_-3z§.§_-QX§(param1,param2,null,param3);
         _loc6_.time = param4;
         _loc6_.§_-H9§ = param5 || §_-FU§.§_-VE§;
         return _loc6_;
      }
      
      public static function §_-FT§(param1:Object, param2:Object, param3:Number = 1.0, param4:§_-Vt§ = null) : §_-hS§
      {
         var _loc5_:§_-uk§;
         (_loc5_ = new §_-uk§(§_-2E§)).§_-TR§ = §_-3z§.§_-2J§(param1,param2,null);
         _loc5_.time = param3;
         _loc5_.§_-H9§ = param4 || §_-FU§.§_-VE§;
         return _loc5_;
      }
      
      public static function §_-2Q§(param1:Array) : §_-k0§
      {
         return new §_-Sg§(param1,§_-2E§,0);
      }
   }
}
