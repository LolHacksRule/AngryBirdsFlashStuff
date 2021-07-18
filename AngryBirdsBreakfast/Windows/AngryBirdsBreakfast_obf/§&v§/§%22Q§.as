package §&v§
{
   import each.§!!'§;
   
   public class §"Q§
   {
       
      
      private var §true§:Array;
      
      public function §"Q§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super();
         }
      }
      
      public function §]!2§(param1:XMLList) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:XML = null;
         if(_loc6_ || param1)
         {
            this.§true§ = new Array();
         }
         var _loc3_:int = 0;
         for each(_loc2_ in param1.Resource_Sound)
         {
            if(_loc6_ || _loc3_)
            {
               this.§"!+§(_loc2_.@id,_loc2_.@channel,_loc2_.@Clicked,_loc2_.@Damaged,_loc2_.@Destroyed,_loc2_.@Ready,_loc2_.@Flying,_loc2_.@Rolling,_loc2_.@SpecialEffect,_loc2_.@Talk,_loc2_.@Scream,_loc2_.@Selected,_loc2_.@Unselected);
            }
         }
      }
      
      public function §"!+§(param1:String, param2:String, param3:String, param4:String, param5:String, param6:String, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String, param13:String) : void
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         if(!_loc15_)
         {
            this.§true§[this.§true§.length] = new §,4§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13);
         }
      }
      
      public function §@!D§(param1:String) : §,4§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§true§.length)
            {
               if(_loc4_ || _loc2_)
               {
                  if(_loc3_ && _loc3_)
                  {
                     break;
                  }
                  §!!'§.log("WARNING: LevelItemSoundResourceManager -> getSoundResource request has no return value, this path does not exist: " + param1);
               }
               if(_loc4_ || _loc3_)
               {
                  return null;
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
            if(§,4§(this.§true§[_loc2_]).name.toLowerCase() == param1.toLowerCase())
            {
               break;
            }
            §§goto(addr68);
         }
         return §,4§(this.§true§[_loc2_]);
      }
   }
}
