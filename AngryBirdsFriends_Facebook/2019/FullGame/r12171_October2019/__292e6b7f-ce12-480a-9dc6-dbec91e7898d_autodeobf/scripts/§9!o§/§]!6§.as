package §9!o§
{
   public class §]!6§ implements §=!B§
   {
       
      
      private var §&$"§:String;
      
      private var §8"'§:Array;
      
      private var §&"B§:Boolean;
      
      public function §]!6§(param1:String)
      {
         this.§8"'§ = [];
         super();
         this.§&$"§ = param1;
      }
      
      public function get name() : String
      {
         return this.§&$"§;
      }
      
      protected function §]!%§(param1:String) : §;"v§
      {
         var _loc2_:§;"v§ = null;
         for each(_loc2_ in this.§8"'§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §,#]§(param1:§;"v§) : void
      {
         if(this.§]!%§(param1.name))
         {
            param1.dispose();
            return;
         }
         this.§8"'§.push(param1);
         this.§&"B§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§;"v§ = null;
         for each(_loc1_ in this.§8"'§)
         {
            _loc1_.dispose();
         }
         this.§8"'§ = [];
      }
      
      public function §3"P§(param1:String) : §6Z§
      {
         var _loc2_:§6Z§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§8"'§.length)
         {
            _loc2_ = (this.§8"'§[_loc3_] as §;"v§).§3"P§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §&![§() : int
      {
         return this.§8"'§.length;
      }
      
      public function §`$C§(param1:int) : §;"v§
      {
         if(param1 < 0 || param1 >= this.§&![§)
         {
            return null;
         }
         if(!this.§&"B§)
         {
            this.§8"'§.sortOn("name");
            this.§&"B§ = true;
         }
         return this.§8"'§[param1];
      }
   }
}
