package §>!'§
{
   import §-!0§.§2! §;
   import §-!`§.Sprite;
   import §1=§.§#!J§;
   import §1?§.§+!§;
   import §<!<§.§7E§;
   
   public class §;T§ extends §'!Y§
   {
       
      
      public function §;T§(param1:§7E§, param2:§2! §, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      override public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §<!3§
      {
         if(param1.indexOf("MISC_EASTER_EGG_") == 0)
         {
            return null;
         }
         return super.addObject(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function objectCollision(param1:§<!3§, param2:§<!3§) : Boolean
      {
         var _loc3_:§#!J§ = null;
         if((_loc3_ = param1 as §#!J§) && _loc3_.§,9§)
         {
            if(!_loc3_.§3t§)
            {
               _loc3_.getBody().SetAngularVelocity((1 - Math.pow(1 - Math.random(),5)) * 4 - 2);
            }
            _loc3_.§3t§ = true;
            return false;
         }
         if((_loc3_ = param2 as §#!J§) && _loc3_.§,9§)
         {
            if(!_loc3_.§3t§)
            {
               _loc3_.getBody().SetAngularVelocity((1 - Math.pow(1 - Math.random(),5)) * 4 - 2);
            }
            _loc3_.§3t§ = true;
            return false;
         }
         return super.objectCollision(param1,param2);
      }
      
      override protected function checkExplosions(param1:§<!3§) : void
      {
         if(param1 is §#!J§)
         {
            this.addExplosions(§[3§.§[+§,param1.getBody().GetPosition().x,param1.getBody().GetPosition().y);
         }
         else
         {
            super.checkExplosions(param1);
         }
      }
      
      override public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         §5O§.push(§[3§.createExplosion(param1,param2,param3));
         §+!§.§4c§("TntExplosions","ChannelExplosions");
      }
   }
}
