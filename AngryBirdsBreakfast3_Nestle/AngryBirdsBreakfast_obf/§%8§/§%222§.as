package §%8§
{
   import §24§.;
   
   public class §"2§
   {
       
      
      private var §`5§:Array;
      
      public function §"2§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
         }
      }
      
      public function §[!3§(param1:XMLList) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:XML = null;
         if(!_loc6_)
         {
            this.§`5§ = new Array();
         }
         for each(_loc2_ in param1.Resource_Sound)
         {
            if(_loc5_ || param1)
            {
               this.§]"5§(_loc2_.@id,_loc2_.@channel,_loc2_.@Clicked,_loc2_.@Damaged,_loc2_.@Destroyed,_loc2_.@Ready,_loc2_.@Flying,_loc2_.@Rolling,_loc2_.@SpecialEffect,_loc2_.@Talk,_loc2_.@Scream,_loc2_.@Selected,_loc2_.@Unselected);
            }
         }
      }
      
      public function §]"5§(param1:String, param2:String, param3:String, param4:String, param5:String, param6:String, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String, param13:String) : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(_loc15_ || this)
         {
            this.§`5§[this.§`5§.length] = new §89§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13);
         }
      }
      
      public function §=y§(param1:String) : §89§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§`5§.length)
            {
               if(_loc4_)
               {
                  §#7§.log("WARNING: LevelItemSoundResourceManager -> getSoundResource request has no return value, this path does not exist: " + param1);
               }
               if(_loc4_ || _loc3_)
               {
                  return null;
               }
               while(_loc3_)
               {
                  while(true)
                  {
                  }
               }
               continue;
               addr58:
            }
            else if(§89§(this.§`5§[_loc2_]).name.toLowerCase() == param1.toLowerCase())
            {
               if(!_loc3_)
               {
                  break;
               }
               §§goto(addr93);
            }
            while(true)
            {
               _loc2_++;
               §§goto(addr58);
            }
         }
         return §89§(this.§`5§[_loc2_]);
      }
   }
}
