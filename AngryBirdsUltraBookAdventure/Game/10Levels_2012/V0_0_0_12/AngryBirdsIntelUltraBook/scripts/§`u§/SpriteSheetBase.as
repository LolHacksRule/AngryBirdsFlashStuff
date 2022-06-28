package §`u§
{
   import flash.display.BitmapData;
   
   public class SpriteSheetBase
   {
       
      
      private var include:Vector.<§#!7§>;
      
      protected var §%!J§:BitmapData;
      
      protected var mName:String;
      
      private var §7!H§:Number = 1.0;
      
      public function SpriteSheetBase(param1:BitmapData)
      {
         super();
         this.§%!J§ = param1;
         this.include = new Vector.<§#!7§>();
      }
      
      public function get §^h§() : int
      {
         return this.include.length;
      }
      
      public function get §0!D§() : int
      {
         return this.§%!J§.width;
      }
      
      public function get §>!]§() : int
      {
         return this.§%!J§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§%!J§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§7!H§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§7!H§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§%!J§)
         {
            this.§%!J§.dispose();
            this.§%!J§ = null;
         }
         this.include = new Vector.<§#!7§>();
      }
      
      public function §"I§(param1:BitmapData) : void
      {
         this.§%!J§ = param1;
      }
      
      public function §^!E§(param1:§#!7§) : void
      {
         this.include.push(param1);
      }
      
      public function §?_§(param1:String) : §#!7§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.include.length)
         {
            if(this.include[_loc2_].mName == param1)
            {
               return this.include[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §-!k§(param1:int) : §#!7§
      {
         if(param1 < 0 || param1 >= this.include.length)
         {
            return null;
         }
         return this.include[param1];
      }
   }
}
