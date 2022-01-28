package §_-m9§
{
   import flash.display.BitmapData;
   
   public class §_-iN§
   {
       
      
      private var §_-ZE§:Vector.<§_-Tv§>;
      
      protected var §_-NL§:BitmapData;
      
      protected var mName:String;
      
      public function §_-iN§(param1:BitmapData)
      {
         super();
         this.§_-NL§ = param1;
         this.§_-ZE§ = new Vector.<§_-Tv§>();
      }
      
      public function get §_-HB§() : int
      {
         return this.§_-ZE§.length;
      }
      
      public function get §_-1S§() : int
      {
         return this.§_-NL§.width;
      }
      
      public function get §_-2q§() : int
      {
         return this.§_-NL§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§_-NL§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function dispose() : void
      {
         if(this.§_-NL§)
         {
            this.§_-NL§.dispose();
            this.§_-NL§ = null;
         }
         this.§_-ZE§ = new Vector.<§_-Tv§>();
      }
      
      public function §_-zv§(param1:BitmapData) : void
      {
         this.§_-NL§ = param1;
      }
      
      public function §_-ra§(param1:§_-Tv§) : void
      {
         this.§_-ZE§.push(param1);
      }
      
      public function §_-E1§(param1:String) : §_-Tv§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§_-ZE§.length)
         {
            if(this.§_-ZE§[_loc2_].mName == param1)
            {
               return this.§_-ZE§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §_-DW§(param1:int) : §_-Tv§
      {
         if(param1 < 0 || param1 >= this.§_-ZE§.length)
         {
            return null;
         }
         return this.§_-ZE§[param1];
      }
   }
}
