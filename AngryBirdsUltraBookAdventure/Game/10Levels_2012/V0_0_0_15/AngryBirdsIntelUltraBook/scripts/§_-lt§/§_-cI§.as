package §_-lt§
{
   import §_-TG§.§_-00u§;
   import §_-TG§.§_-E0§;
   import §_-aU§.b2World;
   import §_-uY§.Sprite;
   
   public class §_-cI§ extends §_-Fh§
   {
       
      
      public function §_-cI§(param1:§_-30§, param2:Sprite, param3:b2World, param4:§_-00u§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(!(_loc12_ && param3))
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§_-30§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(super.activateSpecialPower(param1));
            if(!_loc3_)
            {
               if(§§pop())
               {
                  do
                  {
                     §_-O1§(§_-E0§.BIRD_LAUNCH_FORCE);
                  }
                  while(_loc3_ && _loc2_);
                  
                  if(!(_loc3_ && param1))
                  {
                     §§push(true);
                     if(!_loc3_)
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
