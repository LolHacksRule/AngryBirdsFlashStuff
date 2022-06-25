package §]!9§
{
   import §%x§.§#;§;
   import §%x§.§3=§;
   import §?^§.Sprite;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §#!"§ extends §&v§
   {
       
      
      public function §#!"§(param1:§]!H§, param2:Sprite, param3:b2World, param4:§#;§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(!_loc12_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§]!H§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(super.activateSpecialPower(param1));
            if(_loc3_ || param1)
            {
               if(!§§pop())
               {
                  if(_loc3_ || _loc2_)
                  {
                     addr47:
                     §§push(false);
                     if(!_loc2_)
                     {
                        return §§pop();
                     }
                     §§goto(addr58);
                  }
                  §§goto(addr58);
               }
               §^m§(§3=§.§=!,§);
               §§push(true);
            }
            addr58:
            return §§pop();
         }
         §§goto(addr47);
      }
   }
}
