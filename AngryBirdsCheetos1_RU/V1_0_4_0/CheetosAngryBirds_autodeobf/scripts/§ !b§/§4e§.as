package § !b§
{
   import flash.display.BitmapData;
   
   public class §4e§
   {
       
      
      private var §0S§:Vector.<§;!P§>;
      
      protected var §6g§:BitmapData;
      
      protected var mName:String;
      
      private var §3&§:Number = 1.0;
      
      public function §4e§(param1:BitmapData)
      {
         super();
         this.§6g§ = param1;
         this.§0S§ = new Vector.<§;!P§>();
      }
      
      public function get §'#§() : int
      {
         return this.§0S§.length;
      }
      
      public function get §&;§() : int
      {
         return this.§6g§.width;
      }
      
      public function get §>#§() : int
      {
         return this.§6g§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§6g§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§3&§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§3&§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§6g§)
         {
            this.§6g§.dispose();
            this.§6g§ = null;
         }
         this.§0S§ = new Vector.<§;!P§>();
      }
      
      public function §=!V§(param1:BitmapData) : void
      {
         this.§6g§ = param1;
      }
      
      public function §"!X§(param1:§;!P§) : void
      {
         this.§0S§.push(param1);
      }
      
      public function §+;§(param1:String) : §;!P§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§0S§.length)
         {
            if(this.§0S§[_loc2_].mName == param1)
            {
               return this.§0S§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §^!H§(param1:int) : §;!P§
      {
         if(param1 < 0 || param1 >= this.§0S§.length)
         {
            return null;
         }
         return this.§0S§[param1];
      }
   }
}
