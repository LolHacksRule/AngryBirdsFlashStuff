package §5!5§
{
   import flash.display.BitmapData;
   
   public class §]u§
   {
       
      
      private var §]!Y§:Vector.<§4!E§>;
      
      protected var §23§:BitmapData;
      
      protected var mName:String;
      
      private var § !@§:Number = 1.0;
      
      public function §]u§(param1:BitmapData)
      {
         super();
         this.§23§ = param1;
         this.§]!Y§ = new Vector.<§4!E§>();
      }
      
      public function get §]y§() : int
      {
         return this.§]!Y§.length;
      }
      
      public function get §]'§() : int
      {
         return this.§23§.width;
      }
      
      public function get §#[§() : int
      {
         return this.§23§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§23§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§ !@§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§ !@§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§23§)
         {
            this.§23§.dispose();
            this.§23§ = null;
         }
         this.§]!Y§ = new Vector.<§4!E§>();
      }
      
      public function §#!Y§(param1:BitmapData) : void
      {
         this.§23§ = param1;
      }
      
      public function §!E§(param1:§4!E§) : void
      {
         this.§]!Y§.push(param1);
      }
      
      public function §0!#§(param1:String) : §4!E§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§]!Y§.length)
         {
            if(this.§]!Y§[_loc2_].mName == param1)
            {
               return this.§]!Y§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §!!J§(param1:int) : §4!E§
      {
         if(param1 < 0 || param1 >= this.§]!Y§.length)
         {
            return null;
         }
         return this.§]!Y§[param1];
      }
   }
}
