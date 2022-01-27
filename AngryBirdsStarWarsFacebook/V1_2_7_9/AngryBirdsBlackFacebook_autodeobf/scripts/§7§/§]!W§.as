package §7§#2
{
   public class §]!W§ implements §8V§
   {
       
      
      private var mName:String;
      
      private var §^!Y§:Array;
      
      private var §3j§:Boolean;
      
      public function §]!W§(param1:String)
      {
         this.§^!Y§ = [];
         super();
         this.mName = param1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      protected function §8"a§(param1:String) : §21§
      {
         var _loc2_:§21§ = null;
         for each(_loc2_ in this.§^!Y§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §5"Y§(param1:§21§) : void
      {
         if(this.§8"a§(param1.name))
         {
            param1.dispose();
            return;
         }
         this.§^!Y§.push(param1);
         this.§3j§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§21§ = null;
         for each(_loc1_ in this.§^!Y§)
         {
            _loc1_.dispose();
         }
         this.§^!Y§ = [];
      }
      
      public function §2!T§(param1:String) : §%>§
      {
         var _loc2_:§%>§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§^!Y§.length)
         {
            _loc2_ = (this.§^!Y§[_loc3_] as §21§).§2!T§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §6§() : int
      {
         return this.§^!Y§.length;
      }
      
      public function §2!E§(param1:int) : §21§
      {
         if(param1 < 0 || param1 >= this.§6§)
         {
            return null;
         }
         if(!this.§3j§)
         {
            this.§^!Y§.sortOn("name");
            this.§3j§ = true;
         }
         return this.§^!Y§[param1];
      }
   }
}
