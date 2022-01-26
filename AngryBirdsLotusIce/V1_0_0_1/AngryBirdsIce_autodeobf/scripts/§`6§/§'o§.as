package §`6§
{
   import flash.display.BitmapData;
   
   public class §'o§
   {
       
      
      private var §22§:Vector.<§-6§>;
      
      protected var §^6§:BitmapData;
      
      protected var mName:String;
      
      private var §50§:Number = 1.0;
      
      public function §'o§(param1:BitmapData)
      {
         super();
         this.§^6§ = param1;
         this.§22§ = new Vector.<§-6§>();
      }
      
      public function get §%u§() : int
      {
         return this.§22§.length;
      }
      
      public function get §@!,§() : int
      {
         return this.§^6§.width;
      }
      
      public function get §?1§() : int
      {
         return this.§^6§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§^6§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§50§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§50§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§^6§)
         {
            this.§^6§.dispose();
            this.§^6§ = null;
         }
         this.§22§ = new Vector.<§-6§>();
      }
      
      public function §6k§(param1:BitmapData) : void
      {
         this.§^6§ = param1;
      }
      
      public function §?R§(param1:§-6§) : void
      {
         this.§22§.push(param1);
      }
      
      public function §@E§(param1:String) : §-6§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§22§.length)
         {
            if(this.§22§[_loc2_].mName == param1)
            {
               return this.§22§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §-!B§(param1:int) : §-6§
      {
         if(param1 < 0 || param1 >= this.§22§.length)
         {
            return null;
         }
         return this.§22§[param1];
      }
   }
}
