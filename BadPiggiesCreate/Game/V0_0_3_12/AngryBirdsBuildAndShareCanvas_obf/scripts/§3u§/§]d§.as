package §3u§
{
   public class §]d§ implements §>Y§
   {
       
      
      private var §>!?§:Array;
      
      private var §4!Z§:Boolean;
      
      public function §]d§()
      {
         this.§>!?§ = [];
         super();
      }
      
      public function §8Z§(param1:§!!O§) : void
      {
         this.§>!?§.push(param1);
         this.§4!Z§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§!!O§ = null;
         for each(_loc1_ in this.§>!?§)
         {
            _loc1_.dispose();
         }
         this.§>!?§ = [];
      }
      
      public function §'!%§(param1:String) : §^!k§
      {
         var _loc2_:§^!k§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§>!?§.length)
         {
            _loc2_ = (this.§>!?§[_loc3_] as §!!O§).§'!%§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §0h§() : int
      {
         return this.§>!?§.length;
      }
      
      public function §[v§(param1:int) : §!!O§
      {
         if(param1 < 0 || param1 >= this.§0h§)
         {
            return null;
         }
         if(!this.§4!Z§)
         {
            this.§>!?§.sortOn("name");
            this.§4!Z§ = true;
         }
         return this.§>!?§[param1];
      }
   }
}
