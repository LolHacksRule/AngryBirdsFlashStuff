package §`"§
{
   import § "§.§;4§;
   import §"§.§+!5§;
   import §1!?§.§7_§;
   import §9!?§.§^]§;
   import §<k§.Sprite;
   
   public class §0!"§ extends §?!;§
   {
       
      
      public function §0!"§(param1:§^]§, param2:§;4§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      override public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §"e§
      {
         if(param1.indexOf("MISC_EASTER_EGG_") == 0)
         {
            return null;
         }
         return super.addObject(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function objectCollision(param1:§"e§, param2:§"e§) : Boolean
      {
         var _loc3_:§+!5§ = null;
         if((_loc3_ = param1 as §+!5§) && _loc3_.§-!0§)
         {
            if(!_loc3_.§use §)
            {
               _loc3_.§]d§().SetAngularVelocity((1 - Math.pow(1 - Math.random(),5)) * 4 - 2);
            }
            _loc3_.§use § = true;
            return false;
         }
         if((_loc3_ = param2 as §+!5§) && _loc3_.§-!0§)
         {
            if(!_loc3_.§use §)
            {
               _loc3_.§]d§().SetAngularVelocity((1 - Math.pow(1 - Math.random(),5)) * 4 - 2);
            }
            _loc3_.§use § = true;
            return false;
         }
         return super.objectCollision(param1,param2);
      }
      
      override protected function checkExplosions(param1:§"e§) : void
      {
         if(param1 is §+!5§)
         {
            this.addExplosions(§?x§.§9!;§,param1.§]d§().GetPosition().x,param1.§]d§().GetPosition().y);
         }
         else
         {
            super.checkExplosions(param1);
         }
      }
      
      override public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         §0T§.push(§?x§.createExplosion(param1,param2,param3));
         §7_§.§4!5§("TntExplosions","ChannelExplosions");
      }
   }
}
