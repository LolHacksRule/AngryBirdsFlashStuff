package §7"&§
{
   import §<"p§.§?!T§;
   
   public class § #v§
   {
       
      
      private var §5#h§:Array;
      
      public function § #v§()
      {
         super();
      }
      
      public function §]!p§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         this.§5#h§ = new Array();
         for each(_loc2_ in param1.Resource_Sound)
         {
            this.§5#h§[this.§5#h§.length] = new §>"f§(_loc2_.@id,_loc2_.@channel,_loc2_.collisionSound,_loc2_.damagedSound,_loc2_.launchSound,_loc2_.specialSound,_loc2_.selectionSound,_loc2_.idleSound,_loc2_.destroyedSound,_loc2_.screamSound,_loc2_.rollingSound,_loc2_.slippingSound);
         }
      }
      
      public function getSoundResource(param1:String) : §>"f§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§5#h§.length)
         {
            if(§>"f§(this.§5#h§[_loc2_]).id.toLowerCase() == param1.toLowerCase())
            {
               return §>"f§(this.§5#h§[_loc2_]);
            }
            _loc2_++;
         }
         §?!T§.log("WARNING: LevelItemSoundResourceManager -> getSoundResource request has no return value, this path does not exist: " + param1);
         return null;
      }
   }
}
