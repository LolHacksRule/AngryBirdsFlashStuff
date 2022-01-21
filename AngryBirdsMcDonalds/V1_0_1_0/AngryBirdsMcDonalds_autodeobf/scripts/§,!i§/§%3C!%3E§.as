package §,!i§
{
   public class §<!>§ implements §6k§
   {
       
      
      private var §,N§:Array;
      
      private var §&!8§:Boolean;
      
      public function §<!>§()
      {
         this.§,N§ = [];
         super();
      }
      
      public function §+!W§(param1:§-9§) : void
      {
         this.§,N§.push(param1);
         this.§&!8§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§-9§ = null;
         for each(_loc1_ in this.§,N§)
         {
            _loc1_.dispose();
         }
         this.§,N§ = [];
      }
      
      public function §+a§(param1:String) : §02§
      {
         var _loc2_:§02§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§,N§.length)
         {
            _loc2_ = (this.§,N§[_loc3_] as §-9§).§+a§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §@!`§() : int
      {
         return this.§,N§.length;
      }
      
      public function §@&§(param1:int) : §-9§
      {
         if(param1 < 0 || param1 >= this.§@!`§)
         {
            return null;
         }
         if(!this.§&!8§)
         {
            this.§,N§.sortOn("name");
            this.§&!8§ = true;
         }
         return this.§,N§[param1];
      }
   }
}
