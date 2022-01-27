package §6w§
{
   import flash.display.BitmapData;
   
   public class SpriteSheetBase
   {
       
      
      private var §#!E§:Vector.<§<>§>;
      
      protected var §+#§:BitmapData;
      
      protected var mName:String;
      
      private var §?C§:Number = 1.0;
      
      public function SpriteSheetBase(param1:BitmapData)
      {
         super();
         this.§+#§ = param1;
         this.§#!E§ = new Vector.<§<>§>();
      }
      
      public function get §5!^§() : int
      {
         return this.§#!E§.length;
      }
      
      public function get §3f§() : int
      {
         return this.§+#§.width;
      }
      
      public function get §6$§() : int
      {
         return this.§+#§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§+#§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§?C§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§?C§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§+#§)
         {
            this.§+#§.dispose();
            this.§+#§ = null;
         }
         this.§#!E§ = new Vector.<§<>§>();
      }
      
      public function §'!K§(param1:BitmapData) : void
      {
         this.§+#§ = param1;
      }
      
      public function §0!L§(param1:§<>§) : void
      {
         this.§#!E§.push(param1);
      }
      
      public function §[@§(param1:String) : §<>§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§#!E§.length)
         {
            if(this.§#!E§[_loc2_].mName == param1)
            {
               return this.§#!E§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §0B§(param1:int) : §<>§
      {
         if(param1 < 0 || param1 >= this.§#!E§.length)
         {
            return null;
         }
         return this.§#!E§[param1];
      }
   }
}
