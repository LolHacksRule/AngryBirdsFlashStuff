package §9_§
{
   import §3"§.§8+§;
   import §3O§.§@6§;
   import §[x§.§2^§;
   import §^V§.Sprite;
   import §`6§.§ r§;
   
   public class §6!B§ extends §?!!§
   {
       
      
      public function §6!B§(param1:§2^§, param2:§8+§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      override public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §+>§
      {
         if(param1.indexOf("MISC_EASTER_EGG_") == 0)
         {
            return null;
         }
         return super.addObject(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function objectCollision(param1:§+>§, param2:§+>§) : Boolean
      {
         var _loc3_:§ r§ = null;
         if((_loc3_ = param1 as § r§) && _loc3_.§]Q§)
         {
            if(!_loc3_.§02§)
            {
               _loc3_.§>b§().SetAngularVelocity((1 - Math.pow(1 - Math.random(),5)) * 4 - 2);
            }
            _loc3_.§02§ = true;
            return false;
         }
         if((_loc3_ = param2 as § r§) && _loc3_.§]Q§)
         {
            if(!_loc3_.§02§)
            {
               _loc3_.§>b§().SetAngularVelocity((1 - Math.pow(1 - Math.random(),5)) * 4 - 2);
            }
            _loc3_.§02§ = true;
            return false;
         }
         return super.objectCollision(param1,param2);
      }
      
      override protected function checkExplosions(param1:§+>§) : void
      {
         if(param1 is § r§)
         {
            this.addExplosions(§59§.§+d§,param1.§>b§().GetPosition().x,param1.§>b§().GetPosition().y);
         }
         else
         {
            super.checkExplosions(param1);
         }
      }
      
      override public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         §-W§.push(§59§.createExplosion(param1,param2,param3));
         §@6§.playSound("TntExplosions","ChannelExplosions");
      }
   }
}
