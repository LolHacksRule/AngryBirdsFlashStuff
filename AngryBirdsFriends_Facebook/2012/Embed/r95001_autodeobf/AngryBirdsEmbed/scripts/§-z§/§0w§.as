package §-z§
{
   import flash.display.BitmapData;
   
   public class §0w§
   {
       
      
      private var §>!&§:Vector.<§%i§>;
      
      protected var §99§:BitmapData;
      
      protected var mName:String;
      
      private var §@]§:Number = 1.0;
      
      public function §0w§(param1:BitmapData)
      {
         super();
         this.§99§ = param1;
         this.§>!&§ = new Vector.<§%i§>();
      }
      
      public function get §'§() : int
      {
         return this.§>!&§.length;
      }
      
      public function get §!^§() : int
      {
         return this.§99§.width;
      }
      
      public function get §;!G§() : int
      {
         return this.§99§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§99§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§@]§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§@]§ = param1;
      }
      
      public function dispose() : void
      {
         if(this.§99§)
         {
            this.§99§.dispose();
            this.§99§ = null;
         }
         this.§>!&§ = new Vector.<§%i§>();
      }
      
      public function §%k§(param1:BitmapData) : void
      {
         this.§99§ = param1;
      }
      
      public function §5-§(param1:§%i§) : void
      {
         this.§>!&§.push(param1);
      }
      
      public function §`g§(param1:String) : §%i§
      {
         var _loc2_:Number = 0;
         while(_loc2_ < this.§>!&§.length)
         {
            if(this.§>!&§[_loc2_].mName == param1)
            {
               return this.§>!&§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §,'§(param1:int) : §%i§
      {
         if(param1 < 0 || param1 >= this.§>!&§.length)
         {
            return null;
         }
         return this.§>!&§[param1];
      }
   }
}
