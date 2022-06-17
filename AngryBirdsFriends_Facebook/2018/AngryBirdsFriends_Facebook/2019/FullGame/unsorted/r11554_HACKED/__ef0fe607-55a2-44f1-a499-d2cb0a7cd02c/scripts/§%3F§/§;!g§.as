package §?§#3
{
   public class §;!g§
   {
       
      
      private var §[s§:Array;
      
      public function §;!g§()
      {
         super();
      }
      
      public function §&#i§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         this.§[s§ = new Array();
         for each(_loc2_ in param1.Resource_Sound)
         {
            this.§[s§[this.§[s§.length] = new §4I§(_loc2_.@id,_loc2_.@channel,_loc2_.collisionSound,_loc2_.damagedSound,_loc2_.launchSound,_loc2_.specialSound,_loc2_.selectionSound,_loc2_.idleSound,_loc2_.destroyedSound,_loc2_.screamSound,_loc2_.rollingSound,_loc2_.slippingSound,_loc2_.defaultSound);
         }
      }
      
      public function getSoundResource(param1:String) : §4I§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§[s§.length)
         {
            if(§4I§(this.§[s§[_loc2_]).id.toLowerCase() == param1.toLowerCase())
            {
               return §4I§(this.§[s§[_loc2_]);
            }
            _loc2_++;
         }
         return null;
      }
   }
}
