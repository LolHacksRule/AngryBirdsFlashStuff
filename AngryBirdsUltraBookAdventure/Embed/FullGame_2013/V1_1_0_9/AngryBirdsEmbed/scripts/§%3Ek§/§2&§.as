package §>k§
{
   public class §2&§ implements §5$§
   {
       
      
      private var §?!#§:Array;
      
      private var §]9§:Boolean;
      
      public function §2&§()
      {
         this.§?!#§ = [];
         super();
      }
      
      public function §2%§(param1:§`z§) : void
      {
         this.§?!#§.push(param1);
         this.§]9§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§`z§ = null;
         for each(_loc1_ in this.§?!#§)
         {
            _loc1_.dispose();
         }
         this.§?!#§ = [];
      }
      
      public function §^L§(param1:String) : §`-§
      {
         var _loc2_:§`-§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§?!#§.length)
         {
            _loc2_ = (this.§?!#§[_loc3_] as §`z§).§^L§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §'!2§() : int
      {
         return this.§?!#§.length;
      }
      
      public function §"&§(param1:int) : §`z§
      {
         if(param1 < 0 || param1 >= this.§'!2§)
         {
            return null;
         }
         if(!this.§]9§)
         {
            this.§?!#§.sortOn("name");
            this.§]9§ = true;
         }
         return this.§?!#§[param1];
      }
   }
}
