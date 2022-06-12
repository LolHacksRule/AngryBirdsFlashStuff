package §3u§
{
   import flash.display.BitmapData;
   
   public class §!!O§
   {
       
      
      private var §`!p§:Vector.<§^!k§>;
      
      protected var §+[§:BitmapData;
      
      protected var mName:String;
      
      private var §2"§:Number = 1.0;
      
      public function §!!O§(param1:BitmapData)
      {
         super();
         this.§+[§ = param1;
         this.§`!p§ = new Vector.<§^!k§>();
      }
      
      public function get §=n§() : int
      {
         return this.§`!p§.length;
      }
      
      public function get §=s§() : int
      {
         return this.§+[§.width;
      }
      
      public function get §2!7§() : int
      {
         return this.§+[§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§+[§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§2"§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§2"§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§+[§)
         {
            this.§+[§.dispose();
            this.§+[§ = null;
         }
         this.§`!p§ = new Vector.<§^!k§>();
      }
      
      public function §[!y§(param1:BitmapData) : void
      {
         this.§+[§ = param1;
      }
      
      public function §>i§(param1:§^!k§) : void
      {
         this.§`!p§.push(param1);
      }
      
      public function §'!%§(param1:String) : §^!k§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§`!p§.length)
         {
            if(this.§`!p§[_loc2_].mName == param1)
            {
               return this.§`!p§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §+!k§(param1:int) : §^!k§
      {
         if(param1 < 0 || param1 >= this.§`!p§.length)
         {
            return null;
         }
         return this.§`!p§[param1];
      }
   }
}
