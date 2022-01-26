package §in§
{
   import flash.display.BitmapData;
   
   public class §-!L§
   {
       
      
      private var §&!Z§:Vector.<§3!+§>;
      
      protected var §@,§:BitmapData;
      
      protected var mName:String;
      
      private var §^!Y§:Number = 1.0;
      
      public function §-!L§(param1:BitmapData)
      {
         super();
         this.§@,§ = param1;
         this.§&!Z§ = new Vector.<§3!+§>();
      }
      
      public function get §^!_§() : int
      {
         return this.§&!Z§.length;
      }
      
      public function get § 6§() : int
      {
         return this.§@,§.width;
      }
      
      public function get §1p§() : int
      {
         return this.§@,§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§@,§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§^!Y§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§^!Y§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§@,§)
         {
            this.§@,§.dispose();
            this.§@,§ = null;
         }
         this.§&!Z§ = new Vector.<§3!+§>();
      }
      
      public function §^!Z§(param1:BitmapData) : void
      {
         this.§@,§ = param1;
      }
      
      public function §!8§(param1:§3!+§) : void
      {
         this.§&!Z§.push(param1);
      }
      
      public function §-S§(param1:String) : §3!+§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§&!Z§.length)
         {
            if(this.§&!Z§[_loc2_].mName == param1)
            {
               return this.§&!Z§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §[!B§(param1:int) : §3!+§
      {
         if(param1 < 0 || param1 >= this.§&!Z§.length)
         {
            return null;
         }
         return this.§&!Z§[param1];
      }
   }
}
