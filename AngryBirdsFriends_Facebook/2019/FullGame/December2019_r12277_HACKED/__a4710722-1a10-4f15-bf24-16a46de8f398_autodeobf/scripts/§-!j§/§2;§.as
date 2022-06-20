package §-!j§
{
   public class §2;§
   {
       
      
      private var §?#s§:Array;
      
      public function §2;§()
      {
         super();
      }
      
      public function §'!I§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         this.§?#s§ = new Array();
         for each(_loc2_ in param1.Resource_Sound)
         {
            this.§?#s§[this.§?#s§.length] = new §&!@§(_loc2_.@id,_loc2_.@channel,_loc2_.collisionSound,_loc2_.damagedSound,_loc2_.launchSound,_loc2_.specialSound,_loc2_.selectionSound,_loc2_.idleSound,_loc2_.destroyedSound,_loc2_.screamSound,_loc2_.rollingSound,_loc2_.slippingSound,_loc2_.defaultSound);
         }
      }
      
      public function getSoundResource(param1:String) : §&!@§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§?#s§.length)
         {
            if(§&!@§(this.§?#s§[_loc2_]).id.toLowerCase() == param1.toLowerCase())
            {
               return §&!@§(this.§?#s§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
   }
}
