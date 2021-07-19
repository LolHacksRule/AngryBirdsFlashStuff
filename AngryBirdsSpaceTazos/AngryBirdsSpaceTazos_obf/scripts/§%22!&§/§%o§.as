package §"!&§
{
   import §0N§.§2!@§;
   
   public class §%o§
   {
       
      
      private var §3!A§:Array;
      
      public function §%o§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super();
         }
      }
      
      public function §?O§(param1:XMLList) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:XML = null;
         if(!(_loc5_ && param1))
         {
            this.§3!A§ = new Array();
         }
         for each(_loc2_ in param1.Resource_Sound)
         {
            if(!_loc5_)
            {
               this.§@H§(_loc2_.@id,_loc2_.@channel,_loc2_.@Clicked,_loc2_.@Damaged,_loc2_.@Destroyed,_loc2_.@Ready,_loc2_.@Flying,_loc2_.@Rolling,_loc2_.@SpecialEffect,_loc2_.@Talk,_loc2_.@Scream,_loc2_.@Selected,_loc2_.@Unselected);
            }
         }
      }
      
      public function §@H§(param1:String, param2:String, param3:String, param4:String, param5:String, param6:String, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String, param13:String) : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(_loc15_ || this)
         {
            this.§3!A§[this.§3!A§.length] = new §=C§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13);
         }
      }
      
      public function § V§(param1:String) : §=C§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§3!A§.length)
            {
               if(_loc3_)
               {
                  break;
               }
               if(!(_loc3_ && _loc3_))
               {
                  §2!@§.log("WARNING: LevelItemSoundResourceManager -> getSoundResource request has no return value, this path does not exist: " + param1);
                  break;
               }
               loop1:
               while(!_loc4_)
               {
                  while(true)
                  {
                     _loc2_++;
                     continue loop1;
                  }
               }
               continue;
            }
            if(§=C§(this.§3!A§[_loc2_]).name.toLowerCase() == param1.toLowerCase())
            {
               §§goto(addr91);
            }
            §§goto(addr63);
         }
         if(_loc4_ || _loc2_)
         {
            return null;
         }
         addr91:
         return §=C§(this.§3!A§[_loc2_]);
      }
   }
}
