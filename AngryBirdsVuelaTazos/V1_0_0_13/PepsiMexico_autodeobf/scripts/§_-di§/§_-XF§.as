package §_-di§
{
   import §_-Eq§.JSON;
   import flash.display.Bitmap;
   import flash.utils.ByteArray;
   
   public class §_-XF§ implements §_-Nw§
   {
      
      private static var §_-Wo§:Array = [];
      
      private static var §_-8E§:Boolean;
       
      
      public function §_-XF§()
      {
         super();
      }
      
      public static function §_-Vx§(param1:§_-XM§) : void
      {
         §_-Wo§.push(param1);
         §_-8E§ = false;
      }
      
      public static function §_-w1§(param1:Class, param2:Class, param3:Class) : §_-Cl§
      {
         var _loc4_:Bitmap = new param3() as Bitmap;
         var _loc5_:ByteArray = new param2();
         var _loc6_:Object = §_-Eq§.JSON.§_-SR§(_loc5_.readUTFBytes(_loc5_.length),false);
         return new param1(_loc6_,_loc4_.bitmapData);
      }
      
      public function §_-wN§(param1:String) : §_-hc§
      {
         var _loc2_:§_-hc§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < §_-Wo§.length)
         {
            _loc2_ = (§_-Wo§[_loc3_] as §_-Cl§).§_-wN§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §_-0U§() : int
      {
         return §_-Wo§.length;
      }
      
      public function §_-jY§(param1:int) : §_-XM§
      {
         if(param1 < 0 || param1 >= this.§_-0U§)
         {
            return null;
         }
         if(!§_-8E§)
         {
            §_-Wo§.sortOn("name");
            §_-8E§ = true;
         }
         return §_-Wo§[param1];
      }
   }
}
