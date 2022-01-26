package §,!R§
{
   import § !9§.Texture;
   import §+D§.§5!P§;
   import §1!K§.§]h§;
   import §3-§.§1L§;
   import §?!B§.§^!U§;
   import §[=§.§@!#§;
   import §`!H§.§9;§;
   import §`!H§.§@!E§;
   
   public class §;l§ extends §^!U§
   {
      
      public static const §1b§:int = 4;
      
      public static const §#^§:int = 5;
       
      
      private var §3O§:Number;
      
      private var §=&§:Number;
      
      private var §<!<§:int;
      
      public function §;l§(param1:§9;§, param2:§@!E§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false, param18:int = 5, param19:int = 2)
      {
         this.§3O§ = param6 + Math.random() * param18;
         this.§<!<§ = param19;
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17);
         if(this.§2A§ == §1b§)
         {
            §9B§ = §1L§.§"f§.§0r§.§6E§ + §+!J§.height * §5!P§.§>M§;
         }
         else if(this.§2A§ == §#^§)
         {
            this.§3O§ = param6;
            this.§=&§ = param7;
         }
      }
      
      override public function update(param1:Number) : Boolean
      {
         if(§2A§ == §1b§)
         {
            if(§9B§ > 0 && §92§ > §9B§)
            {
               return false;
            }
         }
         return super.update(param1);
      }
      
      override public function updateParticles(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         if(§2A§ == §1b§)
         {
            §+!J§.alpha = Math.max(0,Math.min(1,2 * §]h§.§47§((§4!%§ - §]!1§) / §4!%§,false)));
            _loc2_ = Math.atan2(-§#C§,§"!L§) * (180 / Math.PI);
            §+!J§.scaleX = Math.max(0.2,§+!J§.alpha);
            §+!J§.scaleY = Math.max(0.2,§+!J§.alpha);
            §+!J§.rotation = (360 - _loc2_) / 180 * Math.PI;
            §92§ += §#C§ * param1 / 1000;
            §<O§ = this.§3O§ + Math.sin(§92§) * this.§<!<§;
            return true;
         }
         if(§2A§ == §#^§)
         {
            §+!J§.alpha = Math.max(0,Math.min(1,2 * §]h§.§47§((§4!%§ - §]!1§) / §4!%§,false)));
            §+!J§.scaleX = §+!J§.scaleY = §]h§.§47§((§4!%§ + (§]!1§ + 0.2)) / §4!%§,false);
            §<O§ = this.§3O§;
            §92§ = this.§=&§;
            return true;
         }
         return false;
      }
      
      override protected function createParticleImage(param1:Texture) : §@!#§
      {
         return new §@!#§(param1,true);
      }
   }
}
