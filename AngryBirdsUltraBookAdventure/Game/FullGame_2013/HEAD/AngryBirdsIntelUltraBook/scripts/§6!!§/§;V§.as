package §6!!§
{
   import §#!,§.Sprite;
   import §>!L§.b2World;
   import §]!@§.LevelMain;
   
   public class §;V§ extends §6!f§
   {
       
      
      public function §;V§(param1:LevelObjectManager, param2:Sprite, param3:b2World, param4:LevelMain, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(_loc13_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:LevelObjectManager) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(super.activateSpecialPower(param1));
            if(_loc3_)
            {
               §§pop();
               addr25:
               return false;
            }
         }
         §§goto(addr25);
      }
   }
}
