package §&c§
{
   import §#;§.§4!8§;
   import §&1§.§for §;
   import §3!A§.§9!0§;
   import §8!G§.§1w§;
   import §;q§.Sprite;
   
   public class §3n§ extends §<'§
   {
       
      
      public function §3n§(param1:§4!8§, param2:§1w§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      override public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §9h§
      {
         if(param1.indexOf("MISC_EASTER_EGG_") == 0)
         {
            return null;
         }
         return super.addObject(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function objectCollision(param1:§9h§, param2:§9h§) : Boolean
      {
         var _loc3_:§for § = null;
         if((_loc3_ = param1 as §for §) && _loc3_.§5_§)
         {
            if(!_loc3_.§<!%§)
            {
               _loc3_.§68§().SetAngularVelocity((1 - Math.pow(1 - Math.random(),5)) * 4 - 2);
            }
            _loc3_.§<!%§ = true;
            return false;
         }
         if((_loc3_ = param2 as §for §) && _loc3_.§5_§)
         {
            if(!_loc3_.§<!%§)
            {
               _loc3_.§68§().SetAngularVelocity((1 - Math.pow(1 - Math.random(),5)) * 4 - 2);
            }
            _loc3_.§<!%§ = true;
            return false;
         }
         return super.objectCollision(param1,param2);
      }
      
      override protected function checkExplosions(param1:§9h§) : void
      {
         if(param1 is §for §)
         {
            this.addExplosions(§@p§.§"!?§,param1.§68§().GetPosition().x,param1.§68§().GetPosition().y);
         }
         else
         {
            super.checkExplosions(param1);
         }
      }
      
      override public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         §2j§.push(§@p§.createExplosion(param1,param2,param3));
         §9!0§.§-! §("TntExplosions","ChannelExplosions");
      }
   }
}
