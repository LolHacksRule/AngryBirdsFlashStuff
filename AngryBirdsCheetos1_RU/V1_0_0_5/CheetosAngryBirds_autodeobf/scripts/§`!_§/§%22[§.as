package §`!_§
{
   import §@!§.§;"§;
   import §@!§.§?! §;
   
   public class §"[§ extends §;"§
   {
       
      
      public function §"[§(param1:§?! §)
      {
         super(param1);
      }
      
      override public function initializeAnimations(param1:Array) : void
      {
         super.initializeAnimations(param1);
         §switch§("CHEETOS_EXPLOSION",["CHEETOS_BAG_EXPLOSION1","CHEETOS_BAG_EXPLOSION2","CHEETOS_BAG_EXPLOSION3","CHEETOS_BAG_EXPLOSION4","CHEETOS_BAG_EXPLOSION5","CHEETOS_BAG_EXPLOSION6"]);
         §switch§("CHEESE_PARTICLE",["CHEESE_PARTICLE"]);
         §switch§("CHEETOS_PACK_GLOW",["CHEETOS_PACK_GLOW"]);
      }
      
      override protected function initializeBirdAnimations() : void
      {
         super.initializeBirdAnimations();
         §7<§("BIRD_CHEETOS_BAG",[["normal",["CHEETOS_PACK_RUSSIA_BASIC","CHEETOS_PACK_RUSSIA_2"]],["blink",["CHEETOS_PACK_RUSSIA_BLINK"]],["fly",["CHEETOS_PACK_RUSSIA_FLYING_YELL"]],["yell",["CHEETOS_PACK_RUSSIA_YELL"]],["fly_yell",["CHEETOS_PACK_RUSSIA_FLYING_YELL"]],["special",["CHEETOS_PACK_RUSSIA_BASIC"]]]);
      }
   }
}
