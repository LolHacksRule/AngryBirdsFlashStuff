package §5!o§
{
   import §&!K§.§3b§;
   import §&!K§.§^!3§;
   import §1B§.b2World;
   import §2!L§.§0w§;
   import §2!g§.Sprite;
   import §5!G§.§6!Y§;
   import §5!G§.§8+§;
   import §@!b§.§@!k§;
   
   public class §2S§ extends §6!Y§
   {
       
      
      private const § !3§:Number = 1000;
      
      private var §9!6§:Number = 0;
      
      private var §]!h§:Number = 0;
      
      private var §,r§:Number;
      
      public function §2S§(param1:§8+§, param2:Sprite, param3:b2World, param4:§@!k§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         this.§,r§ = Math.random() * this.§ !3§ * 5 + Math.random() * this.§ !3§ * 5;
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
      
      override public function update(param1:Number) : void
      {
         this.§]!h§ += param1;
         if(this.§]!h§ > this.§,r§)
         {
            this.§]!h§ = 0;
            this.§6!B§(container.mLevelMain.particles);
            this.§,r§ = this.§9!6§ + Math.random();
         }
      }
      
      private function §6!B§(param1:§3b§) : void
      {
         if(!this.§`=§())
         {
            return;
         }
         var _loc2_:Number = 2;
         var _loc3_:Number = 2;
         this.§]!h§ = 0;
         switch(§@!i§)
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
         this.§9!6§ = (8 - Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_)) * this.§ !3§;
         var _loc4_:Number = Math.random() * _loc2_ - _loc2_ / 2;
         var _loc5_:Number = Math.random() * _loc3_ - _loc3_ / 2;
         var _loc6_:int = 1 + int(Math.random() * 3);
         var _loc7_:Number = Math.random() * 360;
         if(_loc6_ == 2)
         {
            _loc7_ = 0;
         }
         param1.§"!S§("PARTICLE_SPARKLE_" + _loc6_,§3b§.§;-§,§0w§.§!!!§,§>j§().GetWorldCenter().x + _loc4_,§>j§().GetWorldCenter().y + _loc5_,2000,"",§^!3§.§ !N§(§@!i§),0,0,0,_loc7_,1);
      }
   }
}
