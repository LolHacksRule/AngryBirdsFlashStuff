package §5!'§
{
   public class § !=§ implements §9P§
   {
       
      
      private var §[K§:Array;
      
      private var §+w§:Boolean;
      
      public function § !=§()
      {
         this.§[K§ = [];
         super();
      }
      
      public function §]Z§(param1:§@p§) : void
      {
         this.§[K§.push(param1);
         this.§+w§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§@p§ = null;
         for each(_loc1_ in this.§[K§)
         {
            _loc1_.dispose();
         }
         this.§[K§ = [];
      }
      
      public function §2z§(param1:String) : §"!§
      {
         var _loc2_:§"!§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§[K§.length)
         {
            _loc2_ = (this.§[K§[_loc3_] as §@p§).§2z§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §23§() : int
      {
         return this.§[K§.length;
      }
      
      public function §>0§(param1:int) : §@p§
      {
         if(param1 < 0 || param1 >= this.§23§)
         {
            return null;
         }
         if(!this.§+w§)
         {
            this.§[K§.sortOn("name");
            this.§+w§ = true;
         }
         return this.§[K§[param1];
      }
   }
}
