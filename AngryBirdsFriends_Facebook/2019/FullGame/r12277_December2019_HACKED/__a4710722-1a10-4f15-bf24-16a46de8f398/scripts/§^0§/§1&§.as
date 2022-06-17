package §^0§
{
   import § "v§.§4$4§;
   import §#Z§.Sprite;
   import §%$0§.§2#Z§;
   import §%$0§.§`#I§;
   import §+!n§.§+!p§;
   import §-!j§.§-"8§;
   import §3#h§.b2FilterData;
   import §3#h§.b2World;
   import §6!R§.b2Vec2;
   import §9#M§.§,`§;
   import §@"v§.§0$=§;
   import §@"v§.§6$D§;
   import §@"v§.§@$<§;
   import flash.geom.Point;
   
   public class §1&§ extends §%N§
   {
      
      private static const §@!@§:int = 4000;
      
      private static const §<#c§:int = 6000;
      
      private static const §+=§:int = 8;
      
      private static const §`!s§:int = 500;
      
      private static const §#"§:int = 675;
       
      
      private var §'"z§:Number;
      
      private var §3#x§:Number;
      
      private var §2#S§:Number;
      
      private var §!l§:Boolean;
      
      private var §^!m§:§=Q§ = null;
      
      private var §1"S§:§6$D§;
      
      private var §-!+§:Boolean;
      
      public function §1&§(param1:Sprite, param2:§,`§, param3:b2World, param4:§-"8§, param5:§@$<§, param6:Number, param7:String = "", param8:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
         this.§'"z§ = §@!@§ + (§<#c§ - §@!@§) * Math.random();
         this.§3#x§ = §`!s§;
         this.§2#S§ = §#"§ * Math.random();
         this.§!l§ = false;
         this.§-!+§ = true;
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc1_:b2FilterData = super.createFilterData();
         _loc1_.§1$3§ = §;D§;
         _loc1_.§@>§ = 65535 & ~§;D§ & ~§,!u§;
         return _loc1_;
      }
      
      override public function applyDamage(param1:Number, param2:§>"T§, param3:§=Q§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         var _loc6_:Number;
         if((_loc6_ = super.applyDamage(param1,param2,param3,param4,param5)) > 0 && !this.§!l§)
         {
            if(!(param3 is §[# § || param3 is §[#S§ || param3 is §#$%§))
            {
               this.§^!m§ = param3;
            }
         }
         return _loc6_;
      }
      
      override public function update(param1:Number, param2:§>"T§) : void
      {
         var _loc3_:§0$=§ = null;
         super.update(param1,param2);
         this.§'"z§ -= param1;
         if(this.§'"z§ <= 0 || this.§!l§ && (!this.§^!m§ || this.§^!m§.health <= 0 || !this.§^!m§.getBody() || !this.§1"S§))
         {
            health = 0;
            return;
         }
         if(this.§!l§ && this.§^!m§ && this.§-!+§)
         {
            this.§3#x§ += param1;
            while(this.§3#x§ >= §`!s§)
            {
               this.§^!m§.applyDamage(§+=§,param2,this,false,true);
               this.§3#x§ -= §`!s§;
            }
         }
         this.§2#S§ += param1;
         if(this.§2#S§ >= §#"§)
         {
            this.§2#S§ -= §#"§;
            §+!p§.§`?§.particles.addSimpleParticle("FIREORB_FLAME",§`#I§.§^!+§,§2#Z§.PARTICLE_GROUP_FOREGROUND_EFFECTS,§`#I§.PARTICLE_TYPE_STATIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,600,"",§`#I§.§@!T§,0,0,0,0,1,14,true);
         }
         if(!this.§!l§ && this.§^!m§)
         {
            this.§!l§ = true;
            getBody().SetLinearVelocity(new b2Vec2(0,0));
            if(this.§^!m§.§!#'§() == "MATERIAL_GROUND_HILLS")
            {
               health = 0;
               return;
            }
            _loc3_ = new §0$=§(§0$=§.§="s§,this.§^!m§.id,this.id,new Point(0,0),new Point(0,0),false,false,0,0,false,0,false,0,false,0,false,2);
            this.§1"S§ = (§+!p§.§`?§.levelObjects as §3!U§).§+"'§(_loc3_);
            if(this.§^!m§.levelItem.bubbleDamage == 0 && this.§^!m§.getBody().GetMass() == 0 && (this.§^!m§.§[#o§() || this.§^!m§.§0#o§() || this.§^!m§.§#!4§) && this.§^!m§.itemName.indexOf("INVISIBLE") == -1)
            {
               this.§-!+§ = false;
            }
            else
            {
               this.§-!+§ = true;
            }
            §4$4§.§'"j§("wood_damage_a3");
         }
      }
   }
}
