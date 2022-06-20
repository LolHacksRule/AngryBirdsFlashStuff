package §[!&§
{
   public class §;"f§ implements §6!Z§
   {
       
      
      private var §-#3§:String;
      
      private var §-#+§:Array;
      
      private var §'#X§:Boolean;
      
      public function §;"f§(param1:String)
      {
         this.§-#+§ = [];
         super();
         this.§-#3§ = param1;
      }
      
      public function get name() : String
      {
         return this.§-#3§;
      }
      
      protected function §;z§(param1:String) : §`#D§
      {
         var _loc2_:§`#D§ = null;
         for each(_loc2_ in this.§-#+§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §-!d§(param1:§`#D§) : void
      {
         if(this.§;z§(param1.name))
         {
            param1.dispose();
            return;
         }
         this.§-#+§.push(param1);
         this.§'#X§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§`#D§ = null;
         for each(_loc1_ in this.§-#+§)
         {
            _loc1_.dispose();
         }
         this.§-#+§ = [];
      }
      
      public function §9"f§(param1:String) : §""B§
      {
         var _loc2_:§""B§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§-#+§.length)
         {
            _loc2_ = (this.§-#+§[_loc3_] as §`#D§).§9"f§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §"!=§() : int
      {
         return this.§-#+§.length;
      }
      
      public function §;F§(param1:int) : §`#D§
      {
         if(param1 < 0 || param1 >= this.§"!=§)
         {
            return null;
         }
         if(!this.§'#X§)
         {
            this.§-#+§.sortOn("name");
            this.§'#X§ = true;
         }
         return this.§-#+§[param1];
      }
   }
}
