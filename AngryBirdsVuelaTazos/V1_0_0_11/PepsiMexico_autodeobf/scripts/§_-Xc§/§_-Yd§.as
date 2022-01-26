package §_-Xc§
{
   import flash.display.BitmapData;
   
   public class §_-Yd§
   {
       
      
      private var §_-44§:Vector.<§_-39§>;
      
      protected var §_-M§:BitmapData;
      
      protected var mName:String;
      
      public function §_-Yd§(param1:BitmapData)
      {
         super();
         this.§_-M§ = param1;
         this.§_-44§ = new Vector.<§_-39§>();
      }
      
      public function get §_-UQ§() : int
      {
         return this.§_-44§.length;
      }
      
      public function get §_-aK§() : int
      {
         return this.§_-M§.width;
      }
      
      public function get §_-aT§() : int
      {
         return this.§_-M§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§_-M§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function dispose() : void
      {
         if(this.§_-M§)
         {
            this.§_-M§.dispose();
            this.§_-M§ = null;
         }
         this.§_-44§ = new Vector.<§_-39§>();
      }
      
      public function §_-9Q§(param1:BitmapData) : void
      {
         this.§_-M§ = param1;
      }
      
      public function §_-vB§(param1:§_-39§) : void
      {
         this.§_-44§.push(param1);
      }
      
      public function §_-AB§(param1:String) : §_-39§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§_-44§.length)
         {
            if(this.§_-44§[_loc2_].mName == param1)
            {
               return this.§_-44§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §_-BM§(param1:int) : §_-39§
      {
         if(param1 < 0 || param1 >= this.§_-44§.length)
         {
            return null;
         }
         return this.§_-44§[param1];
      }
   }
}
