package §@k§
{
   public class §3b§ implements § '§
   {
       
      
      private var §#!;§:Array;
      
      private var §`<§:Boolean;
      
      public function §3b§()
      {
         this.§#!;§ = [];
         super();
      }
      
      public function §'O§(param1:§-[§) : void
      {
         this.§#!;§.push(param1);
         this.§`<§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§-[§ = null;
         for each(_loc1_ in this.§#!;§)
         {
            _loc1_.dispose();
         }
         this.§#!;§ = [];
      }
      
      public function §&!9§(param1:String) : §false§
      {
         var _loc2_:§false§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§#!;§.length)
         {
            _loc2_ = (this.§#!;§[_loc3_] as §-[§).§&!9§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §@B§() : int
      {
         return this.§#!;§.length;
      }
      
      public function §=!4§(param1:int) : §-[§
      {
         if(param1 < 0 || param1 >= this.§@B§)
         {
            return null;
         }
         if(!this.§`<§)
         {
            this.§#!;§.sortOn("name");
            this.§`<§ = true;
         }
         return this.§#!;§[param1];
      }
   }
}
