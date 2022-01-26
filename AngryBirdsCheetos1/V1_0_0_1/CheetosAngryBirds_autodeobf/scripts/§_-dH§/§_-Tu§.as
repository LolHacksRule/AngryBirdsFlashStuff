package §_-dH§
{
   import flash.display.BitmapData;
   
   public class §_-Tu§
   {
       
      
      private var §_-SM§:Vector.<§_-aW§>;
      
      protected var §_-ip§:BitmapData;
      
      protected var mName:String;
      
      private var §_-7Q§:Number = 1.0;
      
      public function §_-Tu§(param1:BitmapData)
      {
         super();
         this.§_-ip§ = param1;
         this.§_-SM§ = new Vector.<§_-aW§>();
      }
      
      public function get §_-zo§() : int
      {
         return this.§_-SM§.length;
      }
      
      public function get §_-RC§() : int
      {
         return this.§_-ip§.width;
      }
      
      public function get §_-5X§() : int
      {
         return this.§_-ip§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§_-ip§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§_-7Q§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§_-7Q§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§_-ip§)
         {
            this.§_-ip§.dispose();
            this.§_-ip§ = null;
         }
         this.§_-SM§ = new Vector.<§_-aW§>();
      }
      
      public function §_-nC§(param1:BitmapData) : void
      {
         this.§_-ip§ = param1;
      }
      
      public function §_-89§(param1:§_-aW§) : void
      {
         this.§_-SM§.push(param1);
      }
      
      public function §_-lE§(param1:String) : §_-aW§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§_-SM§.length)
         {
            if(this.§_-SM§[_loc2_].mName == param1)
            {
               return this.§_-SM§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §_-Rf§(param1:int) : §_-aW§
      {
         if(param1 < 0 || param1 >= this.§_-SM§.length)
         {
            return null;
         }
         return this.§_-SM§[param1];
      }
   }
}
