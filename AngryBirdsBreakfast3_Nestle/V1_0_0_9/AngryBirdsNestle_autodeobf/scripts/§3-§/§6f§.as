package §3-§
{
   public class §6f§ implements §#s§
   {
       
      
      private var mName:String;
      
      private var §8"$§:Array;
      
      private var § !4§:Boolean;
      
      public function §6f§(param1:String)
      {
         this.§8"$§ = [];
         super();
         this.mName = param1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      protected function §5"0§(param1:String) : §3!!§
      {
         var _loc2_:§3!!§ = null;
         for each(_loc2_ in this.§8"$§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §@!k§(param1:§3!!§) : void
      {
         if(this.§5"0§(param1.name))
         {
            param1.dispose();
            return;
         }
         this.§8"$§.push(param1);
         this.§ !4§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§3!!§ = null;
         for each(_loc1_ in this.§8"$§)
         {
            _loc1_.dispose();
         }
         this.§8"$§ = [];
      }
      
      public function §@d§(param1:String) : §'!h§
      {
         var _loc2_:§'!h§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§8"$§.length)
         {
            _loc2_ = (this.§8"$§[_loc3_] as §3!!§).§@d§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get § "#§() : int
      {
         return this.§8"$§.length;
      }
      
      public function §[!9§(param1:int) : §3!!§
      {
         if(param1 < 0 || param1 >= this.§ "#§)
         {
            return null;
         }
         if(!this.§ !4§)
         {
            this.§8"$§.sortOn("name");
            this.§ !4§ = true;
         }
         return this.§8"$§[param1];
      }
   }
}
