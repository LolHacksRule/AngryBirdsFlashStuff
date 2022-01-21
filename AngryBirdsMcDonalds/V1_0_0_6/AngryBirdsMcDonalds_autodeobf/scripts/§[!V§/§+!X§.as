package §[!V§
{
   import §2![§.Sprite;
   import §5!L§.§,!&§;
   import §5!L§.§?8§;
   import §7!5§.b2World;
   import §8!§.§'F§;
   import §8!§.§9!-§;
   import §<L§.§!!G§;
   import §?Z§.§]!Z§;
   
   public class §+!X§ extends §,!&§
   {
       
      
      private const §2#§:Number = 1000;
      
      private var §&!n§:Number = 0;
      
      private var §&!M§:Number = 0;
      
      private var §+!-§:Number;
      
      public function §+!X§(param1:§?8§, param2:Sprite, param3:b2World, param4:§!!G§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         this.§+!-§ = Math.random() * this.§2#§ * 5 + Math.random() * this.§2#§ * 5;
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
      
      override public function update(param1:Number) : void
      {
         this.§&!M§ += param1;
         if(this.§&!M§ > this.§+!-§)
         {
            this.§&!M§ = 0;
            this.§=h§(container.mLevelMain.particles);
            this.§+!-§ = this.§&!n§ + Math.random();
         }
      }
      
      private function §=h§(param1:§'F§) : void
      {
         if(!this.§?E§())
         {
            return;
         }
         var _loc2_:Number = 2;
         var _loc3_:Number = 2;
         this.§&!M§ = 0;
         switch(§%!O§)
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
         this.§&!n§ = (8 - Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_)) * this.§2#§;
         var _loc4_:Number = Math.random() * _loc2_ - _loc2_ / 2;
         var _loc5_:Number = Math.random() * _loc3_ - _loc3_ / 2;
         var _loc6_:int = 1 + int(Math.random() * 3);
         var _loc7_:Number = Math.random() * 360;
         if(_loc6_ == 2)
         {
            _loc7_ = 0;
         }
         param1.§]!5§("PARTICLE_SPARKLE_" + _loc6_,§'F§.§8e§,§]!Z§.§60§,§;G§().GetWorldCenter().x + _loc4_,§;G§().GetWorldCenter().y + _loc5_,2000,"",§9!-§.§4!^§(§%!O§),0,0,0,_loc7_,1);
      }
   }
}
