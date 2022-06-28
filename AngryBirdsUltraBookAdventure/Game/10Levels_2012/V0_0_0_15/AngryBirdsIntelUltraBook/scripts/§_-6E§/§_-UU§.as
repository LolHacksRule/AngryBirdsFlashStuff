package §_-6E§
{
   import flash.display.BitmapData;
   
   public class §_-UU§
   {
       
      
      private var §_-L3§:Vector.<§_-0j§>;
      
      protected var §_-e1§:BitmapData;
      
      protected var mName:String;
      
      private var §_-XE§:Number = 1.0;
      
      public function §_-UU§(param1:BitmapData)
      {
         super();
         this.§_-e1§ = param1;
         this.§_-L3§ = new Vector.<§_-0j§>();
      }
      
      public function get §_-0w§() : int
      {
         return this.§_-L3§.length;
      }
      
      public function get §_-09q§() : int
      {
         return this.§_-e1§.width;
      }
      
      public function get §_-cD§() : int
      {
         return this.§_-e1§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§_-e1§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§_-XE§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§_-XE§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§_-e1§)
         {
            this.§_-e1§.dispose();
            this.§_-e1§ = null;
         }
         this.§_-L3§ = new Vector.<§_-0j§>();
      }
      
      public function §_-gb§(param1:BitmapData) : void
      {
         this.§_-e1§ = param1;
      }
      
      public function §_-Iw§(param1:§_-0j§) : void
      {
         this.§_-L3§.push(param1);
      }
      
      public function §_-sb§(param1:String) : §_-0j§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§_-L3§.length)
         {
            if(this.§_-L3§[_loc2_].mName == param1)
            {
               return this.§_-L3§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §_-c6§(param1:int) : §_-0j§
      {
         if(param1 < 0 || param1 >= this.§_-L3§.length)
         {
            return null;
         }
         return this.§_-L3§[param1];
      }
   }
}
