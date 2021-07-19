package §,"R§
{
   import flash.display.BitmapData;
   
   public class §,!+§
   {
       
      
      private var §`[§:Vector.<§2!J§>;
      
      protected var § !k§:BitmapData;
      
      protected var mName:String;
      
      private var §<[§:Number = 1.0;
      
      public function §,!+§(param1:BitmapData)
      {
         super();
         this.§ !k§ = param1;
         this.§`[§ = new Vector.<§2!J§>();
      }
      
      public function get §'"'§() : int
      {
         return this.§`[§.length;
      }
      
      public function get §#";§() : int
      {
         return this.§ !k§.width;
      }
      
      public function get § %§() : int
      {
         return this.§ !k§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§ !k§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§<[§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§<[§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§ !k§)
         {
            this.§ !k§.dispose();
            this.§ !k§ = null;
         }
         this.§`[§ = new Vector.<§2!J§>();
      }
      
      public function §+"F§(param1:BitmapData) : void
      {
         this.§ !k§ = param1;
      }
      
      public function §#E§(param1:§2!J§) : void
      {
         this.§`[§.push(param1);
      }
      
      public function §5!y§(param1:String) : §2!J§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§`[§.length)
         {
            if(this.§`[§[_loc2_].mName == param1)
            {
               return this.§`[§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function § "D§(param1:int) : §2!J§
      {
         if(param1 < 0 || param1 >= this.§`[§.length)
         {
            return null;
         }
         return this.§`[§[param1];
      }
   }
}
