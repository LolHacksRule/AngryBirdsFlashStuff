package §0[§
{
   import flash.display.BitmapData;
   
   public class §!!6§
   {
       
      
      private var §5!H§:Vector.<§4Q§>;
      
      protected var §4!§:BitmapData;
      
      protected var mName:String;
      
      private var §?!C§:Number = 1.0;
      
      public function §!!6§(param1:BitmapData)
      {
         super();
         this.§4!§ = param1;
         this.§5!H§ = new Vector.<§4Q§>();
      }
      
      public function get §2]§() : int
      {
         return this.§5!H§.length;
      }
      
      public function get §`J§() : int
      {
         return this.§4!§.width;
      }
      
      public function get §2,§() : int
      {
         return this.§4!§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§4!§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§?!C§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§?!C§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§4!§)
         {
            this.§4!§.dispose();
            this.§4!§ = null;
         }
         this.§5!H§ = new Vector.<§4Q§>();
      }
      
      public function §4b§(param1:BitmapData) : void
      {
         this.§4!§ = param1;
      }
      
      public function §>U§(param1:§4Q§) : void
      {
         this.§5!H§.push(param1);
      }
      
      public function §#N§(param1:String) : §4Q§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§5!H§.length)
         {
            if(this.§5!H§[_loc2_].mName == param1)
            {
               return this.§5!H§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §`"§(param1:int) : §4Q§
      {
         if(param1 < 0 || param1 >= this.§5!H§.length)
         {
            return null;
         }
         return this.§5!H§[param1];
      }
   }
}
