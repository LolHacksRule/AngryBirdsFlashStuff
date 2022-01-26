package §>V§
{
   import flash.display.BitmapData;
   
   public class §"!L§
   {
       
      
      private var §`?§:Vector.<§6!T§>;
      
      protected var §<8§:BitmapData;
      
      protected var mName:String;
      
      private var §-§:Number = 1.0;
      
      public function §"!L§(param1:BitmapData)
      {
         super();
         this.§<8§ = param1;
         this.§`?§ = new Vector.<§6!T§>();
      }
      
      public function get §2!5§() : int
      {
         return this.§`?§.length;
      }
      
      public function get §=!Y§() : int
      {
         return this.§<8§.width;
      }
      
      public function get §9k§() : int
      {
         return this.§<8§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§<8§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§-§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§-§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§<8§)
         {
            this.§<8§.dispose();
            this.§<8§ = null;
         }
         this.§`?§ = new Vector.<§6!T§>();
      }
      
      public function §3c§(param1:BitmapData) : void
      {
         this.§<8§ = param1;
      }
      
      public function §%!'§(param1:§6!T§) : void
      {
         this.§`?§.push(param1);
      }
      
      public function §@!Q§(param1:String) : §6!T§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§`?§.length)
         {
            if(this.§`?§[_loc2_].mName == param1)
            {
               return this.§`?§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §5!5§(param1:int) : §6!T§
      {
         if(param1 < 0 || param1 >= this.§`?§.length)
         {
            return null;
         }
         return this.§`?§[param1];
      }
   }
}
