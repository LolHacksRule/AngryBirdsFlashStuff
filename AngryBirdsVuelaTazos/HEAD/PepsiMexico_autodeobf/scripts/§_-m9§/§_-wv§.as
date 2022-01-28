package §_-m9§
{
   public class §_-wv§ implements §_-d7§
   {
       
      
      private var §_-lU§:Array;
      
      private var §_-Yy§:Boolean;
      
      public function §_-wv§()
      {
         this.§_-lU§ = [];
         super();
      }
      
      public function §_-eL§(param1:§_-iN§) : void
      {
         this.§_-lU§.push(param1);
         this.§_-Yy§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§_-iN§ = null;
         for each(_loc1_ in this.§_-lU§)
         {
            _loc1_.dispose();
         }
         this.§_-lU§ = null;
      }
      
      public function §_-E1§(param1:String) : §_-Tv§
      {
         var _loc2_:§_-Tv§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§_-lU§.length)
         {
            _loc2_ = (this.§_-lU§[_loc3_] as §_-iN§).§_-E1§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §_-lr§() : int
      {
         return this.§_-lU§.length;
      }
      
      public function §_-QD§(param1:int) : §_-iN§
      {
         if(param1 < 0 || param1 >= this.§_-lr§)
         {
            return null;
         }
         if(!this.§_-Yy§)
         {
            this.§_-lU§.sortOn("name");
            this.§_-Yy§ = true;
         }
         return this.§_-lU§[param1];
      }
   }
}
