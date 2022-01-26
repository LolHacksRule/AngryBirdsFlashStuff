package §6-§
{
   import flash.display.BitmapData;
   
   public class §;J§
   {
       
      
      private var §[<§:Vector.<§,2§>;
      
      protected var §9!+§:BitmapData;
      
      protected var mName:String;
      
      private var §-b§:Number = 1.0;
      
      public function §;J§(param1:BitmapData)
      {
         super();
         this.§9!+§ = param1;
         this.§[<§ = new Vector.<§,2§>();
      }
      
      public function get §4H§() : int
      {
         return this.§[<§.length;
      }
      
      public function get §&c§() : int
      {
         return this.§9!+§.width;
      }
      
      public function get §#!&§() : int
      {
         return this.§9!+§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§9!+§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§-b§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§-b§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§9!+§)
         {
            this.§9!+§.dispose();
            this.§9!+§ = null;
         }
         this.§[<§ = new Vector.<§,2§>();
      }
      
      public function §=8§(param1:BitmapData) : void
      {
         this.§9!+§ = param1;
      }
      
      public function §7K§(param1:§,2§) : void
      {
         this.§[<§.push(param1);
      }
      
      public function §1r§(param1:String) : §,2§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§[<§.length)
         {
            if(this.§[<§[_loc2_].mName == param1)
            {
               return this.§[<§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §8?§(param1:int) : §,2§
      {
         if(param1 < 0 || param1 >= this.§[<§.length)
         {
            return null;
         }
         return this.§[<§[param1];
      }
   }
}
