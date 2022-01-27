package §^'§
{
   public class § if§ extends §?!@§
   {
       
      
      public function § if§(param1:§ !C§)
      {
         super(param1);
      }
      
      override public function initializeAnimations(param1:Array) : void
      {
         super.initializeAnimations(param1);
         §9L§("POWERUP_BOMB",["POWERUP_DROP_01"]);
         §9L§("POWERUP_BOMB_PARACHUTE",["POWERUP_DROP_02"]);
         §9L§("SUPER_SLINGSHOT",["SLING_SHOT_02_BACK","SLING_SHOT_02_FRONT"]);
         §9L§("LASER_DOT",["LASER_DOT"]);
         §9L§("BIRD_MIGHTY_PHIL_EAGLE",["MIGHTY_PHILADELPHIA_EAGLE_1","MIGHTY_PHILADELPHIA_EAGLE_2"]);
         §9L§("BIRD_PHIL_SARDINE",["MIGHTY_PHILADELPHIA_EAGLE_BALL"]);
      }
      
      override protected function initializeBirdAnimations() : void
      {
         super.initializeBirdAnimations();
      }
      
      override public function getAnimation(param1:String) : §,!2§
      {
         if(param1 == "BIRD_SARDINE")
         {
            return super.getAnimation("BIRD_PHIL_SARDINE");
         }
         return super.getAnimation(param1);
      }
   }
}
