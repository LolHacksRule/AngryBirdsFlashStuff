package §>k§
{
   import flash.display.BitmapData;
   
   public class §`z§
   {
       
      
      private var § j§:Vector.<§`-§>;
      
      protected var §while§:BitmapData;
      
      protected var mName:String;
      
      private var §-_§:Number = 1.0;
      
      public function §`z§(param1:BitmapData)
      {
         super();
         this.§while§ = param1;
         this.§ j§ = new Vector.<§`-§>();
      }
      
      public function get §69§() : int
      {
         return this.§ j§.length;
      }
      
      public function get § set§() : int
      {
         return this.§while§.width;
      }
      
      public function get §4$§() : int
      {
         return this.§while§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§while§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§-_§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§-_§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§while§)
         {
            this.§while§.dispose();
            this.§while§ = null;
         }
         this.§ j§ = new Vector.<§`-§>();
      }
      
      public function §9T§(param1:BitmapData) : void
      {
         this.§while§ = param1;
      }
      
      public function §8!=§(param1:§`-§) : void
      {
         this.§ j§.push(param1);
      }
      
      public function §^L§(param1:String) : §`-§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§ j§.length)
         {
            if(this.§ j§[_loc2_].mName == param1)
            {
               return this.§ j§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §`Q§(param1:int) : §`-§
      {
         if(param1 < 0 || param1 >= this.§ j§.length)
         {
            return null;
         }
         return this.§ j§[param1];
      }
   }
}
