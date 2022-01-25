package §-S§
{
   public class §?f§ implements §`"§
   {
       
      
      private var §+!b§:Array;
      
      private var §6!P§:Boolean;
      
      public function §?f§()
      {
         this.§+!b§ = [];
         super();
      }
      
      public function §8! §(param1:§@,§) : void
      {
         this.§+!b§.push(param1);
         this.§6!P§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§@,§ = null;
         for each(_loc1_ in this.§+!b§)
         {
            _loc1_.dispose();
         }
         this.§+!b§ = [];
      }
      
      public function §&R§(param1:String) : §7O§
      {
         var _loc2_:§7O§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§+!b§.length)
         {
            _loc2_ = (this.§+!b§[_loc3_] as §@,§).§&R§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §-!L§() : int
      {
         return this.§+!b§.length;
      }
      
      public function §&!Z§(param1:int) : §@,§
      {
         if(param1 < 0 || param1 >= this.§-!L§)
         {
            return null;
         }
         if(!this.§6!P§)
         {
            this.§+!b§.sortOn("name");
            this.§6!P§ = true;
         }
         return this.§+!b§[param1];
      }
   }
}
