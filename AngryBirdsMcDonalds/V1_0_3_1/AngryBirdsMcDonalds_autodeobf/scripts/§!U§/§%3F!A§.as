package §!U§
{
   import flash.display.BitmapData;
   
   public class §?!A§
   {
       
      
      private var §8!p§:Vector.<§ else§>;
      
      protected var §`#§:BitmapData;
      
      protected var mName:String;
      
      private var §[2§:Number = 1.0;
      
      public function §?!A§(param1:BitmapData)
      {
         super();
         this.§`#§ = param1;
         this.§8!p§ = new Vector.<§ else§>();
      }
      
      public function get §#!o§() : int
      {
         return this.§8!p§.length;
      }
      
      public function get §3K§() : int
      {
         return this.§`#§.width;
      }
      
      public function get §7T§() : int
      {
         return this.§`#§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§`#§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§[2§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§[2§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§`#§)
         {
            this.§`#§.dispose();
            this.§`#§ = null;
         }
         this.§8!p§ = new Vector.<§ else§>();
      }
      
      public function §"k§(param1:BitmapData) : void
      {
         this.§`#§ = param1;
      }
      
      public function §9!^§(param1:§ else§) : void
      {
         this.§8!p§.push(param1);
      }
      
      public function §4Q§(param1:String) : § else§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§8!p§.length)
         {
            if(this.§8!p§[_loc2_].mName == param1)
            {
               return this.§8!p§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §-a§(param1:int) : § else§
      {
         if(param1 < 0 || param1 >= this.§8!p§.length)
         {
            return null;
         }
         return this.§8!p§[param1];
      }
   }
}
