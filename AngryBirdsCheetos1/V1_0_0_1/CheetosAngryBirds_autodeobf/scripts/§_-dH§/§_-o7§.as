package §_-dH§
{
   public class §_-o7§ implements §_-9E§
   {
       
      
      private var §_-FE§:Array;
      
      private var §_-OO§:Boolean;
      
      public function §_-o7§()
      {
         this.§_-FE§ = [];
         super();
      }
      
      public function §_-Zw§(param1:§_-Tu§) : void
      {
         this.§_-FE§.push(param1);
         this.§_-OO§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§_-Tu§ = null;
         for each(_loc1_ in this.§_-FE§)
         {
            _loc1_.dispose();
         }
         this.§_-FE§ = null;
      }
      
      public function §_-lE§(param1:String) : §_-aW§
      {
         var _loc2_:§_-aW§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§_-FE§.length)
         {
            _loc2_ = (this.§_-FE§[_loc3_] as §_-Tu§).§_-lE§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §_-Pt§() : int
      {
         return this.§_-FE§.length;
      }
      
      public function §_-Yu§(param1:int) : §_-Tu§
      {
         if(param1 < 0 || param1 >= this.§_-Pt§)
         {
            return null;
         }
         if(!this.§_-OO§)
         {
            this.§_-FE§.sortOn("name");
            this.§_-OO§ = true;
         }
         return this.§_-FE§[param1];
      }
   }
}
