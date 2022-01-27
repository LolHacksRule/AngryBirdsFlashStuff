package §@&§
{
   import flash.display.BitmapData;
   
   public class §"E§
   {
       
      
      private var §9d§:Vector.<§^s§>;
      
      protected var §0!I§:BitmapData;
      
      protected var mName:String;
      
      private var §"!3§:Number = 1.0;
      
      public function §"E§(param1:BitmapData)
      {
         super();
         this.§0!I§ = param1;
         this.§9d§ = new Vector.<§^s§>();
      }
      
      public function get §`!I§() : int
      {
         return this.§9d§.length;
      }
      
      public function get §use §() : int
      {
         return this.§0!I§.width;
      }
      
      public function get § !$§() : int
      {
         return this.§0!I§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§0!I§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§"!3§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§"!3§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§0!I§)
         {
            this.§0!I§.dispose();
            this.§0!I§ = null;
         }
         this.§9d§ = new Vector.<§^s§>();
      }
      
      public function §1E§(param1:BitmapData) : void
      {
         this.§0!I§ = param1;
      }
      
      public function §<Q§(param1:§^s§) : void
      {
         this.§9d§.push(param1);
      }
      
      public function §%l§(param1:String) : §^s§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§9d§.length)
         {
            if(this.§9d§[_loc2_].mName == param1)
            {
               return this.§9d§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §%V§(param1:int) : §^s§
      {
         if(param1 < 0 || param1 >= this.§9d§.length)
         {
            return null;
         }
         return this.§9d§[param1];
      }
   }
}
