package §_-I4§
{
   import §_-Y7§.JSON;
   import flash.display.Bitmap;
   import flash.utils.ByteArray;
   
   public class §_-g6§ implements §_-tx§
   {
      
      private static var §_-9j§:Array = [];
      
      private static var §_-NI§:Boolean;
       
      
      public function §_-g6§()
      {
         super();
      }
      
      public static function §_-8o§(param1:§_-8d§) : void
      {
         §_-9j§.push(param1);
         §_-NI§ = false;
      }
      
      public static function §_-Jc§(param1:Class, param2:Class, param3:Class) : §_-ey§
      {
         var _loc4_:Bitmap = new param3() as Bitmap;
         var _loc5_:ByteArray = new param2();
         var _loc6_:Object = §_-Y7§.JSON.§_-YM§(_loc5_.readUTFBytes(_loc5_.length),false);
         return new param1(_loc6_,_loc4_.bitmapData);
      }
      
      public function §_-u§(param1:String) : §_-Iz§
      {
         var _loc2_:§_-Iz§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < §_-9j§.length)
         {
            _loc2_ = (§_-9j§[_loc3_] as §_-ey§).§_-u§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §_-TZ§() : int
      {
         return §_-9j§.length;
      }
      
      public function §_-7r§(param1:int) : §_-8d§
      {
         if(param1 < 0 || param1 >= this.§_-TZ§)
         {
            return null;
         }
         if(!§_-NI§)
         {
            §_-9j§.sortOn("name");
            §_-NI§ = true;
         }
         return §_-9j§[param1];
      }
   }
}
