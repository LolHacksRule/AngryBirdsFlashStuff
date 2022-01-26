package §_-I4§
{
   import flash.display.BitmapData;
   
   public class §_-8d§
   {
       
      
      private var §_-4W§:Vector.<§_-Iz§>;
      
      protected var §_-uJ§:BitmapData;
      
      protected var mName:String;
      
      public function §_-8d§(param1:BitmapData)
      {
         super();
         this.§_-uJ§ = param1;
         this.§_-4W§ = new Vector.<§_-Iz§>();
      }
      
      public function get §_-nf§() : int
      {
         return this.§_-4W§.length;
      }
      
      public function get §_-Mh§() : int
      {
         return this.§_-uJ§.width;
      }
      
      public function get §_-b4§() : int
      {
         return this.§_-uJ§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§_-uJ§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function dispose() : void
      {
         if(this.§_-uJ§)
         {
            this.§_-uJ§.dispose();
            this.§_-uJ§ = null;
         }
         this.§_-4W§ = new Vector.<§_-Iz§>();
      }
      
      public function §_-AW§(param1:BitmapData) : void
      {
         this.§_-uJ§ = param1;
      }
      
      public function §_-K-§(param1:§_-Iz§) : void
      {
         this.§_-4W§.push(param1);
      }
      
      public function §_-u§(param1:String) : §_-Iz§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§_-4W§.length)
         {
            if(this.§_-4W§[_loc2_].mName == param1)
            {
               return this.§_-4W§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §_-AB§(param1:int) : §_-Iz§
      {
         if(param1 < 0 || param1 >= this.§_-4W§.length)
         {
            return null;
         }
         return this.§_-4W§[param1];
      }
   }
}
