package §in§
{
   public class §@!"§ implements §]!K§
   {
       
      
      private var §!a§:Array;
      
      private var §?f§:Boolean;
      
      public function §@!"§()
      {
         this.§!a§ = [];
         super();
      }
      
      public function §+!b§(param1:§-!L§) : void
      {
         this.§!a§.push(param1);
         this.§?f§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§-!L§ = null;
         for each(_loc1_ in this.§!a§)
         {
            _loc1_.dispose();
         }
         this.§!a§ = [];
      }
      
      public function §-S§(param1:String) : §3!+§
      {
         var _loc2_:§3!+§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§!a§.length)
         {
            _loc2_ = (this.§!a§[_loc3_] as §-!L§).§-S§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §`"§() : int
      {
         return this.§!a§.length;
      }
      
      public function §&R§(param1:int) : §-!L§
      {
         if(param1 < 0 || param1 >= this.§`"§)
         {
            return null;
         }
         if(!this.§?f§)
         {
            this.§!a§.sortOn("name");
            this.§?f§ = true;
         }
         return this.§!a§[param1];
      }
   }
}
