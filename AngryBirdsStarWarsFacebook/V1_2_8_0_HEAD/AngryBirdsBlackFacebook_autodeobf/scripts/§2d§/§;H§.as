package §2d§
{
   import flash.display.BitmapData;
   
   public class §;H§
   {
       
      
      private var §0!E§:Vector.<§%$§>;
      
      protected var §>">§:BitmapData;
      
      protected var mName:String;
      
      private var §8"2§:Number = 1.0;
      
      public function §;H§(param1:BitmapData)
      {
         super();
         this.§>">§ = param1;
         this.§0!E§ = new Vector.<§%$§>();
      }
      
      public function get §0#a§() : int
      {
         return this.§0!E§.length;
      }
      
      public function get bitmapWidth() : int
      {
         return this.§>">§.width;
      }
      
      public function get bitmapHeight() : int
      {
         return this.§>">§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§>">§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§8"2§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§8"2§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§>">§)
         {
            this.§>">§.dispose();
            this.§>">§ = null;
         }
         this.§0!E§ = new Vector.<§%$§>();
      }
      
      public function §,e§(param1:BitmapData) : void
      {
         this.§>">§ = param1;
      }
      
      public function §9!t§(param1:§%$§) : void
      {
         this.§0!E§.push(param1);
      }
      
      public function § !D§(param1:String) : §%$§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§0!E§.length)
         {
            if(this.§0!E§[_loc2_].name == param1)
            {
               return this.§0!E§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §4y§(param1:int) : §%$§
      {
         if(param1 < 0 || param1 >= this.§0!E§.length)
         {
            return null;
         }
         return this.§0!E§[param1];
      }
   }
}
