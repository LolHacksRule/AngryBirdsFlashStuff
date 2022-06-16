package §^"7§
{
   import flash.display.BitmapData;
   
   public class §]V§
   {
       
      
      private var §0A§:Vector.<§"O§>;
      
      protected var §<!q§:BitmapData;
      
      protected var mName:String;
      
      private var §%""§:Number = 1.0;
      
      public function §]V§(param1:BitmapData)
      {
         super();
         this.§<!q§ = param1;
         this.§0A§ = new Vector.<§"O§>();
      }
      
      public function get §3B§() : int
      {
         return this.§0A§.length;
      }
      
      public function get §#<§() : int
      {
         return this.§<!q§.width;
      }
      
      public function get §87§() : int
      {
         return this.§<!q§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§<!q§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§%""§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§%""§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§<!q§)
         {
            this.§<!q§.dispose();
            this.§<!q§ = null;
         }
         this.§0A§ = new Vector.<§"O§>();
      }
      
      public function § Z§(param1:BitmapData) : void
      {
         this.§<!q§ = param1;
      }
      
      public function §%!p§(param1:§"O§) : void
      {
         this.§0A§.push(param1);
      }
      
      public function §5+§(param1:String) : §"O§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§0A§.length)
         {
            if(this.§0A§[_loc2_].mName == param1)
            {
               return this.§0A§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §19§(param1:int) : §"O§
      {
         if(param1 < 0 || param1 >= this.§0A§.length)
         {
            return null;
         }
         return this.§0A§[param1];
      }
   }
}
