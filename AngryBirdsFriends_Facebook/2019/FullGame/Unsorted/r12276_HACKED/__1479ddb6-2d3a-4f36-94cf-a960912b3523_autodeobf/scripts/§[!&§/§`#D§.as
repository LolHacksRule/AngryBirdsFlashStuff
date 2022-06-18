package §[!&§
{
   import flash.display.BitmapData;
   
   public class §`#D§
   {
       
      
      private var §6#A§:Vector.<§""B§>;
      
      protected var §&"v§:BitmapData;
      
      protected var §-#3§:String;
      
      private var §6#q§:Number = 1.0;
      
      public function §`#D§(param1:BitmapData)
      {
         super();
         this.§&"v§ = param1;
         this.§6#A§ = new Vector.<§""B§>();
      }
      
      protected static function §8"T§(param1:§""B§, param2:int, param3:int) : void
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
      
      public function get §;"X§() : int
      {
         return this.§6#A§.length;
      }
      
      public function get bitmapWidth() : int
      {
         return this.§&"v§.width;
      }
      
      public function get bitmapHeight() : int
      {
         return this.§&"v§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§&"v§;
      }
      
      public function get name() : String
      {
         return this.§-#3§;
      }
      
      public function get scale() : Number
      {
         return this.§6#q§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§6#q§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§&"v§)
         {
            this.§&"v§.dispose();
            this.§&"v§ = null;
         }
         this.§6#A§ = new Vector.<§""B§>();
      }
      
      public function §'"2§(param1:BitmapData) : void
      {
         this.§&"v§ = param1;
      }
      
      public function §+!@§(param1:§""B§) : void
      {
         this.§6#A§.push(param1);
      }
      
      public function §9"f§(param1:String) : §""B§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§6#A§.length)
         {
            if(this.§6#A§[_loc2_].name == param1)
            {
               return this.§6#A§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §7"P§(param1:int) : §""B§
      {
         if(param1 < 0 || param1 >= this.§6#A§.length)
         {
            return null;
         }
         return this.§6#A§[param1];
      }
   }
}
