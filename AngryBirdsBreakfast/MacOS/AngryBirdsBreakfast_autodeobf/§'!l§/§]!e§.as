package §'!l§
{
   public class §]!e§ implements §5A§
   {
       
      
      private var mName:String;
      
      private var §04§:Array;
      
      private var §6""§:Boolean;
      
      public function §]!e§(param1:String)
      {
         this.§04§ = [];
         super();
         this.mName = param1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      protected function §"!=§(param1:String) : §9!#§
      {
         var _loc2_:§9!#§ = null;
         for each(_loc2_ in this.§04§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §1!u§(param1:§9!#§) : void
      {
         if(this.§"!=§(param1.name))
         {
            param1.dispose();
            return;
         }
         this.§04§.push(param1);
         this.§6""§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§9!#§ = null;
         for each(_loc1_ in this.§04§)
         {
            _loc1_.dispose();
         }
         this.§04§ = [];
      }
      
      public function §@u§(param1:String) : §5K§
      {
         var _loc2_:§5K§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§04§.length)
         {
            _loc2_ = (this.§04§[_loc3_] as §9!#§).§@u§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §]!M§() : int
      {
         return this.§04§.length;
      }
      
      public function §-!d§(param1:int) : §9!#§
      {
         if(param1 < 0 || param1 >= this.§]!M§)
         {
            return null;
         }
         if(!this.§6""§)
         {
            this.§04§.sortOn("name");
            this.§6""§ = true;
         }
         return this.§04§[param1];
      }
   }
}
