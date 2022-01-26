package §finally§
{
   import §"o§.§ M§;
   import §;f§.§^o§;
   import §>Z§.§2;§;
   import §@!=§.Sprite;
   import §while§.§&!?§;
   
   public class §9+§ extends §3X§
   {
       
      
      public function §9+§(param1:§ M§, param2:§^o§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      override public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §%!7§
      {
         if(param1.indexOf("MISC_EASTER_EGG_") == 0)
         {
            return null;
         }
         return super.addObject(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function objectCollision(param1:§%!7§, param2:§%!7§) : Boolean
      {
         var _loc3_:§&!?§ = null;
         if((_loc3_ = param1 as §&!?§) && _loc3_.§1!!§)
         {
            if(!_loc3_.§+U§)
            {
               _loc3_.§+!-§().SetAngularVelocity((1 - Math.pow(1 - Math.random(),5)) * 4 - 2);
            }
            _loc3_.§+U§ = true;
            return false;
         }
         if((_loc3_ = param2 as §&!?§) && _loc3_.§1!!§)
         {
            if(!_loc3_.§+U§)
            {
               _loc3_.§+!-§().SetAngularVelocity((1 - Math.pow(1 - Math.random(),5)) * 4 - 2);
            }
            _loc3_.§+U§ = true;
            return false;
         }
         return super.objectCollision(param1,param2);
      }
      
      override protected function checkExplosions(param1:§%!7§) : void
      {
         if(param1 is §&!?§)
         {
            this.addExplosions(§!t§.§"m§,param1.§+!-§().GetPosition().x,param1.§+!-§().GetPosition().y);
         }
         else
         {
            super.checkExplosions(param1);
         }
      }
      
      override public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         §]e§.push(§!t§.createExplosion(param1,param2,param3));
         §2;§.playSound("TntExplosions","ChannelExplosions");
      }
   }
}
