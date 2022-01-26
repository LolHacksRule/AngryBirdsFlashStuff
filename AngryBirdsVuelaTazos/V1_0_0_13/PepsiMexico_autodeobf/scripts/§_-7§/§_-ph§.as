package §_-7§
{
   import §_-FQ§.§_-7W§;
   import §_-JR§.§_-yh§;
   import §_-LM§.§_-wJ§;
   import §_-PS§.§_-sq§;
   import §_-di§.§_-Nw§;
   import §_-ex§.§_-i8§;
   import §_-qJ§.§_-Vi§;
   import flash.geom.Rectangle;
   import §with§.§_-O2§;
   
   public class §_-ph§
   {
      
      public static var §_-EK§:int = 0;
      
      public static var §_-UU§:int = 0;
      
      public static var §_-Tw§:§_-7W§;
      
      public static var §_-rA§:§_-i8§;
      
      public static var §_-H7§:Boolean = false;
      
      public static var §_-FJ§:§_-ph§ = null;
      
      public static var §_-g§:§_-Vi§;
      
      public static var §_-TH§:Boolean = true;
      
      public static var §_-Qn§:Number = 1;
      
      public static var §_-6t§:Number = 1;
      
      public static var §_-an§:Number = 1;
      
      private static var §_-Ct§:§_-wJ§ = null;
       
      
      public function §_-ph§()
      {
         super();
      }
      
      public static function init(param1:§_-Vi§, param2:int, param3:int) : void
      {
         §_-g§ = param1;
         §_-EK§ = param2;
         §_-UU§ = param3;
         §_-rA§ = new §_-i8§(true,param1.canvas);
      }
      
      public static function §_-gY§(param1:Class, param2:Class) : void
      {
         §_-O2§.§_-gY§(param1,param2);
      }
      
      public static function §_-N5§(param1:§_-Nw§, param2:Array, param3:Function = null) : void
      {
         §_-Tw§.§_-N5§(param1,param2,param3);
      }
      
      public static function §_-9v§(param1:§_-sq§) : void
      {
         §_-Tw§.init(param1);
      }
      
      public static function §_-0g§(param1:§_-wJ§) : void
      {
         §_-Ct§ = param1;
         §_-Tw§.§_-0g§(param1);
      }
      
      public static function get §_-eR§() : §_-wJ§
      {
         return §_-Ct§;
      }
      
      public static function §_-J§(param1:Boolean) : void
      {
         §_-TH§ = param1;
         §_-Tw§.§_-3z§.§_-J§(param1);
      }
      
      public static function §_-B-§() : Boolean
      {
         return §_-TH§;
      }
      
      public static function §_-S5§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(param4 < 32)
         {
            param4 = 32;
         }
         if(param3 < 32)
         {
            param3 = 32;
         }
         §_-yh§.§_-1o§.§_-F9§ = new Rectangle(param1,param2,param3,param4);
         §_-Qn§ = Math.min(param3 / §_-EK§,param4 / §_-UU§);
         §_-6t§ = param3 / §_-EK§;
         §_-an§ = param4 / §_-UU§;
         §_-Tw§.§_-bu§(param3,param4);
      }
   }
}
