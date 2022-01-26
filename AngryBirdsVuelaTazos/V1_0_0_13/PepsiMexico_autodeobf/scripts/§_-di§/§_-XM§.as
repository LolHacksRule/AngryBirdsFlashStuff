package §_-di§
{
   import flash.display.BitmapData;
   
   public class §_-XM§
   {
       
      
      private var §_-38§:Vector.<§_-hc§>;
      
      protected var §_-At§:BitmapData;
      
      protected var mName:String;
      
      public function §_-XM§(param1:BitmapData)
      {
         super();
         this.§_-At§ = param1;
         this.§_-38§ = new Vector.<§_-hc§>();
      }
      
      public function get §_-dm§() : int
      {
         return this.§_-38§.length;
      }
      
      public function get §_-Z2§() : int
      {
         return this.§_-At§.width;
      }
      
      public function get §_-xQ§() : int
      {
         return this.§_-At§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§_-At§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function dispose() : void
      {
         if(this.§_-At§)
         {
            this.§_-At§.dispose();
            this.§_-At§ = null;
         }
         this.§_-38§ = new Vector.<§_-hc§>();
      }
      
      public function §_-eK§(param1:BitmapData) : void
      {
         this.§_-At§ = param1;
      }
      
      public function §_-Zg§(param1:§_-hc§) : void
      {
         this.§_-38§.push(param1);
      }
      
      public function §_-wN§(param1:String) : §_-hc§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§_-38§.length)
         {
            if(this.§_-38§[_loc2_].mName == param1)
            {
               return this.§_-38§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §_-3R§(param1:int) : §_-hc§
      {
         if(param1 < 0 || param1 >= this.§_-38§.length)
         {
            return null;
         }
         return this.§_-38§[param1];
      }
   }
}
