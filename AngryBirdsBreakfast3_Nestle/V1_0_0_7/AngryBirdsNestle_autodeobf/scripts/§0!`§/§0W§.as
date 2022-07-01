package §0!`§
{
   import flash.display.BitmapData;
   
   public class §0W§
   {
       
      
      private var §38§:Vector.<§[P§>;
      
      protected var §-1§:BitmapData;
      
      protected var mName:String;
      
      private var §6!p§:Number = 1.0;
      
      public function §0W§(param1:BitmapData)
      {
         super();
         this.§-1§ = param1;
         this.§38§ = new Vector.<§[P§>();
      }
      
      public function get §>$§() : int
      {
         return this.§38§.length;
      }
      
      public function get §!§() : int
      {
         return this.§-1§.width;
      }
      
      public function get §9!2§() : int
      {
         return this.§-1§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§-1§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§6!p§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§6!p§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§-1§)
         {
            this.§-1§.dispose();
            this.§-1§ = null;
         }
         this.§38§ = new Vector.<§[P§>();
      }
      
      public function §>!J§(param1:BitmapData) : void
      {
         this.§-1§ = param1;
      }
      
      public function §^=§(param1:§[P§) : void
      {
         this.§38§.push(param1);
      }
      
      public function §#I§(param1:String) : §[P§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§38§.length)
         {
            if(this.§38§[_loc2_].name == param1)
            {
               return this.§38§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §]g§(param1:int) : §[P§
      {
         if(param1 < 0 || param1 >= this.§38§.length)
         {
            return null;
         }
         return this.§38§[param1];
      }
   }
}
