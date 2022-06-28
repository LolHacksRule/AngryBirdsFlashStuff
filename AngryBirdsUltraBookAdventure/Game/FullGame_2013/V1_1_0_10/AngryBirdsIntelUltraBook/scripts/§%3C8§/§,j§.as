package §<8§
{
   import flash.display.BitmapData;
   
   public class §,j§
   {
       
      
      private var §8Z§:Vector.<§!3§>;
      
      protected var §1!w§:BitmapData;
      
      protected var mName:String;
      
      private var §?z§:Number = 1.0;
      
      public function §,j§(param1:BitmapData)
      {
         super();
         this.§1!w§ = param1;
         this.§8Z§ = new Vector.<§!3§>();
      }
      
      public function get §'M§() : int
      {
         return this.§8Z§.length;
      }
      
      public function get §9! §() : int
      {
         return this.§1!w§.width;
      }
      
      public function get §1"$§() : int
      {
         return this.§1!w§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§1!w§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§?z§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§?z§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§1!w§)
         {
            this.§1!w§.dispose();
            this.§1!w§ = null;
         }
         this.§8Z§ = new Vector.<§!3§>();
      }
      
      public function §+]§(param1:BitmapData) : void
      {
         this.§1!w§ = param1;
      }
      
      public function §"n§(param1:§!3§) : void
      {
         this.§8Z§.push(param1);
      }
      
      public function §,!A§(param1:String) : §!3§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§8Z§.length)
         {
            if(this.§8Z§[_loc2_].mName == param1)
            {
               return this.§8Z§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §-v§(param1:int) : §!3§
      {
         if(param1 < 0 || param1 >= this.§8Z§.length)
         {
            return null;
         }
         return this.§8Z§[param1];
      }
   }
}
