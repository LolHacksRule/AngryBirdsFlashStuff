package §'!l§
{
   import flash.display.BitmapData;
   
   public class §9!#§
   {
       
      
      private var §<X§:Vector.<§5K§>;
      
      protected var §3!=§:BitmapData;
      
      protected var mName:String;
      
      private var §6!r§:Number = 1.0;
      
      public function §9!#§(param1:BitmapData)
      {
         super();
         this.§3!=§ = param1;
         this.§<X§ = new Vector.<§5K§>();
      }
      
      public function get §^%§() : int
      {
         return this.§<X§.length;
      }
      
      public function get §`9§() : int
      {
         return this.§3!=§.width;
      }
      
      public function get §3c§() : int
      {
         return this.§3!=§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§3!=§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§6!r§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§6!r§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§3!=§)
         {
            this.§3!=§.dispose();
            this.§3!=§ = null;
         }
         this.§<X§ = new Vector.<§5K§>();
      }
      
      public function §2P§(param1:BitmapData) : void
      {
         this.§3!=§ = param1;
      }
      
      public function §?!t§(param1:§5K§) : void
      {
         this.§<X§.push(param1);
      }
      
      public function §@u§(param1:String) : §5K§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§<X§.length)
         {
            if(this.§<X§[_loc2_].name == param1)
            {
               return this.§<X§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function § k§(param1:int) : §5K§
      {
         if(param1 < 0 || param1 >= this.§<X§.length)
         {
            return null;
         }
         return this.§<X§[param1];
      }
   }
}
