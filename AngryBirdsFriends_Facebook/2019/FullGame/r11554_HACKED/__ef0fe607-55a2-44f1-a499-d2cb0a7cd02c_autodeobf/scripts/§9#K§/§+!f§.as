package §9#K§
{
   import §5$>§.§0#V§;
   import §5$>§.§4!O§;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.geom.Matrix;
   import flash.utils.ByteArray;
   
   public class §+!f§ extends §-!W§
   {
       
      
      public function §+!f§(param1:ByteArray, param2:String, param3:String, param4:String, param5:Function, param6:Function, param7:Object = null)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public static function §]!t§(param1:DisplayObject, param2:int, param3:int, param4:Number, param5:String, param6:String, param7:Function, param8:Function = null) : void
      {
         var _loc9_:BitmapData;
         (_loc9_ = new BitmapData(param2,param3)).draw(param1,new Matrix());
         var _loc11_:ByteArray = new §0#V§(param4).encode(_loc9_);
         new §+!f§(_loc11_,"image1.jpg",param5,param6,param7,param8);
      }
      
      public static function §7!W§(param1:BitmapData, param2:String, param3:String, param4:Function, param5:Function = null, param6:Object = null) : void
      {
         var _loc7_:BitmapData = param1;
         var _loc8_:ByteArray = §4!O§.encode(_loc7_);
         new §+!f§(_loc8_,"image1.png",param2,param3,param4,param5,param6);
      }
      
      override protected function getGraphURL() : String
      {
         return §+f§ + §'"a§.§'$4§ + "/";
      }
   }
}
