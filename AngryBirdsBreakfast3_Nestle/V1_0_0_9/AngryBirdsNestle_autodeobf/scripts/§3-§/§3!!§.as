package §3-§
{
   import flash.display.BitmapData;
   
   public class §3!!§
   {
       
      
      private var §#!X§:Vector.<§'!h§>;
      
      protected var §%f§:BitmapData;
      
      protected var mName:String;
      
      private var §0y§:Number = 1.0;
      
      public function §3!!§(param1:BitmapData)
      {
         super();
         this.§%f§ = param1;
         this.§#!X§ = new Vector.<§'!h§>();
      }
      
      public function get §""2§() : int
      {
         return this.§#!X§.length;
      }
      
      public function get §&2§() : int
      {
         return this.§%f§.width;
      }
      
      public function get §#!T§() : int
      {
         return this.§%f§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§%f§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§0y§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§0y§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§%f§)
         {
            this.§%f§.dispose();
            this.§%f§ = null;
         }
         this.§#!X§ = new Vector.<§'!h§>();
      }
      
      public function §5!R§(param1:BitmapData) : void
      {
         this.§%f§ = param1;
      }
      
      public function §#!I§(param1:§'!h§) : void
      {
         this.§#!X§.push(param1);
      }
      
      public function §@d§(param1:String) : §'!h§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§#!X§.length)
         {
            if(this.§#!X§[_loc2_].name == param1)
            {
               return this.§#!X§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §"!=§(param1:int) : §'!h§
      {
         if(param1 < 0 || param1 >= this.§#!X§.length)
         {
            return null;
         }
         return this.§#!X§[param1];
      }
   }
}
