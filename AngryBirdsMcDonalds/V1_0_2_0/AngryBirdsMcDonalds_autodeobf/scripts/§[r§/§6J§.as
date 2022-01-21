package §[r§
{
   import flash.display.BitmapData;
   
   public class §6J§
   {
       
      
      private var §1§:Vector.<§"T§>;
      
      protected var §^4§:BitmapData;
      
      protected var mName:String;
      
      private var §>c§:Number = 1.0;
      
      public function §6J§(param1:BitmapData)
      {
         super();
         this.§^4§ = param1;
         this.§1§ = new Vector.<§"T§>();
      }
      
      public function get §06§() : int
      {
         return this.§1§.length;
      }
      
      public function get §!!+§() : int
      {
         return this.§^4§.width;
      }
      
      public function get §^!!§() : int
      {
         return this.§^4§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§^4§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§>c§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§>c§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§^4§)
         {
            this.§^4§.dispose();
            this.§^4§ = null;
         }
         this.§1§ = new Vector.<§"T§>();
      }
      
      public function §;c§(param1:BitmapData) : void
      {
         this.§^4§ = param1;
      }
      
      public function §`S§(param1:§"T§) : void
      {
         this.§1§.push(param1);
      }
      
      public function §6Q§(param1:String) : §"T§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§1§.length)
         {
            if(this.§1§[_loc2_].mName == param1)
            {
               return this.§1§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §1!L§(param1:int) : §"T§
      {
         if(param1 < 0 || param1 >= this.§1§.length)
         {
            return null;
         }
         return this.§1§[param1];
      }
   }
}
