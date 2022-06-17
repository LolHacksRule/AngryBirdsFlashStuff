package §-!!§
{
   import §!6§.Sprite;
   import §%A§.§'Y§;
   import §%A§.§>F§;
   import §8#t§.b2FilterData;
   import §8#t§.b2World;
   import §9$+§.§%L§;
   import §9$+§.§5t§;
   import §9$+§.§9"4§;
   import §=!2§.§%"T§;
   import §>"9§.§[#%§;
   import §?§.§,Y§;
   import §^"[§.§4!8§;
   import §`# §.b2Vec2;
   import flash.geom.Point;
   
   public class §@!t§ extends §,!h§
   {
      
      private static const §"i§:int = 4000;
      
      private static const §`#t§:int = 6000;
      
      private static const §>!m§:int = 8;
      
      private static const §2"^§:int = 500;
      
      private static const §&'§:int = 675;
       
      
      private var §@!a§:Number;
      
      private var § !a§:Number;
      
      private var §0i§:Number;
      
      private var §-!k§:Boolean;
      
      private var §?I§:§8"J§ = null;
      
      private var §<!m§:§%L§;
      
      private var §2#S§:Boolean;
      
      public function §@!t§(param1:Sprite, param2:§4!8§, param3:b2World, param4:§,Y§, param5:§9"4§, param6:Number, param7:String = "", param8:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
         this.§@!a§ = §"i§ + (§`#t§ - §"i§) * Math.random();
         this.§ !a§ = §2"^§;
         this.§0i§ = §&'§ * Math.random();
         this.§-!k§ = false;
         this.§2#S§ = true;
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc1_:b2FilterData = super.createFilterData();
         _loc1_.§`!+§ = §4!G§;
         _loc1_.§#"5§ = 65535 & ~§4!G§ & ~§&"e§;
         return _loc1_;
      }
      
      override public function applyDamage(param1:Number, param2:§ #'§, param3:§8"J§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         var _loc6_:Number;
         if((_loc6_ = super.applyDamage(param1,param2,param3,param4,param5)) > 0 && !this.§-!k§)
         {
            if(!(param3 is §5"W§ || param3 is §=K§ || param3 is §21§))
            {
               this.§?I§ = param3;
            }
         }
         return _loc6_;
      }
      
      override public function update(param1:Number, param2:§ #'§) : void
      {
         var _loc3_:§5t§ = null;
         super.update(param1,param2);
         this.§@!a§ -= param1;
         if(this.§@!a§ <= 0 || this.§-!k§ && (!this.§?I§ || this.§?I§.health <= 0 || !this.§?I§.getBody() || !this.§<!m§))
         {
            health = 0;
            return;
         }
         if(this.§-!k§ && this.§?I§ && this.§2#S§)
         {
            this.§ !a§ += param1;
            while(this.§ !a§ >= §2"^§)
            {
               this.§?I§.applyDamage(§>!m§,param2,this,false,true);
               this.§ !a§ -= §2"^§;
            }
         }
         this.§0i§ += param1;
         if(this.§0i§ >= §&'§)
         {
            this.§0i§ -= §&'§;
            §%"T§.§;`§.particles.addSimpleParticle("FIREORB_FLAME",§'Y§.§?!G§,§>F§.PARTICLE_GROUP_FOREGROUND_EFFECTS,§'Y§.PARTICLE_TYPE_STATIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,600,"",§'Y§.§2d§,0,0,0,0,1,14,true);
         }
         if(!this.§-!k§ && this.§?I§)
         {
            this.§-!k§ = true;
            getBody().SetLinearVelocity(new b2Vec2(0,0));
            if(this.§?I§.§[#C§() == "MATERIAL_GROUND_HILLS")
            {
               health = 0;
               return;
            }
            _loc3_ = new §5t§(§5t§.§`O§,this.§?I§.id,this.id,new Point(0,0),new Point(0,0),false,false,0,0,false,0,false,0,false,0,false,2);
            this.§<!m§ = (§%"T§.§;`§.levelObjects as §`h§).§7!§(_loc3_);
            if(this.§?I§.levelItem.bubbleDamage == 0 && this.§?I§.getBody().GetMass() == 0 && (this.§?I§.§"!g§() || this.§?I§.§&"y§() || this.§?I§.§7#§) && this.§?I§.itemName.indexOf("INVISIBLE") == -1)
            {
               this.§2#S§ = false;
            }
            else
            {
               this.§2#S§ = true;
            }
            §[#%§.§!"0§("wood_damage_a3");
         }
      }
   }
}
