package §7!A§
{
   import flash.display.BitmapData;
   
   public class §9!H§
   {
       
      
      private var §[!§:Vector.<§%b§>;
      
      protected var §&$§:BitmapData;
      
      protected var mName:String;
      
      private var § R§:Number = 1.0;
      
      public function §9!H§(param1:BitmapData)
      {
         super();
         this.§&$§ = param1;
         this.§[!§ = new Vector.<§%b§>();
      }
      
      public function get §+i§() : int
      {
         return this.§[!§.length;
      }
      
      public function get §>n§() : int
      {
         return this.§&$§.width;
      }
      
      public function get §0g§() : int
      {
         return this.§&$§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§&$§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§ R§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§ R§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§&$§)
         {
            this.§&$§.dispose();
            this.§&$§ = null;
         }
         this.§[!§ = new Vector.<§%b§>();
      }
      
      public function §`w§(param1:BitmapData) : void
      {
         this.§&$§ = param1;
      }
      
      public function §"!7§(param1:§%b§) : void
      {
         this.§[!§.push(param1);
      }
      
      public function §[!,§(param1:String) : §%b§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§[!§.length)
         {
            if(this.§[!§[_loc2_].mName == param1)
            {
               return this.§[!§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §<!D§(param1:int) : §%b§
      {
         if(param1 < 0 || param1 >= this.§[!§.length)
         {
            return null;
         }
         return this.§[!§[param1];
      }
   }
}
