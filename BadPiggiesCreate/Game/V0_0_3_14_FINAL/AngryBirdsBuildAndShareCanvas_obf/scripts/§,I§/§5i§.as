package §,I§
{
   import flash.display.BitmapData;
   
   public class §5i§
   {
       
      
      private var §5f§:Vector.<§7!c§>;
      
      protected var §%!y§:BitmapData;
      
      protected var mName:String;
      
      private var §?a§:Number = 1.0;
      
      public function §5i§(param1:BitmapData)
      {
         super();
         this.§%!y§ = param1;
         this.§5f§ = new Vector.<§7!c§>();
      }
      
      public function get §6!]§() : int
      {
         return this.§5f§.length;
      }
      
      public function get §,r§() : int
      {
         return this.§%!y§.width;
      }
      
      public function get §[C§() : int
      {
         return this.§%!y§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§%!y§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§?a§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§?a§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§%!y§)
         {
            this.§%!y§.dispose();
            this.§%!y§ = null;
         }
         this.§5f§ = new Vector.<§7!c§>();
      }
      
      public function §-!L§(param1:BitmapData) : void
      {
         this.§%!y§ = param1;
      }
      
      public function §0!2§(param1:§7!c§) : void
      {
         this.§5f§.push(param1);
      }
      
      public function §7M§(param1:String) : §7!c§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§5f§.length)
         {
            if(this.§5f§[_loc2_].mName == param1)
            {
               return this.§5f§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §["7§(param1:int) : §7!c§
      {
         if(param1 < 0 || param1 >= this.§5f§.length)
         {
            return null;
         }
         return this.§5f§[param1];
      }
   }
}
