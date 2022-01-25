package §@!M§
{
   import §'!`§.§%!H§;
   import §'!`§.§for§;
   import §-0§.b2World;
   import §0@§.Sprite;
   import §55§.§>![§;
   import §5e§.§4!'§;
   import §9!C§.§,!j§;
   import §9!C§.§3!f§;
   
   public class §2<§ extends §%!H§
   {
       
      
      private const §%!J§:Number = 1000;
      
      private var § in§:Number = 0;
      
      private var §7u§:Number = 0;
      
      private var §6D§:Number;
      
      public function §2<§(param1:§for§, param2:Sprite, param3:b2World, param4:§>![§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         this.§6D§ = Math.random() * this.§%!J§ * 5 + Math.random() * this.§%!J§ * 5;
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
      
      override public function update(param1:Number) : void
      {
         this.§7u§ += param1;
         if(this.§7u§ > this.§6D§)
         {
            this.§7u§ = 0;
            this.§<!2§(container.mLevelMain.particles);
            this.§6D§ = this.§ in§ + Math.random();
         }
      }
      
      private function §<!2§(param1:§,!j§) : void
      {
         if(!this.§1-§())
         {
            return;
         }
         var _loc2_:Number = 2;
         var _loc3_:Number = 2;
         this.§7u§ = 0;
         switch(§8+§)
         {
            case "BLOCK_FRIES":
               _loc2_ = 2;
               _loc3_ = 3;
               break;
            case "BLOCK_SODA":
               _loc2_ = 1;
               _loc3_ = 4;
               break;
            case "BLOCK_HAPPYMEAL":
               _loc2_ = 4;
               _loc3_ = 4;
               break;
            case "BLOCK_HAMBURGER":
               _loc2_ = 3;
               _loc3_ = 3;
         }
         this.§ in§ = (8 - Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_)) * this.§%!J§;
         var _loc4_:Number = Math.random() * _loc2_ - _loc2_ / 2;
         var _loc5_:Number = Math.random() * _loc3_ - _loc3_ / 2;
         var _loc6_:int = 1 + int(Math.random() * 3);
         var _loc7_:Number = Math.random() * 360;
         if(_loc6_ == 2)
         {
            _loc7_ = 0;
         }
         param1.§4!2§("PARTICLE_SPARKLE_" + _loc6_,§,!j§.§++§,§4!'§.§^,§,§&!p§().GetWorldCenter().x + _loc4_,§&!p§().GetWorldCenter().y + _loc5_,2000,"",§3!f§.§-!Z§(§8+§),0,0,0,_loc7_,1);
      }
   }
}
