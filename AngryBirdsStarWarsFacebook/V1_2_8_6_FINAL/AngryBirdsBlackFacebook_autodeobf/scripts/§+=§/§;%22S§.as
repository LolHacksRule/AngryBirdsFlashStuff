package §+=§
{
   public class §;"S§ implements §`"t§
   {
       
      
      private var mName:String;
      
      private var §6#$§:Array;
      
      private var §]C§:Boolean;
      
      public function §;"S§(param1:String)
      {
         this.§6#$§ = [];
         super();
         this.mName = param1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      protected function §;!_§(param1:String) : §<T§
      {
         var _loc2_:§<T§ = null;
         for each(_loc2_ in this.§6#$§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §8"Y§(param1:§<T§) : void
      {
         if(this.§;!_§(param1.name))
         {
            param1.dispose();
            return;
         }
         this.§6#$§.push(param1);
         this.§]C§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§<T§ = null;
         for each(_loc1_ in this.§6#$§)
         {
            _loc1_.dispose();
         }
         this.§6#$§ = [];
      }
      
      public function §%!=§(param1:String) : §@"Z§
      {
         var _loc2_:§@"Z§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§6#$§.length)
         {
            _loc2_ = (this.§6#$§[_loc3_] as §<T§).§%!=§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §<6§() : int
      {
         return this.§6#$§.length;
      }
      
      public function §'!1§(param1:int) : §<T§
      {
         if(param1 < 0 || param1 >= this.§<6§)
         {
            return null;
         }
         if(!this.§]C§)
         {
            this.§6#$§.sortOn("name");
            this.§]C§ = true;
         }
         return this.§6#$§[param1];
      }
   }
}
