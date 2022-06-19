package §_-0C§
{
   import §_-my§.§_-Oi§;
   import §_-my§.§_-V0§;
   
   public class §_-42§ extends §_-Oi§
   {
       
      
      public function §_-42§(param1:§_-V0§)
      {
         super(param1);
      }
      
      override public function initializeAnimations(param1:Array) : void
      {
         super.initializeAnimations(param1);
         §_-ym§("CHEETOS_EXPLOSION",["CHEETOS_BAG_EXPLOSION1","CHEETOS_BAG_EXPLOSION2","CHEETOS_BAG_EXPLOSION3","CHEETOS_BAG_EXPLOSION4","CHEETOS_BAG_EXPLOSION5","CHEETOS_BAG_EXPLOSION6"]);
         §_-ym§("CHEESE_PARTICLE",["CHEESE_PARTICLE"]);
         §_-ym§("CHEETOS_PACK_GLOW",["CHEETOS_PACK_GLOW"]);
      }
      
      override protected function initializeBirdAnimations() : void
      {
         super.initializeBirdAnimations();
         §_-LK§("BIRD_CHEETOS_BAG",[["normal",["CHEETOS_PACK_TURKEY_BASIC","CHEETOS_PACK_TURKEY_2"]],["blink",["CHEETOS_PACK_TURKEY_BLINK"]],["fly",["CHEETOS_PACK_TURKEY_FLYING_YELL"]],["yell",["CHEETOS_PACK_TURKEY_YELL"]],["fly_yell",["CHEETOS_PACK_TURKEY_FLYING_YELL"]],["special",["CHEETOS_PACK_TURKEY_BASIC"]]]);
      }
   }
}
