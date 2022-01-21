package §,!i§
{
   import flash.display.BitmapData;
   
   public class §-9§
   {
       
      
      private var §#m§:Vector.<§02§>;
      
      protected var §=]§:BitmapData;
      
      protected var mName:String;
      
      private var §&!U§:Number = 1.0;
      
      public function §-9§(param1:BitmapData)
      {
         super();
         this.§=]§ = param1;
         this.§#m§ = new Vector.<§02§>();
      }
      
      public function get §9!S§() : int
      {
         return this.§#m§.length;
      }
      
      public function get §2M§() : int
      {
         return this.§=]§.width;
      }
      
      public function get §8!1§() : int
      {
         return this.§=]§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§=]§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§&!U§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§&!U§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§=]§)
         {
            this.§=]§.dispose();
            this.§=]§ = null;
         }
         this.§#m§ = new Vector.<§02§>();
      }
      
      public function §=k§(param1:BitmapData) : void
      {
         this.§=]§ = param1;
      }
      
      public function §73§(param1:§02§) : void
      {
         this.§#m§.push(param1);
      }
      
      public function §+a§(param1:String) : §02§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§#m§.length)
         {
            if(this.§#m§[_loc2_].mName == param1)
            {
               return this.§#m§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §1!@§(param1:int) : §02§
      {
         if(param1 < 0 || param1 >= this.§#m§.length)
         {
            return null;
         }
         return this.§#m§[param1];
      }
   }
}
