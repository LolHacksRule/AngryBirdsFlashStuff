package §,-§
{
   import flash.display.BitmapData;
   
   public class §]M§
   {
       
      
      private var §^U§:Vector.<§!>§>;
      
      protected var §=!=§:BitmapData;
      
      protected var mName:String;
      
      private var get:Number = 1.0;
      
      public function §]M§(param1:BitmapData)
      {
         super();
         this.§=!=§ = param1;
         this.§^U§ = new Vector.<§!>§>();
      }
      
      public function get §]m§() : int
      {
         return this.§^U§.length;
      }
      
      public function get §8!^§() : int
      {
         return this.§=!=§.width;
      }
      
      public function get §2"§() : int
      {
         return this.§=!=§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§=!=§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.get;
      }
      
      public function set scale(param1:Number) : void
      {
         this.get = param1;
      }
      
      public function dispose() : void
      {
         if(this.§=!=§)
         {
            this.§=!=§.dispose();
            this.§=!=§ = null;
         }
         this.§^U§ = new Vector.<§!>§>();
      }
      
      public function §<]§(param1:BitmapData) : void
      {
         this.§=!=§ = param1;
      }
      
      public function §,E§(param1:§!>§) : void
      {
         this.§^U§.push(param1);
      }
      
      public function §?&§(param1:String) : §!>§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§^U§.length)
         {
            if(this.§^U§[_loc2_].mName == param1)
            {
               return this.§^U§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §'!B§(param1:int) : §!>§
      {
         if(param1 < 0 || param1 >= this.§^U§.length)
         {
            return null;
         }
         return this.§^U§[param1];
      }
   }
}
