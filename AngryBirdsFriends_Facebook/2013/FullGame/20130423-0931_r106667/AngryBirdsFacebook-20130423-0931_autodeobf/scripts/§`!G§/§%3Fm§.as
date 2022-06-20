package §`!G§
{
   import §'!6§.Sprite;
   import §4!<§.§'!S§;
   import §4!<§.§1!"§;
   import §6"1§.b2World;
   import §@!"§.§?l§;
   
   public class §?m§ extends §;i§
   {
       
      
      private var § 8§:§1!"§;
      
      public function §?m§(param1:§8"=§, param2:Sprite, param3:b2World, param4:§'!S§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         var _loc12_:Number = -param2.width / param11 / 2;
         var _loc13_:Number = -param2.height / param11 / 2;
         this.§ 8§ = new §1!"§("BIRD_CHRISTMAS_FUSE",§?!T§,§?l§.§'h§,_loc12_,_loc13_,50,true);
         this.§ 8§.§%"-§(true);
      }
      
      override public function update(param1:Number) : void
      {
         super.update(param1);
         this.§ 8§.update(param1);
      }
      
      override public function addTrail() : void
      {
         super.addTrail();
         var _loc1_:Number = x * §'!S§.§2"<§;
         var _loc2_:Number = y * §'!S§.§2"<§;
         §"x§(_loc1_,_loc2_,0,3,10);
      }
   }
}
