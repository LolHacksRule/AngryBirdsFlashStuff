package §+6§
{
   import flash.display.BitmapData;
   
   public class §^j§
   {
       
      
      private var §8j§:Vector.<§=!`§>;
      
      protected var §^4§:BitmapData;
      
      protected var mName:String;
      
      private var §#![§:Number = 1.0;
      
      public function §^j§(param1:BitmapData)
      {
         super();
         this.§^4§ = param1;
         this.§8j§ = new Vector.<§=!`§>();
      }
      
      public function get §`!X§() : int
      {
         return this.§8j§.length;
      }
      
      public function get §=@§() : int
      {
         return this.§^4§.width;
      }
      
      public function get §6>§() : int
      {
         return this.§^4§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§^4§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§#![§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§#![§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§^4§)
         {
            this.§^4§.dispose();
            this.§^4§ = null;
         }
         this.§8j§ = new Vector.<§=!`§>();
      }
      
      public function §;"§(param1:BitmapData) : void
      {
         this.§^4§ = param1;
      }
      
      public function §+!"§(param1:§=!`§) : void
      {
         this.§8j§.push(param1);
      }
      
      public function §4u§(param1:String) : §=!`§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§8j§.length)
         {
            if(this.§8j§[_loc2_].mName == param1)
            {
               return this.§8j§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §@9§(param1:int) : §=!`§
      {
         if(param1 < 0 || param1 >= this.§8j§.length)
         {
            return null;
         }
         return this.§8j§[param1];
      }
   }
}
