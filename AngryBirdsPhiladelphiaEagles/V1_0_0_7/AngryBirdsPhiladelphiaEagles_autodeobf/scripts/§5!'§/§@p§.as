package §5!'§
{
   import flash.display.BitmapData;
   
   public class §@p§
   {
       
      
      private var §"!5§:Vector.<§"!§>;
      
      protected var §3V§:BitmapData;
      
      protected var mName:String;
      
      private var §`Z§:Number = 1.0;
      
      public function §@p§(param1:BitmapData)
      {
         super();
         this.§3V§ = param1;
         this.§"!5§ = new Vector.<§"!§>();
      }
      
      public function get §^-§() : int
      {
         return this.§"!5§.length;
      }
      
      public function get §+!2§() : int
      {
         return this.§3V§.width;
      }
      
      public function get § l§() : int
      {
         return this.§3V§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§3V§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§`Z§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§`Z§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§3V§)
         {
            this.§3V§.dispose();
            this.§3V§ = null;
         }
         this.§"!5§ = new Vector.<§"!§>();
      }
      
      public function §3!=§(param1:BitmapData) : void
      {
         this.§3V§ = param1;
      }
      
      public function §!!Q§(param1:§"!§) : void
      {
         this.§"!5§.push(param1);
      }
      
      public function §2z§(param1:String) : §"!§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§"!5§.length)
         {
            if(this.§"!5§[_loc2_].mName == param1)
            {
               return this.§"!5§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §8N§(param1:int) : §"!§
      {
         if(param1 < 0 || param1 >= this.§"!5§.length)
         {
            return null;
         }
         return this.§"!5§[param1];
      }
   }
}
