package §5;§
{
   import flash.display.BitmapData;
   
   public class §]!y§
   {
       
      
      private var §2L§:Vector.<§%"#§>;
      
      protected var §3"#§:BitmapData;
      
      protected var mName:String;
      
      private var §1+§:Number = 1.0;
      
      public function §]!y§(param1:BitmapData)
      {
         super();
         this.§3"#§ = param1;
         this.§2L§ = new Vector.<§%"#§>();
      }
      
      public function get §]9§() : int
      {
         return this.§2L§.length;
      }
      
      public function get §'!^§() : int
      {
         return this.§3"#§.width;
      }
      
      public function get §,!s§() : int
      {
         return this.§3"#§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§3"#§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§1+§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§1+§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§3"#§)
         {
            this.§3"#§.dispose();
            this.§3"#§ = null;
         }
         this.§2L§ = new Vector.<§%"#§>();
      }
      
      public function §9t§(param1:BitmapData) : void
      {
         this.§3"#§ = param1;
      }
      
      public function §[!,§(param1:§%"#§) : void
      {
         this.§2L§.push(param1);
      }
      
      public function §^!n§(param1:String) : §%"#§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§2L§.length)
         {
            if(this.§2L§[_loc2_].name == param1)
            {
               return this.§2L§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §,p§(param1:int) : §%"#§
      {
         if(param1 < 0 || param1 >= this.§2L§.length)
         {
            return null;
         }
         return this.§2L§[param1];
      }
   }
}
