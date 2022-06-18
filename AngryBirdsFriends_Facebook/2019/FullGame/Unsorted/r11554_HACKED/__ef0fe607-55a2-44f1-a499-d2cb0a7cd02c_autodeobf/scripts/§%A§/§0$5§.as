package §%A§
{
   import §^"[§.§2§;
   import §^"[§.§=#;§;
   
   public class §0$5§ extends §3!t§
   {
      
      private static const §?"J§:String = "SonicBoom";
       
      
      private var §,!8§:Number;
      
      private var §`"J§:Number;
      
      public function §0$5§(param1:§2#6§, param2:§=#;§, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number)
      {
         this.§,!8§ = param6;
         this.§`"J§ = param7;
         super(param1,param2,§?"J§,§>F§.PARTICLE_GROUP_GAME_EFFECTS,§'Y§.PARTICLE_TYPE_STATIC_PARTICLE,param3,param4,param5,"",0,0,0,0,0,this.§,!8§,-1,true,"STELLA_BUBBLE2");
      }
      
      override public function update(param1:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc2_:Boolean = super.update(param1);
         _loc3_ = this.§`"J§ - this.§,!8§;
         var _loc4_:Number = this.§,!8§ + _loc3_ / §'"Q§ * §'v§;
         §^p§.scaleX = _loc4_;
         §^p§.scaleY = _loc4_;
         return _loc2_;
      }
   }
}
