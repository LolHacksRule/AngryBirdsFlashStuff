package §[O§
{
   import §,!Q§.Sprite;
   import §,M§.§%C§;
   import §,M§.§,!;§;
   import §1v§.§,e§;
   import §4A§.§&_§;
   import §4U§.b2World;
   import §7m§.§7I§;
   import §9C§.§28§;
   import §9C§.§;,§;
   
   public class §#a§ extends §28§
   {
       
      
      public function §#a§(param1:§;,§, param2:Sprite, param3:b2World, param4:§&_§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function addDestructionParticles(param1:§%C§) : void
      {
         try
         {
            §7I§.§-w§(§!I§.substr(14,6) + "_1");
         }
         catch(e:Error)
         {
         }
         this.§1w§(param1,1);
         this.§!g§(param1);
      }
      
      private function §1! §(param1:§%C§) : void
      {
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:int = 0;
         var _loc3_:int = 20;
         var _loc4_:Number = 90;
         var _loc11_:int = parseInt(§!I§.substring(19));
         _loc3_ *= _loc11_;
         var _loc12_:int = 0;
         while(_loc12_ < _loc3_)
         {
            _loc7_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc8_ = 20 * Math.cos(_loc7_) * Math.random();
            _loc9_ = -20 * Math.sin(_loc7_) * Math.random();
            _loc10_ = Math.random() * 2 + 3;
            param1.§<%§("PARTICLE_COLLECT_DRUM_STAR_" + _loc10_,§%C§.§5l§,§,e§.§;t§,§@!?§().GetWorldCenter().x,§@!?§().GetWorldCenter().y,2000 * (_loc3_ * 0.5),"",§,!;§.§%!$§(§!I§),_loc8_,_loc9_,-20,_loc9_ * 20,0.5 + Math.random());
            _loc12_++;
         }
      }
      
      private function §!g§(param1:§%C§) : void
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
            param1.§<%§("PARTICLE_COLLECT_DRUM_STAR_" + _loc11_,§%C§.§5l§,§,!;§.§7s§,§@!?§().GetPosition().x,§@!?§().GetPosition().y,400 + 700 * Math.random(),"",§,!;§.§%!$§(§!I§),_loc9_,_loc10_,10,_loc10_ * 20,0.5 + Math.random() * 1);
            _loc7_++;
         }
      }
      
      private function §1w§(param1:§%C§, param2:Number) : void
      {
         var _loc3_:§,!;§ = param1.§<%§("PARTICLE_SOUNDWAVE_COKE",§%C§.§1D§,§,e§.§=U§,§@!?§().GetPosition().x,§@!?§().GetPosition().y,600,"",§,!;§.§%!$§(§!I§),0,0,0,0,param2 * 0.5);
      }
      
      private function § !$§(param1:§%C§) : void
      {
         param1.§<%§(§,!;§.§>!H§,§%C§.§5l§,§,!;§.§`e§,§@!?§().GetPosition().x,§@!?§().GetPosition().y - 1,2000,"",§,!;§.§8+§);
      }
   }
}
