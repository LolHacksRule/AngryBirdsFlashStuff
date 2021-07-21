package §]";§
{
   import §6]§.§,"0§;
   
   public class §+!$§
   {
      
      private static var §,!K§:Array;
       
      
      public function §+!$§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §9!i§(param1:XMLList) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:XML = null;
         if(!(_loc5_ && §+!$§))
         {
            §,!K§ = new Array();
         }
         var _loc3_:int = 0;
         for each(_loc2_ in param1.Resource_Sound)
         {
            if(_loc6_ || _loc3_)
            {
               §5h§(_loc2_.@id,_loc2_.@channel,_loc2_.@Clicked,_loc2_.@Damaged,_loc2_.@Destroyed,_loc2_.@Ready,_loc2_.@Flying,_loc2_.@Rolling,_loc2_.@SpecialEffect,_loc2_.@Talk,_loc2_.@Scream,_loc2_.@Selected,_loc2_.@Unselected);
            }
         }
      }
      
      public static function §5h§(param1:String, param2:String, param3:String, param4:String, param5:String, param6:String, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String, param13:String) : void
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         if(_loc14_)
         {
            §,!K§[§,!K§.length] = new §34§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13);
         }
      }
      
      public static function §>Z§(param1:String) : §34§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         do
         {
            if(_loc2_ >= §,!K§.length)
            {
               if(_loc3_)
               {
                  §,"0§.log("WARNING: LevelItemResourcePaths -> getResourcePathSound request has no return value, this path does not exist: " + param1);
               }
               if(!_loc3_)
               {
                  continue;
               }
               if(_loc3_)
               {
                  return null;
               }
            }
            else if(§34§(§,!K§[_loc2_]).mName.toLowerCase() == param1.toLowerCase())
            {
               break;
            }
            _loc2_++;
         }
         while(!_loc4_);
         
         return §34§(§,!K§[_loc2_]);
      }
   }
}
