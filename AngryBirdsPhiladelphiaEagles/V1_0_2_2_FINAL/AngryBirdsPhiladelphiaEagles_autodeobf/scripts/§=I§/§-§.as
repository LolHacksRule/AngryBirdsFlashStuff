package §=I§
{
   import flash.display.BitmapData;
   
   public class §-§
   {
       
      
      private var §76§:Vector.<§5!B§>;
      
      protected var §@x§:BitmapData;
      
      protected var mName:String;
      
      private var §6-§:Number = 1.0;
      
      public function §-§(param1:BitmapData)
      {
         super();
         this.§@x§ = param1;
         this.§76§ = new Vector.<§5!B§>();
      }
      
      public function get §5]§() : int
      {
         return this.§76§.length;
      }
      
      public function get §=c§() : int
      {
         return this.§@x§.width;
      }
      
      public function get get() : int
      {
         return this.§@x§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§@x§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§6-§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§6-§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§@x§)
         {
            this.§@x§.dispose();
            this.§@x§ = null;
         }
         this.§76§ = new Vector.<§5!B§>();
      }
      
      public function §63§(param1:BitmapData) : void
      {
         this.§@x§ = param1;
      }
      
      public function §0,§(param1:§5!B§) : void
      {
         this.§76§.push(param1);
      }
      
      public function §;M§(param1:String) : §5!B§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§76§.length)
         {
            if(this.§76§[_loc2_].mName == param1)
            {
               return this.§76§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §`T§(param1:int) : §5!B§
      {
         if(param1 < 0 || param1 >= this.§76§.length)
         {
            return null;
         }
         return this.§76§[param1];
      }
   }
}
