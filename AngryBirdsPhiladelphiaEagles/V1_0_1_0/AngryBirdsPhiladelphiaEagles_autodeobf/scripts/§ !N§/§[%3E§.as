package § !N§
{
   public class §[>§ extends §]!P§
   {
       
      
      public function §[>§(param1:§`v§)
      {
         super(param1);
      }
      
      override public function initializeAnimations(param1:Array) : void
      {
         super.initializeAnimations(param1);
         §2E§("POWERUP_BOMB",["POWERUP_DROP_01"]);
         §2E§("POWERUP_BOMB_PARACHUTE",["POWERUP_DROP_02"]);
         §2E§("SUPER_SLINGSHOT",["SLING_SHOT_02_BACK","SLING_SHOT_02_FRONT"]);
         §2E§("LASER_DOT",["LASER_DOT"]);
         §2E§("BIRD_MIGHTY_PHIL_EAGLE",["MIGHTY_PHILADELPHIA_EAGLE_1","MIGHTY_PHILADELPHIA_EAGLE_2"]);
         §2E§("BIRD_PHIL_SARDINE",["MIGHTY_PHILADELPHIA_EAGLE_BALL"]);
      }
      
      override protected function initializeBirdAnimations() : void
      {
         super.initializeBirdAnimations();
      }
      
      override public function getAnimation(param1:String) : §=_§
      {
         if(param1 == "BIRD_SARDINE")
         {
            return super.getAnimation("BIRD_PHIL_SARDINE");
         }
         return super.getAnimation(param1);
      }
   }
}
