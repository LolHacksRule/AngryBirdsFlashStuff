package §3!#§
{
   import §&!Y§.b2World;
   import §0!2§.§2"0§;
   import §0!2§.§5"L§;
   import §5!G§.§&2§;
   import §]!v§.Sprite;
   
   public class §%",§ extends §1x§
   {
       
      
      private var §#!G§:§2"0§;
      
      public function §%",§(param1:§04§, param2:Sprite, param3:b2World, param4:§5"L§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         var _loc12_:Number = -param2.width / param11 / 2;
         var _loc13_:Number = -param2.height / param11 / 2;
         this.§#!G§ = new §2"0§("BIRD_CHRISTMAS_FUSE",§`b§,§&2§.§],§,_loc12_,_loc13_,50,true);
         this.§#!G§.§[N§(true);
      }
      
      override public function update(param1:Number) : void
      {
         super.update(param1);
         this.§#!G§.update(param1);
      }
      
      override public function addTrail() : void
      {
         super.addTrail();
         var _loc1_:Number = x * §5"L§.§@>§;
         var _loc2_:Number = y * §5"L§.§@>§;
         §^!%§(_loc1_,_loc2_,0,3,10);
      }
   }
}
