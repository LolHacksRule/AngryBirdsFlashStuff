package §'"E§
{
   import §,"N§.§6"w§;
   import §6!H§.§,#E§;
   import §^#>§.§>f§;
   import §`!r§.§ U§;
   import §`!r§.§,!w§;
   import com.angrybirds.§,!q§;
   
   public class § N§ extends §^"`§
   {
       
      
      public function § N§()
      {
         super(§6"w§.§ !p§,§,#E§.§3#I§);
      }
      
      override public function execute() : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         §>f§(§,!q§.§9!,§.slingshot).§%"f§();
         var _loc1_:int = 50 + Math.random() * 5;
         var _loc4_:int = 0;
         while(_loc4_ < _loc1_)
         {
            _loc5_ = Math.random() * (Math.PI * 2);
            _loc6_ = 0.2 * 8 + 8 * (Math.random() * 0.8);
            §,!q§.§9!,§.particles.§;!0§(§ U§.§!%§,§,!w§.§ !B§,§ U§.§'# §,§,!q§.§9!,§.slingshot.x,§,!q§.§9!,§.slingshot.y + Math.random() * 6,1250 + Math.random() * 500,"",§ U§.§#"P§,_loc6_ * Math.cos(_loc5_) * 1,-_loc6_ * Math.sin(_loc5_) * 1,5,_loc6_ * 20,Math.sqrt(1));
            _loc4_++;
         }
      }
   }
}
