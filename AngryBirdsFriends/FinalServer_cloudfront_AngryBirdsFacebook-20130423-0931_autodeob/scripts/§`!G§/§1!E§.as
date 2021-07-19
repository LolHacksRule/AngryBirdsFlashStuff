package §`!G§
{
   import §&E§.§6!O§;
   import §&E§.§="@§;
   import §'!6§.Sprite;
   import §4!<§.§'!S§;
   import §6"1§.b2World;
   
   public class §1!E§ extends §>o§
   {
       
      
      private var §;z§:Number = 0;
      
      private var §7!C§:Number = 800;
      
      private var §,a§:Number = 0;
      
      public function §1!E§(param1:§8"=§, param2:Sprite, param3:b2World, param4:§'!S§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         return true;
      }
      
      override public function addDestructionParticles(param1:§6!O§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc3_:Number = 0.5 + Math.random() * 0.5;
         var _loc5_:int = 0;
         while(_loc5_ < 12)
         {
            _loc6_ = Math.random() * Math.PI;
            _loc7_ = 0.5 * 20 + 20 * (Math.random() * 0.5);
            (param1 as §="@§).§ t§(x,y,_loc7_,_loc6_,_loc3_);
            _loc5_++;
         }
      }
      
      override public function shouldUpdate() : Boolean
      {
         return true;
      }
      
      override public function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§;z§ <= this.§7!C§)
         {
            this.§;z§ += param1;
         }
         else
         {
            this.§;z§ = 0;
         }
         this.§,a§ = 1 - this.§;z§ / this.§7!C§;
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         return this.§,a§;
      }
   }
}
