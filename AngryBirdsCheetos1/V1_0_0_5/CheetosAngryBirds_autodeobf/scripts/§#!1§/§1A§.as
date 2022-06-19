package §#!1§
{
   import §&!W§.§2z§;
   import §&!W§.§8!K§;
   
   public class §1A§ extends §2z§
   {
       
      
      public function §1A§(param1:§8!K§)
      {
         super(param1);
      }
      
      override public function initializeAnimations(param1:Array) : void
      {
         super.initializeAnimations(param1);
         §9!O§("CHEETOS_EXPLOSION",["CHEETOS_BAG_EXPLOSION1","CHEETOS_BAG_EXPLOSION2","CHEETOS_BAG_EXPLOSION3","CHEETOS_BAG_EXPLOSION4","CHEETOS_BAG_EXPLOSION5","CHEETOS_BAG_EXPLOSION6"]);
         §9!O§("CHEESE_PARTICLE",["CHEESE_PARTICLE"]);
         §9!O§("CHEETOS_PACK_GLOW",["CHEETOS_PACK_GLOW"]);
      }
      
      override protected function initializeBirdAnimations() : void
      {
         super.initializeBirdAnimations();
         §3A§("BIRD_CHEETOS_BAG",[["normal",["CHEETOS_PACK_TURKEY_BASIC","CHEETOS_PACK_TURKEY_2"]],["blink",["CHEETOS_PACK_TURKEY_BLINK"]],["fly",["CHEETOS_PACK_TURKEY_FLYING_YELL"]],["yell",["CHEETOS_PACK_TURKEY_YELL"]],["fly_yell",["CHEETOS_PACK_TURKEY_FLYING_YELL"]],["special",["CHEETOS_PACK_TURKEY_BASIC"]]]);
      }
   }
}
