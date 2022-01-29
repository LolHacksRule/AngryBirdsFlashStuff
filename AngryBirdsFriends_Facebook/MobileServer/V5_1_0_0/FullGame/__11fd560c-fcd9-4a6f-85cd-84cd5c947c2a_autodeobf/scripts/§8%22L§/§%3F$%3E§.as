package §8"L§
{
   public class §?$>§
   {
       
      
      private var §+!h§:Array;
      
      public function §?$>§()
      {
         super();
      }
      
      public function §0"V§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         this.§+!h§ = new Array();
         for each(_loc2_ in param1.Resource_Sound)
         {
            this.§+!h§[this.§+!h§.length] = new §+"L§(_loc2_.@id,_loc2_.@channel,_loc2_.collisionSound,_loc2_.damagedSound,_loc2_.launchSound,_loc2_.specialSound,_loc2_.selectionSound,_loc2_.idleSound,_loc2_.destroyedSound,_loc2_.screamSound,_loc2_.rollingSound,_loc2_.slippingSound);
         }
      }
      
      public function getSoundResource(param1:String) : §+"L§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§+!h§.length)
         {
            if(§+"L§(this.§+!h§[_loc2_]).id.toLowerCase() == param1.toLowerCase())
            {
               return §+"L§(this.§+!h§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
   }
}
