package §5!b§
{
   import § !9§.§'!U§;
   import §4!O§.§ F§;
   import §4!O§.§+K§;
   import §43§.§@r§;
   import §5!?§.§>"§;
   import §;t§.Sprite;
   import §=!U§.b2World;
   import §@!>§.§<!J§;
   import §@!>§.§=!R§;
   
   public class § g§ extends § F§
   {
       
      
      public function § g§(param1:§+K§, param2:Sprite, param3:b2World, param4:§>"§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function addDestructionParticles(param1:§=!R§) : void
      {
         try
         {
            §'!U§.§ !%§(§7!0§.substr(14,6) + "_1");
         }
         catch(e:Error)
         {
         }
         this.§'!b§(param1,1);
         this.§-B§(param1);
      }
      
      private function §>!S§(param1:§=!R§) : void
      {
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:int = 0;
         var _loc3_:int = 20;
         var _loc4_:Number = 90;
         var _loc11_:int = parseInt(§7!0§.substring(19));
         _loc3_ *= _loc11_;
         var _loc12_:int = 0;
         while(_loc12_ < _loc3_)
         {
            _loc7_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc8_ = 20 * Math.cos(_loc7_) * Math.random();
            _loc9_ = -20 * Math.sin(_loc7_) * Math.random();
            _loc10_ = Math.random() * 2 + 3;
            param1.§'!"§("PARTICLE_COLLECT_DRUM_STAR_" + _loc10_,§=!R§.§4r§,§@r§.§"5§,§?!7§().GetWorldCenter().x,§?!7§().GetWorldCenter().y,2000 * (_loc3_ * 0.5),"",§<!J§.§7D§(§7!0§),_loc8_,_loc9_,-20,_loc9_ * 20,0.5 + Math.random());
            _loc12_++;
         }
      }
      
      private function §-B§(param1:§=!R§) : void
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
            param1.§'!"§("PARTICLE_COLLECT_DRUM_STAR_" + _loc11_,§=!R§.§4r§,§<!J§.§"@§,§?!7§().GetPosition().x,§?!7§().GetPosition().y,400 + 700 * Math.random(),"",§<!J§.§7D§(§7!0§),_loc9_,_loc10_,10,_loc10_ * 20,0.5 + Math.random() * 1);
            _loc7_++;
         }
      }
      
      private function §'!b§(param1:§=!R§, param2:Number) : void
      {
         var _loc3_:§<!J§ = param1.§'!"§("PARTICLE_SOUNDWAVE_COKE",§=!R§.§`!N§,§@r§.§>!Q§,§?!7§().GetPosition().x,§?!7§().GetPosition().y,600,"",§<!J§.§7D§(§7!0§),0,0,0,0,param2 * 0.5);
      }
      
      private function §#C§(param1:§=!R§) : void
      {
         param1.§'!"§(§<!J§.§0!E§,§=!R§.§4r§,§<!J§.§-E§,§?!7§().GetPosition().x,§?!7§().GetPosition().y - 1,2000,"",§<!J§.§"3§);
      }
   }
}
