package §2!G§
{
   import §&!9§.Sprite;
   import §&F§.§>!2§;
   import §+x§.§-6§;
   import §9y§.§ @§;
   import §<!L§.b2World;
   import §?=§.§&j§;
   import §?=§.§8S§;
   import §^!$§.§8!U§;
   import §^!$§.§;!D§;
   
   public class §while§ extends §8!U§
   {
       
      
      public function §while§(param1:§;!D§, param2:Sprite, param3:b2World, param4:§>!2§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function addDestructionParticles(param1:§&j§) : void
      {
         try
         {
            §-6§.§,!0§(§=^§.substr(14,6) + "_1");
         }
         catch(e:Error)
         {
         }
         this.§>!%§(param1,1);
         this.§;S§(param1);
      }
      
      private function §83§(param1:§&j§) : void
      {
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:int = 0;
         var _loc3_:int = 20;
         var _loc4_:Number = 90;
         var _loc11_:int = parseInt(§=^§.substring(19));
         _loc3_ *= _loc11_;
         var _loc12_:int = 0;
         while(_loc12_ < _loc3_)
         {
            _loc7_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc8_ = 20 * Math.cos(_loc7_) * Math.random();
            _loc9_ = -20 * Math.sin(_loc7_) * Math.random();
            _loc10_ = Math.random() * 2 + 3;
            param1.§<§("PARTICLE_COLLECT_DRUM_STAR_" + _loc10_,§&j§.§`W§,§ @§.§1!6§,§#!!§().GetWorldCenter().x,§#!!§().GetWorldCenter().y,2000 * (_loc3_ * 0.5),"",§8S§.§"0§(§=^§),_loc8_,_loc9_,-20,_loc9_ * 20,0.5 + Math.random());
            _loc12_++;
         }
      }
      
      private function §;S§(param1:§&j§) : void
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
            param1.§<§("PARTICLE_COLLECT_DRUM_STAR_" + _loc11_,§&j§.§`W§,§8S§.§[!C§,§#!!§().GetPosition().x,§#!!§().GetPosition().y,400 + 700 * Math.random(),"",§8S§.§"0§(§=^§),_loc9_,_loc10_,10,_loc10_ * 20,0.5 + Math.random() * 1);
            _loc7_++;
         }
      }
      
      private function §>!%§(param1:§&j§, param2:Number) : void
      {
         var _loc3_:§8S§ = param1.§<§("PARTICLE_SOUNDWAVE_COKE",§&j§.§"!5§,§ @§.§?`§,§#!!§().GetPosition().x,§#!!§().GetPosition().y,600,"",§8S§.§"0§(§=^§),0,0,0,0,param2 * 0.5);
      }
      
      private function §?!_§(param1:§&j§) : void
      {
         param1.§<§(§8S§.§94§,§&j§.§`W§,§8S§.§?m§,§#!!§().GetPosition().x,§#!!§().GetPosition().y - 1,2000,"",§8S§.§95§);
      }
   }
}
