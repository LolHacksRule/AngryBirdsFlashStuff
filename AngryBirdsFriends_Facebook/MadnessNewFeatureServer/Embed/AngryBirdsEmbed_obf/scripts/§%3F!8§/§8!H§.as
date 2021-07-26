package §?!8§
{
   import §#+§.§6!C§;
   import §#+§.§7#§;
   import §90§.Sprite;
   import §`!4§.§6l§;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §8!H§ extends §85§
   {
       
      
      private var §>!C§:Number = 0;
      
      private var §4!A§:Number = 800;
      
      private var §18§:Number = 0;
      
      public function §8!H§(param1:§#K§, param2:Sprite, param3:b2World, param4:§6l§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         return true;
      }
      
      override public function addDestructionParticles(param1:§6!C§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc3_:Number = 0.5 + Math.random() * 0.5;
         var _loc5_:int = 0;
         while(_loc5_ < 12)
         {
            _loc6_ = Math.random() * Math.PI;
            _loc7_ = 0.5 * 20 + 20 * (Math.random() * 0.5);
            (param1 as §7#§).§0x§(x,y,_loc7_,_loc6_,_loc3_);
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
         if(this.§>!C§ <= this.§4!A§)
         {
            this.§>!C§ += param1;
         }
         else
         {
            this.§>!C§ = 0;
         }
         this.§18§ = 1 - this.§>!C§ / this.§4!A§;
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         return this.§18§;
      }
   }
}
