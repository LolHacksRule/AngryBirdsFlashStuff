package §-!&§
{
   import § N§.Sprite;
   import §9T§.§1r§;
   import §9T§.§97§;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §6s§ extends §1!"§
   {
       
      
      public function §6s§(param1:§20§, param2:Sprite, param3:b2World, param4:§1r§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(!(_loc12_ && param1))
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§20§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(super.activateSpecialPower(param1));
            if(_loc2_ || this)
            {
               if(§§pop())
               {
                  do
                  {
                     §[!5§(§97§.§]!4§);
                  }
                  while(_loc3_ && _loc2_);
                  
                  if(!_loc3_)
                  {
                     §§push(true);
                     if(!_loc3_)
                     {
                        return §§pop();
                     }
                     §§goto(addr73);
                     addr60:
                  }
                  §§goto(addr73);
               }
               §§push(false);
            }
            addr73:
            return §§pop();
         }
         §§goto(addr60);
      }
   }
}
