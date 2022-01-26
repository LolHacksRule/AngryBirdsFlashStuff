package §'b§
{
   public class §'M§ implements §"^§
   {
       
      
      private var §>d§:Array;
      
      private var §[Q§:Boolean;
      
      public function §'M§()
      {
         this.§>d§ = [];
         super();
      }
      
      public function §5M§(param1:§]!L§) : void
      {
         this.§>d§.push(param1);
         this.§[Q§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§]!L§ = null;
         for each(_loc1_ in this.§>d§)
         {
            _loc1_.dispose();
         }
         this.§>d§ = [];
      }
      
      public function §@!N§(param1:String) : §"2§
      {
         var _loc2_:§"2§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§>d§.length)
         {
            _loc2_ = (this.§>d§[_loc3_] as §]!L§).§@!N§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §1d§() : int
      {
         return this.§>d§.length;
      }
      
      public function §`!Y§(param1:int) : §]!L§
      {
         if(param1 < 0 || param1 >= this.§1d§)
         {
            return null;
         }
         if(!this.§[Q§)
         {
            this.§>d§.sortOn("name");
            this.§[Q§ = true;
         }
         return this.§>d§[param1];
      }
   }
}
