package §0!M§
{
   public class §4!O§ implements §#!d§
   {
       
      
      private var §,!>§:Array;
      
      private var §[§:Boolean;
      
      public function §4!O§()
      {
         this.§,!>§ = [];
         super();
      }
      
      public function §1!L§(param1:§=!=§) : void
      {
         this.§,!>§.push(param1);
         this.§[§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§=!=§ = null;
         for each(_loc1_ in this.§,!>§)
         {
            _loc1_.dispose();
         }
         this.§,!>§ = [];
      }
      
      public function §-v§(param1:String) : §,'§
      {
         var _loc2_:§,'§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§,!>§.length)
         {
            _loc2_ = (this.§,!>§[_loc3_] as §=!=§).§-v§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §2P§() : int
      {
         return this.§,!>§.length;
      }
      
      public function §@y§(param1:int) : §=!=§
      {
         if(param1 < 0 || param1 >= this.§2P§)
         {
            return null;
         }
         if(!this.§[§)
         {
            this.§,!>§.sortOn("name");
            this.§[§ = true;
         }
         return this.§,!>§[param1];
      }
   }
}
