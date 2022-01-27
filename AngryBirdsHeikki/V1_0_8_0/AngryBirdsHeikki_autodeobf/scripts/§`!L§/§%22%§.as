package §`!L§
{
   import flash.display.BitmapData;
   
   public class §"%§
   {
       
      
      private var §9!B§:Vector.<§+!M§>;
      
      protected var §4!#§:BitmapData;
      
      protected var mName:String;
      
      private var §35§:Number = 1.0;
      
      public function §"%§(param1:BitmapData)
      {
         super();
         this.§4!#§ = param1;
         this.§9!B§ = new Vector.<§+!M§>();
      }
      
      public function get §%#§() : int
      {
         return this.§9!B§.length;
      }
      
      public function get §2x§() : int
      {
         return this.§4!#§.width;
      }
      
      public function get §>!Y§() : int
      {
         return this.§4!#§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§4!#§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§35§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§35§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§4!#§)
         {
            this.§4!#§.dispose();
            this.§4!#§ = null;
         }
         this.§9!B§ = new Vector.<§+!M§>();
      }
      
      public function §+?§(param1:BitmapData) : void
      {
         this.§4!#§ = param1;
      }
      
      public function §?A§(param1:§+!M§) : void
      {
         this.§9!B§.push(param1);
      }
      
      public function §<[§(param1:String) : §+!M§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§9!B§.length)
         {
            if(this.§9!B§[_loc2_].mName == param1)
            {
               return this.§9!B§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §8'§(param1:int) : §+!M§
      {
         if(param1 < 0 || param1 >= this.§9!B§.length)
         {
            return null;
         }
         return this.§9!B§[param1];
      }
   }
}
