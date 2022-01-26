package §_-Qn§
{
   import §_-12§.§_-3n§;
   import §_-12§.§_-7l§;
   import §_-12§.§_-9G§;
   import §_-5R§.§_-V5§;
   import §_-8p§.§_-dW§;
   import §_-C5§.§_-3l§;
   import §_-DH§.§_-RX§;
   import §_-DH§.§_-b1§;
   import §_-Rh§.§_-Pt§;
   import §_-Rh§.§_-fv§;
   import §_-ST§.§_-vi§;
   import §_-Z2§.§_-5H§;
   import §_-Z2§.§_-ck§;
   import §_-Z2§.§_-h8§;
   import §_-Z2§.§_-vR§;
   import §_-Z2§.§return§;
   import §_-kn§.§_-Am§;
   import §_-kn§.§_-kA§;
   import §_-px§.§_-7R§;
   import §_-px§.§_-GF§;
   import §_-px§.§_-Lr§;
   import §_-wo§.§_-4B§;
   import §_-wo§.§_-Ff§;
   import §_-wo§.§_-dE§;
   import §_-wo§.§_-eS§;
   import §do §.§_-Hy§;
   import §do §.§_-SN§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import §with§.§_-7r§;
   import §with§.§_-sw§;
   
   public class §_-AG§
   {
      
      private static var §_-Sh§:§_-3l§ = new §_-3l§();
      
      private static var §_-tB§:§_-RX§ = new §_-RX§(§_-Sh§);
      
      private static var §_-ac§:§_-dW§ = new §_-vi§();
      
      public static const VERSION:String = "0.2 (Alpha)";
      
      {
         §_-ac§.start();
         §_-b1§.§_-FR§(§_-Sh§);
         §_-fv§.§_-FR§(§_-Sh§);
         §_-Pt§.§_-FR§(§_-Sh§);
         §_-V5§.§_-FR§(§_-Sh§);
      }
      
      public function §_-AG§()
      {
         super();
      }
      
      public static function addChild(param1:DisplayObject, param2:DisplayObjectContainer) : §_-7l§
      {
         return new §_-Lr§(§_-ac§,param1,param2);
      }
      
      public static function §_-DV§(param1:Function, param2:Array = null, param3:Boolean = false, param4:Function = null, param5:Array = null) : §_-7l§
      {
         return new §_-7R§(§_-ac§,param1,param2,param3,param4,param5);
      }
      
      public static function §_-ej§(... rest) : §_-3n§
      {
         return §_-wa§(rest);
      }
      
      public static function scale(param1:§_-7l§, param2:Number) : §_-7l§
      {
         return new §_-h8§(param1 as §_-Ff§,param2);
      }
      
      public static function §_-wa§(param1:Array) : §_-3n§
      {
         return new §_-SN§(param1,§_-ac§,0);
      }
      
      public static function §_-VP§(param1:Object, param2:Object, param3:Object = null, param4:§_-kA§ = null) : §_-9G§
      {
         var _loc5_:§_-eS§;
         (_loc5_ = new §_-eS§(§_-ac§)).§_-gr§ = §_-tB§.§_-Ey§(param1,param2,param3,param4 || §_-sw§.§_-x9§());
         return _loc5_;
      }
      
      public static function §_-fi§(param1:DisplayObject) : §_-7l§
      {
         return new §_-GF§(§_-ac§,param1);
      }
      
      public static function slice(param1:§_-7l§, param2:Number, param3:Number, param4:Boolean = false) : §_-7l§
      {
         if(param4)
         {
            param2 = param1.duration * param2;
            param3 = param1.duration * param3;
         }
         if(param2 > param3)
         {
            return new §return§(new §_-ck§(param1 as §_-Ff§,param3,param2),0);
         }
         return new §_-ck§(param1 as §_-Ff§,param2,param3);
      }
      
      public static function repeat(param1:§_-7l§, param2:uint) : §_-7l§
      {
         return new §_-vR§(param1 as §_-Ff§,param2);
      }
      
      public static function §_-P§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§_-kA§ = null) : void
      {
         var _loc6_:§_-eS§;
         (_loc6_ = new §_-eS§(§_-ac§)).§_-gr§ = §_-tB§.§_-Ey§(param1,param2,param3,param5 || §_-sw§.§_-x9§());
         _loc6_.update(param4);
      }
      
      public static function §null§(param1:Object, param2:Object, param3:Object = null, param4:Object = null, param5:Number = 1.0, param6:§_-Am§ = null) : §_-9G§
      {
         var _loc7_:§_-4B§;
         (_loc7_ = new §_-4B§(§_-ac§)).§_-gr§ = §_-tB§.§_-LX§(param1,param2,param3,param4);
         _loc7_.time = param5;
         _loc7_.§_-Bi§ = param6 || §_-7r§.§_-hj§;
         return _loc7_;
      }
      
      public static function §_-wR§(param1:Object, param2:Object, param3:§_-kA§ = null) : §_-9G§
      {
         var _loc4_:§_-eS§;
         (_loc4_ = new §_-eS§(§_-ac§)).§_-gr§ = §_-tB§.§_-Ey§(param1,null,param2,param3 || §_-sw§.§_-x9§());
         return _loc4_;
      }
      
      public static function delay(param1:§_-7l§, param2:Number, param3:Number = 0.0) : §_-7l§
      {
         return new §_-5H§(param1 as §_-Ff§,param2,param3);
      }
      
      public static function reverse(param1:§_-7l§, param2:Boolean = true) : §_-7l§
      {
         var _loc3_:Number = !!param2 ? Number(param1.duration - param1.position) : Number(0);
         if(param1 is §return§)
         {
            return new §_-dE§((param1 as §return§).§_-qt§,_loc3_);
         }
         if((param1 as Object).constructor == §_-dE§)
         {
            param1 = (param1 as §_-dE§).§_-qt§;
         }
         return new §return§(param1 as §_-Ff§,_loc3_);
      }
      
      public static function §_-NM§(param1:Object, param2:Object, param3:Number = 1.0, param4:§_-Am§ = null) : §_-9G§
      {
         var _loc5_:§_-4B§;
         (_loc5_ = new §_-4B§(§_-ac§)).§_-gr§ = §_-tB§.§_-uW§(param1,null,param2);
         _loc5_.time = param3;
         _loc5_.§_-Bi§ = param4 || §_-7r§.§_-hj§;
         return _loc5_;
      }
      
      public static function §_-aI§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§_-Am§ = null) : §_-9G§
      {
         var _loc6_:§_-4B§;
         (_loc6_ = new §_-4B§(§_-ac§)).§_-gr§ = §_-tB§.§_-uW§(param1,param2,param3);
         _loc6_.time = param4;
         _loc6_.§_-Bi§ = param5 || §_-7r§.§_-hj§;
         return _loc6_;
      }
      
      public static function apply(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Number = 1.0, param6:§_-Am§ = null) : void
      {
         var _loc7_:§_-4B§;
         (_loc7_ = new §_-4B§(§_-ac§)).§_-gr§ = §_-tB§.§_-uW§(param1,param2,param3);
         _loc7_.time = param4;
         _loc7_.§_-Bi§ = param6 || §_-7r§.§_-hj§;
         _loc7_.update(param5);
      }
      
      public static function §_-oF§(param1:Object, param2:Object, param3:§_-kA§ = null) : §_-9G§
      {
         var _loc4_:§_-eS§;
         (_loc4_ = new §_-eS§(§_-ac§)).§_-gr§ = §_-tB§.§_-Ey§(param1,param2,null,param3 || §_-sw§.§_-x9§());
         return _loc4_;
      }
      
      public static function §_-Gz§(... rest) : §_-3n§
      {
         return §_-vf§(rest);
      }
      
      public static function §_-zV§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§_-Am§ = null) : §_-9G§
      {
         var _loc6_:§_-4B§;
         (_loc6_ = new §_-4B§(§_-ac§)).§_-gr§ = §_-tB§.§_-LX§(param1,null,param2,param3);
         _loc6_.time = param4;
         _loc6_.§_-Bi§ = param5 || §_-7r§.§_-hj§;
         return _loc6_;
      }
      
      public static function §_-tX§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:§_-Am§ = null) : §_-9G§
      {
         var _loc6_:§_-4B§;
         (_loc6_ = new §_-4B§(§_-ac§)).§_-gr§ = §_-tB§.§_-LX§(param1,param2,null,param3);
         _loc6_.time = param4;
         _loc6_.§_-Bi§ = param5 || §_-7r§.§_-hj§;
         return _loc6_;
      }
      
      public static function §_-y2§(param1:Object, param2:Object, param3:Number = 1.0, param4:§_-Am§ = null) : §_-9G§
      {
         var _loc5_:§_-4B§;
         (_loc5_ = new §_-4B§(§_-ac§)).§_-gr§ = §_-tB§.§_-uW§(param1,param2,null);
         _loc5_.time = param3;
         _loc5_.§_-Bi§ = param4 || §_-7r§.§_-hj§;
         return _loc5_;
      }
      
      public static function §_-vf§(param1:Array) : §_-3n§
      {
         return new §_-Hy§(param1,§_-ac§,0);
      }
   }
}
