package §9`§
{
   public class §3i§ implements §&>§
   {
       
      
      private var mName:String;
      
      private var §8m§:Array;
      
      private var §1o§:Boolean;
      
      public function §3i§(param1:String)
      {
         this.§8m§ = [];
         super();
         this.mName = param1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      protected function §>!%§(param1:String) : §<!§
      {
         var _loc2_:§<!§ = null;
         for each(_loc2_ in this.§8m§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §8"'§(param1:§<!§) : void
      {
         if(this.§>!%§(param1.name))
         {
            param1.dispose();
            return;
         }
         this.§8m§.push(param1);
         this.§1o§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§<!§ = null;
         for each(_loc1_ in this.§8m§)
         {
            _loc1_.dispose();
         }
         this.§8m§ = [];
      }
      
      public function §9!J§(param1:String) : §=C§
      {
         var _loc2_:§=C§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§8m§.length)
         {
            _loc2_ = (this.§8m§[_loc3_] as §<!§).§9!J§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get § #§() : int
      {
         return this.§8m§.length;
      }
      
      public function §<;§(param1:int) : §<!§
      {
         if(param1 < 0 || param1 >= this.§ #§)
         {
            return null;
         }
         if(!this.§1o§)
         {
            this.§8m§.sortOn("name");
            this.§1o§ = true;
         }
         return this.§8m§[param1];
      }
   }
}
