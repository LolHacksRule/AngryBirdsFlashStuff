package §;!^§
{
   public class §!0§ implements §"7§
   {
       
      
      private var mName:String;
      
      private var §'!%§:Array;
      
      private var §0L§:Boolean;
      
      public function §!0§(param1:String)
      {
         this.§'!%§ = [];
         super();
         this.mName = param1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      protected function §-'§(param1:String) : §;!f§
      {
         var _loc2_:§;!f§ = null;
         for each(_loc2_ in this.§'!%§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §0d§(param1:§;!f§) : void
      {
         if(this.§-'§(param1.name))
         {
            param1.dispose();
            return;
         }
         this.§'!%§.push(param1);
         this.§0L§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§;!f§ = null;
         for each(_loc1_ in this.§'!%§)
         {
            _loc1_.dispose();
         }
         this.§'!%§ = [];
      }
      
      public function §`!M§(param1:String) : §9l§
      {
         var _loc2_:§9l§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§'!%§.length)
         {
            _loc2_ = (this.§'!%§[_loc3_] as §;!f§).§`!M§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §&",§() : int
      {
         return this.§'!%§.length;
      }
      
      public function §7#§(param1:int) : §;!f§
      {
         if(param1 < 0 || param1 >= this.§&",§)
         {
            return null;
         }
         if(!this.§0L§)
         {
            this.§'!%§.sortOn("name");
            this.§0L§ = true;
         }
         return this.§'!%§[param1];
      }
   }
}
