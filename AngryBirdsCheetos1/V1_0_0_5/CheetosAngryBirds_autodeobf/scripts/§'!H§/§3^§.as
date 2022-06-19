package §'!H§
{
   import flash.display.BitmapData;
   
   public class §3^§
   {
       
      
      private var §97§:Vector.<§?m§>;
      
      protected var §4<§:BitmapData;
      
      protected var mName:String;
      
      private var §7<§:Number = 1.0;
      
      public function §3^§(param1:BitmapData)
      {
         super();
         this.§4<§ = param1;
         this.§97§ = new Vector.<§?m§>();
      }
      
      public function get §3!L§() : int
      {
         return this.§97§.length;
      }
      
      public function get §8!J§() : int
      {
         return this.§4<§.width;
      }
      
      public function get §<!%§() : int
      {
         return this.§4<§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§4<§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§7<§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§7<§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§4<§)
         {
            this.§4<§.dispose();
            this.§4<§ = null;
         }
         this.§97§ = new Vector.<§?m§>();
      }
      
      public function §,j§(param1:BitmapData) : void
      {
         this.§4<§ = param1;
      }
      
      public function §5!U§(param1:§?m§) : void
      {
         this.§97§.push(param1);
      }
      
      public function §,2§(param1:String) : §?m§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§97§.length)
         {
            if(this.§97§[_loc2_].mName == param1)
            {
               return this.§97§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §<f§(param1:int) : §?m§
      {
         if(param1 < 0 || param1 >= this.§97§.length)
         {
            return null;
         }
         return this.§97§[param1];
      }
   }
}
