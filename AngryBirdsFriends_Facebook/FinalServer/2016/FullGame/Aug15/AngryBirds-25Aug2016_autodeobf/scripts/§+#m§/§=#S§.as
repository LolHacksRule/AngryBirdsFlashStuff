package §+#m§
{
   import flash.display.BitmapData;
   
   public class §=#S§
   {
       
      
      private var §6""§:Vector.<§%D§>;
      
      protected var §8!s§:BitmapData;
      
      protected var §2!4§:String;
      
      private var §]"?§:Number = 1.0;
      
      public function §=#S§(param1:BitmapData)
      {
         super();
         this.§8!s§ = param1;
         this.§6""§ = new Vector.<§%D§>();
      }
      
      protected static function §#3§(param1:§%D§, param2:int, param3:int) : void
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
      
      public function get §+$0§() : int
      {
         return this.§6""§.length;
      }
      
      public function get bitmapWidth() : int
      {
         return this.§8!s§.width;
      }
      
      public function get bitmapHeight() : int
      {
         return this.§8!s§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§8!s§;
      }
      
      public function get name() : String
      {
         return this.§2!4§;
      }
      
      public function get scale() : Number
      {
         return this.§]"?§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§]"?§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§8!s§)
         {
            this.§8!s§.dispose();
            this.§8!s§ = null;
         }
         this.§6""§ = new Vector.<§%D§>();
      }
      
      public function §##,§(param1:BitmapData) : void
      {
         this.§8!s§ = param1;
      }
      
      public function §!#!§(param1:§%D§) : void
      {
         this.§6""§.push(param1);
      }
      
      public function §<F§(param1:String) : §%D§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§6""§.length)
         {
            if(this.§6""§[_loc2_].name == param1)
            {
               return this.§6""§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §!#<§(param1:int) : §%D§
      {
         if(param1 < 0 || param1 >= this.§6""§.length)
         {
            return null;
         }
         return this.§6""§[param1];
      }
   }
}
