package §',§
{
   import flash.display.BitmapData;
   
   public class §6H§
   {
       
      
      private var §=§:Vector.<§<v§>;
      
      protected var §&T§:BitmapData;
      
      protected var mName:String;
      
      private var §&p§:Number = 1.0;
      
      public function §6H§(param1:BitmapData)
      {
         super();
         this.§&T§ = param1;
         this.§=§ = new Vector.<§<v§>();
      }
      
      public function get §4A§() : int
      {
         return this.§=§.length;
      }
      
      public function get §1D§() : int
      {
         return this.§&T§.width;
      }
      
      public function get §[!?§() : int
      {
         return this.§&T§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§&T§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§&p§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§&p§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§&T§)
         {
            this.§&T§.dispose();
            this.§&T§ = null;
         }
         this.§=§ = new Vector.<§<v§>();
      }
      
      public function §=!F§(param1:BitmapData) : void
      {
         this.§&T§ = param1;
      }
      
      public function §]K§(param1:§<v§) : void
      {
         this.§=§.push(param1);
      }
      
      public function §>!%§(param1:String) : §<v§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§=§.length)
         {
            if(this.§=§[_loc2_].mName == param1)
            {
               return this.§=§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §<!D§(param1:int) : §<v§
      {
         if(param1 < 0 || param1 >= this.§=§.length)
         {
            return null;
         }
         return this.§=§[param1];
      }
   }
}
