package §?$9§
{
   import flash.display.BitmapData;
   
   public class §7"H§
   {
       
      
      private var §&"2§:Vector.<§3#z§>;
      
      protected var §`"X§:BitmapData;
      
      protected var §;!p§:String;
      
      private var § "A§:Number = 1.0;
      
      public function §7"H§(param1:BitmapData)
      {
         super();
         this.§`"X§ = param1;
         this.§&"2§ = new Vector.<§3#z§>();
      }
      
      protected static function §7#S§(param1:§3#z§, param2:int, param3:int) : void
      {
         if(param1.rect.top < 0)
         {
            param1.rect.top = 0;
         }
         if(param1.rect.left < 0)
         {
            param1.rect.left = 0;
         }
         if(param1.rect.bottom > param3)
         {
            param1.rect.bottom = param3;
         }
         if(param1.rect.right > param2)
         {
            param1.rect.right = param2;
         }
      }
      
      public function get §"J§() : int
      {
         return this.§&"2§.length;
      }
      
      public function get bitmapWidth() : int
      {
         return this.§`"X§.width;
      }
      
      public function get bitmapHeight() : int
      {
         return this.§`"X§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§`"X§;
      }
      
      public function get name() : String
      {
         return this.§;!p§;
      }
      
      public function get scale() : Number
      {
         return this.§ "A§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§ "A§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§`"X§)
         {
            this.§`"X§.dispose();
            this.§`"X§ = null;
         }
         this.§&"2§ = new Vector.<§3#z§>();
      }
      
      public function §]#U§(param1:BitmapData) : void
      {
         this.§`"X§ = param1;
      }
      
      public function §!r§(param1:§3#z§) : void
      {
         this.§&"2§.push(param1);
      }
      
      public function §6"_§(param1:String) : §3#z§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§&"2§.length)
         {
            if(this.§&"2§[_loc2_].name == param1)
            {
               return this.§&"2§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §`!v§(param1:int) : §3#z§
      {
         if(param1 < 0 || param1 >= this.§&"2§.length)
         {
            return null;
         }
         return this.§&"2§[param1];
      }
   }
}
