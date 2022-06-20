package §;!=§
{
   import § !N§.§2m§;
   import § !N§.§5"?§;
   import § !N§.§]!#§;
   import §'#K§.b2FilterData;
   import §'#K§.b2World;
   import §,#e§.Sprite;
   import §04§.b2Vec2;
   import §3"V§.§ b§;
   import §7"T§.§7b§;
   import §7"o§.§##P§;
   import §7"o§.§=,§;
   import §8#K§.§&2§;
   import §?#z§.§]$?§;
   import flash.geom.Point;
   
   public class §="#§ extends §1!y§
   {
      
      private static const §;$?§:int = 4000;
      
      private static const §>$C§:int = 6000;
      
      private static const §5#m§:int = 8;
      
      private static const §-#3§:int = 500;
      
      private static const §2#v§:int = 675;
       
      
      private var §3!+§:Number;
      
      private var §]1§:Number;
      
      private var §?"@§:Number;
      
      private var §@!`§:Boolean;
      
      private var §>#z§:§>"G§ = null;
      
      private var §4#'§:§]!#§;
      
      private var §'!=§:Boolean;
      
      public function §="#§(param1:Sprite, param2:§7b§, param3:b2World, param4:§&2§, param5:§5"?§, param6:Number, param7:String = "", param8:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
         this.§3!+§ = §;$?§ + (§>$C§ - §;$?§) * Math.random();
         this.§]1§ = §-#3§;
         this.§?"@§ = §2#v§ * Math.random();
         this.§@!`§ = false;
         this.§'!=§ = true;
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc1_:b2FilterData = super.createFilterData();
         _loc1_.§'#`§ = §41§;
         _loc1_.§<L§ = 65535 & ~§41§ & ~§9!4§;
         return _loc1_;
      }
      
      override public function applyDamage(param1:Number, param2:§]!m§, param3:§>"G§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         var _loc6_:Number;
         if((_loc6_ = super.applyDamage(param1,param2,param3,param4,param5)) > 0 && !this.§@!`§)
         {
            if(!(param3 is §[!k§ || param3 is §+#v§ || param3 is §`G§))
            {
               this.§>#z§ = param3;
            }
         }
         return _loc6_;
      }
      
      override public function update(param1:Number, param2:§]!m§) : void
      {
         var _loc3_:§2m§ = null;
         super.update(param1,param2);
         this.§3!+§ -= param1;
         if(this.§3!+§ <= 0 || this.§@!`§ && (!this.§>#z§ || this.§>#z§.health <= 0 || !this.§>#z§.getBody() || !this.§4#'§))
         {
            health = 0;
            return;
         }
         if(this.§@!`§ && this.§>#z§ && this.§'!=§)
         {
            this.§]1§ += param1;
            while(this.§]1§ >= §-#3§)
            {
               this.§>#z§.applyDamage(§5#m§,param2,this,false,true);
               this.§]1§ -= §-#3§;
            }
         }
         this.§?"@§ += param1;
         if(this.§?"@§ >= §2#v§)
         {
            this.§?"@§ -= §2#v§;
            §]$?§.§2#§.particles.addSimpleParticle("FIREORB_FLAME",§=,§.§4#S§,§##P§.PARTICLE_GROUP_FOREGROUND_EFFECTS,§=,§.PARTICLE_TYPE_STATIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,600,"",§=,§.§?E§,0,0,0,0,1,14,true);
         }
         if(!this.§@!`§ && this.§>#z§)
         {
            this.§@!`§ = true;
            getBody().SetLinearVelocity(new b2Vec2(0,0));
            if(this.§>#z§.§=#a§() == "MATERIAL_GROUND_HILLS")
            {
               health = 0;
               return;
            }
            _loc3_ = new §2m§(§2m§.§'v§,this.§>#z§.id,this.id,new Point(0,0),new Point(0,0),false,false,0,0,false,0,false,0,false,0,false,2);
            this.§4#'§ = (§]$?§.§2#§.levelObjects as §&"^§).§'#k§(_loc3_);
            if(this.§>#z§.levelItem.bubbleDamage == 0 && this.§>#z§.getBody().GetMass() == 0 && (this.§>#z§.§%@§() || this.§>#z§.§&"R§() || this.§>#z§.§<$<§) && this.§>#z§.itemName.indexOf("INVISIBLE") == -1)
            {
               this.§'!=§ = false;
            }
            else
            {
               this.§'!=§ = true;
            }
            § b§.§^"8§("wood_damage_a3");
         }
      }
   }
}
