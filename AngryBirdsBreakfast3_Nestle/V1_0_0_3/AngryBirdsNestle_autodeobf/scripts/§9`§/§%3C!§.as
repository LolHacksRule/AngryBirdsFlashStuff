package §9`§
{
   import flash.display.BitmapData;
   
   public class §<!§
   {
       
      
      private var §+!"§:Vector.<§=C§>;
      
      protected var §4!!§:BitmapData;
      
      protected var mName:String;
      
      private var §>s§:Number = 1.0;
      
      public function §<!§(param1:BitmapData)
      {
         super();
         this.§4!!§ = param1;
         this.§+!"§ = new Vector.<§=C§>();
      }
      
      public function get §`s§() : int
      {
         return this.§+!"§.length;
      }
      
      public function get §=]§() : int
      {
         return this.§4!!§.width;
      }
      
      public function get §,!f§() : int
      {
         return this.§4!!§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§4!!§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§>s§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§>s§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§4!!§)
         {
            this.§4!!§.dispose();
            this.§4!!§ = null;
         }
         this.§+!"§ = new Vector.<§=C§>();
      }
      
      public function §<F§(param1:BitmapData) : void
      {
         this.§4!!§ = param1;
      }
      
      public function §]+§(param1:§=C§) : void
      {
         this.§+!"§.push(param1);
      }
      
      public function §9!J§(param1:String) : §=C§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§+!"§.length)
         {
            if(this.§+!"§[_loc2_].name == param1)
            {
               return this.§+!"§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §=4§(param1:int) : §=C§
      {
         if(param1 < 0 || param1 >= this.§+!"§.length)
         {
            return null;
         }
         return this.§+!"§[param1];
      }
   }
}
