package §<[§
{
   import §+!%§.§'!"§;
   import §->§.Sprite;
   import §1!8§.§;!>§;
   import §24§.§6W§;
   import §<!@§.§+!-§;
   
   public class §?x§ extends §6q§
   {
       
      
      public function §?x§(param1:§'!"§, param2:§+!-§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      override public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §>!4§
      {
         if(param1.indexOf("MISC_EASTER_EGG_") == 0)
         {
            return null;
         }
         return super.addObject(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function objectCollision(param1:§>!4§, param2:§>!4§) : Boolean
      {
         var _loc3_:§6W§ = null;
         if((_loc3_ = param1 as §6W§) && _loc3_.§[x§)
         {
            if(!_loc3_.§2!>§)
            {
               _loc3_.§27§().SetAngularVelocity((1 - Math.pow(1 - Math.random(),5)) * 4 - 2);
            }
            _loc3_.§2!>§ = true;
            return false;
         }
         if((_loc3_ = param2 as §6W§) && _loc3_.§[x§)
         {
            if(!_loc3_.§2!>§)
            {
               _loc3_.§27§().SetAngularVelocity((1 - Math.pow(1 - Math.random(),5)) * 4 - 2);
            }
            _loc3_.§2!>§ = true;
            return false;
         }
         return super.objectCollision(param1,param2);
      }
      
      override protected function checkExplosions(param1:§>!4§) : void
      {
         if(param1 is §6W§)
         {
            this.addExplosions(§5s§.§=!D§,param1.§27§().GetPosition().x,param1.§27§().GetPosition().y);
         }
         else
         {
            super.checkExplosions(param1);
         }
      }
      
      override public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         §>!@§.push(§5s§.createExplosion(param1,param2,param3));
         §;!>§.§>t§("TntExplosions","ChannelExplosions");
      }
   }
}
