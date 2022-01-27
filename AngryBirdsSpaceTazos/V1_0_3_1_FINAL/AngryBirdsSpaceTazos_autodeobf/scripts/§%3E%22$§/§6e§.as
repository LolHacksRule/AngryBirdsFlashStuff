package §>"$§
{
   public class §6e§ implements §7!v§
   {
       
      
      private var mName:String;
      
      private var §9!H§:Array;
      
      private var §7!N§:Boolean;
      
      public function §6e§(param1:String)
      {
         this.§9!H§ = [];
         super();
         this.mName = param1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      protected function §5a§(param1:String) : §0!!§
      {
         var _loc2_:§0!!§ = null;
         for each(_loc2_ in this.§9!H§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function § j§(param1:§0!!§) : void
      {
         if(this.§5a§(param1.name))
         {
            param1.dispose();
            return;
         }
         this.§9!H§.push(param1);
         this.§7!N§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§0!!§ = null;
         for each(_loc1_ in this.§9!H§)
         {
            _loc1_.dispose();
         }
         this.§9!H§ = [];
      }
      
      public function §?!i§(param1:String) : §'!u§
      {
         var _loc2_:§'!u§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§9!H§.length)
         {
            _loc2_ = (this.§9!H§[_loc3_] as §0!!§).§?!i§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §%z§() : int
      {
         return this.§9!H§.length;
      }
      
      public function §`;§(param1:int) : §0!!§
      {
         if(param1 < 0 || param1 >= this.§%z§)
         {
            return null;
         }
         if(!this.§7!N§)
         {
            this.§9!H§.sortOn("name");
            this.§7!N§ = true;
         }
         return this.§9!H§[param1];
      }
   }
}
