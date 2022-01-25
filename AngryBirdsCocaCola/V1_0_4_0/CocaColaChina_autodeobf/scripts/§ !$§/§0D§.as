package § !$§
{
   import § !K§.Sprite;
   import §1v§.§,e§;
   import §3f§.b2World;
   import §4A§.§&_§;
   import §7I§.§<!0§;
   import §;+§.§&h§;
   import §;+§.§+!?§;
   import §;G§.§1D§;
   import §;G§.§;Z§;
   
   public class §0D§ extends §&h§
   {
       
      
      public function §0D§(param1:§+!?§, param2:Sprite, param3:b2World, param4:§&_§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function addDestructionParticles(param1:§1D§) : void
      {
         try
         {
            §<!0§.§"!M§(§1T§.substr(14,6) + "_1");
         }
         catch(e:Error)
         {
         }
         this.§<!!§(param1,1);
         this.§?!]§(param1);
      }
      
      private function §=3§(param1:§1D§) : void
      {
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:int = 0;
         var _loc3_:int = 20;
         var _loc4_:Number = 90;
         var _loc11_:int = parseInt(§1T§.substring(19));
         _loc3_ *= _loc11_;
         var _loc12_:int = 0;
         while(_loc12_ < _loc3_)
         {
            _loc7_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc8_ = 20 * Math.cos(_loc7_) * Math.random();
            _loc9_ = -20 * Math.sin(_loc7_) * Math.random();
            _loc10_ = Math.random() * 2 + 3;
            param1.§#!Q§("PARTICLE_COLLECT_DRUM_STAR_" + _loc10_,§1D§.§%d§,§,e§.§;t§,§1!d§().GetWorldCenter().x,§1!d§().GetWorldCenter().y,2000 * (_loc3_ * 0.5),"",§;Z§.§"!a§(§1T§),_loc8_,_loc9_,-20,_loc9_ * 20,0.5 + Math.random());
            _loc12_++;
         }
      }
      
      private function §?!]§(param1:§1D§) : void
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
            param1.§#!Q§("PARTICLE_COLLECT_DRUM_STAR_" + _loc11_,§1D§.§%d§,§;Z§.§>!H§,§1!d§().GetPosition().x,§1!d§().GetPosition().y,400 + 700 * Math.random(),"",§;Z§.§"!a§(§1T§),_loc9_,_loc10_,10,_loc10_ * 20,0.5 + Math.random() * 1);
            _loc7_++;
         }
      }
      
      private function §<!!§(param1:§1D§, param2:Number) : void
      {
         var _loc3_:§;Z§ = param1.§#!Q§("PARTICLE_SOUNDWAVE_COKE",§1D§.§<!L§,§,e§.§=U§,§1!d§().GetPosition().x,§1!d§().GetPosition().y,600,"",§;Z§.§"!a§(§1T§),0,0,0,0,param2 * 0.5);
      }
      
      private function §[b§(param1:§1D§) : void
      {
         param1.§#!Q§(§;Z§.§0C§,§1D§.§%d§,§;Z§.§=!c§,§1!d§().GetPosition().x,§1!d§().GetPosition().y - 1,2000,"",§;Z§.§^]§);
      }
   }
}
