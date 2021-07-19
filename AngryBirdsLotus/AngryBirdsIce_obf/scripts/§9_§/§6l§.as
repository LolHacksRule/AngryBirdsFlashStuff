package §9_§
{
   import §[x§.§2^§;
   import §[x§.§9"§;
   import §^V§.Sprite;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §6l§ extends §4!;§
   {
       
      
      public function §6l§(param1:§?!!§, param2:Sprite, param3:b2World, param4:§2^§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(!_loc13_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§?!!§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(super.activateSpecialPower(param1));
            loop0:
            while(§§pop())
            {
               do
               {
                  §-!'§(§9"§.§<x§);
               }
               while(!(_loc3_ || _loc2_));
               
               if(_loc3_)
               {
                  while(true)
                  {
                     §§push(true);
                     if(!_loc3_)
                     {
                        break;
                     }
                     if(_loc3_ || this)
                     {
                        return §§pop();
                     }
                     continue loop0;
                  }
                  addr79:
                  return §§pop();
                  addr73:
               }
               break;
            }
            §§goto(addr79);
            §§push(false);
         }
         §§goto(addr73);
      }
   }
}
