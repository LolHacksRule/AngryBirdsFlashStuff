package §+=§
{
   import flash.display.BitmapData;
   
   public class §<T§
   {
       
      
      private var §'"B§:Vector.<§@"Z§>;
      
      protected var §>"n§:BitmapData;
      
      protected var mName:String;
      
      private var §#"5§:Number = 1.0;
      
      public function §<T§(param1:BitmapData)
      {
         super();
         this.§>"n§ = param1;
         this.§'"B§ = new Vector.<§@"Z§>();
      }
      
      public function get §8x§() : int
      {
         return this.§'"B§.length;
      }
      
      public function get bitmapWidth() : int
      {
         return this.§>"n§.width;
      }
      
      public function get bitmapHeight() : int
      {
         return this.§>"n§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§>"n§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§#"5§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§#"5§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§>"n§)
         {
            this.§>"n§.dispose();
            this.§>"n§ = null;
         }
         this.§'"B§ = new Vector.<§@"Z§>();
      }
      
      public function §'"K§(param1:BitmapData) : void
      {
         this.§>"n§ = param1;
      }
      
      public function §26§(param1:§@"Z§) : void
      {
         this.§'"B§.push(param1);
      }
      
      public function §%!=§(param1:String) : §@"Z§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§'"B§.length)
         {
            if(this.§'"B§[_loc2_].name == param1)
            {
               return this.§'"B§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §%§(param1:int) : §@"Z§
      {
         if(param1 < 0 || param1 >= this.§'"B§.length)
         {
            return null;
         }
         return this.§'"B§[param1];
      }
   }
}
