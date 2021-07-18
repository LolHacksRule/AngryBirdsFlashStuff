package §+#m§
{
   public class §??§ implements §^#j§
   {
       
      
      private var §2!4§:String;
      
      private var §9#C§:Array;
      
      private var §&#K§:Boolean;
      
      public function §??§(param1:String)
      {
         this.§9#C§ = [];
         super();
         this.§2!4§ = param1;
      }
      
      public function get name() : String
      {
         return this.§2!4§;
      }
      
      protected function §4#p§(param1:String) : §=#S§
      {
         var _loc2_:§=#S§ = null;
         for each(_loc2_ in this.§9#C§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §=!i§(param1:§=#S§) : void
      {
         if(this.§4#p§(param1.name))
         {
            param1.dispose();
            return;
         }
         this.§9#C§.push(param1);
         this.§&#K§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§=#S§ = null;
         for each(_loc1_ in this.§9#C§)
         {
            _loc1_.dispose();
         }
         this.§9#C§ = [];
      }
      
      public function §<F§(param1:String) : §%D§
      {
         var _loc2_:§%D§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§9#C§.length)
         {
            _loc2_ = (this.§9#C§[_loc3_] as §=#S§).§<F§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §#!e§() : int
      {
         return this.§9#C§.length;
      }
      
      public function §^#q§(param1:int) : §=#S§
      {
         if(param1 < 0 || param1 >= this.§#!e§)
         {
            return null;
         }
         if(!this.§&#K§)
         {
            this.§9#C§.sortOn("name");
            this.§&#K§ = true;
         }
         return this.§9#C§[param1];
      }
   }
}
