package §+R§
{
   import flash.display.BitmapData;
   
   public class §#!O§
   {
       
      
      private var §%4§:Vector.<§[`§>;
      
      protected var §6$§:BitmapData;
      
      protected var mName:String;
      
      private var §;!X§:Number = 1.0;
      
      public function §#!O§(param1:BitmapData)
      {
         super();
         this.§6$§ = param1;
         this.§%4§ = new Vector.<§[`§>();
      }
      
      public function get §=r§() : int
      {
         return this.§%4§.length;
      }
      
      public function get §1!C§() : int
      {
         return this.§6$§.width;
      }
      
      public function get §7h§() : int
      {
         return this.§6$§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§6$§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§;!X§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§;!X§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§6$§)
         {
            this.§6$§.dispose();
            this.§6$§ = null;
         }
         this.§%4§ = new Vector.<§[`§>();
      }
      
      public function §0! §(param1:BitmapData) : void
      {
         this.§6$§ = param1;
      }
      
      public function §1F§(param1:§[`§) : void
      {
         this.§%4§.push(param1);
      }
      
      public function §,J§(param1:String) : §[`§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§%4§.length)
         {
            if(this.§%4§[_loc2_].mName == param1)
            {
               return this.§%4§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §[a§(param1:int) : §[`§
      {
         if(param1 < 0 || param1 >= this.§%4§.length)
         {
            return null;
         }
         return this.§%4§[param1];
      }
   }
}
