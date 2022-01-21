package §2G§
{
   import §&c§.Sprite;
   import §&x§.b2World;
   import §3!@§.§ s§;
   import §=!a§.§,0§;
   import §?!§.§%o§;
   import §?!§.§>!4§;
   import §?!P§.§4!-§;
   import §?!P§.§65§;
   
   public class §;l§ extends §%o§
   {
       
      
      private const §8g§:Number = 1000;
      
      private var §#!3§:Number = 0;
      
      private var §]m§:Number = 0;
      
      private var §7!a§:Number;
      
      public function §;l§(param1:§>!4§, param2:Sprite, param3:b2World, param4:§ s§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         this.§7!a§ = Math.random() * this.§8g§ * 5 + Math.random() * this.§8g§ * 5;
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
      
      override public function update(param1:Number) : void
      {
         this.§]m§ += param1;
         if(this.§]m§ > this.§7!a§)
         {
            this.§]m§ = 0;
            this.§ N§(container.mLevelMain.particles);
            this.§7!a§ = this.§#!3§ + Math.random();
         }
      }
      
      private function § N§(param1:§4!-§) : void
      {
         if(!this.§-!m§())
         {
            return;
         }
         var _loc2_:Number = 2;
         var _loc3_:Number = 2;
         this.§]m§ = 0;
         switch(§3!G§)
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
         this.§#!3§ = (8 - Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_)) * this.§8g§;
         var _loc4_:Number = Math.random() * _loc2_ - _loc2_ / 2;
         var _loc5_:Number = Math.random() * _loc3_ - _loc3_ / 2;
         var _loc6_:int = 1 + int(Math.random() * 3);
         var _loc7_:Number = Math.random() * 360;
         if(_loc6_ == 2)
         {
            _loc7_ = 0;
         }
         param1.§ D§("PARTICLE_SPARKLE_" + _loc6_,§4!-§.§&#§,§,0§.§?!'§,§2!!§().GetWorldCenter().x + _loc4_,§2!!§().GetWorldCenter().y + _loc5_,2000,"",§65§.§"!o§(§3!G§),0,0,0,_loc7_,1);
      }
   }
}
