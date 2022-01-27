package §^"H§
{
   import §2!`§.§#"m§;
   import §2!`§.§;6§;
   import §5!q§.§&§;
   import §@b§.§&M§;
   import §`"8§.§#f§;
   import com.angrybirds.§;!e§;
   
   public class §-"9§ extends §4!N§
   {
       
      
      public function §-"9§()
      {
         super(§#f§.§0"v§,§&M§.§@!8§);
      }
      
      override public function execute() : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         §&#3§(§;!e§.§<x§.slingshot).§5"1§();
         var _loc1_:int = 50 + Math.random() * 5;
         var _loc4_:int = 0;
         while(_loc4_ < _loc1_)
         {
            _loc5_ = Math.random() * (Math.PI * 2);
            _loc6_ = 0.2 * 8 + 8 * (Math.random() * 0.8);
            §;!e§.§<x§.particles.§[#$§(§;6§.§+"8§,§#"m§.§=!"§,§;6§.§7'§,§;!e§.§<x§.slingshot.x,§;!e§.§<x§.slingshot.y + Math.random() * 6,1250 + Math.random() * 500,"",§;6§.§!!n§,_loc6_ * Math.cos(_loc5_) * 1,-_loc6_ * Math.sin(_loc5_) * 1,5,_loc6_ * 20,Math.sqrt(1));
            _loc4_++;
         }
      }
   }
}
