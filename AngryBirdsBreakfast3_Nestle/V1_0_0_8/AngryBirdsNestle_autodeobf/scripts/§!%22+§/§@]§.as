package §!"+§
{
   import §;4§.§]!%§;
   
   public class §@]§
   {
       
      
      private var §?d§:Array;
      
      public function §@]§()
      {
         super();
      }
      
      public function §@!§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         this.§?d§ = new Array();
         for each(_loc2_ in param1.Resource_Sound)
         {
            this.§^!b§(_loc2_.@id,_loc2_.@channel,_loc2_.@Clicked,_loc2_.@Damaged,_loc2_.@Destroyed,_loc2_.@Ready,_loc2_.@Flying,_loc2_.@Rolling,_loc2_.@SpecialEffect,_loc2_.@Talk,_loc2_.@Scream,_loc2_.@Selected,_loc2_.@Unselected);
         }
      }
      
      public function §^!b§(param1:String, param2:String, param3:String, param4:String, param5:String, param6:String, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String, param13:String) : void
      {
         this.§?d§[this.§?d§.length] = new §'!7§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public function §]z§(param1:String) : §'!7§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§?d§.length)
         {
            if(§'!7§(this.§?d§[_loc2_]).name.toLowerCase() == param1.toLowerCase())
            {
               return §'!7§(this.§?d§[_loc2_]);
            }
            _loc2_++;
         }
         §]!%§.log("WARNING: LevelItemSoundResourceManager -> getSoundResource request has no return value, this path does not exist: " + param1);
         return null;
      }
   }
}
