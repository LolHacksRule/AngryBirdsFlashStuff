package §+!R§
{
   import flash.display.BitmapData;
   
   public class §`!C§
   {
       
      
      private var §7J§:Vector.<§"O§>;
      
      protected var §7!`§:BitmapData;
      
      protected var mName:String;
      
      private var §!!4§:Number = 1.0;
      
      public function §`!C§(param1:BitmapData)
      {
         super();
         this.§7!`§ = param1;
         this.§7J§ = new Vector.<§"O§>();
      }
      
      public function get §=! §() : int
      {
         return this.§7J§.length;
      }
      
      public function get §5^§() : int
      {
         return this.§7!`§.width;
      }
      
      public function get §4!+§() : int
      {
         return this.§7!`§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§7!`§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§!!4§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§!!4§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§7!`§)
         {
            this.§7!`§.dispose();
            this.§7!`§ = null;
         }
         this.§7J§ = new Vector.<§"O§>();
      }
      
      public function §`!F§(param1:BitmapData) : void
      {
         this.§7!`§ = param1;
      }
      
      public function §`!3§(param1:§"O§) : void
      {
         this.§7J§.push(param1);
      }
      
      public function §]$§(param1:String) : §"O§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§7J§.length)
         {
            if(this.§7J§[_loc2_].mName == param1)
            {
               return this.§7J§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §!0§(param1:int) : §"O§
      {
         if(param1 < 0 || param1 >= this.§7J§.length)
         {
            return null;
         }
         return this.§7J§[param1];
      }
   }
}
