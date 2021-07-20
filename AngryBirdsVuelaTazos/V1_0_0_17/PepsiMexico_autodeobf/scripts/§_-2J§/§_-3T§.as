package §_-2J§
{
   import §_-hq§.§_-AD§;
   import flash.display.Bitmap;
   import flash.utils.ByteArray;
   
   public class §_-3T§ implements §_-QM§
   {
      
      private static var §_-QT§:Array = [];
      
      private static var §_-2R§:Boolean;
       
      
      public function §_-3T§()
      {
         super();
      }
      
      public static function §_-uF§(param1:§_-Tz§) : void
      {
         §_-QT§.push(param1);
         §_-2R§ = false;
      }
      
      public static function §_-E6§(param1:Class, param2:Class, param3:Class) : §_-uR§
      {
         var _loc4_:Bitmap = new param3() as Bitmap;
         var _loc5_:ByteArray = new param2();
         var _loc6_:Object = §_-AD§.§_-Ae§(_loc5_.readUTFBytes(_loc5_.length),false);
         return new param1(_loc6_,_loc4_.bitmapData);
      }
      
      public function §_-j-§(param1:String) : §_-4w§
      {
         var _loc2_:§_-4w§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < §_-QT§.length)
         {
            _loc2_ = (§_-QT§[_loc3_] as §_-uR§).§_-j-§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §_-Np§() : int
      {
         return §_-QT§.length;
      }
      
      public function §_-Hb§(param1:int) : §_-Tz§
      {
         if(param1 < 0 || param1 >= this.§_-Np§)
         {
            return null;
         }
         if(!§_-2R§)
         {
            §_-QT§.sortOn("name");
            §_-2R§ = true;
         }
         return §_-QT§[param1];
      }
   }
}
