package §?2§
{
   import flash.display.BitmapData;
   
   public class §]!'§
   {
       
      
      private var §"s§:Vector.<§=!L§>;
      
      protected var §#n§:BitmapData;
      
      protected var mName:String;
      
      private var §!+§:Number = 1.0;
      
      public function §]!'§(param1:BitmapData)
      {
         super();
         this.§#n§ = param1;
         this.§"s§ = new Vector.<§=!L§>();
      }
      
      public function get §%9§() : int
      {
         return this.§"s§.length;
      }
      
      public function get §!'§() : int
      {
         return this.§#n§.width;
      }
      
      public function get §`!W§() : int
      {
         return this.§#n§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§#n§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§!+§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§!+§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§#n§)
         {
            this.§#n§.dispose();
            this.§#n§ = null;
         }
         this.§"s§ = new Vector.<§=!L§>();
      }
      
      public function §;P§(param1:BitmapData) : void
      {
         this.§#n§ = param1;
      }
      
      public function §6!P§(param1:§=!L§) : void
      {
         this.§"s§.push(param1);
      }
      
      public function §4T§(param1:String) : §=!L§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§"s§.length)
         {
            if(this.§"s§[_loc2_].mName == param1)
            {
               return this.§"s§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §%y§(param1:int) : §=!L§
      {
         if(param1 < 0 || param1 >= this.§"s§.length)
         {
            return null;
         }
         return this.§"s§[param1];
      }
   }
}
