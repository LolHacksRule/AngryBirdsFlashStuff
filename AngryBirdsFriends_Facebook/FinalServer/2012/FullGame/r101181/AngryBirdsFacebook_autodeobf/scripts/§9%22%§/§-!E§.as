package §9"%§
{
   import §1!$§.Sprite;
   import §48§.b2World;
   import §9"!§.§2a§;
   import §9"!§.§9"3§;
   
   public class §-!E§ extends § H§
   {
       
      
      public function §-!E§(param1:§]a§, param2:Sprite, param3:b2World, param4:§9"3§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(!_loc12_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§]a§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(super.activateSpecialPower(param1));
            while(§§pop())
            {
               do
               {
                  §!!6§(§2a§.BIRD_LAUNCH_FORCE);
               }
               while(_loc2_);
               
               if(!_loc3_)
               {
                  break;
               }
               §§push(true);
               if(_loc2_ && _loc3_)
               {
                  return §§pop();
               }
               addr74:
               if(_loc3_)
               {
                  return §§pop();
               }
            }
         }
         §§goto(addr74);
         §§push(false);
      }
   }
}
