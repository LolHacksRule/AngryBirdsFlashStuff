package §_-6E§
{
   public class §_-7O§ implements § var§
   {
       
      
      private var §_-07n§:Array;
      
      private var §_-06k§:Boolean;
      
      public function §_-7O§()
      {
         this.§_-07n§ = [];
         super();
      }
      
      public function §_-Ho§(param1:§_-UU§) : void
      {
         this.§_-07n§.push(param1);
         this.§_-06k§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§_-UU§ = null;
         for each(_loc1_ in this.§_-07n§)
         {
            _loc1_.dispose();
         }
         this.§_-07n§ = [];
      }
      
      public function §_-sb§(param1:String) : §_-0j§
      {
         var _loc2_:§_-0j§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§_-07n§.length)
         {
            _loc2_ = (this.§_-07n§[_loc3_] as §_-UU§).§_-sb§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §_-iE§() : int
      {
         return this.§_-07n§.length;
      }
      
      public function §_-0Cv§(param1:int) : §_-UU§
      {
         if(param1 < 0 || param1 >= this.§_-iE§)
         {
            return null;
         }
         if(!this.§_-06k§)
         {
            this.§_-07n§.sortOn("name");
            this.§_-06k§ = true;
         }
         return this.§_-07n§[param1];
      }
   }
}
