package §2!!§
{
   public class §+W§ implements §<6§
   {
       
      
      private var §4R§:Array;
      
      private var §1X§:Boolean;
      
      public function §+W§()
      {
         this.§4R§ = [];
         super();
      }
      
      public function §@'§(param1:§4!+§) : void
      {
         this.§4R§.push(param1);
         this.§1X§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§4!+§ = null;
         for each(_loc1_ in this.§4R§)
         {
            _loc1_.dispose();
         }
         this.§4R§ = [];
      }
      
      public function §=F§(param1:String) : §5f§
      {
         var _loc2_:§5f§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§4R§.length)
         {
            _loc2_ = (this.§4R§[_loc3_] as §4!+§).§=F§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §-!4§() : int
      {
         return this.§4R§.length;
      }
      
      public function §6U§(param1:int) : §4!+§
      {
         if(param1 < 0 || param1 >= this.§-!4§)
         {
            return null;
         }
         if(!this.§1X§)
         {
            this.§4R§.sortOn("name");
            this.§1X§ = true;
         }
         return this.§4R§[param1];
      }
   }
}
