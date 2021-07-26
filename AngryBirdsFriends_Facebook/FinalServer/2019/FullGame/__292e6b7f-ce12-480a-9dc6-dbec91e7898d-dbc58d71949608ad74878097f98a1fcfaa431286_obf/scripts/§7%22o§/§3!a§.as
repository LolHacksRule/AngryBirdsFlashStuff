package §7"o§
{
   import §7"T§.§#"^§;
   import §7"T§.§4#[§;
   
   public class §3!a§ extends §3#z§
   {
      
      private static const §4!V§:String = "SonicBoom";
       
      
      private var §^#[§:Number;
      
      private var §!m§:Number;
      
      public function §3!a§(param1:§4#[§, param2:§#"^§, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number)
      {
         this.§^#[§ = param6;
         this.§!m§ = param7;
         super(param1,param2,§4!V§,§##P§.PARTICLE_GROUP_GAME_EFFECTS,§=,§.PARTICLE_TYPE_STATIC_PARTICLE,param3,param4,param5,"",0,0,0,0,0,this.§^#[§,-1,true,"STELLA_BUBBLE2");
      }
      
      override public function update(param1:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc2_:Boolean = super.update(param1);
         _loc3_ = this.§!m§ - this.§^#[§;
         var _loc4_:Number = this.§^#[§ + _loc3_ / §@"s§ * §3%§;
         §6"z§.scaleX = _loc4_;
         §6"z§.scaleY = _loc4_;
         return _loc2_;
      }
   }
}
