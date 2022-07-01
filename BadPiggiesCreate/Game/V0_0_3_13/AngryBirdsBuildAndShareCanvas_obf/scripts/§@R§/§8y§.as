package §@R§
{
   import flash.display.BitmapData;
   
   public class §8y§
   {
       
      
      private var §!P§:Vector.<§]1§>;
      
      protected var §4!b§:BitmapData;
      
      protected var mName:String;
      
      private var §#"0§:Number = 1.0;
      
      public function §8y§(param1:BitmapData)
      {
         super();
         this.§4!b§ = param1;
         this.§!P§ = new Vector.<§]1§>();
      }
      
      public function get §8I§() : int
      {
         return this.§!P§.length;
      }
      
      public function get §6!2§() : int
      {
         return this.§4!b§.width;
      }
      
      public function get §+!Q§() : int
      {
         return this.§4!b§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§4!b§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§#"0§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§#"0§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§4!b§)
         {
            this.§4!b§.dispose();
            this.§4!b§ = null;
         }
         this.§!P§ = new Vector.<§]1§>();
      }
      
      public function §&!e§(param1:BitmapData) : void
      {
         this.§4!b§ = param1;
      }
      
      public function §%9§(param1:§]1§) : void
      {
         this.§!P§.push(param1);
      }
      
      public function §?]§(param1:String) : §]1§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§!P§.length)
         {
            if(this.§!P§[_loc2_].mName == param1)
            {
               return this.§!P§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §+M§(param1:int) : §]1§
      {
         if(param1 < 0 || param1 >= this.§!P§.length)
         {
            return null;
         }
         return this.§!P§[param1];
      }
   }
}
