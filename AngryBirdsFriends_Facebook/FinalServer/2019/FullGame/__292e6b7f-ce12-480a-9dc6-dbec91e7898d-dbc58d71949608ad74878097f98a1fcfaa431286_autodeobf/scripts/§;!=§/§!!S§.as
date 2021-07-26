package §;!=§
{
   import § !N§.§5"?§;
   import §#g§.§!#o§;
   import §#g§.§8§;
   import §'#K§.b2World;
   import §,#e§.Sprite;
   import §7"T§.§7b§;
   import §8#K§.§&2§;
   import §?#z§.§]$?§;
   
   public class §!!S§ extends §6"§
   {
       
      
      private var §7#"§:§!#o§;
      
      public function §!!S§(param1:Sprite, param2:§7b§, param3:b2World, param4:§&2§, param5:§5"?§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         var _loc8_:Number = -param1.width / param6 / 2;
         var _loc9_:Number = -param1.height / param6 / 2;
         this.§7#"§ = new §!#o§("BIRD_CHRISTMAS_FUSE",param1,§]$?§.§2#§,_loc8_,_loc9_,50,true);
         this.§7#"§.§2i§(true);
      }
      
      override public function update(param1:Number, param2:§]!m§) : void
      {
         super.update(param1,param2);
         this.§7#"§.update(param1);
      }
      
      override protected function addTrail(param1:§]!m§) : Boolean
      {
         super.addTrail(param1);
         var _loc2_:Number = x * §8#3§.§2K§;
         var _loc3_:Number = y * §8#3§.§2K§;
         return true;
      }
   }
}
