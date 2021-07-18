package §`",§
{
   import flash.display.BitmapData;
   
   public class §?" §
   {
       
      
      private var §"!z§:Vector.<§1!v§>;
      
      protected var § e§:BitmapData;
      
      protected var mName:String;
      
      private var §=T§:Number = 1.0;
      
      public function §?" §(param1:BitmapData)
      {
         super();
         this.§ e§ = param1;
         this.§"!z§ = new Vector.<§1!v§>();
      }
      
      public function get §,"6§() : int
      {
         return this.§"!z§.length;
      }
      
      public function get §&q§() : int
      {
         return this.§ e§.width;
      }
      
      public function get §"!;§() : int
      {
         return this.§ e§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§ e§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§=T§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§=T§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§ e§)
         {
            this.§ e§.dispose();
            this.§ e§ = null;
         }
         this.§"!z§ = new Vector.<§1!v§>();
      }
      
      public function §%5§(param1:BitmapData) : void
      {
         this.§ e§ = param1;
      }
      
      public function §%D§(param1:§1!v§) : void
      {
         this.§"!z§.push(param1);
      }
      
      public function §&!#§(param1:String) : §1!v§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§"!z§.length)
         {
            if(this.§"!z§[_loc2_].mName == param1)
            {
               return this.§"!z§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §"!i§(param1:int) : §1!v§
      {
         if(param1 < 0 || param1 >= this.§"!z§.length)
         {
            return null;
         }
         return this.§"!z§[param1];
      }
   }
}
