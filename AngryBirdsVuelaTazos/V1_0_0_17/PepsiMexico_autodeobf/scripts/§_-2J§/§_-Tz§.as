package §_-2J§
{
   import flash.display.BitmapData;
   
   public class §_-Tz§
   {
       
      
      private var §_-ba§:Vector.<§_-4w§>;
      
      protected var §_-wM§:BitmapData;
      
      protected var mName:String;
      
      public function §_-Tz§(param1:BitmapData)
      {
         super();
         this.§_-wM§ = param1;
         this.§_-ba§ = new Vector.<§_-4w§>();
      }
      
      public function get §_-PF§() : int
      {
         return this.§_-ba§.length;
      }
      
      public function get §_-u8§() : int
      {
         return this.§_-wM§.width;
      }
      
      public function get §_-AI§() : int
      {
         return this.§_-wM§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§_-wM§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function dispose() : void
      {
         if(this.§_-wM§)
         {
            this.§_-wM§.dispose();
            this.§_-wM§ = null;
         }
         this.§_-ba§ = new Vector.<§_-4w§>();
      }
      
      public function §_-Rt§(param1:BitmapData) : void
      {
         this.§_-wM§ = param1;
      }
      
      public function §_-zc§(param1:§_-4w§) : void
      {
         this.§_-ba§.push(param1);
      }
      
      public function §_-j-§(param1:String) : §_-4w§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§_-ba§.length)
         {
            if(this.§_-ba§[_loc2_].mName == param1)
            {
               return this.§_-ba§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §_-e-§(param1:int) : §_-4w§
      {
         if(param1 < 0 || param1 >= this.§_-ba§.length)
         {
            return null;
         }
         return this.§_-ba§[param1];
      }
   }
}
