package §+!J§
{
   import §#!T§.§&2§;
   import §#;§.§42§;
   import §0!&§.§!'§;
   import §2!D§.§&9§;
   import §2z§.§2!U§;
   import §2z§.§@!N§;
   import §2z§.§]'§;
   import §9!4§.§&l§;
   import §=!E§.Sprite;
   import §^t§.§<;§;
   import §^t§.§[I§;
   
   public class §#7§ extends §@!N§
   {
      
      public static const §4<§:Number = 1.1;
      
      public static const §3!d§:Number = 1;
       
      
      private var §!!W§:Boolean = false;
      
      public function §#7§(param1:§2!U§, param2:§!'§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      override protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:int = -1) : §]'§
      {
         var _loc5_:§&!5§ = new §&!5§(this,new Sprite(),param1,param2,param3);
         if(param4 < 0)
         {
            §6E§.push(_loc5_);
         }
         else
         {
            §6E§.splice(param4,0,_loc5_);
         }
         §,!^§.addChild(_loc5_.sprite);
         return _loc5_;
      }
      
      private function § o§(param1:Number) : §]'§
      {
         var _loc2_:§]'§ = null;
         _loc2_ = §6E§[§+Q§];
         if(_loc2_.§1s§ < 1)
         {
            _loc2_.§1s§ = 1;
         }
         _loc2_.scale = param1;
         _loc2_.sprite.scaleX = _loc2_.scale;
         _loc2_.sprite.scaleY = _loc2_.scale;
         return _loc2_;
      }
      
      private function §7I§(param1:§]'§, param2:Number) : void
      {
         param1.§2!8§ = §@!N§.BIRD_LAUNCH_FORCE * param2;
      }
      
      public function §?#§() : void
      {
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc1_:§]'§ = §6E§[§+Q§];
         this.§1!@§(_loc1_);
         §42§.§;!`§("Bird_Helmet_Appear","ChannelExplosions");
         var _loc2_:Vector.<§]'§> = §&2§.§4!1§.slingshot.§6E§;
         var _loc3_:int = 5 + Math.random() * 10;
         var _loc6_:int = 0;
         while(_loc6_ < _loc3_)
         {
            _loc7_ = Math.random() * (Math.PI * 2);
            _loc8_ = 0.5 * 8 + 8 * (Math.random() * 0.5);
            §&2§.§4!1§.particles.addParticle(§[I§.§^=§,§<;§.§&!=§,§[I§.§6G§,§&2§.§4!1§.slingshot.§[!#§,§&2§.§4!1§.slingshot.§?=§,1250,"",§[I§.§6]§(_loc2_[0].name),_loc8_ * Math.cos(_loc7_) * 1,-_loc8_ * Math.sin(_loc7_) * 1,5,_loc8_ * 20,Math.sqrt(1));
            _loc6_++;
         }
         if(_loc1_)
         {
            (_loc1_ as §&!5§).§>!5§();
         }
         §#V§(§@!N§.STATE_BIRD_IS_READY);
      }
      
      public function §5#§() : void
      {
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         §-i§ = -1.7;
         this.§!!W§ = true;
         §&2§.§4!1§.camera.§;a§(§&l§.§&S§);
         §&2§.§4!1§.camera.manualScale = §&2§.§4!1§.camera.§9!1§;
         var _loc1_:§]'§ = §2K§("BIRD_REDBIG_HEIKKI",§[!#§ + 0.3,§?=§ - 0.7);
         this.§7I§(_loc1_,§4<§);
         this.§1!@§(_loc1_);
         §42§.§;!`§("Bird_Black_Special1","ChannelExplosions");
         var _loc2_:Vector.<§]'§> = §&2§.§4!1§.slingshot.§6E§;
         var _loc3_:int = 5 + Math.random() * 10;
         var _loc6_:int = 0;
         while(_loc6_ < _loc3_)
         {
            _loc7_ = Math.random() * (Math.PI * 2);
            _loc8_ = 0.5 * 8 + 8 * (Math.random() * 0.5);
            §&2§.§4!1§.particles.addParticle(§[I§.§^=§,§<;§.§&!=§,§[I§.§6G§,§&2§.§4!1§.slingshot.§[!#§,§&2§.§4!1§.slingshot.§?=§,1250,"",§[I§.§6]§(_loc1_.name),_loc8_ * Math.cos(_loc7_) * 1,-_loc8_ * Math.sin(_loc7_) * 1,5,_loc8_ * 20,Math.sqrt(1));
            _loc6_++;
         }
      }
      
      public function §1!K§() : §&9§
      {
         var _loc1_:§&9§ = null;
         if(this.§!!W§)
         {
            return _loc1_;
         }
         this.§5#§();
         var _loc2_:§]'§ = §6E§[§+Q§];
         if(§6E§.length <= 1 && _loc2_)
         {
            _loc1_ = (_loc2_ as §&!5§).§7!]§(_loc2_.§7!e§,_loc2_.§0V§,false);
         }
         else if(_loc2_)
         {
            _loc2_.§'!2§();
            _loc1_ = (_loc2_ as §&!5§).§7!]§(_loc2_.§7!e§,_loc2_.§0V§);
         }
         §#V§(§3![§);
         return _loc1_;
      }
      
      public function §9!K§() : void
      {
         var _loc1_:§]'§ = null;
         if(§6E§.length > 0)
         {
            for each(_loc1_ in §6E§)
            {
               if(_loc1_.name == "BIRD_REDBIG_HEIKKI")
               {
                  this.§1!@§(_loc1_);
                  §`!C§(§6E§.indexOf(_loc1_),false);
                  §42§.§;!`§("Bird_Black_Special1","ChannelExplosions");
               }
            }
         }
      }
      
      private function §1!@§(param1:§]'§) : void
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
            §7o§.particles.addParticle(§[I§.§=!V§,§<;§.§&!=§,§[I§.§6G§,param1.x,param1.y,500,"",0,0,0,0,0,2,12,false);
            _loc5_++;
         }
      }
      
      public function get §=j§() : Boolean
      {
         return this.§!!W§;
      }
   }
}
