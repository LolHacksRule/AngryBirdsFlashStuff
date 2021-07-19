package §_-CR§
{
   import §_-Iw§.b2World;
   import §_-LP§.Sprite;
   import §_-OJ§.§_-7G§;
   import §_-OJ§.§_-tL§;
   
   public class §_-kK§ extends §_-zf§
   {
       
      
      public function §_-kK§(param1:§_-F5§, param2:Sprite, param3:b2World, param4:§_-tL§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         if(_loc12_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,true,param10);
         }
      }
      
      override public function activateSpecialPower(param1:§_-F5§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(super.activateSpecialPower(param1));
            if(_loc2_)
            {
               if(!§§pop())
               {
                  if(_loc2_)
                  {
                     §§push(false);
                     if(!(_loc3_ && _loc2_))
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr53:
                     §_-QR§(§_-7G§.§_-st§);
                     §§push(true);
                  }
               }
               §§goto(addr53);
            }
            return §§pop();
         }
         §§goto(addr53);
      }
   }
}
