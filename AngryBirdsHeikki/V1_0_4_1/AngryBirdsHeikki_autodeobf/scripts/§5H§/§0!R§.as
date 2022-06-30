package §5H§
{
   import flash.display.BitmapData;
   
   public class §0!R§
   {
       
      
      private var §6S§:Vector.<§<T§>;
      
      protected var §8![§:BitmapData;
      
      protected var mName:String;
      
      private var §0!^§:Number = 1.0;
      
      public function §0!R§(param1:BitmapData)
      {
         super();
         this.§8![§ = param1;
         this.§6S§ = new Vector.<§<T§>();
      }
      
      public function get §2!6§() : int
      {
         return this.§6S§.length;
      }
      
      public function get §=O§() : int
      {
         return this.§8![§.width;
      }
      
      public function get §3!>§() : int
      {
         return this.§8![§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§8![§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§0!^§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§0!^§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§8![§)
         {
            this.§8![§.dispose();
            this.§8![§ = null;
         }
         this.§6S§ = new Vector.<§<T§>();
      }
      
      public function §3!b§(param1:BitmapData) : void
      {
         this.§8![§ = param1;
      }
      
      public function §?f§(param1:§<T§) : void
      {
         this.§6S§.push(param1);
      }
      
      public function § X§(param1:String) : §<T§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§6S§.length)
         {
            if(this.§6S§[_loc2_].mName == param1)
            {
               return this.§6S§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §8R§(param1:int) : §<T§
      {
         if(param1 < 0 || param1 >= this.§6S§.length)
         {
            return null;
         }
         return this.§6S§[param1];
      }
   }
}
