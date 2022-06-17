package §%$0§
{
   import §9#M§.§!!]§;
   import §9#M§.§%"=§;
   
   public class §@"k§ extends §'T§
   {
      
      private static const § !s§:String = "SonicBoom";
       
      
      private var §2!t§:Number;
      
      private var §8#%§:Number;
      
      public function §@"k§(param1:§!!]§, param2:§%"=§, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number)
      {
         this.§2!t§ = param6;
         this.§8#%§ = param7;
         super(param1,param2,§ !s§,§2#Z§.PARTICLE_GROUP_GAME_EFFECTS,§`#I§.PARTICLE_TYPE_STATIC_PARTICLE,param3,param4,param5,"",0,0,0,0,0,this.§2!t§,-1,true,"STELLA_BUBBLE2");
      }
      
      override public function update(param1:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc2_:Boolean = super.update(param1);
         _loc3_ = this.§8#%§ - this.§2!t§;
         var _loc4_:Number = this.§2!t§ + _loc3_ / §=Z§ * §7$;§;
         §8"`§.scaleX = _loc4_;
         §8"`§.scaleY = _loc4_;
         return _loc2_;
      }
   }
}
