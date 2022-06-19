package §_-o0§
{
   import §_-4I§.§_-ok§;
   import §_-4I§.§_-v8§;
   
   public class §_-pw§ extends §_-ok§
   {
       
      
      public function §_-pw§(param1:§_-v8§)
      {
         super(param1);
      }
      
      override public function initializeAnimations(param1:Array) : void
      {
         super.initializeAnimations(param1);
         §_-sw§("CHEETOS_EXPLOSION",["CHEETOS_BAG_EXPLOSION1","CHEETOS_BAG_EXPLOSION2","CHEETOS_BAG_EXPLOSION3","CHEETOS_BAG_EXPLOSION4","CHEETOS_BAG_EXPLOSION5","CHEETOS_BAG_EXPLOSION6"]);
         §_-sw§("CHEESE_PARTICLE",["CHEESE_PARTICLE"]);
         §_-sw§("CHEETOS_PACK_GLOW",["CHEETOS_PACK_GLOW"]);
      }
      
      override protected function initializeBirdAnimations() : void
      {
         super.initializeBirdAnimations();
         §_-FY§("BIRD_CHEETOS_BAG",[["normal",["CHEETOS_PACK_TURKEY_BASIC","CHEETOS_PACK_TURKEY_2"]],["blink",["CHEETOS_PACK_TURKEY_BLINK"]],["fly",["CHEETOS_PACK_TURKEY_FLYING_YELL"]],["yell",["CHEETOS_PACK_TURKEY_YELL"]],["fly_yell",["CHEETOS_PACK_TURKEY_FLYING_YELL"]],["special",["CHEETOS_PACK_TURKEY_BASIC"]]]);
      }
   }
}
