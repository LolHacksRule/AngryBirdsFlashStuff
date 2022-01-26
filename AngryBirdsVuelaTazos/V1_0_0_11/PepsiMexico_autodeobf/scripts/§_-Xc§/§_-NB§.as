package §_-Xc§
{
   import §_-w0§.JSON;
   import flash.display.Bitmap;
   import flash.utils.ByteArray;
   
   public class §_-NB§ implements §_-w7§
   {
      
      private static var §_-s§:Array = [];
      
      private static var §_-jH§:Boolean;
       
      
      public function §_-NB§()
      {
         super();
      }
      
      public static function §_-ew§(param1:§_-Yd§) : void
      {
         §_-s§.push(param1);
         §_-jH§ = false;
      }
      
      public static function §_-f8§(param1:Class, param2:Class, param3:Class) : §_-FV§
      {
         var _loc4_:Bitmap = new param3() as Bitmap;
         var _loc5_:ByteArray = new param2();
         var _loc6_:Object = §_-w0§.JSON.§_-bW§(_loc5_.readUTFBytes(_loc5_.length),false);
         return new param1(_loc6_,_loc4_.bitmapData);
      }
      
      public function §_-AB§(param1:String) : §_-39§
      {
         var _loc2_:§_-39§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < §_-s§.length)
         {
            _loc2_ = (§_-s§[_loc3_] as §_-FV§).§_-AB§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §_-96§() : int
      {
         return §_-s§.length;
      }
      
      public function §_-JD§(param1:int) : §_-Yd§
      {
         if(param1 < 0 || param1 >= this.§_-96§)
         {
            return null;
         }
         if(!§_-jH§)
         {
            §_-s§.sortOn("name");
            §_-jH§ = true;
         }
         return §_-s§[param1];
      }
   }
}
