package §32§
{
   import § y§.b2World;
   import §#B§.§ ! §;
   import §#B§.§<%§;
   import §-V§.§&!^§;
   import §-V§.§]s§;
   import §2!G§.§2!V§;
   import §<!$§.Sprite;
   import §=L§.§@E§;
   import §[+§.§3L§;
   
   public class §3_§ extends §<%§
   {
       
      
      public function §3_§(param1:§ ! §, param2:Sprite, param3:b2World, param4:§2!V§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function addDestructionParticles(param1:§]s§) : void
      {
         try
         {
            §@E§.§`d§(§3a§.substr(14,6) + "_1");
         }
         catch(e:Error)
         {
         }
         this.§%!?§(param1,1);
         this.§0H§(param1);
      }
      
      private function §=!V§(param1:§]s§) : void
      {
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:int = 0;
         var _loc3_:int = 20;
         var _loc4_:Number = 90;
         var _loc11_:int = parseInt(§3a§.substring(19));
         _loc3_ *= _loc11_;
         var _loc12_:int = 0;
         while(_loc12_ < _loc3_)
         {
            _loc7_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc8_ = 20 * Math.cos(_loc7_) * Math.random();
            _loc9_ = -20 * Math.sin(_loc7_) * Math.random();
            _loc10_ = Math.random() * 2 + 3;
            param1.§;!V§("PARTICLE_COLLECT_DRUM_STAR_" + _loc10_,§]s§.§0!E§,§3L§.§3f§,§4g§().GetWorldCenter().x,§4g§().GetWorldCenter().y,2000 * (_loc3_ * 0.5),"",§&!^§.§5F§(§3a§),_loc8_,_loc9_,-20,_loc9_ * 20,0.5 + Math.random());
            _loc12_++;
         }
      }
      
      private function §0H§(param1:§]s§) : void
      {
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:int = 0;
         var _loc3_:int = 70;
         var _loc4_:Number = 90;
         _loc3_ *= 1;
         var _loc7_:int = 0;
         while(_loc7_ < _loc3_)
         {
            _loc8_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc9_ = 30 * Math.cos(_loc8_) * Math.random();
            _loc10_ = -30 * Math.sin(_loc8_) * Math.random();
            _loc11_ = Math.random() * 2 + 1;
            param1.§;!V§("PARTICLE_COLLECT_DRUM_STAR_" + _loc11_,§]s§.§0!E§,§&!^§.§7!L§,§4g§().GetPosition().x,§4g§().GetPosition().y,400 + 700 * Math.random(),"",§&!^§.§5F§(§3a§),_loc9_,_loc10_,10,_loc10_ * 20,0.5 + Math.random() * 1);
            _loc7_++;
         }
      }
      
      private function §%!?§(param1:§]s§, param2:Number) : void
      {
         var _loc3_:§&!^§ = param1.§;!V§("PARTICLE_SOUNDWAVE_COKE",§]s§.§'-§,§3L§.§1!d§,§4g§().GetPosition().x,§4g§().GetPosition().y,600,"",§&!^§.§5F§(§3a§),0,0,0,0,param2 * 0.5);
      }
      
      private function §-;§(param1:§]s§) : void
      {
         param1.§;!V§(§&!^§.§`!_§,§]s§.§0!E§,§&!^§.§3T§,§4g§().GetPosition().x,§4g§().GetPosition().y - 1,2000,"",§&!^§.§%@§);
      }
   }
}
