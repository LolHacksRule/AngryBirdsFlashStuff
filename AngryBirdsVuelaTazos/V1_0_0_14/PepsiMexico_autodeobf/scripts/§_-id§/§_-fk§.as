package §_-id§
{
   import flash.display.BitmapData;
   
   public class §_-fk§
   {
       
      
      private var §_-Fd§:Vector.<§_-jr§>;
      
      protected var §_-9h§:BitmapData;
      
      protected var mName:String;
      
      public function §_-fk§(param1:BitmapData)
      {
         super();
         this.§_-9h§ = param1;
         this.§_-Fd§ = new Vector.<§_-jr§>();
      }
      
      public function get §_-B9§() : int
      {
         return this.§_-Fd§.length;
      }
      
      public function get §_-18§() : int
      {
         return this.§_-9h§.width;
      }
      
      public function get §_-UL§() : int
      {
         return this.§_-9h§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§_-9h§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function dispose() : void
      {
         if(this.§_-9h§)
         {
            this.§_-9h§.dispose();
            this.§_-9h§ = null;
         }
         this.§_-Fd§ = new Vector.<§_-jr§>();
      }
      
      public function §_-js§(param1:BitmapData) : void
      {
         this.§_-9h§ = param1;
      }
      
      public function §_-9t§(param1:§_-jr§) : void
      {
         this.§_-Fd§.push(param1);
      }
      
      public function §_-Kx§(param1:String) : §_-jr§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§_-Fd§.length)
         {
            if(this.§_-Fd§[_loc2_].mName == param1)
            {
               return this.§_-Fd§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §_-SK§(param1:int) : §_-jr§
      {
         if(param1 < 0 || param1 >= this.§_-Fd§.length)
         {
            return null;
         }
         return this.§_-Fd§[param1];
      }
   }
}
