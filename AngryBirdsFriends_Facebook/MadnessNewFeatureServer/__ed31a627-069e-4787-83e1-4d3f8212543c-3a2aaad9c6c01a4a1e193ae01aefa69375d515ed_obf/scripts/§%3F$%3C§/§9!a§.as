package §?$<§
{
   public class §9!a§
   {
       
      
      private var §6T§:Array;
      
      public function §9!a§()
      {
         super();
      }
      
      public function §##s§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         this.§6T§ = new Array();
         for each(_loc2_ in param1.Resource_Sound)
         {
            this.§6T§[this.§6T§.length] = new §9!V§(_loc2_.@id,_loc2_.@channel,_loc2_.collisionSound,_loc2_.damagedSound,_loc2_.launchSound,_loc2_.specialSound,_loc2_.selectionSound,_loc2_.idleSound,_loc2_.destroyedSound,_loc2_.screamSound,_loc2_.rollingSound,_loc2_.slippingSound,_loc2_.defaultSound);
         }
      }
      
      public function getSoundResource(param1:String) : §9!V§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§6T§.length)
         {
            if(§9!V§(this.§6T§[_loc2_]).id.toLowerCase() == param1.toLowerCase())
            {
               return §9!V§(this.§6T§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
   }
}
