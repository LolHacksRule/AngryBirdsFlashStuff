package §0m§
{
   import flash.display.BitmapData;
   
   public class §<p§
   {
       
      
      private var §6$§:Vector.<§`§>;
      
      protected var §?E§:BitmapData;
      
      protected var mName:String;
      
      private var §?!C§:Number = 1.0;
      
      public function §<p§(param1:BitmapData)
      {
         super();
         this.§?E§ = param1;
         this.§6$§ = new Vector.<§`§>();
      }
      
      public function get §+!M§() : int
      {
         return this.§6$§.length;
      }
      
      public function get §]!4§() : int
      {
         return this.§?E§.width;
      }
      
      public function get §3c§() : int
      {
         return this.§?E§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§?E§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§?!C§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§?!C§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§?E§)
         {
            this.§?E§.dispose();
            this.§?E§ = null;
         }
         this.§6$§ = new Vector.<§`§>();
      }
      
      public function §;8§(param1:BitmapData) : void
      {
         this.§?E§ = param1;
      }
      
      public function § "$§(param1:§`§) : void
      {
         this.§6$§.push(param1);
      }
      
      public function §6!b§(param1:String) : §`§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§6$§.length)
         {
            if(this.§6$§[_loc2_].name == param1)
            {
               return this.§6$§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §?"3§(param1:int) : §`§
      {
         if(param1 < 0 || param1 >= this.§6$§.length)
         {
            return null;
         }
         return this.§6$§[param1];
      }
   }
}
