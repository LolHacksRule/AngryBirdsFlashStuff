package §9"!§
{
   import §3>§.§34§;
   
   public class §'!v§ extends §+I§
   {
       
      
      public function §'!v§(param1:§>![§, param2:§34§)
      {
         super(param1,param2);
      }
      
      override protected function changeState(param1:String) : void
      {
         §1"7§ = 0;
         §+!n§ = §3!i§(param1);
         if(§9"'§)
         {
            param1 = §6P§;
         }
         else if(param1 != §&§)
         {
            §0c§ = -1;
         }
         else
         {
            §+A§();
         }
         §1j§ = param1;
         §9!e§.renderer.setAnimation(param1);
      }
      
      override protected function updateState() : void
      {
         if(§9"'§)
         {
            §1j§ = §6P§;
         }
         switch(§1j§)
         {
            case §&§:
               §<!l§();
               break;
            case §<"1§:
               §#"1§();
               break;
            case §3U§:
               §"";§();
               break;
            case §4"#§:
               §5O§();
               break;
            case §<g§:
               §&2§();
               break;
            case §2y§:
               §2!-§();
               break;
            default:
               if(§9"'§)
               {
                  this.changeState(§6P§);
                  break;
               }
               this.changeState(§&§);
               break;
         }
      }
   }
}
