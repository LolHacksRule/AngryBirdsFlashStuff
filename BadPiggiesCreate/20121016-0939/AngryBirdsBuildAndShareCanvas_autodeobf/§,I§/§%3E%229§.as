package §,I§
{
   public class §>"9§ implements §7!K§
   {
       
      
      private var §-o§:Array;
      
      private var §-!<§:Boolean;
      
      public function §>"9§()
      {
         this.§-o§ = [];
         super();
      }
      
      public function §5F§(param1:§5i§) : void
      {
         this.§-o§.push(param1);
         this.§-!<§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§5i§ = null;
         for each(_loc1_ in this.§-o§)
         {
            _loc1_.dispose();
         }
         this.§-o§ = [];
      }
      
      public function §7M§(param1:String) : §7!c§
      {
         var _loc2_:§7!c§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§-o§.length)
         {
            _loc2_ = (this.§-o§[_loc3_] as §5i§).§7M§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §9!a§() : int
      {
         return this.§-o§.length;
      }
      
      public function §["=§(param1:int) : §5i§
      {
         if(param1 < 0 || param1 >= this.§9!a§)
         {
            return null;
         }
         if(!this.§-!<§)
         {
            this.§-o§.sortOn("name");
            this.§-!<§ = true;
         }
         return this.§-o§[param1];
      }
   }
}
