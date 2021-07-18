package §2"Y§
{
   import §5t§.Log;
   
   public class §5!h§
   {
       
      
      private var §!#&§:Array;
      
      public function §5!h§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public function §7!f§(param1:XMLList) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:XML = null;
         if(_loc5_ || this)
         {
            this.§!#&§ = new Array();
         }
         for each(_loc2_ in param1.Resource_Sound)
         {
            if(!(_loc6_ && _loc2_))
            {
               this.§8"t§(_loc2_.@id,_loc2_.@channel,_loc2_.@Clicked,_loc2_.@Damaged,_loc2_.@Destroyed,_loc2_.@Ready,_loc2_.@Flying,_loc2_.@Rolling,_loc2_.@SpecialEffect,_loc2_.@Talk,_loc2_.@Scream,_loc2_.@Selected,_loc2_.@Unselected);
            }
         }
      }
      
      public function §8"t§(param1:String, param2:String, param3:String, param4:String, param5:String, param6:String, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String, param13:String) : void
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         if(!_loc15_)
         {
            this.§!#&§[this.§!#&§.length] = new §'#2§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13);
         }
      }
      
      public function §<"E§(param1:String) : §'#2§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§!#&§.length)
            {
               if(_loc4_)
               {
                  Log.log("WARNING: LevelItemSoundResourceManager -> getSoundResource request has no return value, this path does not exist: " + param1);
               }
               if(_loc4_ || param1)
               {
                  break;
               }
               loop1:
               while(_loc3_)
               {
                  while(true)
                  {
                     _loc2_++;
                     continue loop1;
                  }
               }
               continue;
            }
            if(§'#2§(this.§!#&§[_loc2_]).name.toLowerCase() == param1.toLowerCase())
            {
               §§goto(addr86);
            }
            §§goto(addr58);
         }
         if(!_loc3_)
         {
            return null;
         }
         addr86:
         return §'#2§(this.§!#&§[_loc2_]);
      }
   }
}
