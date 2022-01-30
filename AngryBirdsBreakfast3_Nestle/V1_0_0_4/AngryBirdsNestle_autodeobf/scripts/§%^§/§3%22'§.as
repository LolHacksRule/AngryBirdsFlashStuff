package §%^§
{
   public class §3"'§ implements §@!n§
   {
       
      
      private var mName:String;
      
      private var §;<§:Array;
      
      private var §9#§:Boolean;
      
      public function §3"'§(param1:String)
      {
         this.§;<§ = [];
         super();
         this.mName = param1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      protected function § use§(param1:String) : §'!%§
      {
         var _loc2_:§'!%§ = null;
         for each(_loc2_ in this.§;<§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §^z§(param1:§'!%§) : void
      {
         if(this.§ use§(param1.name))
         {
            param1.dispose();
            return;
         }
         this.§;<§.push(param1);
         this.§9#§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§'!%§ = null;
         for each(_loc1_ in this.§;<§)
         {
            _loc1_.dispose();
         }
         this.§;<§ = [];
      }
      
      public function §else§(param1:String) : §?9§
      {
         var _loc2_:§?9§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§;<§.length)
         {
            _loc2_ = (this.§;<§[_loc3_] as §'!%§).§else§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §+"§() : int
      {
         return this.§;<§.length;
      }
      
      public function §>4§(param1:int) : §'!%§
      {
         if(param1 < 0 || param1 >= this.§+"§)
         {
            return null;
         }
         if(!this.§9#§)
         {
            this.§;<§.sortOn("name");
            this.§9#§ = true;
         }
         return this.§;<§[param1];
      }
   }
}
