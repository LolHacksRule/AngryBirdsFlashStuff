package §-!7§
{
   import §&!"§.b2World;
   import §9N§.§9!%§;
   import §9N§.§;c§;
   import §`a§.Sprite;
   
   public class § !2§ extends §^!1§
   {
       
      
      public function § !2§(param1:§&$§, param2:Sprite, param3:b2World, param4:§9!%§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         if(!(_loc11_ && this))
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,true,param10);
         }
      }
      
      override public function activateSpecialPower(param1:§&$§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(super.activateSpecialPower(param1));
            while(§§pop())
            {
               do
               {
                  §1!0§(§;c§.§1p§);
               }
               while(!_loc3_);
               
               if(!_loc3_)
               {
                  break;
               }
               §§push(true);
               if(_loc2_)
               {
                  return §§pop();
               }
               addr69:
               if(!_loc2_)
               {
                  return §§pop();
               }
            }
         }
         §§goto(addr69);
         §§push(false);
      }
   }
}
