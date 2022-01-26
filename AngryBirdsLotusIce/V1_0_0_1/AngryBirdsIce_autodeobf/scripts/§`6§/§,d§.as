package §`6§
{
   public class §,d§ implements §9!-§
   {
       
      
      private var §4^§:Array;
      
      private var §3x§:Boolean;
      
      public function §,d§()
      {
         this.§4^§ = [];
         super();
      }
      
      public function §]!5§(param1:§'o§) : void
      {
         this.§4^§.push(param1);
         this.§3x§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§'o§ = null;
         for each(_loc1_ in this.§4^§)
         {
            _loc1_.dispose();
         }
         this.§4^§ = [];
      }
      
      public function §@E§(param1:String) : §-6§
      {
         var _loc2_:§-6§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§4^§.length)
         {
            _loc2_ = (this.§4^§[_loc3_] as §'o§).§@E§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §]0§() : int
      {
         return this.§4^§.length;
      }
      
      public function §'2§(param1:int) : §'o§
      {
         if(param1 < 0 || param1 >= this.§]0§)
         {
            return null;
         }
         if(!this.§3x§)
         {
            this.§4^§.sortOn("name");
            this.§3x§ = true;
         }
         return this.§4^§[param1];
      }
   }
}
