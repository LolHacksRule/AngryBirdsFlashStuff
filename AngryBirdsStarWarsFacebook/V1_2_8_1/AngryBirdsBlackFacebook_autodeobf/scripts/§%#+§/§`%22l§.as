package §%#+§
{
   import §"§.§<U§;
   import §'"A§.§3"x§;
   import §9"U§.§[!b§;
   import §^9§.§?"E§;
   import §^9§.§^#'§;
   import com.angrybirds.§<!J§;
   
   public class §`"l§ extends §5x§
   {
       
      
      public function §`"l§()
      {
         super(§[!b§.§]!&§,§3"x§.§#!Q§);
      }
      
      override public function execute() : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         §<U§(§<!J§.§=!%§.slingshot).§5!8§();
         var _loc1_:int = 50 + Math.random() * 5;
         var _loc4_:int = 0;
         while(_loc4_ < _loc1_)
         {
            _loc5_ = Math.random() * (Math.PI * 2);
            _loc6_ = 0.2 * 8 + 8 * (Math.random() * 0.8);
            §<!J§.§=!%§.particles.§>#1§(§?"E§.§,^§,§^#'§.§&5§,§?"E§.§3y§,§<!J§.§=!%§.slingshot.x,§<!J§.§=!%§.slingshot.y + Math.random() * 6,1250 + Math.random() * 500,"",§?"E§.§=;§,_loc6_ * Math.cos(_loc5_) * 1,-_loc6_ * Math.sin(_loc5_) * 1,5,_loc6_ * 20,Math.sqrt(1));
            _loc4_++;
         }
      }
   }
}
