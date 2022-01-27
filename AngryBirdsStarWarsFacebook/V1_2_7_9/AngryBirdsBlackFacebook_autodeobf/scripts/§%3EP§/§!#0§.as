package §>P§
{
   import §0"I§.§5!s§;
   
   public class §!#0§
   {
       
      
      private var §8r§:Array;
      
      public function §!#0§()
      {
         super();
      }
      
      public function §0!O§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         this.§8r§ = new Array();
         for each(_loc2_ in param1.Resource_Sound)
         {
            this.§%Q§(_loc2_.@id,_loc2_.@channel,_loc2_.@Clicked,_loc2_.@Damaged,_loc2_.@Destroyed,_loc2_.@Ready,_loc2_.@Flying,_loc2_.@Rolling,_loc2_.@SpecialEffect,_loc2_.@Talk,_loc2_.@Scream,_loc2_.@Selected,_loc2_.@Unselected);
         }
      }
      
      public function §%Q§(param1:String, param2:String, param3:String, param4:String, param5:String, param6:String, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String, param13:String) : void
      {
         this.§8r§[this.§8r§.length] = new §&s§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public function §2D§(param1:String) : §&s§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§8r§.length)
         {
            if(§&s§(this.§8r§[_loc2_]).name.toLowerCase() == param1.toLowerCase())
            {
               return §&s§(this.§8r§[_loc2_]);
            }
            _loc2_++;
         }
         §5!s§.log("WARNING: LevelItemSoundResourceManager -> getSoundResource request has no return value, this path does not exist: " + param1);
         return null;
      }
   }
}
