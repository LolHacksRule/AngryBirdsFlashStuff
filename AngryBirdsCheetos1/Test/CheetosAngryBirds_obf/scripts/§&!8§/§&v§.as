package §&!8§
{
   import § o§.b2World;
   import §,§.§ p§;
   import §,§.§7!N§;
   import §^a§.Sprite;
   
   public class §&v§ extends §]V§
   {
       
      
      public function §&v§(param1:§+!6§, param2:Sprite, param3:b2World, param4:§ p§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(_loc13_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§+!6§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(super.activateSpecialPower(param1));
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop())
               {
                  do
                  {
                     §5!W§(§7!N§.§0C§);
                  }
                  while(_loc2_);
                  
                  if(_loc3_)
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
