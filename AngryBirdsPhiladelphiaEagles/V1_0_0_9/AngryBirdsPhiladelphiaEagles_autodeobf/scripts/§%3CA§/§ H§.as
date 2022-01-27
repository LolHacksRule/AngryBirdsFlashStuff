package §<A§
{
   public class § H§ extends §'n§
   {
       
      
      public function § H§(param1:§'K§)
      {
         super(param1);
      }
      
      override public function initializeAnimations(param1:Array) : void
      {
         super.initializeAnimations(param1);
         §+!9§("POWERUP_BOMB",["POWERUP_DROP_01"]);
         §+!9§("POWERUP_BOMB_PARACHUTE",["POWERUP_DROP_02"]);
         §+!9§("SUPER_SLINGSHOT",["SLING_SHOT_02_BACK","SLING_SHOT_02_FRONT"]);
         §+!9§("LASER_DOT",["LASER_DOT"]);
         §+!9§("BIRD_MIGHTY_PHIL_EAGLE",["MIGHTY_PHILADELPHIA_EAGLE_1","MIGHTY_PHILADELPHIA_EAGLE_2"]);
         §+!9§("BIRD_PHIL_SARDINE",["MIGHTY_PHILADELPHIA_EAGLE_BALL"]);
      }
      
      override protected function initializeBirdAnimations() : void
      {
         super.initializeBirdAnimations();
      }
      
      override public function getAnimation(param1:String) : §;V§
      {
         if(param1 == "BIRD_SARDINE")
         {
            return super.getAnimation("BIRD_PHIL_SARDINE");
         }
         return super.getAnimation(param1);
      }
   }
}
