package §[#a§
{
   import §,#L§.§!#%§;
   import §52§.§#!,§;
   import §52§.§&#^§;
   import §9$§.Sprite;
   import §=#n§.b2World;
   import §?§.§>"$§;
   import §@"§.§`"W§;
   import §`#C§.§8K§;
   
   public class §3H§ extends §,W§
   {
       
      
      private var §8C§:§&#^§;
      
      public function §3H§(param1:Sprite, param2:§`"W§, param3:b2World, param4:§8K§, param5:§!#%§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         var _loc8_:Number = -param1.width / param6 / 2;
         var _loc9_:Number = -param1.height / param6 / 2;
         this.§8C§ = new §&#^§("BIRD_CHRISTMAS_FUSE",param1,§>"$§.§3#'§,_loc8_,_loc9_,50,true);
         this.§8C§.§-"n§(true);
      }
      
      override public function update(param1:Number, param2:§7!O§) : void
      {
         super.update(param1,param2);
         this.§8C§.update(param1);
      }
      
      override protected function addTrail(param1:§7!O§) : Boolean
      {
         super.addTrail(param1);
         Number(x * §#!,§.§?$#§);
         Number(y * §#!,§.§?$#§);
         return true;
      }
   }
}
