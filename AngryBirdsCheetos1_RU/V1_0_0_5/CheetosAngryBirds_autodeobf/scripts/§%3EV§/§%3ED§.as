package §>V§
{
   public class §>D§ implements §8O§
   {
       
      
      private var §]!O§:Array;
      
      private var §2!!§:Boolean;
      
      public function §>D§()
      {
         this.§]!O§ = [];
         super();
      }
      
      public function §!!I§(param1:§"!L§) : void
      {
         this.§]!O§.push(param1);
         this.§2!!§ = false;
      }
      
      public function dispose() : void
      {
         var _loc1_:§"!L§ = null;
         for each(_loc1_ in this.§]!O§)
         {
            _loc1_.dispose();
         }
         this.§]!O§ = [];
      }
      
      public function §@!Q§(param1:String) : §6!T§
      {
         var _loc2_:§6!T§ = null;
         var _loc3_:Number = 0;
         while(_loc3_ < this.§]!O§.length)
         {
            _loc2_ = (this.§]!O§[_loc3_] as §"!L§).§@!Q§(param1);
            if(_loc2_ != null)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public function get §9!M§() : int
      {
         return this.§]!O§.length;
      }
      
      public function §##§(param1:int) : §"!L§
      {
         if(param1 < 0 || param1 >= this.§9!M§)
         {
            return null;
         }
         if(!this.§2!!§)
         {
            this.§]!O§.sortOn("name");
            this.§2!!§ = true;
         }
         return this.§]!O§[param1];
      }
   }
}
