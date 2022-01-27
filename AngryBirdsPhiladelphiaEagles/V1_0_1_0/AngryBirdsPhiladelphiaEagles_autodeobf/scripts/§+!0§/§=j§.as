package §+!0§
{
   import flash.display.BitmapData;
   
   public class §=j§
   {
       
      
      private var §1!0§:Vector.<§#N§>;
      
      protected var §`L§:BitmapData;
      
      protected var mName:String;
      
      private var §&;§:Number = 1.0;
      
      public function §=j§(param1:BitmapData)
      {
         super();
         this.§`L§ = param1;
         this.§1!0§ = new Vector.<§#N§>();
      }
      
      public function get §'!D§() : int
      {
         return this.§1!0§.length;
      }
      
      public function get §-P§() : int
      {
         return this.§`L§.width;
      }
      
      public function get §<v§() : int
      {
         return this.§`L§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§`L§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§&;§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§&;§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§`L§)
         {
            this.§`L§.dispose();
            this.§`L§ = null;
         }
         this.§1!0§ = new Vector.<§#N§>();
      }
      
      public function §^$§(param1:BitmapData) : void
      {
         this.§`L§ = param1;
      }
      
      public function §'H§(param1:§#N§) : void
      {
         this.§1!0§.push(param1);
      }
      
      public function §'9§(param1:String) : §#N§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§1!0§.length)
         {
            if(this.§1!0§[_loc2_].mName == param1)
            {
               return this.§1!0§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function § 5§(param1:int) : §#N§
      {
         if(param1 < 0 || param1 >= this.§1!0§.length)
         {
            return null;
         }
         return this.§1!0§[param1];
      }
   }
}
