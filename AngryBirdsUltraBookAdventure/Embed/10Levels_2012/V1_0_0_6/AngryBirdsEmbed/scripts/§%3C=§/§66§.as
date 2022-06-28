package §<=§
{
   import flash.display.BitmapData;
   
   public class §66§
   {
       
      
      private var §8B§:Vector.<§#8§>;
      
      protected var §&q§:BitmapData;
      
      protected var mName:String;
      
      private var §]H§:Number = 1.0;
      
      public function §66§(param1:BitmapData)
      {
         super();
         this.§&q§ = param1;
         this.§8B§ = new Vector.<§#8§>();
      }
      
      public function get §<q§() : int
      {
         return this.§8B§.length;
      }
      
      public function get §`t§() : int
      {
         return this.§&q§.width;
      }
      
      public function get §,1§() : int
      {
         return this.§&q§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§&q§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§]H§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§]H§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§&q§)
         {
            this.§&q§.dispose();
            this.§&q§ = null;
         }
         this.§8B§ = new Vector.<§#8§>();
      }
      
      public function §"X§(param1:BitmapData) : void
      {
         this.§&q§ = param1;
      }
      
      public function §'3§(param1:§#8§) : void
      {
         this.§8B§.push(param1);
      }
      
      public function §>7§(param1:String) : §#8§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§8B§.length)
         {
            if(this.§8B§[_loc2_].mName == param1)
            {
               return this.§8B§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §1@§(param1:int) : §#8§
      {
         if(param1 < 0 || param1 >= this.§8B§.length)
         {
            return null;
         }
         return this.§8B§[param1];
      }
   }
}
