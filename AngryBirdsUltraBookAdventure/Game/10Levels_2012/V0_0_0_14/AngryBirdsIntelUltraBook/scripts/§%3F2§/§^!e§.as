package §?2§
{
   public class §^!e§ implements §3N§
   {
       
      
      private var §2!b§:Array;
      
      private var §9!X§:Boolean;
      
      public function §^!e§()
      {
         this.§2!b§ = [];
         super();
      }
      
      public function §?!d§(param1:§]!'§) : void
      {
         this.§2!b§.push(param1);
         this.§9!X§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§]!'§ = null;
         for each(_loc1_ in this.§2!b§)
         {
            _loc1_.dispose();
         }
         this.§2!b§ = [];
      }
      
      public function §4T§(param1:String) : §=!L§
      {
         var _loc2_:§=!L§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§2!b§.length)
         {
            _loc2_ = (this.§2!b§[_loc3_] as §]!'§).§4T§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §?%§() : int
      {
         return this.§2!b§.length;
      }
      
      public function §6!q§(param1:int) : §]!'§
      {
         if(param1 < 0 || param1 >= this.§?%§)
         {
            return null;
         }
         if(!this.§9!X§)
         {
            this.§2!b§.sortOn("name");
            this.§9!X§ = true;
         }
         return this.§2!b§[param1];
      }
   }
}
