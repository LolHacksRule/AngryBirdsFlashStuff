package § !'§
{
   import flash.display.BitmapData;
   
   public class §!!F§
   {
       
      
      private var §]!;§:Vector.<§6'§>;
      
      protected var §^!!§:BitmapData;
      
      protected var mName:String;
      
      private var §[2§:Number = 1.0;
      
      public function §!!F§(param1:BitmapData)
      {
         super();
         this.§^!!§ = param1;
         this.§]!;§ = new Vector.<§6'§>();
      }
      
      public function get §?!$§() : int
      {
         return this.§]!;§.length;
      }
      
      public function get §6H§() : int
      {
         return this.§^!!§.width;
      }
      
      public function get §-!8§() : int
      {
         return this.§^!!§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§^!!§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§[2§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§[2§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§^!!§)
         {
            this.§^!!§.dispose();
            this.§^!!§ = null;
         }
         this.§]!;§ = new Vector.<§6'§>();
      }
      
      public function §+z§(param1:BitmapData) : void
      {
         this.§^!!§ = param1;
      }
      
      public function §??§(param1:§6'§) : void
      {
         this.§]!;§.push(param1);
      }
      
      public function §7E§(param1:String) : §6'§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§]!;§.length)
         {
            if(this.§]!;§[_loc2_].mName == param1)
            {
               return this.§]!;§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §;!B§(param1:int) : §6'§
      {
         if(param1 < 0 || param1 >= this.§]!;§.length)
         {
            return null;
         }
         return this.§]!;§[param1];
      }
   }
}
