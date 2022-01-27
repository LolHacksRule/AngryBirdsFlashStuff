package §;!^§
{
   import flash.display.BitmapData;
   
   public class §;!f§
   {
       
      
      private var §4!I§:Vector.<§9l§>;
      
      protected var §"<§:BitmapData;
      
      protected var mName:String;
      
      private var §&!A§:Number = 1.0;
      
      public function §;!f§(param1:BitmapData)
      {
         super();
         this.§"<§ = param1;
         this.§4!I§ = new Vector.<§9l§>();
      }
      
      public function get §2">§() : int
      {
         return this.§4!I§.length;
      }
      
      public function get §class§() : int
      {
         return this.§"<§.width;
      }
      
      public function get §#!q§() : int
      {
         return this.§"<§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§"<§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§&!A§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§&!A§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§"<§)
         {
            this.§"<§.dispose();
            this.§"<§ = null;
         }
         this.§4!I§ = new Vector.<§9l§>();
      }
      
      public function §;4§(param1:BitmapData) : void
      {
         this.§"<§ = param1;
      }
      
      public function §#"@§(param1:§9l§) : void
      {
         this.§4!I§.push(param1);
      }
      
      public function §`!M§(param1:String) : §9l§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§4!I§.length)
         {
            if(this.§4!I§[_loc2_].name == param1)
            {
               return this.§4!I§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §5"D§(param1:int) : §9l§
      {
         if(param1 < 0 || param1 >= this.§4!I§.length)
         {
            return null;
         }
         return this.§4!I§[param1];
      }
   }
}
