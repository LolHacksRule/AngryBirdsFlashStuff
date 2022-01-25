package §-S§
{
   import flash.display.BitmapData;
   
   public class §@,§
   {
       
      
      private var §^!Y§:Vector.<§7O§>;
      
      protected var §^!_§:BitmapData;
      
      protected var mName:String;
      
      private var § 6§:Number = 1.0;
      
      public function §@,§(param1:BitmapData)
      {
         super();
         this.§^!_§ = param1;
         this.§^!Y§ = new Vector.<§7O§>();
      }
      
      public function get §1p§() : int
      {
         return this.§^!Y§.length;
      }
      
      public function get §^!Z§() : int
      {
         return this.§^!_§.width;
      }
      
      public function get §!8§() : int
      {
         return this.§^!_§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§^!_§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§ 6§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§ 6§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§^!_§)
         {
            this.§^!_§.dispose();
            this.§^!_§ = null;
         }
         this.§^!Y§ = new Vector.<§7O§>();
      }
      
      public function §[!B§(param1:BitmapData) : void
      {
         this.§^!_§ = param1;
      }
      
      public function §3!+§(param1:§7O§) : void
      {
         this.§^!Y§.push(param1);
      }
      
      public function §&R§(param1:String) : §7O§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§^!Y§.length)
         {
            if(this.§^!Y§[_loc2_].mName == param1)
            {
               return this.§^!Y§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §9D§(param1:int) : §7O§
      {
         if(param1 < 0 || param1 >= this.§^!Y§.length)
         {
            return null;
         }
         return this.§^!Y§[param1];
      }
   }
}
