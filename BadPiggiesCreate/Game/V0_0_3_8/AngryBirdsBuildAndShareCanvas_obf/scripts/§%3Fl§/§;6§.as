package §?l§
{
   import flash.display.BitmapData;
   
   public class §;6§
   {
       
      
      private var §9"-§:Vector.<§5a§>;
      
      protected var §'b§:BitmapData;
      
      protected var mName:String;
      
      private var §?V§:Number = 1.0;
      
      public function §;6§(param1:BitmapData)
      {
         super();
         this.§'b§ = param1;
         this.§9"-§ = new Vector.<§5a§>();
      }
      
      public function get §+!O§() : int
      {
         return this.§9"-§.length;
      }
      
      public function get §0!u§() : int
      {
         return this.§'b§.width;
      }
      
      public function get §!]§() : int
      {
         return this.§'b§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§'b§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§?V§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§?V§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§'b§)
         {
            this.§'b§.dispose();
            this.§'b§ = null;
         }
         this.§9"-§ = new Vector.<§5a§>();
      }
      
      public function §?g§(param1:BitmapData) : void
      {
         this.§'b§ = param1;
      }
      
      public function §3-§(param1:§5a§) : void
      {
         this.§9"-§.push(param1);
      }
      
      public function §2B§(param1:String) : §5a§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§9"-§.length)
         {
            if(this.§9"-§[_loc2_].mName == param1)
            {
               return this.§9"-§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §5!6§(param1:int) : §5a§
      {
         if(param1 < 0 || param1 >= this.§9"-§.length)
         {
            return null;
         }
         return this.§9"-§[param1];
      }
   }
}
