package §<!<§
{
   import §-!0§.§2! §;
   import §-!`§.Sprite;
   import §8!Q§.§,8§;
   
   public class §5!Y§ extends §;§
   {
       
      
      public function §5!Y§(param1:§7E§, param2:§2! §, param3:Sprite)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            super(param1,param2,param3);
         }
      }
      
      public function §3!t§(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§]K§ = null;
         for each(_loc2_ in mBirds)
         {
            if(!(_loc6_ && _loc2_))
            {
               _loc2_.§2!@§ = param1;
            }
         }
      }
      
      override public function startDragging() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super.startDragging();
            if(_loc2_)
            {
               addr28:
               §,8§.§5!^§();
            }
            return;
         }
         §§goto(addr28);
      }
   }
}
