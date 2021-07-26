package §8#K§
{
   public class §3!@§
   {
       
      
      private var §,"k§:Array;
      
      public function §3!@§()
      {
         super();
      }
      
      public function §!"M§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         this.§,"k§ = new Array();
         for each(_loc2_ in param1.Resource_Sound)
         {
            this.§,"k§[this.§,"k§.length] = new §8$-§(_loc2_.@id,_loc2_.@channel,_loc2_.collisionSound,_loc2_.damagedSound,_loc2_.launchSound,_loc2_.specialSound,_loc2_.selectionSound,_loc2_.idleSound,_loc2_.destroyedSound,_loc2_.screamSound,_loc2_.rollingSound,_loc2_.slippingSound,_loc2_.defaultSound);
         }
      }
      
      public function getSoundResource(param1:String) : §8$-§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§,"k§.length)
         {
            if(§8$-§(this.§,"k§[_loc2_]).id.toLowerCase() == param1.toLowerCase())
            {
               return §8$-§(this.§,"k§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
   }
}
