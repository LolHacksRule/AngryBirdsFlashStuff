package §!+§
{
   import §6!'§.get;
   import §6J§.§&!;§;
   import §9W§.Sprite;
   import §?b§.§7!,§;
   import §@D§.§6I§;
   
   public class §5! § extends §#-§
   {
       
      
      public function §5! §(param1:§7!,§, param2:§&!;§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      override public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §>G§
      {
         if(param1.indexOf("MISC_EASTER_EGG_") == 0)
         {
            return null;
         }
         return super.addObject(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function objectCollision(param1:§>G§, param2:§>G§) : Boolean
      {
         var _loc3_:get = null;
         if((_loc3_ = param1 as get) && _loc3_.§5@§)
         {
            if(!_loc3_.§`;§)
            {
               _loc3_.§`t§().SetAngularVelocity((1 - Math.pow(1 - Math.random(),5)) * 4 - 2);
            }
            _loc3_.§`;§ = true;
            return false;
         }
         if((_loc3_ = param2 as get) && _loc3_.§5@§)
         {
            if(!_loc3_.§`;§)
            {
               _loc3_.§`t§().SetAngularVelocity((1 - Math.pow(1 - Math.random(),5)) * 4 - 2);
            }
            _loc3_.§`;§ = true;
            return false;
         }
         return super.objectCollision(param1,param2);
      }
      
      override protected function checkExplosions(param1:§>G§) : void
      {
         if(param1 is get)
         {
            this.addExplosions(§5b§.§4!D§,param1.§`t§().GetPosition().x,param1.§`t§().GetPosition().y);
         }
         else
         {
            super.checkExplosions(param1);
         }
      }
      
      override public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         §+!%§.push(§5b§.createExplosion(param1,param2,param3));
         §6I§.§ ;§("TntExplosions","ChannelExplosions");
      }
   }
}
