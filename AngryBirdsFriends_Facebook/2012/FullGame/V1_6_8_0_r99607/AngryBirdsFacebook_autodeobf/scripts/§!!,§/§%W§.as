package §!!,§
{
   import flash.display.BitmapData;
   
   public class §%W§
   {
       
      
      private var §71§:Vector.<§5W§>;
      
      protected var §[!f§:BitmapData;
      
      protected var mName:String;
      
      private var §6!l§:Number = 1.0;
      
      public function §%W§(param1:BitmapData)
      {
         super();
         this.§[!f§ = param1;
         this.§71§ = new Vector.<§5W§>();
      }
      
      public function get §#X§() : int
      {
         return this.§71§.length;
      }
      
      public function get §#">§() : int
      {
         return this.§[!f§.width;
      }
      
      public function get §;!J§() : int
      {
         return this.§[!f§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§[!f§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§6!l§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§6!l§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§[!f§)
         {
            this.§[!f§.dispose();
            this.§[!f§ = null;
         }
         this.§71§ = new Vector.<§5W§>();
      }
      
      public function §7"6§(param1:BitmapData) : void
      {
         this.§[!f§ = param1;
      }
      
      public function §5!Z§(param1:§5W§) : void
      {
         this.§71§.push(param1);
      }
      
      public function §#h§(param1:String) : §5W§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§71§.length)
         {
            if(this.§71§[_loc2_].mName == param1)
            {
               return this.§71§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §5!c§(param1:int) : §5W§
      {
         if(param1 < 0 || param1 >= this.§71§.length)
         {
            return null;
         }
         return this.§71§[param1];
      }
   }
}
