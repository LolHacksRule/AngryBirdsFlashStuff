package §8s§
{
   import flash.display.BitmapData;
   
   public class §`H§
   {
       
      
      private var §-3§:Vector.<§8"§>;
      
      protected var §@C§:BitmapData;
      
      protected var mName:String;
      
      private var §=9§:Number = 1.0;
      
      public function §`H§(param1:BitmapData)
      {
         super();
         this.§@C§ = param1;
         this.§-3§ = new Vector.<§8"§>();
      }
      
      public function get §%!q§() : int
      {
         return this.§-3§.length;
      }
      
      public function get §>!Y§() : int
      {
         return this.§@C§.width;
      }
      
      public function get §^V§() : int
      {
         return this.§@C§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§@C§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§=9§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§=9§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§@C§)
         {
            this.§@C§.dispose();
            this.§@C§ = null;
         }
         this.§-3§ = new Vector.<§8"§>();
      }
      
      public function §^">§(param1:BitmapData) : void
      {
         this.§@C§ = param1;
      }
      
      public function §72§(param1:§8"§) : void
      {
         this.§-3§.push(param1);
      }
      
      public function §#!Q§(param1:String) : §8"§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§-3§.length)
         {
            if(this.§-3§[_loc2_].mName == param1)
            {
               return this.§-3§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §+>§(param1:int) : §8"§
      {
         if(param1 < 0 || param1 >= this.§-3§.length)
         {
            return null;
         }
         return this.§-3§[param1];
      }
   }
}
