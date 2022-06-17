package §="l§
{
   public class §0Y§ implements §#u§
   {
       
      
      private var §-!O§:String;
      
      private var §2$5§:Array;
      
      private var §,!E§:Boolean;
      
      public function §0Y§(param1:String)
      {
         this.§2$5§ = [];
         super();
         this.§-!O§ = param1;
      }
      
      public function get name() : String
      {
         return this.§-!O§;
      }
      
      protected function §+#'§(param1:String) : §;#f§
      {
         var _loc2_:§;#f§ = null;
         for each(_loc2_ in this.§2$5§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §!#&§(param1:§;#f§) : void
      {
         if(this.§+#'§(param1.name))
         {
            param1.dispose();
            return;
         }
         this.§2$5§.push(param1);
         this.§,!E§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§;#f§ = null;
         for each(_loc1_ in this.§2$5§)
         {
            _loc1_.dispose();
         }
         this.§2$5§ = [];
      }
      
      public function §8B§(param1:String) : §"!t§
      {
         var _loc2_:§"!t§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§2$5§.length)
         {
            _loc2_ = (this.§2$5§[_loc3_] as §;#f§).§8B§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §<!>§() : int
      {
         return this.§2$5§.length;
      }
      
      public function §5o§(param1:int) : §;#f§
      {
         if(param1 < 0 || param1 >= this.§<!>§)
         {
            return null;
         }
         if(!this.§,!E§)
         {
            this.§2$5§.sortOn("name");
            this.§,!E§ = true;
         }
         return this.§2$5§[param1];
      }
   }
}
