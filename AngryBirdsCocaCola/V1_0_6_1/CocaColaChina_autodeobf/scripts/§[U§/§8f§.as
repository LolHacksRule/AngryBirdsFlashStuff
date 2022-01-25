package §[U§
{
   import flash.display.BitmapData;
   
   public class §8f§
   {
       
      
      private var §[!V§:Vector.<§%&§>;
      
      protected var §!t§:BitmapData;
      
      protected var mName:String;
      
      private var §3!T§:Number = 1.0;
      
      public function §8f§(param1:BitmapData)
      {
         super();
         this.§!t§ = param1;
         this.§[!V§ = new Vector.<§%&§>();
      }
      
      public function get §']§() : int
      {
         return this.§[!V§.length;
      }
      
      public function get §^!Z§() : int
      {
         return this.§!t§.width;
      }
      
      public function get §9r§() : int
      {
         return this.§!t§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§!t§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§3!T§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§3!T§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§!t§)
         {
            this.§!t§.dispose();
            this.§!t§ = null;
         }
         this.§[!V§ = new Vector.<§%&§>();
      }
      
      public function §^!_§(param1:BitmapData) : void
      {
         this.§!t§ = param1;
      }
      
      public function §7&§(param1:§%&§) : void
      {
         this.§[!V§.push(param1);
      }
      
      public function §>!R§(param1:String) : §%&§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§[!V§.length)
         {
            if(this.§[!V§[_loc2_].mName == param1)
            {
               return this.§[!V§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §@I§(param1:int) : §%&§
      {
         if(param1 < 0 || param1 >= this.§[!V§.length)
         {
            return null;
         }
         return this.§[!V§[param1];
      }
   }
}
