package §_-DG§
{
   import flash.display.BitmapData;
   
   public class § for§
   {
       
      
      private var §_-bj§:Vector.<§_-1B§>;
      
      protected var §_-OI§:BitmapData;
      
      protected var mName:String;
      
      private var §_-6L§:Number = 1.0;
      
      public function § for§(param1:BitmapData)
      {
         super();
         this.§_-OI§ = param1;
         this.§_-bj§ = new Vector.<§_-1B§>();
      }
      
      public function get §_-7q§() : int
      {
         return this.§_-bj§.length;
      }
      
      public function get §_-iI§() : int
      {
         return this.§_-OI§.width;
      }
      
      public function get §_-0p§() : int
      {
         return this.§_-OI§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§_-OI§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§_-6L§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§_-6L§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§_-OI§)
         {
            this.§_-OI§.dispose();
            this.§_-OI§ = null;
         }
         this.§_-bj§ = new Vector.<§_-1B§>();
      }
      
      public function §_-tL§(param1:BitmapData) : void
      {
         this.§_-OI§ = param1;
      }
      
      public function §_-Fm§(param1:§_-1B§) : void
      {
         this.§_-bj§.push(param1);
      }
      
      public function §_-LI§(param1:String) : §_-1B§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§_-bj§.length)
         {
            if(this.§_-bj§[_loc2_].mName == param1)
            {
               return this.§_-bj§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §_-OZ§(param1:int) : §_-1B§
      {
         if(param1 < 0 || param1 >= this.§_-bj§.length)
         {
            return null;
         }
         return this.§_-bj§[param1];
      }
   }
}
