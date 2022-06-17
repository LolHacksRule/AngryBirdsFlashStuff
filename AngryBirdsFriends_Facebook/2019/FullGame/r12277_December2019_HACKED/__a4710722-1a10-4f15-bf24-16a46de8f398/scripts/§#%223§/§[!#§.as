package §#"3§
{
   import §^,§.§^#v§;
   import §^,§.§^$$§;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.geom.Matrix;
   import flash.utils.ByteArray;
   
   public class §[!#§ extends §`$@§
   {
       
      
      public function §[!#§(param1:ByteArray, param2:String, param3:String, param4:String, param5:Function, param6:Function, param7:Object = null)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public static function §8$7§(param1:DisplayObject, param2:int, param3:int, param4:Number, param5:String, param6:String, param7:Function, param8:Function = null) : void
      {
         var _loc9_:BitmapData;
         (_loc9_ = new BitmapData(param2,param3)).draw(param1,new Matrix());
         var _loc11_:ByteArray = new §^$$§(param4).encode(_loc9_);
         new §[!#§(_loc11_,"image1.jpg",param5,param6,param7,param8);
      }
      
      public static function §7# §(param1:BitmapData, param2:String, param3:String, param4:Function, param5:Function = null, param6:Object = null) : void
      {
         var _loc7_:BitmapData = param1;
         var _loc8_:ByteArray = §^#v§.encode(_loc7_);
         new §[!#§(_loc8_,"image1.png",param2,param3,param4,param5,param6);
      }
      
      override protected function getGraphURL() : String
      {
         return §]#F§ + §^"a§.§4!9§ + "/";
      }
   }
}
