package §>"$§
{
   import flash.display.BitmapData;
   
   public class §0!!§
   {
       
      
      private var §'"+§:Vector.<§'!u§>;
      
      protected var §-!Q§:BitmapData;
      
      protected var mName:String;
      
      private var §1!k§:Number = 1.0;
      
      public function §0!!§(param1:BitmapData)
      {
         super();
         this.§-!Q§ = param1;
         this.§'"+§ = new Vector.<§'!u§>();
      }
      
      public function get §4j§() : int
      {
         return this.§'"+§.length;
      }
      
      public function get §-v§() : int
      {
         return this.§-!Q§.width;
      }
      
      public function get §5_§() : int
      {
         return this.§-!Q§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§-!Q§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§1!k§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§1!k§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§-!Q§)
         {
            this.§-!Q§.dispose();
            this.§-!Q§ = null;
         }
         this.§'"+§ = new Vector.<§'!u§>();
      }
      
      public function §^h§(param1:BitmapData) : void
      {
         this.§-!Q§ = param1;
      }
      
      public function §8!m§(param1:§'!u§) : void
      {
         this.§'"+§.push(param1);
      }
      
      public function §?!i§(param1:String) : §'!u§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§'"+§.length)
         {
            if(this.§'"+§[_loc2_].name == param1)
            {
               return this.§'"+§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §-!#§(param1:int) : §'!u§
      {
         if(param1 < 0 || param1 >= this.§'"+§.length)
         {
            return null;
         }
         return this.§'"+§[param1];
      }
   }
}
