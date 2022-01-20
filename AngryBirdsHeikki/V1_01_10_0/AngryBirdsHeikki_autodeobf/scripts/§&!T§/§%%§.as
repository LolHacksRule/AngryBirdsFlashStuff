package §&!T§
{
   import §!E§.§!U§;
   import §!E§.§?F§;
   import §"!I§.§9§;
   import §"!I§.§94§;
   import §"!I§.§^!2§;
   import §2Y§.Sprite;
   import §5!1§.§&[§;
   import §9!4§.§95§;
   import §9b§.§"!S§;
   import §^!0§.§&M§;
   import §^!5§.§&!E§;
   
   public class §%%§ extends §9§
   {
      
      public static const §=o§:Number = 1.1;
      
      public static const §;!1§:Number = 1;
       
      
      private var §[!Y§:Boolean = false;
      
      public function §%%§(param1:§^!2§, param2:§&!E§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      override protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:int = -1) : §94§
      {
         var _loc5_:§^"§ = new §^"§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            §2!A§.push(_loc5_);
         }
         else
         {
            §2!A§.splice(param4,0,_loc5_);
         }
         §=U§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      private function §[_§(param1:Number) : §94§
      {
         var _loc2_:§94§ = null;
         _loc2_ = §2!A§[§3!@§];
         if(_loc2_.§+!^§ < 1)
         {
            _loc2_.§+!^§ = 1;
         }
         _loc2_.scale = param1;
         _loc2_.sprite.scaleX = _loc2_.scale;
         _loc2_.sprite.scaleY = _loc2_.scale;
         return _loc2_;
      }
      
      private function §"v§(param1:§94§, param2:Number) : void
      {
         param1.§;1§ = §9§.BIRD_LAUNCH_FORCE * param2;
      }
      
      public function §9!]§() : void
      {
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc1_:§94§ = §2!A§[§3!@§];
         this.§<K§(_loc1_);
         §&M§.§6!#§("Bird_Helmet_Appear","ChannelExplosions");
         var _loc2_:Vector.<§94§> = §"!S§.§-!7§.slingshot.§2!A§;
         var _loc3_:int = 5 + Math.random() * 10;
         var _loc6_:int = 0;
         while(_loc6_ < _loc3_)
         {
            _loc7_ = Math.random() * (Math.PI * 2);
            _loc8_ = 0.5 * 8 + 8 * (Math.random() * 0.5);
            §"!S§.§-!7§.particles.addParticle(§!U§.§&§,§?F§.§<G§,§!U§.§"R§,§"!S§.§-!7§.slingshot.§"!d§,§"!S§.§-!7§.slingshot.§,!W§,1250,"",§!U§.§9Z§(_loc2_[0].name),_loc8_ * Math.cos(_loc7_) * 1,-_loc8_ * Math.sin(_loc7_) * 1,5,_loc8_ * 20,Math.sqrt(1));
            _loc6_++;
         }
         if(_loc1_)
         {
            (_loc1_ as §^"§).§;b§();
         }
         §%&§(§9§.STATE_BIRD_IS_READY);
      }
      
      public function §+!F§() : void
      {
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         §5b§ = -1.7;
         this.§[!Y§ = true;
         §"!S§.§-!7§.camera.§#M§(§95§.§+]§);
         §"!S§.§-!7§.camera.manualScale = §"!S§.§-!7§.camera.§'`§;
         var _loc1_:§94§ = §+!G§("BIRD_REDBIG_HEIKKI",§"!d§ + 0.3,§,!W§ - 0.7);
         this.§"v§(_loc1_,§=o§);
         this.§<K§(_loc1_);
         §&M§.§6!#§("Bird_Black_Special1","ChannelExplosions");
         var _loc2_:Vector.<§94§> = §"!S§.§-!7§.slingshot.§2!A§;
         var _loc3_:int = 5 + Math.random() * 10;
         var _loc6_:int = 0;
         while(_loc6_ < _loc3_)
         {
            _loc7_ = Math.random() * (Math.PI * 2);
            _loc8_ = 0.5 * 8 + 8 * (Math.random() * 0.5);
            §"!S§.§-!7§.particles.addParticle(§!U§.§&§,§?F§.§<G§,§!U§.§"R§,§"!S§.§-!7§.slingshot.§"!d§,§"!S§.§-!7§.slingshot.§,!W§,1250,"",§!U§.§9Z§(_loc1_.name),_loc8_ * Math.cos(_loc7_) * 1,-_loc8_ * Math.sin(_loc7_) * 1,5,_loc8_ * 20,Math.sqrt(1));
            _loc6_++;
         }
      }
      
      public function §,!+§() : §&[§
      {
         var _loc1_:§&[§ = null;
         if(this.§[!Y§)
         {
            return _loc1_;
         }
         this.§+!F§();
         var _loc2_:§94§ = §2!A§[§3!@§];
         if(§2!A§.length <= 1 && _loc2_)
         {
            _loc1_ = (_loc2_ as §^"§).§;o§(_loc2_.§6%§,_loc2_.§8_§,false);
         }
         else if(_loc2_)
         {
            _loc2_.§<"§();
            _loc1_ = (_loc2_ as §^"§).§;o§(_loc2_.§6%§,_loc2_.§8_§);
         }
         §%&§(§8!M§);
         return _loc1_;
      }
      
      public function §'E§() : void
      {
         var _loc1_:§94§ = null;
         if(§2!A§.length > 0)
         {
            for each(_loc1_ in §2!A§)
            {
               if(_loc1_.name == "BIRD_REDBIG_HEIKKI")
               {
                  this.§<K§(_loc1_);
                  §%!e§(§2!A§.indexOf(_loc1_),false);
                  §&M§.§6!#§("Bird_Black_Special1","ChannelExplosions");
               }
            }
         }
      }
      
      private function §<K§(param1:§94§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = 1;
         var _loc4_:Number = 90;
         _loc3_ *= 1;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = 20 * Math.cos(_loc6_) * Math.random();
            _loc8_ = -20 * Math.sin(_loc6_) * Math.random();
            §=!V§.particles.addParticle(§!U§.§-!_§,§?F§.§<G§,§!U§.§"R§,param1.x,param1.y,500,"",0,0,0,0,0,2,12,false);
            _loc5_++;
         }
      }
      
      public function get §[!b§() : Boolean
      {
         return this.§[!Y§;
      }
   }
}
