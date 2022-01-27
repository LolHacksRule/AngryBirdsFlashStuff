package §8";§
{
   import flash.display.BitmapData;
   
   public class §`!a§
   {
       
      
      private var §]"1§:Vector.<§^"#§>;
      
      protected var §4",§:BitmapData;
      
      protected var mName:String;
      
      private var §-!Y§:Number = 1.0;
      
      public function §`!a§(param1:BitmapData)
      {
         super();
         this.§4",§ = param1;
         this.§]"1§ = new Vector.<§^"#§>();
      }
      
      public function get §]!n§() : int
      {
         return this.§]"1§.length;
      }
      
      public function get §;"'§() : int
      {
         return this.§4",§.width;
      }
      
      public function get §1!E§() : int
      {
         return this.§4",§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§4",§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§-!Y§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§-!Y§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§4",§)
         {
            this.§4",§.dispose();
            this.§4",§ = null;
         }
         this.§]"1§ = new Vector.<§^"#§>();
      }
      
      public function §"!q§(param1:BitmapData) : void
      {
         this.§4",§ = param1;
      }
      
      public function §?!z§(param1:§^"#§) : void
      {
         this.§]"1§.push(param1);
      }
      
      public function §6!s§(param1:String) : §^"#§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§]"1§.length)
         {
            if(this.§]"1§[_loc2_].mName == param1)
            {
               return this.§]"1§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function § !4§(param1:int) : §^"#§
      {
         if(param1 < 0 || param1 >= this.§]"1§.length)
         {
            return null;
         }
         return this.§]"1§[param1];
      }
   }
}
