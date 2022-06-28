package §3!c§
{
   import flash.display.BitmapData;
   
   public class SpriteSheetBase
   {
       
      
      private var §20§:Vector.<§33§>;
      
      protected var §@!j§:BitmapData;
      
      protected var mName:String;
      
      private var §[+§:Number = 1.0;
      
      public function SpriteSheetBase(param1:BitmapData)
      {
         super();
         this.§@!j§ = param1;
         this.§20§ = new Vector.<§33§>();
      }
      
      public function get §@![§() : int
      {
         return this.§20§.length;
      }
      
      public function get §&!i§() : int
      {
         return this.§@!j§.width;
      }
      
      public function get §0o§() : int
      {
         return this.§@!j§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§@!j§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§[+§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§[+§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§@!j§)
         {
            this.§@!j§.dispose();
            this.§@!j§ = null;
         }
         this.§20§ = new Vector.<§33§>();
      }
      
      public function §3x§(param1:BitmapData) : void
      {
         this.§@!j§ = param1;
      }
      
      public function §7W§(param1:§33§) : void
      {
         this.§20§.push(param1);
      }
      
      public function §1!,§(param1:String) : §33§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§20§.length)
         {
            if(this.§20§[_loc2_].mName == param1)
            {
               return this.§20§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §'!1§(param1:int) : §33§
      {
         if(param1 < 0 || param1 >= this.§20§.length)
         {
            return null;
         }
         return this.§20§[param1];
      }
   }
}
