package §]!G§
{
   import §%`§.§"s§;
   import §%`§.§,!k§;
   import §'a§.§0!f§;
   import §2!`§.§3F§;
   import §2!`§.§8!;§;
   import §3!g§.b2World;
   import §5x§.Sprite;
   import §<!?§.§ !k§;
   
   public class §1!e§ extends §"s§
   {
       
      
      private const §7!=§:Number = 1000;
      
      private var §7!+§:Number = 0;
      
      private var §&r§:Number = 0;
      
      private var §`B§:Number;
      
      public function §1!e§(param1:§,!k§, param2:Sprite, param3:b2World, param4:§0!f§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         this.§`B§ = Math.random() * this.§7!=§ * 5 + Math.random() * this.§7!=§ * 5;
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
      
      override public function update(param1:Number) : void
      {
         this.§&r§ += param1;
         if(this.§&r§ > this.§`B§)
         {
            this.§&r§ = 0;
            this.§?w§(container.mLevelMain.particles);
            this.§`B§ = this.§7!+§ + Math.random();
         }
      }
      
      private function §?w§(param1:§3F§) : void
      {
         if(!this.§ !i§())
         {
            return;
         }
         var _loc2_:Number = 2;
         var _loc3_:Number = 2;
         this.§&r§ = 0;
         switch(§6!?§)
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
         this.§7!+§ = (8 - Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_)) * this.§7!=§;
         var _loc4_:Number = Math.random() * _loc2_ - _loc2_ / 2;
         var _loc5_:Number = Math.random() * _loc3_ - _loc3_ / 2;
         var _loc6_:int = 1 + int(Math.random() * 3);
         var _loc7_:Number = Math.random() * 360;
         if(_loc6_ == 2)
         {
            _loc7_ = 0;
         }
         param1.§;!G§("PARTICLE_SPARKLE_" + _loc6_,§3F§.§![§,§ !k§.§[x§,§%9§().GetWorldCenter().x + _loc4_,§%9§().GetWorldCenter().y + _loc5_,2000,"",§8!;§.§2!n§(§6!?§),0,0,0,_loc7_,1);
      }
   }
}
