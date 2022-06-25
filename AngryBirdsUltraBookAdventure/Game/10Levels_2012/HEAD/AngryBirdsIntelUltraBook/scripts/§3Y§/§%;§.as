package §3Y§
{
   import §1!&§.Sprite;
   import §1%§.b2World;
   import §?A§.LevelMain;
   import §?A§.LevelSlingshot;
   
   public class §%;§ extends §[r§
   {
       
      
      public function §%;§(param1:LevelObjectManager, param2:Sprite, param3:b2World, param4:LevelMain, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(_loc13_ || param1)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:LevelObjectManager) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(super.activateSpecialPower(param1));
            if(!_loc2_)
            {
               §§push(!§§pop());
            }
            while(!§§pop())
            {
               do
               {
                  §-,§(LevelSlingshot.BIRD_LAUNCH_FORCE);
               }
               while(_loc2_);
               
               if(_loc2_ && _loc2_)
               {
                  break;
               }
               §§push(true);
               if(!(_loc3_ || param1))
               {
                  return §§pop();
               }
               addr84:
               if(!(_loc2_ && _loc3_))
               {
                  return §§pop();
               }
            }
         }
         §§goto(addr84);
         §§push(false);
      }
   }
}
