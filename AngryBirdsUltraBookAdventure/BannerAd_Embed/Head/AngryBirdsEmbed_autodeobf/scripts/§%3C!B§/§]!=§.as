package §<!B§
{
   import flash.display.BitmapData;
   
   public class §]!=§
   {
       
      
      private var §'B§:Vector.<§#z§>;
      
      protected var §>g§:BitmapData;
      
      protected var mName:String;
      
      private var §=!%§:Number = 1.0;
      
      public function §]!=§(param1:BitmapData)
      {
         super();
         this.§>g§ = param1;
         this.§'B§ = new Vector.<§#z§>();
      }
      
      public function get §9@§() : int
      {
         return this.§'B§.length;
      }
      
      public function get §4v§() : int
      {
         return this.§>g§.width;
      }
      
      public function get §8?§() : int
      {
         return this.§>g§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§>g§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§=!%§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§=!%§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§>g§)
         {
            this.§>g§.dispose();
            this.§>g§ = null;
         }
         this.§'B§ = new Vector.<§#z§>();
      }
      
      public function §`Z§(param1:BitmapData) : void
      {
         this.§>g§ = param1;
      }
      
      public function §]+§(param1:§#z§) : void
      {
         this.§'B§.push(param1);
      }
      
      public function §%@§(param1:String) : §#z§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§'B§.length)
         {
            if(this.§'B§[_loc2_].mName == param1)
            {
               return this.§'B§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §^!B§(param1:int) : §#z§
      {
         if(param1 < 0 || param1 >= this.§'B§.length)
         {
            return null;
         }
         return this.§'B§[param1];
      }
   }
}
