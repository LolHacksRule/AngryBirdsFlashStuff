package § !3§
{
   import §%-§.Sprite;
   import §%x§.§#;§;
   import §2!<§.§?!?§;
   import §6!@§.§"N§;
   import §>!C§.§<-§;
   
   public class §%A§ extends §]!9§
   {
       
      
      public function §%A§(param1:§#;§, param2:§<-§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      override public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §'§
      {
         if(param1.indexOf("MISC_EASTER_EGG_") == 0)
         {
            return null;
         }
         return super.addObject(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function objectCollision(param1:§'§, param2:§'§) : Boolean
      {
         var _loc3_:§"N§ = null;
         if((_loc3_ = param1 as §"N§) && _loc3_.§+g§)
         {
            if(!_loc3_.§9z§)
            {
               _loc3_.§9! §().SetAngularVelocity((1 - Math.pow(1 - Math.random(),5)) * 4 - 2);
            }
            _loc3_.§9z§ = true;
            return false;
         }
         if((_loc3_ = param2 as §"N§) && _loc3_.§+g§)
         {
            if(!_loc3_.§9z§)
            {
               _loc3_.§9! §().SetAngularVelocity((1 - Math.pow(1 - Math.random(),5)) * 4 - 2);
            }
            _loc3_.§9z§ = true;
            return false;
         }
         return super.objectCollision(param1,param2);
      }
      
      override protected function checkExplosions(param1:§'§) : void
      {
         if(param1 is §"N§)
         {
            this.addExplosions(§5s§.§5D§,param1.§9! §().GetPosition().x,param1.§9! §().GetPosition().y);
         }
         else
         {
            super.checkExplosions(param1);
         }
      }
      
      override public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         §1&§.push(§5s§.createExplosion(param1,param2,param3));
         §?!?§.§#'§("TntExplosions","ChannelExplosions");
      }
   }
}
