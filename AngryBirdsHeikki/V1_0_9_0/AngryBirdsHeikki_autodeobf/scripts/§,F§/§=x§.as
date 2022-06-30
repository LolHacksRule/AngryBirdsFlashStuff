package §,F§
{
   import § d§.§'!"§;
   import § d§.§3§;
   import § d§.§=!,§;
   import §"§.§"@§;
   import §"§.§2z§;
   import §#!f§.Sprite;
   import §%i§.§#`§;
   import §8! §.§1_§;
   import §8!-§.§1R§;
   import §>!F§.§9!Z§;
   import §@!H§.§-f§;
   
   public class §=x§ extends §3§
   {
      
      public static const §@!G§:Number = 1.1;
      
      public static const §1!f§:Number = 1;
       
      
      private var §0n§:Boolean = false;
      
      public function §=x§(param1:§'!"§, param2:§1_§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      override protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:int = -1) : §=!,§
      {
         var _loc5_:§]9§ = new §]9§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            §3!R§.push(_loc5_);
         }
         else
         {
            §3!R§.splice(param4,0,_loc5_);
         }
         §>'§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      private function §&m§(param1:Number) : §=!,§
      {
         var _loc2_:§=!,§ = null;
         _loc2_ = §3!R§[§^L§];
         if(_loc2_.§`!W§ < 1)
         {
            _loc2_.§`!W§ = 1;
         }
         _loc2_.scale = param1;
         _loc2_.sprite.scaleX = _loc2_.scale;
         _loc2_.sprite.scaleY = _loc2_.scale;
         return _loc2_;
      }
      
      private function § F§(param1:§=!,§, param2:Number) : void
      {
         param1.§^!O§ = §3§.BIRD_LAUNCH_FORCE * param2;
      }
      
      public function §<!f§() : void
      {
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc1_:§=!,§ = §3!R§[§^L§];
         this.§%!`§(_loc1_);
         §#`§.§2o§("Bird_Helmet_Appear","ChannelExplosions");
         var _loc2_:Vector.<§=!,§> = §9!Z§.§5!$§.slingshot.§3!R§;
         var _loc3_:int = 5 + Math.random() * 10;
         var _loc6_:int = 0;
         while(_loc6_ < _loc3_)
         {
            _loc7_ = Math.random() * (Math.PI * 2);
            _loc8_ = 0.5 * 8 + 8 * (Math.random() * 0.5);
            §9!Z§.§5!$§.particles.addParticle(§2z§.§?^§,§"@§.§6^§,§2z§.§<A§,§9!Z§.§5!$§.slingshot.§`B§,§9!Z§.§5!$§.slingshot.§,!9§,1250,"",§2z§.§?1§(_loc2_[0].name),_loc8_ * Math.cos(_loc7_) * 1,-_loc8_ * Math.sin(_loc7_) * 1,5,_loc8_ * 20,Math.sqrt(1));
            _loc6_++;
         }
         if(_loc1_)
         {
            (_loc1_ as §]9§).§-!?§();
         }
         §;!-§(§3§.STATE_BIRD_IS_READY);
      }
      
      public function §#t§() : void
      {
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         § "§ = -1.7;
         this.§0n§ = true;
         §9!Z§.§5!$§.camera.§2!R§(§-f§.§@!3§);
         §9!Z§.§5!$§.camera.manualScale = §9!Z§.§5!$§.camera.§%!N§;
         var _loc1_:§=!,§ = §8!5§("BIRD_REDBIG_HEIKKI",§`B§ + 0.3,§,!9§ - 0.7);
         this.§ F§(_loc1_,§@!G§);
         this.§%!`§(_loc1_);
         §#`§.§2o§("Bird_Black_Special1","ChannelExplosions");
         var _loc2_:Vector.<§=!,§> = §9!Z§.§5!$§.slingshot.§3!R§;
         var _loc3_:int = 5 + Math.random() * 10;
         var _loc6_:int = 0;
         while(_loc6_ < _loc3_)
         {
            _loc7_ = Math.random() * (Math.PI * 2);
            _loc8_ = 0.5 * 8 + 8 * (Math.random() * 0.5);
            §9!Z§.§5!$§.particles.addParticle(§2z§.§?^§,§"@§.§6^§,§2z§.§<A§,§9!Z§.§5!$§.slingshot.§`B§,§9!Z§.§5!$§.slingshot.§,!9§,1250,"",§2z§.§?1§(_loc1_.name),_loc8_ * Math.cos(_loc7_) * 1,-_loc8_ * Math.sin(_loc7_) * 1,5,_loc8_ * 20,Math.sqrt(1));
            _loc6_++;
         }
      }
      
      public function §]+§() : §1R§
      {
         var _loc1_:§1R§ = null;
         if(this.§0n§)
         {
            return _loc1_;
         }
         this.§#t§();
         var _loc2_:§=!,§ = §3!R§[§^L§];
         if(§3!R§.length <= 1 && _loc2_)
         {
            _loc1_ = (_loc2_ as §]9§).§],§(_loc2_.§,!,§,_loc2_.§6q§,false);
         }
         else if(_loc2_)
         {
            _loc2_.§8L§();
            _loc1_ = (_loc2_ as §]9§).§],§(_loc2_.§,!,§,_loc2_.§6q§);
         }
         §;!-§(§;!§);
         return _loc1_;
      }
      
      public function §1!%§() : void
      {
         var _loc1_:§=!,§ = null;
         if(§3!R§.length > 0)
         {
            for each(_loc1_ in §3!R§)
            {
               if(_loc1_.name == "BIRD_REDBIG_HEIKKI")
               {
                  this.§%!`§(_loc1_);
                  §4^§(§3!R§.indexOf(_loc1_),false);
                  §#`§.§2o§("Bird_Black_Special1","ChannelExplosions");
               }
            }
         }
      }
      
      private function §%!`§(param1:§=!,§) : void
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
            §"2§.particles.addParticle(§2z§.§'f§,§"@§.§6^§,§2z§.§<A§,param1.x,param1.y,500,"",0,0,0,0,0,2,12,false);
            _loc5_++;
         }
      }
      
      public function get §7!Y§() : Boolean
      {
         return this.§0n§;
      }
   }
}
