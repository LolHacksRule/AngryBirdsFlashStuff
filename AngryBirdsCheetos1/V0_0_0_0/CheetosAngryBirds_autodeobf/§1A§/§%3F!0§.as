package §1A§
{
   import §4W§.§!]§;
   import §4W§.§3!@§;
   
   public class §?!0§ extends §3!@§
   {
       
      
      public function §?!0§(param1:§!]§)
      {
         super(param1);
      }
      
      override public function initializeAnimations(param1:Array) : void
      {
         super.initializeAnimations(param1);
         §"=§("CHEETOS_EXPLOSION",["CHEETOS_BAG_EXPLOSION1","CHEETOS_BAG_EXPLOSION2","CHEETOS_BAG_EXPLOSION3","CHEETOS_BAG_EXPLOSION4","CHEETOS_BAG_EXPLOSION5","CHEETOS_BAG_EXPLOSION6"]);
         §"=§("CHEESE_PARTICLE",["CHEESE_PARTICLE"]);
         §"=§("CHEETOS_PACK_GLOW",["CHEETOS_PACK_GLOW"]);
      }
      
      override protected function initializeBirdAnimations() : void
      {
         super.initializeBirdAnimations();
         §3Z§("BIRD_CHEETOS_BAG",[["normal",["CHEETOS_PACK_TURKEY_BASIC","CHEETOS_PACK_TURKEY_2"]],["blink",["CHEETOS_PACK_TURKEY_BLINK"]],["fly",["CHEETOS_PACK_TURKEY_FLYING_YELL"]],["yell",["CHEETOS_PACK_TURKEY_YELL"]],["fly_yell",["CHEETOS_PACK_TURKEY_FLYING_YELL"]],["special",["CHEETOS_PACK_TURKEY_BASIC"]]]);
      }
   }
}
