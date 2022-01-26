package §+!R§
{
   public class §^<§ implements §8!0§
   {
       
      
      private var §<y§:Array;
      
      private var §#d§:Boolean;
      
      public function §^<§()
      {
         this.§<y§ = [];
         super();
      }
      
      public function §'^§(param1:§`!C§) : void
      {
         this.§<y§.push(param1);
         this.§#d§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§`!C§ = null;
         for each(_loc1_ in this.§<y§)
         {
            _loc1_.dispose();
         }
         this.§<y§ = [];
      }
      
      public function §]$§(param1:String) : §"O§
      {
         var _loc2_:§"O§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§<y§.length)
         {
            _loc2_ = (this.§<y§[_loc3_] as §`!C§).§]$§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §9+§() : int
      {
         return this.§<y§.length;
      }
      
      public function §>y§(param1:int) : §`!C§
      {
         if(param1 < 0 || param1 >= this.§9+§)
         {
            return null;
         }
         if(!this.§#d§)
         {
            this.§<y§.sortOn("name");
            this.§#d§ = true;
         }
         return this.§<y§[param1];
      }
   }
}
