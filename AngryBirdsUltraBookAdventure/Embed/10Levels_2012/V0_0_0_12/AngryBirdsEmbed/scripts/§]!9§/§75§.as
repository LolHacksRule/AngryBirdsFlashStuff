package §]!9§
{
   import §%x§.§#;§;
   import §6!@§.§"N§;
   import §>!C§.§9R§;
   import §?!?§.§3!E§;
   import §?^§.Sprite;
   
   public class §75§ extends §]!H§
   {
       
      
      public function §75§(param1:§#;§, param2:§9R§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      override public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §>2§
      {
         if(param1.indexOf("MISC_EASTER_EGG_") == 0)
         {
            return null;
         }
         return super.addObject(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function objectCollision(param1:§>2§, param2:§>2§) : Boolean
      {
         var _loc3_:§"N§ = null;
         if((_loc3_ = param1 as §"N§) && _loc3_.§+g§)
         {
            if(!_loc3_.§9z§)
            {
               _loc3_.§%;§().SetAngularVelocity((1 - Math.pow(1 - Math.random(),5)) * 4 - 2);
            }
            _loc3_.§9z§ = true;
            return false;
         }
         if((_loc3_ = param2 as §"N§) && _loc3_.§+g§)
         {
            if(!_loc3_.§9z§)
            {
               _loc3_.§%;§().SetAngularVelocity((1 - Math.pow(1 - Math.random(),5)) * 4 - 2);
            }
            _loc3_.§9z§ = true;
            return false;
         }
         return super.objectCollision(param1,param2);
      }
      
      override protected function checkExplosions(param1:§>2§) : void
      {
         if(param1 is §"N§)
         {
            this.addExplosions(§5D§.§9L§,param1.§%;§().GetPosition().x,param1.§%;§().GetPosition().y);
         }
         else
         {
            super.checkExplosions(param1);
         }
      }
      
      override public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         §,!6§.push(§5D§.createExplosion(param1,param2,param3));
         §3!E§.§<!,§("TntExplosions","ChannelExplosions");
      }
   }
}
