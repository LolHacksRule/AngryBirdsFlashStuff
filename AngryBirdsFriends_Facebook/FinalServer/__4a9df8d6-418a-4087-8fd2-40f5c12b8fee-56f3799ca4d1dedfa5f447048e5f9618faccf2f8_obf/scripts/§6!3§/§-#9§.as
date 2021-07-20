package §6!3§
{
   import §'G§.§;D§;
   import §-#X§.§,!B§;
   import §-#X§.§0!H§;
   import §-#X§.§9#J§;
   import §6#H§.Sprite;
   import §7"p§.§6!9§;
   import §7"p§.§<#]§;
   import §8#K§.§3Z§;
   import §?!C§.b2Vec2;
   import §?$<§.§?$>§;
   import §@!S§.b2FilterData;
   import §@!S§.b2World;
   import §`#@§.§7n§;
   import flash.geom.Point;
   
   public class §-#9§ extends §^#x§
   {
      
      private static const §6"V§:int = 4000;
      
      private static const §7#y§:int = 6000;
      
      private static const §9#`§:int = 8;
      
      private static const §=#Z§:int = 500;
      
      private static const §%"f§:int = 675;
       
      
      private var §+T§:Number;
      
      private var § "p§:Number;
      
      private var §@"^§:Number;
      
      private var §5D§:Boolean;
      
      private var §!#4§:§;!U§ = null;
      
      private var §^!F§:§9#J§;
      
      private var §]!$§:Boolean;
      
      public function §-#9§(param1:Sprite, param2:§;D§, param3:b2World, param4:§?$>§, param5:§,!B§, param6:Number, param7:String = "", param8:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
         this.§+T§ = §6"V§ + (§7#y§ - §6"V§) * Math.random();
         this.§ "p§ = §=#Z§;
         this.§@"^§ = §%"f§ * Math.random();
         this.§5D§ = false;
         this.§]!$§ = true;
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc1_:b2FilterData = super.createFilterData();
         _loc1_.§`"!§ = §-"3§;
         _loc1_.§#!+§ = 65535 & ~§-"3§ & ~§'[§;
         return _loc1_;
      }
      
      override public function applyDamage(param1:Number, param2:§8$B§, param3:§;!U§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         var _loc6_:Number;
         if((_loc6_ = super.applyDamage(param1,param2,param3,param4,param5)) > 0 && !this.§5D§)
         {
            if(!(param3 is §,s§ || param3 is §,#U§ || param3 is §"9§))
            {
               this.§!#4§ = param3;
            }
         }
         return _loc6_;
      }
      
      override public function update(param1:Number, param2:§8$B§) : void
      {
         var _loc3_:§0!H§ = null;
         super.update(param1,param2);
         this.§+T§ -= param1;
         if(this.§+T§ <= 0 || this.§5D§ && (!this.§!#4§ || this.§!#4§.health <= 0 || !this.§!#4§.getBody() || !this.§^!F§))
         {
            health = 0;
            return;
         }
         if(this.§5D§ && this.§!#4§ && this.§]!$§)
         {
            this.§ "p§ += param1;
            while(this.§ "p§ >= §=#Z§)
            {
               this.§!#4§.applyDamage(§9#`§,param2,this,false,true);
               this.§ "p§ -= §=#Z§;
            }
         }
         this.§@"^§ += param1;
         if(this.§@"^§ >= §%"f§)
         {
            this.§@"^§ -= §%"f§;
            §7n§.§6#K§.particles.addSimpleParticle("FIREORB_FLAME",§6!9§.§2!w§,§<#]§.PARTICLE_GROUP_FOREGROUND_EFFECTS,§6!9§.PARTICLE_TYPE_STATIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,600,"",§6!9§.§^!+§,0,0,0,0,1,14,true);
         }
         if(!this.§5D§ && this.§!#4§)
         {
            this.§5D§ = true;
            getBody().SetLinearVelocity(new b2Vec2(0,0));
            if(this.§!#4§.§5"1§() == "MATERIAL_GROUND_HILLS")
            {
               health = 0;
               return;
            }
            _loc3_ = new §0!H§(§0!H§.§,"!§,this.§!#4§.id,this.id,new Point(0,0),new Point(0,0),false,false,0,0,false,0,false,0,false,0,false,2);
            this.§^!F§ = (§7n§.§6#K§.levelObjects as §4!o§).§--§(_loc3_);
            if(this.§!#4§.levelItem.bubbleDamage == 0 && this.§!#4§.getBody().GetMass() == 0 && (this.§!#4§.§4"v§() || this.§!#4§.§5!u§() || this.§!#4§.§`!R§) && this.§!#4§.itemName.indexOf("INVISIBLE") == -1)
            {
               this.§]!$§ = false;
            }
            else
            {
               this.§]!$§ = true;
            }
            §3Z§.§8!K§("wood_damage_a3");
         }
      }
   }
}
