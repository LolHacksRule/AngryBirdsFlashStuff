package §!'§
{
   import §`"8§.§34§;
   import §`"8§.§`#+§;
   
   public class §`"G§ extends §8! §
   {
      
      private static const §0#"§:String = "SonicBoom";
       
      
      private var §2O§:Number;
      
      private var §["Z§:Number;
      
      public function §`"G§(param1:§`#+§, param2:§34§, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number)
      {
         this.§2O§ = param6;
         this.§["Z§ = param7;
         super(param1,param2,§0#"§,§[p§.PARTICLE_GROUP_GAME_EFFECTS,§@>§.PARTICLE_TYPE_STATIC_PARTICLE,param3,param4,param5,"",0,0,0,0,0,this.§2O§,-1,true,"STELLA_BUBBLE2");
      }
      
      override public function update(param1:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc2_:Boolean = super.update(param1);
         _loc3_ = this.§["Z§ - this.§2O§;
         var _loc4_:Number = this.§2O§ + _loc3_ / §"!>§ * §each §;
         § $9§.scaleX = _loc4_;
         § $9§.scaleY = _loc4_;
         return _loc2_;
      }
   }
}
