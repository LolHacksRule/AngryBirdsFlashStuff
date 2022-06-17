package §="l§
{
   import flash.display.BitmapData;
   
   public class §;#f§
   {
       
      
      private var §#$B§:Vector.<§"!t§>;
      
      protected var §["[§:BitmapData;
      
      protected var §-!O§:String;
      
      private var §6z§:Number = 1.0;
      
      public function §;#f§(param1:BitmapData)
      {
         super();
         this.§["[§ = param1;
         this.§#$B§ = new Vector.<§"!t§>();
      }
      
      protected static function § x§(param1:§"!t§, param2:int, param3:int) : void
      {
         if(param1.rect.top < 0)
         {
            param1.rect.top = 0;
         }
         if(param1.rect.left < 0)
         {
            param1.rect.left = 0;
         }
         if(param1.rect.bottom > param3)
         {
            param1.rect.bottom = param3;
         }
         if(param1.rect.right > param2)
         {
            param1.rect.right = param2;
         }
      }
      
      public function get §%!i§() : int
      {
         return this.§#$B§.length;
      }
      
      public function get bitmapWidth() : int
      {
         return this.§["[§.width;
      }
      
      public function get bitmapHeight() : int
      {
         return this.§["[§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§["[§;
      }
      
      public function get name() : String
      {
         return this.§-!O§;
      }
      
      public function get scale() : Number
      {
         return this.§6z§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§6z§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§["[§)
         {
            this.§["[§.dispose();
            this.§["[§ = null;
         }
         this.§#$B§ = new Vector.<§"!t§>();
      }
      
      public function §<"i§(param1:BitmapData) : void
      {
         this.§["[§ = param1;
      }
      
      public function §3#>§(param1:§"!t§) : void
      {
         this.§#$B§.push(param1);
      }
      
      public function §8B§(param1:String) : §"!t§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§#$B§.length)
         {
            if(this.§#$B§[_loc2_].name == param1)
            {
               return this.§#$B§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §&!o§(param1:int) : §"!t§
      {
         if(param1 < 0 || param1 >= this.§#$B§.length)
         {
            return null;
         }
         return this.§#$B§[param1];
      }
   }
}
