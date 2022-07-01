package §4%§
{
   import flash.display.BitmapData;
   
   public class §`"3§
   {
       
      
      private var §!!_§:Vector.<§+k§>;
      
      protected var §^!X§:BitmapData;
      
      protected var mName:String;
      
      private var §"!f§:Number = 1.0;
      
      public function §`"3§(param1:BitmapData)
      {
         super();
         this.§^!X§ = param1;
         this.§!!_§ = new Vector.<§+k§>();
      }
      
      public function get §!G§() : int
      {
         return this.§!!_§.length;
      }
      
      public function get §8"-§() : int
      {
         return this.§^!X§.width;
      }
      
      public function get §]!o§() : int
      {
         return this.§^!X§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§^!X§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§"!f§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§"!f§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§^!X§)
         {
            this.§^!X§.dispose();
            this.§^!X§ = null;
         }
         this.§!!_§ = new Vector.<§+k§>();
      }
      
      public function §'H§(param1:BitmapData) : void
      {
         this.§^!X§ = param1;
      }
      
      public function §5!J§(param1:§+k§) : void
      {
         this.§!!_§.push(param1);
      }
      
      public function §9!§(param1:String) : §+k§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§!!_§.length)
         {
            if(this.§!!_§[_loc2_].mName == param1)
            {
               return this.§!!_§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §7!@§(param1:int) : §+k§
      {
         if(param1 < 0 || param1 >= this.§!!_§.length)
         {
            return null;
         }
         return this.§!!_§[param1];
      }
   }
}
