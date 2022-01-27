package §7§#2
{
   import flash.display.BitmapData;
   
   public class §21§
   {
       
      
      private var §`!@§:Vector.<§%>§>;
      
      protected var §#!r§:BitmapData;
      
      protected var mName:String;
      
      private var §"r§:Number = 1.0;
      
      public function §21§(param1:BitmapData)
      {
         super();
         this.§#!r§ = param1;
         this.§`!@§ = new Vector.<§%>§>();
      }
      
      public function get §+"c§() : int
      {
         return this.§`!@§.length;
      }
      
      public function get bitmapWidth() : int
      {
         return this.§#!r§.width;
      }
      
      public function get bitmapHeight() : int
      {
         return this.§#!r§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§#!r§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§"r§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§"r§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§#!r§)
         {
            this.§#!r§.dispose();
            this.§#!r§ = null;
         }
         this.§`!@§ = new Vector.<§%>§>();
      }
      
      public function §%@§(param1:BitmapData) : void
      {
         this.§#!r§ = param1;
      }
      
      public function §]H§(param1:§%>§) : void
      {
         this.§`!@§.push(param1);
      }
      
      public function §2!T§(param1:String) : §%>§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§`!@§.length)
         {
            if(this.§`!@§[_loc2_].name == param1)
            {
               return this.§`!@§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §-"S§(param1:int) : §%>§
      {
         if(param1 < 0 || param1 >= this.§`!@§.length)
         {
            return null;
         }
         return this.§`!@§[param1];
      }
   }
}
