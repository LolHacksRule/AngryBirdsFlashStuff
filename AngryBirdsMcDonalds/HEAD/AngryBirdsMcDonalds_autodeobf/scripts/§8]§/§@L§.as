package §8]§
{
   import flash.display.BitmapData;
   
   public class §@L§
   {
       
      
      private var §&N§:Vector.<§`!`§>;
      
      protected var §8k§:BitmapData;
      
      protected var mName:String;
      
      private var §'W§:Number = 1.0;
      
      public function §@L§(param1:BitmapData)
      {
         super();
         this.§8k§ = param1;
         this.§&N§ = new Vector.<§`!`§>();
      }
      
      public function get §,s§() : int
      {
         return this.§&N§.length;
      }
      
      public function get §-!A§() : int
      {
         return this.§8k§.width;
      }
      
      public function get §-u§() : int
      {
         return this.§8k§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§8k§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§'W§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§'W§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§8k§)
         {
            this.§8k§.dispose();
            this.§8k§ = null;
         }
         this.§&N§ = new Vector.<§`!`§>();
      }
      
      public function §9!f§(param1:BitmapData) : void
      {
         this.§8k§ = param1;
      }
      
      public function §1!%§(param1:§`!`§) : void
      {
         this.§&N§.push(param1);
      }
      
      public function §"?§(param1:String) : §`!`§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§&N§.length)
         {
            if(this.§&N§[_loc2_].mName == param1)
            {
               return this.§&N§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §=!k§(param1:int) : §`!`§
      {
         if(param1 < 0 || param1 >= this.§&N§.length)
         {
            return null;
         }
         return this.§&N§[param1];
      }
   }
}
