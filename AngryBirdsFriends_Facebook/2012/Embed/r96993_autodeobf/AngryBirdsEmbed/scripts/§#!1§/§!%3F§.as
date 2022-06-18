package §#!1§
{
   import §'N§.§^]§;
   import §-!C§.§3!H§;
   import §2$§.§5<§;
   import §]!6§.Sprite;
   import §`i§.§2W§;
   
   public class §!?§ extends §;^§
   {
       
      
      public function §!?§(param1:§2W§, param2:§3!H§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      override public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §4!,§
      {
         if(param1.indexOf("MISC_EASTER_EGG_") == 0)
         {
            return null;
         }
         return super.addObject(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function objectCollision(param1:§4!,§, param2:§4!,§) : Boolean
      {
         var _loc3_:§5<§ = null;
         if((_loc3_ = param1 as §5<§) && _loc3_.§"1§)
         {
            if(!_loc3_.§4§)
            {
               _loc3_.§!v§().SetAngularVelocity((1 - Math.pow(1 - Math.random(),5)) * 4 - 2);
            }
            _loc3_.§4§ = true;
            return false;
         }
         if((_loc3_ = param2 as §5<§) && _loc3_.§"1§)
         {
            if(!_loc3_.§4§)
            {
               _loc3_.§!v§().SetAngularVelocity((1 - Math.pow(1 - Math.random(),5)) * 4 - 2);
            }
            _loc3_.§4§ = true;
            return false;
         }
         return super.objectCollision(param1,param2);
      }
      
      override protected function checkExplosions(param1:§4!,§) : void
      {
         if(param1 is §5<§)
         {
            this.addExplosions(§#N§.§`X§,param1.§!v§().GetPosition().x,param1.§!v§().GetPosition().y);
         }
         else
         {
            super.checkExplosions(param1);
         }
      }
      
      override public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         §9Y§.push(§#N§.createExplosion(param1,param2,param3));
         §^]§.§1g§("TntExplosions","ChannelExplosions");
      }
   }
}
