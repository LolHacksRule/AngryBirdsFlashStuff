package §3;§
{
   public class §@!§ implements §&!§
   {
       
      
      private var §-8§:Array;
      
      private var §["§:Boolean;
      
      public function §@!§()
      {
         this.§-8§ = [];
         super();
      }
      
      public function §'u§(param1:§"#§) : void
      {
         this.§-8§.push(param1);
         this.§["§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§"#§ = null;
         for each(_loc1_ in this.§-8§)
         {
            _loc1_.dispose();
         }
         this.§-8§ = [];
      }
      
      public function §!S§(param1:String) : §6!J§
      {
         var _loc2_:§6!J§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§-8§.length)
         {
            _loc2_ = (this.§-8§[_loc3_] as §"#§).§!S§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §<p§() : int
      {
         return this.§-8§.length;
      }
      
      public function §]W§(param1:int) : §"#§
      {
         if(param1 < 0 || param1 >= this.§<p§)
         {
            return null;
         }
         if(!this.§["§)
         {
            this.§-8§.sortOn("name");
            this.§["§ = true;
         }
         return this.§-8§[param1];
      }
   }
}
