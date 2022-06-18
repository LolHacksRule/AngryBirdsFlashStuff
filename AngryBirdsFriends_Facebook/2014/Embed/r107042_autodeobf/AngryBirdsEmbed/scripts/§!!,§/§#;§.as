package §!!,§
{
   import §!D§.§0!M§;
   import §!D§.§5O§;
   import §#!@§.Sprite;
   import §9s§.§^9§;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §#;§ extends §;!1§
   {
       
      
      private var §7!5§:Number = 0;
      
      private var §]b§:Number = 800;
      
      private var §>D§:Number = 0;
      
      public function §#;§(param1:§^!0§, param2:Sprite, param3:b2World, param4:§^9§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         return true;
      }
      
      override public function addDestructionParticles(param1:§5O§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc3_:Number = 0.5 + Math.random() * 0.5;
         var _loc5_:int = 0;
         while(_loc5_ < 12)
         {
            _loc6_ = Math.random() * Math.PI;
            _loc7_ = 0.5 * 20 + 20 * (Math.random() * 0.5);
            (param1 as §0!M§).§9!2§(x,y,_loc7_,_loc6_,_loc3_);
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
         if(this.§7!5§ <= this.§]b§)
         {
            this.§7!5§ += param1;
         }
         else
         {
            this.§7!5§ = 0;
         }
         this.§>D§ = 1 - this.§7!5§ / this.§]b§;
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         return this.§>D§;
      }
   }
}
