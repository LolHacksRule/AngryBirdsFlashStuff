package §?!8§
{
   import §+[§.§%G§;
   import §90§.Sprite;
   import §>c§.§8,§;
   import §?j§.§9?§;
   import §`!4§.§6l§;
   
   public class §^!-§ extends §#K§
   {
       
      
      public function §^!-§(param1:§6l§, param2:§9?§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      override public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §]f§
      {
         if(param1.indexOf("MISC_EASTER_EGG_") == 0 || param1.indexOf("MISC_EASTER_PLACEHOLDER") == 0)
         {
            return null;
         }
         return super.addObject(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function objectCollision(param1:§]f§, param2:§]f§) : Boolean
      {
         var _loc3_:§8,§ = null;
         if((_loc3_ = param1 as §8,§) && _loc3_.§0h§)
         {
            if(!_loc3_.§2!A§)
            {
               _loc3_.§<!9§().SetAngularVelocity((1 - Math.pow(1 - Math.random(),5)) * 4 - 2);
            }
            _loc3_.§2!A§ = true;
            return false;
         }
         if((_loc3_ = param2 as §8,§) && _loc3_.§0h§)
         {
            if(!_loc3_.§2!A§)
            {
               _loc3_.§<!9§().SetAngularVelocity((1 - Math.pow(1 - Math.random(),5)) * 4 - 2);
            }
            _loc3_.§2!A§ = true;
            return false;
         }
         return super.objectCollision(param1,param2);
      }
      
      override protected function checkExplosions(param1:§]f§) : void
      {
         if(param1 is §8,§)
         {
            this.addExplosions(§2[§.§-^§,param1.§<!9§().GetPosition().x,param1.§<!9§().GetPosition().y);
         }
         else
         {
            super.checkExplosions(param1);
         }
      }
      
      override protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §]f§
      {
         if(param2.indexOf("MISC_FAIRY_BLOCK_4X4") == 0)
         {
            return new §8!H§(this,param1,§#J§.mLevelEngine.mWorld,§#J§,§+5§,param2,param3,param4,param5,param9);
         }
         return super.createObject(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function addExplosions(param1:int, param2:Number, param3:Number, param4:Vector.<§]f§> = null) : void
      {
         §"[§.push(§2[§.createExplosion(param1,param2,param3,param4));
         §%G§.§48§("TntExplosions","ChannelExplosions");
      }
   }
}
