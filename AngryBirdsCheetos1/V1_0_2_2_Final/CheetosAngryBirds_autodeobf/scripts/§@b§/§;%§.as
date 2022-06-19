package §@b§
{
   import flash.display.BitmapData;
   
   public class §;%§
   {
       
      
      private var §#!I§:Vector.<§0!W§>;
      
      protected var §^d§:BitmapData;
      
      protected var mName:String;
      
      private var §1R§:Number = 1.0;
      
      public function §;%§(param1:BitmapData)
      {
         super();
         this.§^d§ = param1;
         this.§#!I§ = new Vector.<§0!W§>();
      }
      
      public function get §]H§() : int
      {
         return this.§#!I§.length;
      }
      
      public function get § do§() : int
      {
         return this.§^d§.width;
      }
      
      public function get §?!3§() : int
      {
         return this.§^d§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§^d§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§1R§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§1R§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§^d§)
         {
            this.§^d§.dispose();
            this.§^d§ = null;
         }
         this.§#!I§ = new Vector.<§0!W§>();
      }
      
      public function §!!5§(param1:BitmapData) : void
      {
         this.§^d§ = param1;
      }
      
      public function §%3§(param1:§0!W§) : void
      {
         this.§#!I§.push(param1);
      }
      
      public function §3!]§(param1:String) : §0!W§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§#!I§.length)
         {
            if(this.§#!I§[_loc2_].mName == param1)
            {
               return this.§#!I§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §+e§(param1:int) : §0!W§
      {
         if(param1 < 0 || param1 >= this.§#!I§.length)
         {
            return null;
         }
         return this.§#!I§[param1];
      }
   }
}
