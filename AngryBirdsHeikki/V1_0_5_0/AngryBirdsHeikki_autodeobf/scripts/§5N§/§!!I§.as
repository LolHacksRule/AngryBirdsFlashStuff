package §5N§
{
   import §+D§.§">§;
   import §+D§.§5!P§;
   import §+D§.§5@§;
   import §2!Q§.§'[§;
   import §3-§.§1L§;
   import §=X§.§"!6§;
   import §>!_§.§2V§;
   import §?!B§.§[,§;
   import §?!B§.§^!U§;
   import §[$§.§=K§;
   import §[=§.Sprite;
   
   public class §!!I§ extends §5@§
   {
      
      public static const §^!&§:Number = 1.1;
      
      public static const §-§:Number = 1;
       
      
      private var §`n§:Boolean = false;
      
      public function §!!I§(param1:§5!P§, param2:§"!6§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      override protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:int = -1) : §">§
      {
         var _loc5_:§;[§ = new §;[§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            §>_§.push(_loc5_);
         }
         else
         {
            §>_§.splice(param4,0,_loc5_);
         }
         §-!5§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      private function static(param1:Number) : §">§
      {
         var _loc2_:§">§ = null;
         _loc2_ = §>_§[§'!V§];
         if(_loc2_.§>F§ < 1)
         {
            _loc2_.§>F§ = 1;
         }
         _loc2_.scale = param1;
         _loc2_.sprite.scaleX = _loc2_.scale;
         _loc2_.sprite.scaleY = _loc2_.scale;
         return _loc2_;
      }
      
      private function §8!,§(param1:§">§, param2:Number) : void
      {
         param1.§;Z§ = §5@§.BIRD_LAUNCH_FORCE * param2;
      }
      
      public function §+!N§() : void
      {
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc1_:§">§ = §>_§[§'!V§];
         this.§`!@§(_loc1_);
         §'[§.§"]§("Bird_Helmet_Appear","ChannelExplosions");
         var _loc2_:Vector.<§">§> = §1L§.§"f§.slingshot.§>_§;
         var _loc3_:int = 5 + Math.random() * 10;
         var _loc6_:int = 0;
         while(_loc6_ < _loc3_)
         {
            _loc7_ = Math.random() * (Math.PI * 2);
            _loc8_ = 0.5 * 8 + 8 * (Math.random() * 0.5);
            §1L§.§"f§.particles.addParticle(§^!U§.§5!L§,§[,§.§'k§,§^!U§.§&6§,§1L§.§"f§.slingshot.§<O§,§1L§.§"f§.slingshot.§92§,1250,"",§^!U§.§1!2§(_loc2_[0].name),_loc8_ * Math.cos(_loc7_) * 1,-_loc8_ * Math.sin(_loc7_) * 1,5,_loc8_ * 20,Math.sqrt(1));
            _loc6_++;
         }
         if(_loc1_)
         {
            (_loc1_ as §;[§).§>4§();
         }
         §#k§(§5@§.STATE_BIRD_IS_READY);
      }
      
      public function §&<§() : void
      {
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         §&!Z§ = -1.7;
         this.§`n§ = true;
         §1L§.§"f§.camera.§ !Z§(§=K§.§9!U§);
         §1L§.§"f§.camera.manualScale = §1L§.§"f§.camera.§?$§;
         var _loc1_:§">§ = §2!^§("BIRD_REDBIG_HEIKKI",§<O§ + 0.3,§92§ - 0.7);
         this.§8!,§(_loc1_,§^!&§);
         this.§`!@§(_loc1_);
         §'[§.§"]§("Bird_Black_Special1","ChannelExplosions");
         var _loc2_:Vector.<§">§> = §1L§.§"f§.slingshot.§>_§;
         var _loc3_:int = 5 + Math.random() * 10;
         var _loc6_:int = 0;
         while(_loc6_ < _loc3_)
         {
            _loc7_ = Math.random() * (Math.PI * 2);
            _loc8_ = 0.5 * 8 + 8 * (Math.random() * 0.5);
            §1L§.§"f§.particles.addParticle(§^!U§.§5!L§,§[,§.§'k§,§^!U§.§&6§,§1L§.§"f§.slingshot.§<O§,§1L§.§"f§.slingshot.§92§,1250,"",§^!U§.§1!2§(_loc1_.name),_loc8_ * Math.cos(_loc7_) * 1,-_loc8_ * Math.sin(_loc7_) * 1,5,_loc8_ * 20,Math.sqrt(1));
            _loc6_++;
         }
      }
      
      public function §6^§() : §2V§
      {
         var _loc1_:§2V§ = null;
         if(this.§`n§)
         {
            return _loc1_;
         }
         this.§&<§();
         var _loc2_:§">§ = §>_§[§'!V§];
         if(§>_§.length <= 1 && _loc2_)
         {
            _loc1_ = (_loc2_ as §;[§).§;E§(_loc2_.§9!Z§,_loc2_.§7!]§,false);
         }
         else if(_loc2_)
         {
            _loc2_.§=!U§();
            _loc1_ = (_loc2_ as §;[§).§;E§(_loc2_.§9!Z§,_loc2_.§7!]§);
         }
         §#k§(§]K§);
         return _loc1_;
      }
      
      public function §=0§() : void
      {
         var _loc1_:§">§ = null;
         if(§>_§.length > 0)
         {
            for each(_loc1_ in §>_§)
            {
               if(_loc1_.name == "BIRD_REDBIG_HEIKKI")
               {
                  this.§`!@§(_loc1_);
                  §?E§(§>_§.indexOf(_loc1_),false);
                  §'[§.§"]§("Bird_Black_Special1","ChannelExplosions");
               }
            }
         }
      }
      
      private function §`!@§(param1:§">§) : void
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
            §^!4§.particles.addParticle(§^!U§.§^!#§,§[,§.§'k§,§^!U§.§&6§,param1.x,param1.y,500,"",0,0,0,0,0,2,12,false);
            _loc5_++;
         }
      }
      
      public function get §else§() : Boolean
      {
         return this.§`n§;
      }
   }
}
