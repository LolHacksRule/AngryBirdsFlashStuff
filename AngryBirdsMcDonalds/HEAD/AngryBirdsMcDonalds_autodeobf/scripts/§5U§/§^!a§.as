package §5U§
{
   import § !J§.§%M§;
   import §4j§.§0K§;
   import §4j§.§9M§;
   import §8T§.b2World;
   import §@!8§.§^!§;
   import §[!B§.§,]§;
   import §[!B§.§7!N§;
   import §`!n§.Sprite;
   
   public class §^!a§ extends §9M§
   {
       
      
      private const §"Y§:Number = 1000;
      
      private var §#d§:Number = 0;
      
      private var §;!+§:Number = 0;
      
      private var §+3§:Number;
      
      public function §^!a§(param1:§0K§, param2:Sprite, param3:b2World, param4:§%M§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         this.§+3§ = Math.random() * this.§"Y§ * 5 + Math.random() * this.§"Y§ * 5;
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
      
      override public function update(param1:Number) : void
      {
         this.§;!+§ += param1;
         if(this.§;!+§ > this.§+3§)
         {
            this.§;!+§ = 0;
            this.§8j§(container.mLevelMain.particles);
            this.§+3§ = this.§#d§ + Math.random();
         }
      }
      
      private function §8j§(param1:§7!N§) : void
      {
         if(!this.§7!;§())
         {
            return;
         }
         var _loc2_:Number = 2;
         var _loc3_:Number = 2;
         this.§;!+§ = 0;
         switch(§`!p§)
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
         this.§#d§ = (8 - Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_)) * this.§"Y§;
         var _loc4_:Number = Math.random() * _loc2_ - _loc2_ / 2;
         var _loc5_:Number = Math.random() * _loc3_ - _loc3_ / 2;
         var _loc6_:int = 1 + int(Math.random() * 3);
         var _loc7_:Number = Math.random() * 360;
         if(_loc6_ == 2)
         {
            _loc7_ = 0;
         }
         param1.§3X§("PARTICLE_SPARKLE_" + _loc6_,§7!N§.§<!Z§,§^!§.§=[§,§3H§().GetWorldCenter().x + _loc4_,§3H§().GetWorldCenter().y + _loc5_,2000,"",§,]§.§0!l§(§`!p§),0,0,0,_loc7_,1);
      }
   }
}
