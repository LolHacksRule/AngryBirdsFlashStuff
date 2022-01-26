package §_-mK§
{
   import flash.display.BitmapData;
   
   public class §_-4C§
   {
       
      
      private var §_-8F§:Vector.<§implements§>;
      
      protected var §_-GL§:BitmapData;
      
      protected var mName:String;
      
      public function §_-4C§(param1:BitmapData)
      {
         super();
         this.§_-GL§ = param1;
         this.§_-8F§ = new Vector.<§implements§>();
      }
      
      public function get §_-y§() : int
      {
         return this.§_-8F§.length;
      }
      
      public function get §_-Zf§() : int
      {
         return this.§_-GL§.width;
      }
      
      public function get §_-3u§() : int
      {
         return this.§_-GL§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§_-GL§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function dispose() : void
      {
         if(this.§_-GL§)
         {
            this.§_-GL§.dispose();
            this.§_-GL§ = null;
         }
         this.§_-8F§ = new Vector.<§implements§>();
      }
      
      public function §_-al§(param1:BitmapData) : void
      {
         this.§_-GL§ = param1;
      }
      
      public function §_-iX§(param1:§implements§) : void
      {
         this.§_-8F§.push(param1);
      }
      
      public function §_-gj§(param1:String) : §implements§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§_-8F§.length)
         {
            if(this.§_-8F§[_loc2_].mName == param1)
            {
               return this.§_-8F§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §_-rZ§(param1:int) : §implements§
      {
         if(param1 < 0 || param1 >= this.§_-8F§.length)
         {
            return null;
         }
         return this.§_-8F§[param1];
      }
   }
}
