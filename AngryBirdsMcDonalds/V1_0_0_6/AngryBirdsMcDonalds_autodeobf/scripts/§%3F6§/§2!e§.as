package §?6§
{
   import flash.display.BitmapData;
   
   public class §2!e§
   {
       
      
      private var §6!+§:Vector.<§!K§>;
      
      protected var §@!?§:BitmapData;
      
      protected var mName:String;
      
      private var §6R§:Number = 1.0;
      
      public function §2!e§(param1:BitmapData)
      {
         super();
         this.§@!?§ = param1;
         this.§6!+§ = new Vector.<§!K§>();
      }
      
      public function get §?F§() : int
      {
         return this.§6!+§.length;
      }
      
      public function get §"N§() : int
      {
         return this.§@!?§.width;
      }
      
      public function get §2!2§() : int
      {
         return this.§@!?§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§@!?§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§6R§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§6R§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§@!?§)
         {
            this.§@!?§.dispose();
            this.§@!?§ = null;
         }
         this.§6!+§ = new Vector.<§!K§>();
      }
      
      public function §=!g§(param1:BitmapData) : void
      {
         this.§@!?§ = param1;
      }
      
      public function §'!4§(param1:§!K§) : void
      {
         this.§6!+§.push(param1);
      }
      
      public function §%!F§(param1:String) : §!K§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§6!+§.length)
         {
            if(this.§6!+§[_loc2_].mName == param1)
            {
               return this.§6!+§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §%W§(param1:int) : §!K§
      {
         if(param1 < 0 || param1 >= this.§6!+§.length)
         {
            return null;
         }
         return this.§6!+§[param1];
      }
   }
}
