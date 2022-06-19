package §_-DG§
{
   public class §_-5j§ implements §_-GH§
   {
       
      
      private var §_-O§:Array;
      
      private var §_-NK§:Boolean;
      
      public function §_-5j§()
      {
         this.§_-O§ = [];
         super();
      }
      
      public function §_-hp§(param1:§ for§) : void
      {
         this.§_-O§.push(param1);
         this.§_-NK§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§ for§ = null;
         for each(_loc1_ in this.§_-O§)
         {
            _loc1_.dispose();
         }
         this.§_-O§ = [];
      }
      
      public function §_-LI§(param1:String) : §_-1B§
      {
         var _loc2_:§_-1B§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§_-O§.length)
         {
            _loc2_ = (this.§_-O§[_loc3_] as § for§).§_-LI§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §_-6d§() : int
      {
         return this.§_-O§.length;
      }
      
      public function §_-o4§(param1:int) : § for§
      {
         if(param1 < 0 || param1 >= this.§_-6d§)
         {
            return null;
         }
         if(!this.§_-NK§)
         {
            this.§_-O§.sortOn("name");
            this.§_-NK§ = true;
         }
         return this.§_-O§[param1];
      }
   }
}
