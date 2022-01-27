package
{
   import §,J§.§74§;
   import §-!1§.§=!_§;
   import §6-§.§%1§;
   import §7h§.§7!"§;
   import §<!-§.Sprite;
   import §>!Z§.§+!Z§;
   import §>!Z§.§`!S§;
   import §?!P§.§@@§;
   import §^!7§.§]!N§;
   import §^!7§.§]H§;
   import §^!7§.§^A§;
   
   public class §!E§ extends §]H§
   {
      
      public static const §1!G§:Number = 1.1;
      
      public static const §`!$§:Number = 1;
       
      
      private var §"Z§:Boolean = false;
      
      public function §!E§(param1:§^A§, param2:§74§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      override protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:int = -1) : §]!N§
      {
         var _loc5_:§3!'§ = new §3!'§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            §&!9§.push(_loc5_);
         }
         else
         {
            §&!9§.splice(param4,0,_loc5_);
         }
         §^j§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      private function §!!'§(param1:Number) : §]!N§
      {
         var _loc2_:§]!N§ = null;
         _loc2_ = §&!9§[§`!E§];
         if(_loc2_.§5q§ < 1)
         {
            _loc2_.§5q§ = 1;
         }
         _loc2_.scale = param1;
         _loc2_.sprite.scaleX = _loc2_.scale;
         _loc2_.sprite.scaleY = _loc2_.scale;
         return _loc2_;
      }
      
      private function §#1§(param1:§]!N§, param2:Number) : void
      {
         param1.§^!A§ = §]H§.BIRD_LAUNCH_FORCE * param2;
      }
      
      public function §4&§() : void
      {
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc1_:§]!N§ = §&!9§[§`!E§];
         this.§`!4§(_loc1_);
         §7!"§.§#W§("Bird_Helmet_Appear","ChannelExplosions");
         var _loc2_:Vector.<§]!N§> = §@@§.§ !8§.slingshot.§&!9§;
         var _loc3_:int = 5 + Math.random() * 10;
         var _loc6_:int = 0;
         while(_loc6_ < _loc3_)
         {
            _loc7_ = Math.random() * (Math.PI * 2);
            _loc8_ = 0.5 * 8 + 8 * (Math.random() * 0.5);
            §@@§.§ !8§.particles.addParticle(§+!Z§.§-!+§,§`!S§.§3!_§,§+!Z§.§76§,§@@§.§ !8§.slingshot.§-!c§,§@@§.§ !8§.slingshot.§3![§,1250,"",§+!Z§.§function§(_loc2_[0].name),_loc8_ * Math.cos(_loc7_) * 1,-_loc8_ * Math.sin(_loc7_) * 1,5,_loc8_ * 20,Math.sqrt(1));
            _loc6_++;
         }
         if(_loc1_)
         {
            (_loc1_ as §3!'§).§6l§();
         }
         §,^§(§]H§.STATE_BIRD_IS_READY);
      }
      
      public function §6t§() : void
      {
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         §-8§ = -1.7;
         this.§"Z§ = true;
         §@@§.§ !8§.camera.§8!T§(§=!_§.§^9§);
         §@@§.§ !8§.camera.manualScale = §@@§.§ !8§.camera.§ if§;
         var _loc1_:§]!N§ = §#r§("BIRD_REDBIG_HEIKKI",§-!c§ + 0.3,§3![§ - 0.7);
         this.§#1§(_loc1_,§1!G§);
         this.§`!4§(_loc1_);
         §7!"§.§#W§("Bird_Black_Special1","ChannelExplosions");
         var _loc2_:Vector.<§]!N§> = §@@§.§ !8§.slingshot.§&!9§;
         var _loc3_:int = 5 + Math.random() * 10;
         var _loc6_:int = 0;
         while(_loc6_ < _loc3_)
         {
            _loc7_ = Math.random() * (Math.PI * 2);
            _loc8_ = 0.5 * 8 + 8 * (Math.random() * 0.5);
            §@@§.§ !8§.particles.addParticle(§+!Z§.§-!+§,§`!S§.§3!_§,§+!Z§.§76§,§@@§.§ !8§.slingshot.§-!c§,§@@§.§ !8§.slingshot.§3![§,1250,"",§+!Z§.§function§(_loc1_.name),_loc8_ * Math.cos(_loc7_) * 1,-_loc8_ * Math.sin(_loc7_) * 1,5,_loc8_ * 20,Math.sqrt(1));
            _loc6_++;
         }
      }
      
      public function § o§() : §%1§
      {
         var _loc1_:§%1§ = null;
         if(this.§"Z§)
         {
            return _loc1_;
         }
         this.§6t§();
         var _loc2_:§]!N§ = §&!9§[§`!E§];
         if(§&!9§.length <= 1 && _loc2_)
         {
            _loc1_ = (_loc2_ as §3!'§).§@U§(_loc2_.§@§,_loc2_.§?!W§,false);
         }
         else if(_loc2_)
         {
            _loc2_.§5!4§();
            _loc1_ = (_loc2_ as §3!'§).§@U§(_loc2_.§@§,_loc2_.§?!W§);
         }
         §,^§(§8=§);
         return _loc1_;
      }
      
      public function §8!3§() : void
      {
         var _loc1_:§]!N§ = null;
         if(§&!9§.length > 0)
         {
            for each(_loc1_ in §&!9§)
            {
               if(_loc1_.name == "BIRD_REDBIG_HEIKKI")
               {
                  this.§`!4§(_loc1_);
                  §;A§(§&!9§.indexOf(_loc1_),false);
                  §7!"§.§#W§("Bird_Black_Special1","ChannelExplosions");
               }
            }
         }
      }
      
      private function §`!4§(param1:§]!N§) : void
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
            §<&§.particles.addParticle(§+!Z§.§'U§,§`!S§.§3!_§,§+!Z§.§76§,param1.x,param1.y,500,"",0,0,0,0,0,2,12,false);
            _loc5_++;
         }
      }
      
      public function get §=!P§() : Boolean
      {
         return this.§"Z§;
      }
   }
}
