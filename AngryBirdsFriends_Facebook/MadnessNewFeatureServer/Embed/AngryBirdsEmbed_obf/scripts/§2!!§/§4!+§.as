package §2!!§
{
   import flash.display.BitmapData;
   
   public class §4!+§
   {
       
      
      private var §#!"§:Vector.<§5f§>;
      
      protected var §>! §:BitmapData;
      
      protected var mName:String;
      
      private var §,!F§:Number = 1.0;
      
      public function §4!+§(param1:BitmapData)
      {
         super();
         this.§>! § = param1;
         this.§#!"§ = new Vector.<§5f§>();
      }
      
      public function get §+v§() : int
      {
         return this.§#!"§.length;
      }
      
      public function get §"Y§() : int
      {
         return this.§>! §.width;
      }
      
      public function get §9!§() : int
      {
         return this.§>! §.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§>! §;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§,!F§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§,!F§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§>! §)
         {
            this.§>! §.dispose();
            this.§>! § = null;
         }
         this.§#!"§ = new Vector.<§5f§>();
      }
      
      public function §1!;§(param1:BitmapData) : void
      {
         this.§>! § = param1;
      }
      
      public function §5!!§(param1:§5f§) : void
      {
         this.§#!"§.push(param1);
      }
      
      public function §=F§(param1:String) : §5f§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§#!"§.length)
         {
            if(this.§#!"§[_loc2_].mName == param1)
            {
               return this.§#!"§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §5g§(param1:int) : §5f§
      {
         if(param1 < 0 || param1 >= this.§#!"§.length)
         {
            return null;
         }
         return this.§#!"§[param1];
      }
   }
}
