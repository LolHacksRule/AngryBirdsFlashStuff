package §9!o§
{
   import flash.display.BitmapData;
   
   public class §;"v§
   {
       
      
      private var §]!-§:Vector.<§6Z§>;
      
      protected var §9B§:BitmapData;
      
      protected var §&$"§:String;
      
      private var §#!1§:Number = 1.0;
      
      public function §;"v§(param1:BitmapData)
      {
         super();
         this.§9B§ = param1;
         this.§]!-§ = new Vector.<§6Z§>();
      }
      
      protected static function §-#8§(param1:§6Z§, param2:int, param3:int) : void
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
      
      public function get §<!C§() : int
      {
         return this.§]!-§.length;
      }
      
      public function get bitmapWidth() : int
      {
         return this.§9B§.width;
      }
      
      public function get bitmapHeight() : int
      {
         return this.§9B§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§9B§;
      }
      
      public function get name() : String
      {
         return this.§&$"§;
      }
      
      public function get scale() : Number
      {
         return this.§#!1§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§#!1§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§9B§)
         {
            this.§9B§.dispose();
            this.§9B§ = null;
         }
         this.§]!-§ = new Vector.<§6Z§>();
      }
      
      public function §[!I§(param1:BitmapData) : void
      {
         this.§9B§ = param1;
      }
      
      public function §!I§(param1:§6Z§) : void
      {
         this.§]!-§.push(param1);
      }
      
      public function §3"P§(param1:String) : §6Z§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§]!-§.length)
         {
            if(this.§]!-§[_loc2_].name == param1)
            {
               return this.§]!-§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §>#^§(param1:int) : §6Z§
      {
         if(param1 < 0 || param1 >= this.§]!-§.length)
         {
            return null;
         }
         return this.§]!-§[param1];
      }
   }
}
