package §&!P§
{
   import §"J§.b2World;
   import §%!0§.§,4§;
   import §%!0§.§3"!§;
   import §+!-§.Sprite;
   
   public class §]v§ extends §9`§
   {
       
      
      public function §]v§(param1:§^!!§, param2:Sprite, param3:b2World, param4:§,4§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(_loc13_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§^!!§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(super.activateSpecialPower(param1));
            if(_loc2_ || param1)
            {
               if(§§pop())
               {
                  do
                  {
                     §#!d§(§3"!§.§^X§);
                  }
                  while(_loc3_);
                  
                  if(_loc2_)
                  {
                     §§push(true);
                     if(_loc2_ || _loc3_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr72:
                     §§push(false);
                  }
               }
               §§goto(addr72);
            }
            return §§pop();
         }
         §§goto(addr72);
      }
   }
}
