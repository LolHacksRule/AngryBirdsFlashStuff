package §_-DN§
{
   public class §_-8j§ implements §_-2X§
   {
       
      
      private var §_-pL§:Array;
      
      private var §_-vv§:Boolean;
      
      public function §_-8j§()
      {
         this.§_-pL§ = [];
         super();
      }
      
      public function §_-97§(param1:§_-XW§) : void
      {
         this.§_-pL§.push(param1);
         this.§_-vv§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§_-XW§ = null;
         for each(_loc1_ in this.§_-pL§)
         {
            _loc1_.dispose();
         }
         this.§_-pL§ = null;
      }
      
      public function §_-RU§(param1:String) : §_-F4§
      {
         var _loc2_:§_-F4§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§_-pL§.length)
         {
            _loc2_ = (this.§_-pL§[_loc3_] as §_-XW§).§_-RU§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §_-mL§() : int
      {
         return this.§_-pL§.length;
      }
      
      public function §_-4n§(param1:int) : §_-XW§
      {
         if(param1 < 0 || param1 >= this.§_-mL§)
         {
            return null;
         }
         if(!this.§_-vv§)
         {
            this.§_-pL§.sortOn("name");
            this.§_-vv§ = true;
         }
         return this.§_-pL§[param1];
      }
   }
}
