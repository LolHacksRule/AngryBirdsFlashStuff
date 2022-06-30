package §!I§
{
   import § ![§.§#!B§;
   import §,!A§.§-q§;
   import §,!A§.§0i§;
   import §1!d§.§!![§;
   import §6!;§.Sprite;
   import §7e§.§8!P§;
   import §8O§.§&#§;
   import §9!'§.§0!%§;
   import §9!'§.§91§;
   import §9!'§.§@!U§;
   import §^f§.§<q§;
   
   public class §8!!§ extends §@!U§
   {
      
      public static const §9Q§:Number = 1.1;
      
      public static const §3P§:Number = 1;
       
      
      private var §9V§:Boolean = false;
      
      public function §8!!§(param1:§0!%§, param2:§8!P§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      override protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:int = -1) : §91§
      {
         var _loc5_:§]!A§ = new §]!A§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            §5&§.push(_loc5_);
         }
         else
         {
            §5&§.splice(param4,0,_loc5_);
         }
         §-_§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      private function §0!#§(param1:Number) : §91§
      {
         var _loc2_:§91§ = null;
         _loc2_ = §5&§[§6x§];
         if(_loc2_.§7!E§ < 1)
         {
            _loc2_.§7!E§ = 1;
         }
         _loc2_.scale = param1;
         _loc2_.sprite.scaleX = _loc2_.scale;
         _loc2_.sprite.scaleY = _loc2_.scale;
         return _loc2_;
      }
      
      private function §[!B§(param1:§91§, param2:Number) : void
      {
         param1.§#!@§ = §@!U§.BIRD_LAUNCH_FORCE * param2;
      }
      
      public function §&-§() : void
      {
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc1_:§91§ = §5&§[§6x§];
         this.§]j§(_loc1_);
         §<q§.§5!S§("Bird_Helmet_Appear","ChannelExplosions");
         var _loc2_:Vector.<§91§> = §&#§.§3!D§.slingshot.§5&§;
         var _loc3_:int = 5 + Math.random() * 10;
         var _loc6_:int = 0;
         while(_loc6_ < _loc3_)
         {
            _loc7_ = Math.random() * (Math.PI * 2);
            _loc8_ = 0.5 * 8 + 8 * (Math.random() * 0.5);
            §&#§.§3!D§.particles.addParticle(§-q§.§]!^§,§0i§.§>E§,§-q§.§5[§,§&#§.§3!D§.slingshot.§5T§,§&#§.§3!D§.slingshot.§![§,1250,"",§-q§.§]8§(_loc2_[0].name),_loc8_ * Math.cos(_loc7_) * 1,-_loc8_ * Math.sin(_loc7_) * 1,5,_loc8_ * 20,Math.sqrt(1));
            _loc6_++;
         }
         if(_loc1_)
         {
            (_loc1_ as §]!A§).§'!E§();
         }
         §#q§(§@!U§.STATE_BIRD_IS_READY);
      }
      
      public function §7#§() : void
      {
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         §1S§ = -1.7;
         this.§9V§ = true;
         §&#§.§3!D§.camera.§^$§(§#!B§.§ !Y§);
         §&#§.§3!D§.camera.manualScale = §&#§.§3!D§.camera.§+8§;
         var _loc1_:§91§ = §-6§("BIRD_REDBIG_HEIKKI",§5T§ + 0.3,§![§ - 0.7);
         this.§[!B§(_loc1_,§9Q§);
         this.§]j§(_loc1_);
         §<q§.§5!S§("Bird_Black_Special1","ChannelExplosions");
         var _loc2_:Vector.<§91§> = §&#§.§3!D§.slingshot.§5&§;
         var _loc3_:int = 5 + Math.random() * 10;
         var _loc6_:int = 0;
         while(_loc6_ < _loc3_)
         {
            _loc7_ = Math.random() * (Math.PI * 2);
            _loc8_ = 0.5 * 8 + 8 * (Math.random() * 0.5);
            §&#§.§3!D§.particles.addParticle(§-q§.§]!^§,§0i§.§>E§,§-q§.§5[§,§&#§.§3!D§.slingshot.§5T§,§&#§.§3!D§.slingshot.§![§,1250,"",§-q§.§]8§(_loc1_.name),_loc8_ * Math.cos(_loc7_) * 1,-_loc8_ * Math.sin(_loc7_) * 1,5,_loc8_ * 20,Math.sqrt(1));
            _loc6_++;
         }
      }
      
      public function §;!A§() : §!![§
      {
         var _loc1_:§!![§ = null;
         if(this.§9V§)
         {
            return _loc1_;
         }
         this.§7#§();
         var _loc2_:§91§ = §5&§[§6x§];
         if(§5&§.length <= 1 && _loc2_)
         {
            _loc1_ = (_loc2_ as §]!A§).§%#§(_loc2_.§"w§,_loc2_.§<z§,false);
         }
         else if(_loc2_)
         {
            _loc2_.§5%§();
            _loc1_ = (_loc2_ as §]!A§).§%#§(_loc2_.§"w§,_loc2_.§<z§);
         }
         §#q§(§3!9§);
         return _loc1_;
      }
      
      public function §!_§() : void
      {
         var _loc1_:§91§ = null;
         if(§5&§.length > 0)
         {
            for each(_loc1_ in §5&§)
            {
               if(_loc1_.name == "BIRD_REDBIG_HEIKKI")
               {
                  this.§]j§(_loc1_);
                  §!!K§(§5&§.indexOf(_loc1_),false);
                  §<q§.§5!S§("Bird_Black_Special1","ChannelExplosions");
               }
            }
         }
      }
      
      private function §]j§(param1:§91§) : void
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
            §]B§.particles.addParticle(§-q§.§-!L§,§0i§.§>E§,§-q§.§5[§,param1.x,param1.y,500,"",0,0,0,0,0,2,12,false);
            _loc5_++;
         }
      }
      
      public function get §<!3§() : Boolean
      {
         return this.§9V§;
      }
   }
}
