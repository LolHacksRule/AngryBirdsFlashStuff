package §>0§
{
   import flash.display.BitmapData;
   
   public class §[!W§
   {
       
      
      private var §'=§:Vector.<§7"§>;
      
      protected var §!#§:BitmapData;
      
      protected var mName:String;
      
      private var §0!^§:Number = 1.0;
      
      public function §[!W§(param1:BitmapData)
      {
         super();
         this.§!#§ = param1;
         this.§'=§ = new Vector.<§7"§>();
      }
      
      public function get §;5§() : int
      {
         return this.§'=§.length;
      }
      
      public function get §"!J§() : int
      {
         return this.§!#§.width;
      }
      
      public function get §"-§() : int
      {
         return this.§!#§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§!#§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§0!^§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§0!^§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§!#§)
         {
            this.§!#§.dispose();
            this.§!#§ = null;
         }
         this.§'=§ = new Vector.<§7"§>();
      }
      
      public function § s§(param1:BitmapData) : void
      {
         this.§!#§ = param1;
      }
      
      public function §8!'§(param1:§7"§) : void
      {
         this.§'=§.push(param1);
      }
      
      public function §+!7§(param1:String) : §7"§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§'=§.length)
         {
            if(this.§'=§[_loc2_].mName == param1)
            {
               return this.§'=§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §;!,§(param1:int) : §7"§
      {
         if(param1 < 0 || param1 >= this.§'=§.length)
         {
            return null;
         }
         return this.§'=§[param1];
      }
   }
}
