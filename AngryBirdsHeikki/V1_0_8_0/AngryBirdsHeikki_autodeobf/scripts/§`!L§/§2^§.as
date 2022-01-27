package §`!L§
{
   public class §2^§ implements §]!L§
   {
       
      
      private var §=!-§:Array;
      
      private var §^!U§:Boolean;
      
      public function §2^§()
      {
         this.§=!-§ = [];
         super();
      }
      
      public function §^0§(param1:§"%§) : void
      {
         this.§=!-§.push(param1);
         this.§^!U§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§"%§ = null;
         for each(_loc1_ in this.§=!-§)
         {
            _loc1_.dispose();
         }
         this.§=!-§ = [];
      }
      
      public function §<[§(param1:String) : §+!M§
      {
         var _loc2_:§+!M§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§=!-§.length)
         {
            _loc2_ = (this.§=!-§[_loc3_] as §"%§).§<[§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §4%§() : int
      {
         return this.§=!-§.length;
      }
      
      public function § !P§(param1:int) : §"%§
      {
         if(param1 < 0 || param1 >= this.§4%§)
         {
            return null;
         }
         if(!this.§^!U§)
         {
            this.§=!-§.sortOn("name");
            this.§^!U§ = true;
         }
         return this.§=!-§[param1];
      }
   }
}
