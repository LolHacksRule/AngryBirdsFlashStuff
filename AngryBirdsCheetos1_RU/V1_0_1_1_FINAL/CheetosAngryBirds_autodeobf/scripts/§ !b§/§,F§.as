package § !b§
{
   public class §,F§ implements §&!'§
   {
       
      
      private var §@!J§:Array;
      
      private var §%c§:Boolean;
      
      public function §,F§()
      {
         this.§@!J§ = [];
         super();
      }
      
      public function §+I§(param1:§4e§) : void
      {
         this.§@!J§.push(param1);
         this.§%c§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§4e§ = null;
         for each(_loc1_ in this.§@!J§)
         {
            _loc1_.dispose();
         }
         this.§@!J§ = [];
      }
      
      public function §+;§(param1:String) : §;!P§
      {
         var _loc2_:§;!P§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§@!J§.length)
         {
            _loc2_ = (this.§@!J§[_loc3_] as §4e§).§+;§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §?8§() : int
      {
         return this.§@!J§.length;
      }
      
      public function §&8§(param1:int) : §4e§
      {
         if(param1 < 0 || param1 >= this.§?8§)
         {
            return null;
         }
         if(!this.§%c§)
         {
            this.§@!J§.sortOn("name");
            this.§%c§ = true;
         }
         return this.§@!J§[param1];
      }
   }
}
