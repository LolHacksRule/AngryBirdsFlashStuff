package §@b§
{
   public class §;!4§ implements §;M§
   {
       
      
      private var §8H§:Array;
      
      private var §[+§:Boolean;
      
      public function §;!4§()
      {
         this.§8H§ = [];
         super();
      }
      
      public function §[z§(param1:§;%§) : void
      {
         this.§8H§.push(param1);
         this.§[+§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§;%§ = null;
         for each(_loc1_ in this.§8H§)
         {
            _loc1_.dispose();
         }
         this.§8H§ = [];
      }
      
      public function §3!]§(param1:String) : §0!W§
      {
         var _loc2_:§0!W§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§8H§.length)
         {
            _loc2_ = (this.§8H§[_loc3_] as §;%§).§3!]§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §=_§() : int
      {
         return this.§8H§.length;
      }
      
      public function §"T§(param1:int) : §;%§
      {
         if(param1 < 0 || param1 >= this.§=_§)
         {
            return null;
         }
         if(!this.§[+§)
         {
            this.§8H§.sortOn("name");
            this.§[+§ = true;
         }
         return this.§8H§[param1];
      }
   }
}
