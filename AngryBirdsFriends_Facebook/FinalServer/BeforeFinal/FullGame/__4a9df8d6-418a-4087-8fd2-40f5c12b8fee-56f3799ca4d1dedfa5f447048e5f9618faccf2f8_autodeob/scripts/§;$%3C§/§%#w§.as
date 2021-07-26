package §;$<§
{
   import flash.display.BitmapData;
   
   public class §%#w§
   {
       
      
      private var §5!p§:Vector.<§^9§>;
      
      protected var §"#"§:BitmapData;
      
      protected var §!I§:String;
      
      private var §5>§:Number = 1.0;
      
      public function §%#w§(param1:BitmapData)
      {
         super();
         this.§"#"§ = param1;
         this.§5!p§ = new Vector.<§^9§>();
      }
      
      protected static function §?#a§(param1:§^9§, param2:int, param3:int) : void
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
      
      public function get §]"a§() : int
      {
         return this.§5!p§.length;
      }
      
      public function get bitmapWidth() : int
      {
         return this.§"#"§.width;
      }
      
      public function get bitmapHeight() : int
      {
         return this.§"#"§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§"#"§;
      }
      
      public function get name() : String
      {
         return this.§!I§;
      }
      
      public function get scale() : Number
      {
         return this.§5>§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§5>§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§"#"§)
         {
            this.§"#"§.dispose();
            this.§"#"§ = null;
         }
         this.§5!p§ = new Vector.<§^9§>();
      }
      
      public function §!"e§(param1:BitmapData) : void
      {
         this.§"#"§ = param1;
      }
      
      public function § !`§(param1:§^9§) : void
      {
         this.§5!p§.push(param1);
      }
      
      public function §%#8§(param1:String) : §^9§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§5!p§.length)
         {
            if(this.§5!p§[_loc2_].name == param1)
            {
               return this.§5!p§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §""s§(param1:int) : §^9§
      {
         if(param1 < 0 || param1 >= this.§5!p§.length)
         {
            return null;
         }
         return this.§5!p§[param1];
      }
   }
}
