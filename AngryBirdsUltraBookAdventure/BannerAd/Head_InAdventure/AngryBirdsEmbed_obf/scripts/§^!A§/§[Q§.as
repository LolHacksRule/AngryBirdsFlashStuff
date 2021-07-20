package §^!A§
{
   import §!j§.§+m§;
   import §#X§.§,!F§;
   import §&o§.Sprite;
   import §1!-§.§@Z§;
   import §6A§.§ !§;
   
   public class §[Q§ extends §@H§
   {
       
      
      public function §[Q§(param1:§ !§, param2:§@Z§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      override public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §;!%§
      {
         if(param1.indexOf("MISC_EASTER_EGG_") == 0)
         {
            return null;
         }
         return super.addObject(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function objectCollision(param1:§;!%§, param2:§;!%§) : Boolean
      {
         var _loc3_:§+m§ = null;
         if((_loc3_ = param1 as §+m§) && _loc3_.§'V§)
         {
            if(!_loc3_.§[5§)
            {
               _loc3_.§'[§().SetAngularVelocity((1 - Math.pow(1 - Math.random(),5)) * 4 - 2);
            }
            _loc3_.§[5§ = true;
            return false;
         }
         if((_loc3_ = param2 as §+m§) && _loc3_.§'V§)
         {
            if(!_loc3_.§[5§)
            {
               _loc3_.§'[§().SetAngularVelocity((1 - Math.pow(1 - Math.random(),5)) * 4 - 2);
            }
            _loc3_.§[5§ = true;
            return false;
         }
         return super.objectCollision(param1,param2);
      }
      
      override protected function checkExplosions(param1:§;!%§) : void
      {
         if(param1 is §+m§)
         {
            this.addExplosions(§]v§.§+l§,param1.§'[§().GetPosition().x,param1.§'[§().GetPosition().y);
         }
         else
         {
            super.checkExplosions(param1);
         }
      }
      
      override public function addExplosions(param1:int, param2:Number, param3:Number, param4:Vector.<§;!%§> = null) : void
      {
         § 8§.push(§]v§.createExplosion(param1,param2,param3));
         §,!F§.§;v§("TntExplosions","ChannelExplosions");
      }
   }
}
