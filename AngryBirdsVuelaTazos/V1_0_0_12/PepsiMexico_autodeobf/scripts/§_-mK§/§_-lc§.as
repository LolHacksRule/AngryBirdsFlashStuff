package §_-mK§
{
   import §_-VX§.JSON;
   import flash.display.Bitmap;
   import flash.utils.ByteArray;
   
   public class §_-lc§ implements §_-ec§
   {
      
      private static var §_-Ru§:Array = [];
      
      private static var §_-iB§:Boolean;
       
      
      public function §_-lc§()
      {
         super();
      }
      
      public static function §_-2n§(param1:§_-4C§) : void
      {
         §_-Ru§.push(param1);
         §_-iB§ = false;
      }
      
      public static function § null§(param1:Class, param2:Class, param3:Class) : §_-hb§
      {
         var _loc4_:Bitmap = new param3() as Bitmap;
         var _loc5_:ByteArray = new param2();
         var _loc6_:Object = §_-VX§.JSON.§_-RN§(_loc5_.readUTFBytes(_loc5_.length),false);
         return new param1(_loc6_,_loc4_.bitmapData);
      }
      
      public function §_-gj§(param1:String) : §implements§
      {
         var _loc2_:§implements§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < §_-Ru§.length)
         {
            _loc2_ = (§_-Ru§[_loc3_] as §_-hb§).§_-gj§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §_-i8§() : int
      {
         return §_-Ru§.length;
      }
      
      public function §_-SA§(param1:int) : §_-4C§
      {
         if(param1 < 0 || param1 >= this.§_-i8§)
         {
            return null;
         }
         if(!§_-iB§)
         {
            §_-Ru§.sortOn("name");
            §_-iB§ = true;
         }
         return §_-Ru§[param1];
      }
   }
}
