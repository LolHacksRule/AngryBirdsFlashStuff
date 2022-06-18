package §<1§
{
   import flash.display.BitmapData;
   
   public class §4!M§
   {
       
      
      private var §7!O§:Vector.<§ null§>;
      
      protected var §,;§:BitmapData;
      
      protected var mName:String;
      
      private var §%g§:Number = 1.0;
      
      public function §4!M§(param1:BitmapData)
      {
         super();
         this.§,;§ = param1;
         this.§7!O§ = new Vector.<§ null§>();
      }
      
      public function get §^I§() : int
      {
         return this.§7!O§.length;
      }
      
      public function get §"1§() : int
      {
         return this.§,;§.width;
      }
      
      public function get §]@§() : int
      {
         return this.§,;§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§,;§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§%g§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§%g§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§,;§)
         {
            this.§,;§.dispose();
            this.§,;§ = null;
         }
         this.§7!O§ = new Vector.<§ null§>();
      }
      
      public function §!!-§(param1:BitmapData) : void
      {
         this.§,;§ = param1;
      }
      
      public function §4Y§(param1:§ null§) : void
      {
         this.§7!O§.push(param1);
      }
      
      public function §!5§(param1:String) : § null§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§7!O§.length)
         {
            if(this.§7!O§[_loc2_].mName == param1)
            {
               return this.§7!O§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §>e§(param1:int) : § null§
      {
         if(param1 < 0 || param1 >= this.§7!O§.length)
         {
            return null;
         }
         return this.§7!O§[param1];
      }
   }
}
