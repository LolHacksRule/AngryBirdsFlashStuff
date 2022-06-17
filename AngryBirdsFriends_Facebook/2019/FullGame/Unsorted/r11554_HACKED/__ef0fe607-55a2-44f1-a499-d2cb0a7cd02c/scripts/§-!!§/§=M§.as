package §-!!§
{
   import § !D§.§'"u§;
   import § !D§.§@#]§;
   import §!6§.Sprite;
   import §8#t§.b2World;
   import §9$+§.§9"4§;
   import §=!2§.§%"T§;
   import §?§.§,Y§;
   import §^"[§.§4!8§;
   
   public class §=M§ extends §%#>§
   {
       
      
      private var §`"W§:§@#]§;
      
      public function §=M§(param1:Sprite, param2:§4!8§, param3:b2World, param4:§,Y§, param5:§9"4§, param6:Number = 1.0, param7:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         var _loc8_:Number = -param1.width / param6 / 2;
         var _loc9_:Number = -param1.height / param6 / 2;
         this.§`"W§ = new §@#]§("BIRD_CHRISTMAS_FUSE",param1,§%"T§.§;`§,_loc8_,_loc9_,50,true);
         this.§`"W§.§"#=§(true);
      }
      
      override public function update(param1:Number, param2:§ #'§) : void
      {
         super.update(param1,param2);
         this.§`"W§.update(param1);
      }
      
      override protected function addTrail(param1:§ #'§) : Boolean
      {
         super.addTrail(param1);
         Number(x * §'"u§.§'#e§);
         Number(y * §'"u§.§'#e§);
         return true;
      }
   }
}
