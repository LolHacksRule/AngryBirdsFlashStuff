package §+!d§
{
   import flash.display.BitmapData;
   
   public class §]!c§
   {
       
      
      private var §-Y§:Vector.<§&"1§>;
      
      protected var §'!-§:BitmapData;
      
      protected var mName:String;
      
      private var §5N§:Number = 1.0;
      
      public function §]!c§(param1:BitmapData)
      {
         super();
         this.§'!-§ = param1;
         this.§-Y§ = new Vector.<§&"1§>();
      }
      
      public function get §^!!§() : int
      {
         return this.§-Y§.length;
      }
      
      public function get §5!E§() : int
      {
         return this.§'!-§.width;
      }
      
      public function get §]"1§() : int
      {
         return this.§'!-§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§'!-§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§5N§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§5N§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§'!-§)
         {
            this.§'!-§.dispose();
            this.§'!-§ = null;
         }
         this.§-Y§ = new Vector.<§&"1§>();
      }
      
      public function §89§(param1:BitmapData) : void
      {
         this.§'!-§ = param1;
      }
      
      public function §6"9§(param1:§&"1§) : void
      {
         this.§-Y§.push(param1);
      }
      
      public function §]"#§(param1:String) : §&"1§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§-Y§.length)
         {
            if(this.§-Y§[_loc2_].mName == param1)
            {
               return this.§-Y§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §3"%§(param1:int) : §&"1§
      {
         if(param1 < 0 || param1 >= this.§-Y§.length)
         {
            return null;
         }
         return this.§-Y§[param1];
      }
   }
}
