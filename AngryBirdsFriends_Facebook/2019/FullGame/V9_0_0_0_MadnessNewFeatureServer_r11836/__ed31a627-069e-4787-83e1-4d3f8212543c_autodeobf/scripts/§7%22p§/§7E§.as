package §7"p§
{
   import §'G§.§3$§;
   import §'G§.§^"[§;
   
   public class §7E§ extends §&"+§
   {
      
      private static const §>d§:String = "SonicBoom";
       
      
      private var §'<§:Number;
      
      private var §!b§:Number;
      
      public function §7E§(param1:§^"[§, param2:§3$§, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number)
      {
         this.§'<§ = param6;
         this.§!b§ = param7;
         super(param1,param2,§>d§,§<#]§.PARTICLE_GROUP_GAME_EFFECTS,§6!9§.PARTICLE_TYPE_STATIC_PARTICLE,param3,param4,param5,"",0,0,0,0,0,this.§'<§,-1,true,"STELLA_BUBBLE2");
      }
      
      override public function update(param1:Number) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc2_:Boolean = super.update(param1);
         _loc3_ = this.§!b§ - this.§'<§;
         var _loc4_:Number = this.§'<§ + _loc3_ / §&$!§ * §%"<§;
         §&#W§.scaleX = _loc4_;
         §&#W§.scaleY = _loc4_;
         return _loc2_;
      }
   }
}
