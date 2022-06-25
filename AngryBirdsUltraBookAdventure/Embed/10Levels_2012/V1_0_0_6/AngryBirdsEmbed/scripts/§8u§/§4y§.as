package §8u§
{
   import §,_§.Sprite;
   import §3G§.§!E§;
   import §3G§.§3X§;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §4y§ extends §8j§
   {
       
      
      public function §4y§(param1:§6a§, param2:Sprite, param3:b2World, param4:§!E§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(!(_loc12_ && this))
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§6a§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(super.activateSpecialPower(param1));
            if(_loc2_)
            {
               if(!§§pop())
               {
                  if(_loc2_)
                  {
                     addr36:
                     §§push(false);
                     if(_loc2_ || this)
                     {
                        return §§pop();
                     }
                     §§goto(addr52);
                  }
                  §§goto(addr52);
               }
               else
               {
                  §^§(§3X§.§-'§);
               }
               §§push(true);
            }
            addr52:
            return §§pop();
         }
         §§goto(addr36);
      }
   }
}
