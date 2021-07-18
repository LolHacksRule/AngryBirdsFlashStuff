package §`!G§
{
   import §&E§.§6!O§;
   import §&E§.§="@§;
   import §'!6§.Sprite;
   import §4!<§.§'!S§;
   import §6"1§.b2World;
   import §@!"§.§?l§;
   
   public class §-!3§ extends §,!g§
   {
      
      private static const §2G§:Number = 500;
      
      private static const §;"+§:int = 5;
      
      private static const §[;§:Number = 120;
       
      
      private var §`!e§:Boolean;
      
      private var §'!q§:Number = 0;
      
      private var §5!Z§:int = 0;
      
      private var §^!k§:Boolean = false;
      
      public function §-!3§(param1:§8"=§, param2:Sprite, param3:b2World, param4:§'!S§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function addTrail() : void
      {
         super.addTrail();
         var _loc1_:Number = x * §'!S§.§2"<§;
         var _loc2_:Number = y * §'!S§.§2"<§;
         §"x§(_loc1_,_loc2_,0,3,10);
      }
      
      override public function addDamageParticles(param1:§6!O§, param2:int) : void
      {
         super.addDamageParticles(param1,param2);
      }
      
      override public function addDestructionParticles(param1:§6!O§) : void
      {
         super.addDestructionParticles(param1);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         if(param1 >= §[;§)
         {
            this.§^!k§ = true;
         }
         else
         {
            this.§^!k§ = false;
         }
         return super.applyDamage(param1,param2,param3,param4,param5,param6);
      }
      
      public function §!w§(param1:§[!8§) : Boolean
      {
         if(!this.§`!e§)
         {
            this.§`!e§ = true;
         }
         return false;
      }
      
      override public function update(param1:Number) : void
      {
         super.update(param1);
         this.§'!q§ += param1;
         if(this.§'!q§ >= §2G§ && this.§`!e§ && this.§5!Z§ < §;"+§ && this.§^!k§)
         {
            ++this.§5!Z§;
            this.§`!e§ = false;
            this.§'!q§ = 0;
            this.§?7§();
         }
      }
      
      public function §?7§() : void
      {
         var _loc1_:Number = x * §'!S§.§2"<§;
         var _loc2_:Number = y * §'!S§.§2"<§;
         var _loc3_:§="@§ = §?l§.§'h§.particles as §="@§;
         _loc3_.§?7§(_loc1_,_loc2_);
      }
   }
}
