package §+!o§
{
   import §+S§.b2World;
   import §5!V§.§!w§;
   import §5!V§.§[!6§;
   import §default§.Sprite;
   
   public class §+!?§ extends §>G§
   {
       
      
      public function §+!?§(param1:§?"-§, param2:Sprite, param3:b2World, param4:§!w§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(!(_loc13_ && this))
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§?"-§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(super.activateSpecialPower(param1));
            if(_loc2_)
            {
               if(!§§pop())
               {
                  if(!(_loc3_ && param1))
                  {
                     §§goto(addr73);
                  }
                  else
                  {
                     while(true)
                     {
                     }
                     addr74:
                  }
                  §§goto(addr73);
               }
               while(true)
               {
                  §!N§(§[!6§.§]![§);
                  if(!_loc3_)
                  {
                     break;
                  }
                  §§goto(addr74);
               }
               §§push(true);
               if(!_loc3_)
               {
                  return §§pop();
               }
            }
            §§goto(addr73);
         }
         addr73:
         return false;
      }
   }
}
