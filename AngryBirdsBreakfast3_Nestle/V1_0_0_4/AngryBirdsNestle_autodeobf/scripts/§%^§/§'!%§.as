package §%^§
{
   import flash.display.BitmapData;
   
   public class §'!%§
   {
       
      
      private var §8A§:Vector.<§?9§>;
      
      protected var §7B§:BitmapData;
      
      protected var mName:String;
      
      private var §79§:Number = 1.0;
      
      public function §'!%§(param1:BitmapData)
      {
         super();
         this.§7B§ = param1;
         this.§8A§ = new Vector.<§?9§>();
      }
      
      public function get §%!D§() : int
      {
         return this.§8A§.length;
      }
      
      public function get §'d§() : int
      {
         return this.§7B§.width;
      }
      
      public function get §^w§() : int
      {
         return this.§7B§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§7B§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§79§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§79§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§7B§)
         {
            this.§7B§.dispose();
            this.§7B§ = null;
         }
         this.§8A§ = new Vector.<§?9§>();
      }
      
      public function §1z§(param1:BitmapData) : void
      {
         this.§7B§ = param1;
      }
      
      public function §0!E§(param1:§?9§) : void
      {
         this.§8A§.push(param1);
      }
      
      public function §else§(param1:String) : §?9§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§8A§.length)
         {
            if(this.§8A§[_loc2_].name == param1)
            {
               return this.§8A§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §6!9§(param1:int) : §?9§
      {
         if(param1 < 0 || param1 >= this.§8A§.length)
         {
            return null;
         }
         return this.§8A§[param1];
      }
   }
}
