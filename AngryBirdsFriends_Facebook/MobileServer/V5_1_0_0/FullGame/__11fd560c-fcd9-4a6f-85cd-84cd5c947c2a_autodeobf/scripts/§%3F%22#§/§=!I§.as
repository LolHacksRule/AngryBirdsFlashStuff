package §?"#§
{
   import flash.display.BitmapData;
   
   public class §=!I§
   {
       
      
      private var §2"L§:Vector.<§#$5§>;
      
      protected var §=!_§:BitmapData;
      
      protected var §=q§:String;
      
      private var §^#5§:Number = 1.0;
      
      public function §=!I§(param1:BitmapData)
      {
         super();
         this.§=!_§ = param1;
         this.§2"L§ = new Vector.<§#$5§>();
      }
      
      protected static function §1F§(param1:§#$5§, param2:int, param3:int) : void
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
      
      public function get §'#w§() : int
      {
         return this.§2"L§.length;
      }
      
      public function get bitmapWidth() : int
      {
         return this.§=!_§.width;
      }
      
      public function get bitmapHeight() : int
      {
         return this.§=!_§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§=!_§;
      }
      
      public function get name() : String
      {
         return this.§=q§;
      }
      
      public function get scale() : Number
      {
         return this.§^#5§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§^#5§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§=!_§)
         {
            this.§=!_§.dispose();
            this.§=!_§ = null;
         }
         this.§2"L§ = new Vector.<§#$5§>();
      }
      
      public function §4!<§(param1:BitmapData) : void
      {
         this.§=!_§ = param1;
      }
      
      public function §+"c§(param1:§#$5§) : void
      {
         this.§2"L§.push(param1);
      }
      
      public function §-#9§(param1:String) : §#$5§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§2"L§.length)
         {
            if(this.§2"L§[_loc2_].name == param1)
            {
               return this.§2"L§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §,5§(param1:int) : §#$5§
      {
         if(param1 < 0 || param1 >= this.§2"L§.length)
         {
            return null;
         }
         return this.§2"L§[param1];
      }
   }
}
