package §24§
{
   import flash.display.BitmapData;
   
   public class §8J§
   {
       
      
      private var §%<§:Vector.<§ !F§>;
      
      protected var §,]§:BitmapData;
      
      protected var mName:String;
      
      private var §`z§:Number = 1.0;
      
      public function §8J§(param1:BitmapData)
      {
         super();
         this.§,]§ = param1;
         this.§%<§ = new Vector.<§ !F§>();
      }
      
      public function get §,,§() : int
      {
         return this.§%<§.length;
      }
      
      public function get §6!S§() : int
      {
         return this.§,]§.width;
      }
      
      public function get §>I§() : int
      {
         return this.§,]§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§,]§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§`z§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§`z§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§,]§)
         {
            this.§,]§.dispose();
            this.§,]§ = null;
         }
         this.§%<§ = new Vector.<§ !F§>();
      }
      
      public function §;b§(param1:BitmapData) : void
      {
         this.§,]§ = param1;
      }
      
      public function §=!`§(param1:§ !F§) : void
      {
         this.§%<§.push(param1);
      }
      
      public function §%&§(param1:String) : § !F§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§%<§.length)
         {
            if(this.§%<§[_loc2_].mName == param1)
            {
               return this.§%<§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §<!!§(param1:int) : § !F§
      {
         if(param1 < 0 || param1 >= this.§%<§.length)
         {
            return null;
         }
         return this.§%<§[param1];
      }
   }
}
