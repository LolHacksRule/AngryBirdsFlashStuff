package §]o§
{
   import flash.display.BitmapData;
   
   public class §%!p§
   {
       
      
      private var §7-§:Vector.<§^!9§>;
      
      protected var §0g§:BitmapData;
      
      protected var mName:String;
      
      private var §'!I§:Number = 1.0;
      
      public function §%!p§(param1:BitmapData)
      {
         super();
         this.§0g§ = param1;
         this.§7-§ = new Vector.<§^!9§>();
      }
      
      public function get §[C§() : int
      {
         return this.§7-§.length;
      }
      
      public function get §'!+§() : int
      {
         return this.§0g§.width;
      }
      
      public function get §?x§() : int
      {
         return this.§0g§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§0g§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§'!I§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§'!I§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§0g§)
         {
            this.§0g§.dispose();
            this.§0g§ = null;
         }
         this.§7-§ = new Vector.<§^!9§>();
      }
      
      public function §37§(param1:BitmapData) : void
      {
         this.§0g§ = param1;
      }
      
      public function §8!U§(param1:§^!9§) : void
      {
         this.§7-§.push(param1);
      }
      
      public function §,T§(param1:String) : §^!9§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§7-§.length)
         {
            if(this.§7-§[_loc2_].mName == param1)
            {
               return this.§7-§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §[!r§(param1:int) : §^!9§
      {
         if(param1 < 0 || param1 >= this.§7-§.length)
         {
            return null;
         }
         return this.§7-§[param1];
      }
   }
}
