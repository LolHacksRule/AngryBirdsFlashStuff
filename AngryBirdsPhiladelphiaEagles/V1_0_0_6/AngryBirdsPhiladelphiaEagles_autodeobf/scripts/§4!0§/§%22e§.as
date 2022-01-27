package §4!0§
{
   public class §"e§ extends §+!,§
   {
       
      
      public function §"e§(param1:§3§)
      {
         super(param1);
      }
      
      override public function initializeAnimations(param1:Array) : void
      {
         super.initializeAnimations(param1);
         §0!8§("POWERUP_BOMB",["POWERUP_DROP_01"]);
         §0!8§("POWERUP_BOMB_PARACHUTE",["POWERUP_DROP_02"]);
         §0!8§("SUPER_SLINGSHOT",["SLING_SHOT_02_BACK","SLING_SHOT_02_FRONT"]);
         §0!8§("LASER_DOT",["LASER_DOT"]);
         §0!8§("BIRD_MIGHTY_PHIL_EAGLE",["MIGHTY_PHILADELPHIA_EAGLE_1","MIGHTY_PHILADELPHIA_EAGLE_2"]);
         §0!8§("BIRD_PHIL_SARDINE",["MIGHTY_PHILADELPHIA_EAGLE_BALL"]);
      }
      
      override protected function initializeBirdAnimations() : void
      {
         super.initializeBirdAnimations();
      }
      
      override public function getAnimation(param1:String) : §#v§
      {
         if(param1 == "BIRD_SARDINE")
         {
            return super.getAnimation("BIRD_PHIL_SARDINE");
         }
         return super.getAnimation(param1);
      }
   }
}
