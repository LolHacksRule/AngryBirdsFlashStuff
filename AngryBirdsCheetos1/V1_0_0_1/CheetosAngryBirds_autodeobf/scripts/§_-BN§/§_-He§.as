package §_-BN§
{
   import §_-5p§.§_-Kf§;
   import §_-5p§.§_-Kn§;
   
   public class §_-He§ extends §_-Kn§
   {
       
      
      public function §_-He§(param1:§_-Kf§)
      {
         super(param1);
      }
      
      override public function initializeAnimations(param1:Array) : void
      {
         super.initializeAnimations(param1);
         §_-tT§("CHEETOS_EXPLOSION",["CHEETOS_BAG_EXPLOSION1","CHEETOS_BAG_EXPLOSION2","CHEETOS_BAG_EXPLOSION3","CHEETOS_BAG_EXPLOSION4","CHEETOS_BAG_EXPLOSION5","CHEETOS_BAG_EXPLOSION6"]);
         §_-tT§("CHEESE_PARTICLE",["CHEESE_PARTICLE"]);
         §_-tT§("CHEETOS_PACK_GLOW",["CHEETOS_PACK_GLOW"]);
      }
      
      override protected function initializeBirdAnimations() : void
      {
         super.initializeBirdAnimations();
         §_-W3§("BIRD_CHEETOS_BAG",[["normal",["CHEETOS_PACK_TURKEY_BASIC","CHEETOS_PACK_TURKEY_2"]],["blink",["CHEETOS_PACK_TURKEY_BLINK"]],["fly",["CHEETOS_PACK_TURKEY_FLYING_YELL"]],["yell",["CHEETOS_PACK_TURKEY_YELL"]],["fly_yell",["CHEETOS_PACK_TURKEY_FLYING_YELL"]],["special",["CHEETOS_PACK_TURKEY_BASIC"]]]);
      }
   }
}
