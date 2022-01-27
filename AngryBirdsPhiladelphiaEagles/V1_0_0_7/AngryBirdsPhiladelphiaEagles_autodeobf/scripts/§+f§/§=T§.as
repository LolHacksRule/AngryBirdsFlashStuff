package §+f§
{
   public class §=T§ extends §@d§
   {
       
      
      public function §=T§(param1:§4!8§)
      {
         super(param1);
      }
      
      override public function initializeAnimations(param1:Array) : void
      {
         super.initializeAnimations(param1);
         §"f§("POWERUP_BOMB",["POWERUP_DROP_01"]);
         §"f§("POWERUP_BOMB_PARACHUTE",["POWERUP_DROP_02"]);
         §"f§("SUPER_SLINGSHOT",["SLING_SHOT_02_BACK","SLING_SHOT_02_FRONT"]);
         §"f§("LASER_DOT",["LASER_DOT"]);
         §"f§("BIRD_MIGHTY_PHIL_EAGLE",["MIGHTY_PHILADELPHIA_EAGLE_1","MIGHTY_PHILADELPHIA_EAGLE_2"]);
         §"f§("BIRD_PHIL_SARDINE",["MIGHTY_PHILADELPHIA_EAGLE_BALL"]);
      }
      
      override protected function initializeBirdAnimations() : void
      {
         super.initializeBirdAnimations();
      }
      
      override public function getAnimation(param1:String) : §0Q§
      {
         if(param1 == "BIRD_SARDINE")
         {
            return super.getAnimation("BIRD_PHIL_SARDINE");
         }
         return super.getAnimation(param1);
      }
   }
}
