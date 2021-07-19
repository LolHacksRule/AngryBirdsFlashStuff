package §,h§
{
   import §!X§.§#K§;
   import §!X§.§86§;
   import §]@§.Sprite;
   import §`j§.b2World;
   
   public class §@!S§ extends §4!9§
   {
       
      
      public function §@!S§(param1:§6M§, param2:Sprite, param3:b2World, param4:§86§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(!(_loc12_ && param3))
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§6M§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(super.activateSpecialPower(param1));
            if(!(_loc2_ && this))
            {
               if(§§pop())
               {
                  do
                  {
                     §>v§(§#K§.§3u§);
                  }
                  while(!_loc3_);
                  
                  if(_loc3_ || this)
                  {
                     §§push(true);
                     if(_loc3_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr73:
                     §§push(false);
                  }
               }
               §§goto(addr73);
            }
            return §§pop();
         }
         §§goto(addr73);
      }
   }
}
