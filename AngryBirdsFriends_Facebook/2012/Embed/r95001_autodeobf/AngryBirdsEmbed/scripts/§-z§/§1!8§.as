package §-z§
{
   public class §1!8§ implements §0!§
   {
       
      
      private var §;e§:Array;
      
      private var §3!"§:Boolean;
      
      public function §1!8§()
      {
         this.§;e§ = [];
         super();
      }
      
      public function §>Q§(param1:§0w§) : void
      {
         this.§;e§.push(param1);
         this.§3!"§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§0w§ = null;
         for each(_loc1_ in this.§;e§)
         {
            _loc1_.dispose();
         }
         this.§;e§ = [];
      }
      
      public function §`g§(param1:String) : §%i§
      {
         var _loc2_:§%i§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§;e§.length)
         {
            _loc2_ = (this.§;e§[_loc3_] as §0w§).§`g§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §?!2§() : int
      {
         return this.§;e§.length;
      }
      
      public function §46§(param1:int) : §0w§
      {
         if(param1 < 0 || param1 >= this.§?!2§)
         {
            return null;
         }
         if(!this.§3!"§)
         {
            this.§;e§.sortOn("name");
            this.§3!"§ = true;
         }
         return this.§;e§[param1];
      }
   }
}
