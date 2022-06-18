package §!!,§
{
   import §#!@§.Sprite;
   import §'0§.§]!2§;
   import §2u§.§`!M§;
   import §6Z§.§"!;§;
   import §9s§.§^9§;
   
   public class §7l§ extends §^!0§
   {
       
      
      public function §7l§(param1:§^9§, param2:§"!;§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      override public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §`Q§
      {
         if(param1.indexOf("MISC_EASTER_EGG_") == 0 || param1.indexOf("MISC_EASTER_PLACEHOLDER") == 0)
         {
            return null;
         }
         return super.addObject(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function objectCollision(param1:§`Q§, param2:§`Q§) : Boolean
      {
         var _loc3_:§`!M§ = null;
         if((_loc3_ = param1 as §`!M§) && _loc3_.§-h§)
         {
            if(!_loc3_.§`!C§)
            {
               _loc3_.§ 7§().SetAngularVelocity((1 - Math.pow(1 - Math.random(),5)) * 4 - 2);
            }
            _loc3_.§`!C§ = true;
            return false;
         }
         if((_loc3_ = param2 as §`!M§) && _loc3_.§-h§)
         {
            if(!_loc3_.§`!C§)
            {
               _loc3_.§ 7§().SetAngularVelocity((1 - Math.pow(1 - Math.random(),5)) * 4 - 2);
            }
            _loc3_.§`!C§ = true;
            return false;
         }
         return super.objectCollision(param1,param2);
      }
      
      override protected function checkExplosions(param1:§`Q§) : void
      {
         if(param1 is §`!M§)
         {
            this.addExplosions(§`V§.§&E§,param1.§ 7§().GetPosition().x,param1.§ 7§().GetPosition().y);
         }
         else
         {
            super.checkExplosions(param1);
         }
      }
      
      override protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §`Q§
      {
         if(param2.indexOf("MISC_FAIRY_BLOCK_4X4") == 0)
         {
            return new §#;§(this,param1,§4!I§.mLevelEngine.mWorld,§4!I§,§7!4§,param2,param3,param4,param5,param9);
         }
         return super.createObject(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function addExplosions(param1:int, param2:Number, param3:Number, param4:Vector.<§`Q§> = null) : void
      {
         §3! §.push(§`V§.createExplosion(param1,param2,param3,param4));
         §]!2§.playSound("TntExplosions","ChannelExplosions");
      }
   }
}
