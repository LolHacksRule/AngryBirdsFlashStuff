package §_-id§
{
   import §_-2z§.§_-rz§;
   import flash.display.Bitmap;
   import flash.utils.ByteArray;
   
   public class §_-dj§ implements §_-BC§
   {
      
      private static var §use§:Array = [];
      
      private static var §_-iv§:Boolean;
       
      
      public function §_-dj§()
      {
         super();
      }
      
      public static function §_-yd§(param1:§_-fk§) : void
      {
         §use§.push(param1);
         §_-iv§ = false;
      }
      
      public static function §_-xI§(param1:Class, param2:Class, param3:Class) : §_-j2§
      {
         var _loc4_:Bitmap = new param3() as Bitmap;
         var _loc5_:ByteArray = new param2();
         var _loc6_:Object = §_-rz§.§_-EM§(_loc5_.readUTFBytes(_loc5_.length),false);
         return new param1(_loc6_,_loc4_.bitmapData);
      }
      
      public function §_-Kx§(param1:String) : §_-jr§
      {
         var _loc2_:§_-jr§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < §use§.length)
         {
            _loc2_ = (§use§[_loc3_] as §_-j2§).§_-Kx§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §_-X-§() : int
      {
         return §use§.length;
      }
      
      public function §_-nj§(param1:int) : §_-fk§
      {
         if(param1 < 0 || param1 >= this.§_-X-§)
         {
            return null;
         }
         if(!§_-iv§)
         {
            §use§.sortOn("name");
            §_-iv§ = true;
         }
         return §use§[param1];
      }
   }
}
