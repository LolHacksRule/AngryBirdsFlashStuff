package §0!5§
{
   import flash.display.BitmapData;
   
   public class §#!8§
   {
       
      
      private var §`R§:Vector.<§5!D§>;
      
      protected var §+l§:BitmapData;
      
      protected var mName:String;
      
      private var §!!%§:Number = 1.0;
      
      public function §#!8§(param1:BitmapData)
      {
         super();
         this.§+l§ = param1;
         this.§`R§ = new Vector.<§5!D§>();
      }
      
      public function get §2>§() : int
      {
         return this.§`R§.length;
      }
      
      public function get §^s§() : int
      {
         return this.§+l§.width;
      }
      
      public function get §^m§() : int
      {
         return this.§+l§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§+l§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§!!%§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§!!%§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§+l§)
         {
            this.§+l§.dispose();
            this.§+l§ = null;
         }
         this.§`R§ = new Vector.<§5!D§>();
      }
      
      public function §02§(param1:BitmapData) : void
      {
         this.§+l§ = param1;
      }
      
      public function §1!$§(param1:§5!D§) : void
      {
         this.§`R§.push(param1);
      }
      
      public function §else §(param1:String) : §5!D§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§`R§.length)
         {
            if(this.§`R§[_loc2_].mName == param1)
            {
               return this.§`R§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §!H§(param1:int) : §5!D§
      {
         if(param1 < 0 || param1 >= this.§`R§.length)
         {
            return null;
         }
         return this.§`R§[param1];
      }
   }
}
