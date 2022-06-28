package §8u§
{
   import §#h§.§ !H§;
   import §,_§.Sprite;
   import §3G§.§!E§;
   import §=!B§.§^!9§;
   import §@§.§+!9§;
   
   public class §,!<§ extends §6a§
   {
       
      
      public function §,!<§(param1:§!E§, param2:§^!9§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      override public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §0r§
      {
         if(param1.indexOf("MISC_EASTER_EGG_") == 0)
         {
            return null;
         }
         return super.addObject(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function objectCollision(param1:§0r§, param2:§0r§) : Boolean
      {
         var _loc3_:§+!9§ = null;
         if((_loc3_ = param1 as §+!9§) && _loc3_.§7C§)
         {
            if(!_loc3_.§8^§)
            {
               _loc3_.§?n§().SetAngularVelocity((1 - Math.pow(1 - Math.random(),5)) * 4 - 2);
            }
            _loc3_.§8^§ = true;
            return false;
         }
         if((_loc3_ = param2 as §+!9§) && _loc3_.§7C§)
         {
            if(!_loc3_.§8^§)
            {
               _loc3_.§?n§().SetAngularVelocity((1 - Math.pow(1 - Math.random(),5)) * 4 - 2);
            }
            _loc3_.§8^§ = true;
            return false;
         }
         return super.objectCollision(param1,param2);
      }
      
      override protected function checkExplosions(param1:§0r§) : void
      {
         if(param1 is §+!9§)
         {
            this.addExplosions(§>1§.§<!&§,param1.§?n§().GetPosition().x,param1.§?n§().GetPosition().y);
         }
         else
         {
            super.checkExplosions(param1);
         }
      }
      
      override public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         §+@§.push(§>1§.createExplosion(param1,param2,param3));
         § !H§.§ !%§("TntExplosions","ChannelExplosions");
      }
   }
}
