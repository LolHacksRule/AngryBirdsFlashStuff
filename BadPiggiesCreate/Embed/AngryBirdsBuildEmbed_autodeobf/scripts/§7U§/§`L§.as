package §7U§
{
   import flash.display.BitmapData;
   
   public class §`L§
   {
       
      
      private var §%F§:Vector.<§@!4§>;
      
      protected var §<!j§:BitmapData;
      
      protected var mName:String;
      
      private var §7P§:Number = 1.0;
      
      public function §`L§(param1:BitmapData)
      {
         super();
         this.§<!j§ = param1;
         this.§%F§ = new Vector.<§@!4§>();
      }
      
      public function get §]X§() : int
      {
         return this.§%F§.length;
      }
      
      public function get §@@§() : int
      {
         return this.§<!j§.width;
      }
      
      public function get §%,§() : int
      {
         return this.§<!j§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§<!j§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§7P§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§7P§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§<!j§)
         {
            this.§<!j§.dispose();
            this.§<!j§ = null;
         }
         this.§%F§ = new Vector.<§@!4§>();
      }
      
      public function §import§(param1:BitmapData) : void
      {
         this.§<!j§ = param1;
      }
      
      public function §"!P§(param1:§@!4§) : void
      {
         this.§%F§.push(param1);
      }
      
      public function §@g§(param1:String) : §@!4§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§%F§.length)
         {
            if(this.§%F§[_loc2_].mName == param1)
            {
               return this.§%F§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §#Q§(param1:int) : §@!4§
      {
         if(param1 < 0 || param1 >= this.§%F§.length)
         {
            return null;
         }
         return this.§%F§[param1];
      }
   }
}
