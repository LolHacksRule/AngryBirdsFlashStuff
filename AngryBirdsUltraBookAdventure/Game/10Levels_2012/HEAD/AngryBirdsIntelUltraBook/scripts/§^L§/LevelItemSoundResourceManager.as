package §^L§
{
   import §'N§.Log;
   
   public class LevelItemSoundResourceManager
   {
      
      private static var §,!R§:Array;
       
      
      public function LevelItemSoundResourceManager()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super();
         }
      }
      
      public static function §^>§(param1:XMLList) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:XML = null;
         if(_loc6_)
         {
            §,!R§ = new Array();
         }
         for each(_loc2_ in param1.Resource_Sound)
         {
            if(_loc6_ || _loc2_)
            {
               §"!i§(_loc2_.@id,_loc2_.@channel,_loc2_.@Clicked,_loc2_.@Damaged,_loc2_.@Destroyed,_loc2_.@Ready,_loc2_.@Flying,_loc2_.@Rolling,_loc2_.@SpecialEffect,_loc2_.@Talk,_loc2_.@Scream,_loc2_.@Selected,_loc2_.@Unselected);
            }
         }
      }
      
      public static function §"!i§(param1:String, param2:String, param3:String, param4:String, param5:String, param6:String, param7:String, param8:String, param9:String, param10:String, param11:String, param12:String, param13:String) : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(_loc15_)
         {
            §,!R§[§,!R§.length] = new LevelItemSoundResource(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13);
         }
      }
      
      public static function §5p§(param1:String) : LevelItemSoundResource
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(0);
         if(_loc4_ || _loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            §§push(_loc2_);
            if(_loc4_)
            {
               if(_loc4_)
               {
                  if(§§pop() >= §,!R§.length)
                  {
                     if(_loc4_ || _loc2_)
                     {
                        §§push(Log);
                        §§push("WARNING: LevelItemResourcePaths -> getResourcePathSound request has no return value, this path does not exist: ");
                        if(_loc4_)
                        {
                           §§push(§§pop() + param1);
                        }
                        §§pop().log(§§pop());
                     }
                     if(!(_loc3_ && LevelItemSoundResourceManager))
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
                     addr84:
                  }
                  else if(LevelItemSoundResource(§,!R§[_loc2_]).mName.toLowerCase() == param1.toLowerCase())
                  {
                     if(_loc4_ || param1)
                     {
                        break;
                     }
                     §§goto(addr124);
                  }
                  while(true)
                  {
                     §§push(_loc2_);
                  }
               }
               while(true)
               {
                  §§push(§§pop() + 1);
                  if(!_loc3_)
                  {
                     §§push(int(§§pop()));
                  }
               }
            }
            while(true)
            {
               _loc2_ = §§pop();
               §§goto(addr84);
            }
         }
         return LevelItemSoundResource(§,!R§[_loc2_]);
      }
   }
}
