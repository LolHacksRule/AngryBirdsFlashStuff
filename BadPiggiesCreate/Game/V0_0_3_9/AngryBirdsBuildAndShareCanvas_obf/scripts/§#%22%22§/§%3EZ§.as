package §#""§
{
   import flash.display.BitmapData;
   
   public class §>Z§
   {
       
      
      private var §3"-§:Vector.<§2! §>;
      
      protected var §[!`§:BitmapData;
      
      protected var mName:String;
      
      private var §`"§:Number = 1.0;
      
      public function §>Z§(param1:BitmapData)
      {
         super();
         this.§[!`§ = param1;
         this.§3"-§ = new Vector.<§2! §>();
      }
      
      public function get §=s§() : int
      {
         return this.§3"-§.length;
      }
      
      public function get §0"7§() : int
      {
         return this.§[!`§.width;
      }
      
      public function get §-J§() : int
      {
         return this.§[!`§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§[!`§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§`"§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§`"§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§[!`§)
         {
            this.§[!`§.dispose();
            this.§[!`§ = null;
         }
         this.§3"-§ = new Vector.<§2! §>();
      }
      
      public function §9",§(param1:BitmapData) : void
      {
         this.§[!`§ = param1;
      }
      
      public function §>""§(param1:§2! §) : void
      {
         this.§3"-§.push(param1);
      }
      
      public function §4!^§(param1:String) : §2! §
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§3"-§.length)
         {
            if(this.§3"-§[_loc2_].mName == param1)
            {
               return this.§3"-§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §]2§(param1:int) : §2! §
      {
         if(param1 < 0 || param1 >= this.§3"-§.length)
         {
            return null;
         }
         return this.§3"-§[param1];
      }
   }
}
