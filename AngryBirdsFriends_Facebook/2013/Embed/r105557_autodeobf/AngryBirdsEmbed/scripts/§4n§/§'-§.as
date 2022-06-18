package §4n§
{
   import §,k§.§@6§;
   import §8T§.§@o§;
   import §;'§.§?!D§;
   import §;^§.Sprite;
   import §<!M§.§1!&§;
   
   public class §'-§ extends §8y§
   {
       
      
      public function §'-§(param1:§?!D§, param2:§1!&§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      override public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §@!4§
      {
         if(param1.indexOf("MISC_EASTER_EGG_") == 0)
         {
            return null;
         }
         return super.addObject(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function objectCollision(param1:§@!4§, param2:§@!4§) : Boolean
      {
         var _loc3_:§@6§ = null;
         if((_loc3_ = param1 as §@6§) && _loc3_.§%§)
         {
            if(!_loc3_.§;;§)
            {
               _loc3_.§^C§().SetAngularVelocity((1 - Math.pow(1 - Math.random(),5)) * 4 - 2);
            }
            _loc3_.§;;§ = true;
            return false;
         }
         if((_loc3_ = param2 as §@6§) && _loc3_.§%§)
         {
            if(!_loc3_.§;;§)
            {
               _loc3_.§^C§().SetAngularVelocity((1 - Math.pow(1 - Math.random(),5)) * 4 - 2);
            }
            _loc3_.§;;§ = true;
            return false;
         }
         return super.objectCollision(param1,param2);
      }
      
      override protected function checkExplosions(param1:§@!4§) : void
      {
         if(param1 is §@6§)
         {
            this.addExplosions(§`!?§.§6I§,param1.§^C§().GetPosition().x,param1.§^C§().GetPosition().y);
         }
         else
         {
            super.checkExplosions(param1);
         }
      }
      
      override public function addExplosions(param1:int, param2:Number, param3:Number, param4:Vector.<§@!4§> = null) : void
      {
         §!!9§.push(§`!?§.createExplosion(param1,param2,param3));
         §@o§.playSound("TntExplosions","ChannelExplosions");
      }
   }
}
