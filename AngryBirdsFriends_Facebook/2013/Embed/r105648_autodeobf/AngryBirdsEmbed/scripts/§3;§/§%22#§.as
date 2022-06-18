package §3;§
{
   import flash.display.BitmapData;
   
   public class §"#§
   {
       
      
      private var §[P§:Vector.<§6!J§>;
      
      protected var §4!&§:BitmapData;
      
      protected var mName:String;
      
      private var § W§:Number = 1.0;
      
      public function §"#§(param1:BitmapData)
      {
         super();
         this.§4!&§ = param1;
         this.§[P§ = new Vector.<§6!J§>();
      }
      
      public function get §@U§() : int
      {
         return this.§[P§.length;
      }
      
      public function get §%q§() : int
      {
         return this.§4!&§.width;
      }
      
      public function get §8-§() : int
      {
         return this.§4!&§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§4!&§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§ W§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§ W§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§4!&§)
         {
            this.§4!&§.dispose();
            this.§4!&§ = null;
         }
         this.§[P§ = new Vector.<§6!J§>();
      }
      
      public function §!§(param1:BitmapData) : void
      {
         this.§4!&§ = param1;
      }
      
      public function §6C§(param1:§6!J§) : void
      {
         this.§[P§.push(param1);
      }
      
      public function §!S§(param1:String) : §6!J§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§[P§.length)
         {
            if(this.§[P§[_loc2_].mName == param1)
            {
               return this.§[P§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §-]§(param1:int) : §6!J§
      {
         if(param1 < 0 || param1 >= this.§[P§.length)
         {
            return null;
         }
         return this.§[P§[param1];
      }
   }
}
