package §7!0§
{
   import flash.display.BitmapData;
   
   public class §<!9§
   {
       
      
      private var §+R§:Vector.<§`C§>;
      
      protected var §`5§:BitmapData;
      
      protected var mName:String;
      
      private var §+o§:Number = 1.0;
      
      public function §<!9§(param1:BitmapData)
      {
         super();
         this.§`5§ = param1;
         this.§+R§ = new Vector.<§`C§>();
      }
      
      public function get §[;§() : int
      {
         return this.§+R§.length;
      }
      
      public function get §>c§() : int
      {
         return this.§`5§.width;
      }
      
      public function get §4?§() : int
      {
         return this.§`5§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§`5§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§+o§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§+o§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§`5§)
         {
            this.§`5§.dispose();
            this.§`5§ = null;
         }
         this.§+R§ = new Vector.<§`C§>();
      }
      
      public function §96§(param1:BitmapData) : void
      {
         this.§`5§ = param1;
      }
      
      public function §=#§(param1:§`C§) : void
      {
         this.§+R§.push(param1);
      }
      
      public function §!p§(param1:String) : §`C§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§+R§.length)
         {
            if(this.§+R§[_loc2_].mName == param1)
            {
               return this.§+R§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §+!9§(param1:int) : §`C§
      {
         if(param1 < 0 || param1 >= this.§+R§.length)
         {
            return null;
         }
         return this.§+R§[param1];
      }
   }
}
