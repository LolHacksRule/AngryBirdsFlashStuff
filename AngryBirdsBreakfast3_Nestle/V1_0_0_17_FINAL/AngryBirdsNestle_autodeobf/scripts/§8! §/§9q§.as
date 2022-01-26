package §8! §
{
   import flash.display.BitmapData;
   
   public class §9q§
   {
       
      
      private var §"U§:Vector.<§^"-§>;
      
      protected var §49§:BitmapData;
      
      protected var mName:String;
      
      private var §2c§:Number = 1.0;
      
      public function §9q§(param1:BitmapData)
      {
         super();
         this.§49§ = param1;
         this.§"U§ = new Vector.<§^"-§>();
      }
      
      public function get §!,§() : int
      {
         return this.§"U§.length;
      }
      
      public function get §4K§() : int
      {
         return this.§49§.width;
      }
      
      public function get §"9§() : int
      {
         return this.§49§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§49§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§2c§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§2c§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§49§)
         {
            this.§49§.dispose();
            this.§49§ = null;
         }
         this.§"U§ = new Vector.<§^"-§>();
      }
      
      public function §!!+§(param1:BitmapData) : void
      {
         this.§49§ = param1;
      }
      
      public function §-"#§(param1:§^"-§) : void
      {
         this.§"U§.push(param1);
      }
      
      public function §8e§(param1:String) : §^"-§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§"U§.length)
         {
            if(this.§"U§[_loc2_].name == param1)
            {
               return this.§"U§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §0@§(param1:int) : §^"-§
      {
         if(param1 < 0 || param1 >= this.§"U§.length)
         {
            return null;
         }
         return this.§"U§[param1];
      }
   }
}
