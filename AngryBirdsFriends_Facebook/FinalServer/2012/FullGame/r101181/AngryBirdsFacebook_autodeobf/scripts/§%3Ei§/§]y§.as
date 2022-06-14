package §>i§
{
   import flash.display.BitmapData;
   
   public class §]y§
   {
       
      
      private var §!_§:Vector.<§^J§>;
      
      protected var §#R§:BitmapData;
      
      protected var mName:String;
      
      private var §[!q§:Number = 1.0;
      
      public function §]y§(param1:BitmapData)
      {
         super();
         this.§#R§ = param1;
         this.§!_§ = new Vector.<§^J§>();
      }
      
      public function get §#V§() : int
      {
         return this.§!_§.length;
      }
      
      public function get §!b§() : int
      {
         return this.§#R§.width;
      }
      
      public function get §6!n§() : int
      {
         return this.§#R§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§#R§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§[!q§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§[!q§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§#R§)
         {
            this.§#R§.dispose();
            this.§#R§ = null;
         }
         this.§!_§ = new Vector.<§^J§>();
      }
      
      public function §8]§(param1:BitmapData) : void
      {
         this.§#R§ = param1;
      }
      
      public function §+"=§(param1:§^J§) : void
      {
         this.§!_§.push(param1);
      }
      
      public function §-X§(param1:String) : §^J§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§!_§.length)
         {
            if(this.§!_§[_loc2_].mName == param1)
            {
               return this.§!_§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §3G§(param1:int) : §^J§
      {
         if(param1 < 0 || param1 >= this.§!_§.length)
         {
            return null;
         }
         return this.§!_§[param1];
      }
   }
}
