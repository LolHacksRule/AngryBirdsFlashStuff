package §1f§
{
   import flash.display.BitmapData;
   
   public class § !%§
   {
       
      
      private var §=W§:Vector.<§#7§>;
      
      protected var §4b§:BitmapData;
      
      protected var mName:String;
      
      private var §9n§:Number = 1.0;
      
      public function § !%§(param1:BitmapData)
      {
         super();
         this.§4b§ = param1;
         this.§=W§ = new Vector.<§#7§>();
      }
      
      public function get §7§() : int
      {
         return this.§=W§.length;
      }
      
      public function get §5-§() : int
      {
         return this.§4b§.width;
      }
      
      public function get §-1§() : int
      {
         return this.§4b§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§4b§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§9n§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§9n§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§4b§)
         {
            this.§4b§.dispose();
            this.§4b§ = null;
         }
         this.§=W§ = new Vector.<§#7§>();
      }
      
      public function §=5§(param1:BitmapData) : void
      {
         this.§4b§ = param1;
      }
      
      public function §"8§(param1:§#7§) : void
      {
         this.§=W§.push(param1);
      }
      
      public function §9u§(param1:String) : §#7§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§=W§.length)
         {
            if(this.§=W§[_loc2_].mName == param1)
            {
               return this.§=W§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §0!`§(param1:int) : §#7§
      {
         if(param1 < 0 || param1 >= this.§=W§.length)
         {
            return null;
         }
         return this.§=W§[param1];
      }
   }
}
