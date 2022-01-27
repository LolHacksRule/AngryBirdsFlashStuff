package §5"D§
{
   import §6!M§.§74§;
   
   public class §^'§ extends §6"§
   {
       
      
      public function §^'§(param1:§2!k§, param2:§74§)
      {
         super(param1,param2);
      }
      
      override protected function changeState(param1:String) : void
      {
         §^!_§ = 0;
         §6a§ = §#A§(param1);
         if(§'h§)
         {
            param1 = §4!3§;
         }
         else if(param1 != §1l§)
         {
            §9"§ = -1;
         }
         else
         {
            §#"3§();
         }
         §%!o§ = param1;
         §1!^§.renderer.setAnimation(param1);
      }
      
      override protected function updateState() : void
      {
         if(§'h§)
         {
            §%!o§ = §4!3§;
         }
         switch(§%!o§)
         {
            case §1l§:
               §"_§();
               break;
            case §2!q§:
               §4!U§();
               break;
            case § l§:
               §8"%§();
               break;
            case §1!1§:
               §'!<§();
               break;
            case §5;§:
               §throw§();
               break;
            case §?o§:
               §&c§();
               break;
            default:
               if(§'h§)
               {
                  this.changeState(§4!3§);
                  break;
               }
               this.changeState(§1l§);
               break;
         }
      }
   }
}
