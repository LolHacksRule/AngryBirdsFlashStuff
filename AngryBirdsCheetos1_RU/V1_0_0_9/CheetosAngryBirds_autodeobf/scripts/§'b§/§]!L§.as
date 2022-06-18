package §'b§
{
   import flash.display.BitmapData;
   
   public class §]!L§
   {
       
      
      private var §-! §:Vector.<§"2§>;
      
      protected var §`!"§:BitmapData;
      
      protected var mName:String;
      
      private var §#l§:Number = 1.0;
      
      public function §]!L§(param1:BitmapData)
      {
         super();
         this.§`!"§ = param1;
         this.§-! § = new Vector.<§"2§>();
      }
      
      public function get §,Q§() : int
      {
         return this.§-! §.length;
      }
      
      public function get §=+§() : int
      {
         return this.§`!"§.width;
      }
      
      public function get §5-§() : int
      {
         return this.§`!"§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§`!"§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§#l§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§#l§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§`!"§)
         {
            this.§`!"§.dispose();
            this.§`!"§ = null;
         }
         this.§-! § = new Vector.<§"2§>();
      }
      
      public function §4c§(param1:BitmapData) : void
      {
         this.§`!"§ = param1;
      }
      
      public function §?$§(param1:§"2§) : void
      {
         this.§-! §.push(param1);
      }
      
      public function §@!N§(param1:String) : §"2§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§-! §.length)
         {
            if(this.§-! §[_loc2_].mName == param1)
            {
               return this.§-! §[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §`Y§(param1:int) : §"2§
      {
         if(param1 < 0 || param1 >= this.§-! §.length)
         {
            return null;
         }
         return this.§-! §[param1];
      }
   }
}
