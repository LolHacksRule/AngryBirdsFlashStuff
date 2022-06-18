package §7k§
{
   import flash.display.BitmapData;
   
   public class § M§
   {
       
      
      private var §<!7§:Vector.<§5O§>;
      
      protected var §!![§:BitmapData;
      
      protected var mName:String;
      
      private var §4!S§:Number = 1.0;
      
      public function § M§(param1:BitmapData)
      {
         super();
         this.§!![§ = param1;
         this.§<!7§ = new Vector.<§5O§>();
      }
      
      public function get §!!+§() : int
      {
         return this.§<!7§.length;
      }
      
      public function get §?s§() : int
      {
         return this.§!![§.width;
      }
      
      public function get §,!7§() : int
      {
         return this.§!![§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§!![§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§4!S§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§4!S§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§!![§)
         {
            this.§!![§.dispose();
            this.§!![§ = null;
         }
         this.§<!7§ = new Vector.<§5O§>();
      }
      
      public function §2!a§(param1:BitmapData) : void
      {
         this.§!![§ = param1;
      }
      
      public function §@!_§(param1:§5O§) : void
      {
         this.§<!7§.push(param1);
      }
      
      public function §`!]§(param1:String) : §5O§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§<!7§.length)
         {
            if(this.§<!7§[_loc2_].mName == param1)
            {
               return this.§<!7§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §%!5§(param1:int) : §5O§
      {
         if(param1 < 0 || param1 >= this.§<!7§.length)
         {
            return null;
         }
         return this.§<!7§[param1];
      }
   }
}
