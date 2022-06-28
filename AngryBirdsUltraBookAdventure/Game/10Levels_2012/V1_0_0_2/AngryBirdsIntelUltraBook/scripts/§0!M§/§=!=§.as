package §0!M§
{
   import flash.display.BitmapData;
   
   public class §=!=§
   {
       
      
      private var §,!a§:Vector.<§,'§>;
      
      protected var §'!N§:BitmapData;
      
      protected var mName:String;
      
      private var §'8§:Number = 1.0;
      
      public function §=!=§(param1:BitmapData)
      {
         super();
         this.§'!N§ = param1;
         this.§,!a§ = new Vector.<§,'§>();
      }
      
      public function get §1!]§() : int
      {
         return this.§,!a§.length;
      }
      
      public function get §+1§() : int
      {
         return this.§'!N§.width;
      }
      
      public function get §#!b§() : int
      {
         return this.§'!N§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§'!N§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§'8§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§'8§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§'!N§)
         {
            this.§'!N§.dispose();
            this.§'!N§ = null;
         }
         this.§,!a§ = new Vector.<§,'§>();
      }
      
      public function §0g§(param1:BitmapData) : void
      {
         this.§'!N§ = param1;
      }
      
      public function §5!w§(param1:§,'§) : void
      {
         this.§,!a§.push(param1);
      }
      
      public function §-v§(param1:String) : §,'§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§,!a§.length)
         {
            if(this.§,!a§[_loc2_].mName == param1)
            {
               return this.§,!a§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function § s§(param1:int) : §,'§
      {
         if(param1 < 0 || param1 >= this.§,!a§.length)
         {
            return null;
         }
         return this.§,!a§[param1];
      }
   }
}
