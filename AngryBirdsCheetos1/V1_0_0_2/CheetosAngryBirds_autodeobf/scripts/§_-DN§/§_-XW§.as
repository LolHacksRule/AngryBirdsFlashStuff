package §_-DN§
{
   import flash.display.BitmapData;
   
   public class §_-XW§
   {
       
      
      private var §_-2t§:Vector.<§_-F4§>;
      
      protected var §_-Lo§:BitmapData;
      
      protected var mName:String;
      
      private var §_-uV§:Number = 1.0;
      
      public function §_-XW§(param1:BitmapData)
      {
         super();
         this.§_-Lo§ = param1;
         this.§_-2t§ = new Vector.<§_-F4§>();
      }
      
      public function get §_-R1§() : int
      {
         return this.§_-2t§.length;
      }
      
      public function get §_-zX§() : int
      {
         return this.§_-Lo§.width;
      }
      
      public function get §_-R§() : int
      {
         return this.§_-Lo§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§_-Lo§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§_-uV§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§_-uV§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§_-Lo§)
         {
            this.§_-Lo§.dispose();
            this.§_-Lo§ = null;
         }
         this.§_-2t§ = new Vector.<§_-F4§>();
      }
      
      public function §_-1z§(param1:BitmapData) : void
      {
         this.§_-Lo§ = param1;
      }
      
      public function §_-0B§(param1:§_-F4§) : void
      {
         this.§_-2t§.push(param1);
      }
      
      public function §_-RU§(param1:String) : §_-F4§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§_-2t§.length)
         {
            if(this.§_-2t§[_loc2_].mName == param1)
            {
               return this.§_-2t§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §_-0S§(param1:int) : §_-F4§
      {
         if(param1 < 0 || param1 >= this.§_-2t§.length)
         {
            return null;
         }
         return this.§_-2t§[param1];
      }
   }
}
