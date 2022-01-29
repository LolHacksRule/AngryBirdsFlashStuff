package §8§#8
{
   import §4"O§.b2World;
   import §8"L§.§4U§;
   import §;#D§.§3#U§;
   import §>M§.§["z§;
   import §@0§.§%!q§;
   import §@0§.§@"Z§;
   import §^"S§.Sprite;
   import §`"8§.§0$2§;
   
   public class §&$<§ extends §8#[§
   {
       
      
      private var §<q§:§@"Z§;
      
      public function §&$<§(param1:Sprite, param2:§0$2§, param3:b2World, param4:§4U§, param5:§["z§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         var _loc8_:Number = -param1.width / param6 / 2;
         var _loc9_:Number = -param1.height / param6 / 2;
         this.§<q§ = new §@"Z§("BIRD_CHRISTMAS_FUSE",param1,§3#U§.§#$4§,_loc8_,_loc9_,50,true);
         this.§<q§.§`#s§(true);
      }
      
      override public function update(param1:Number, param2:§&#V§) : void
      {
         super.update(param1,param2);
         this.§<q§.update(param1);
      }
      
      override protected function addTrail(param1:§&#V§) : Boolean
      {
         super.addTrail(param1);
         var _loc2_:Number = x * §%!q§.§6q§;
         var _loc3_:Number = y * §%!q§.§6q§;
         return true;
      }
   }
}
