package §[,§
{
   import §;"=§.§-'§;
   
   public class §&>§ extends §2k§
   {
       
      
      public function §&>§(param1:§0l§, param2:§-'§)
      {
         super(param1,param2);
      }
      
      override protected function changeState(param1:String) : void
      {
         §@O§ = 0;
         §&"#§ = §]!t§(param1);
         if(§`!1§)
         {
            param1 = §'!y§;
         }
         else if(param1 != §+!=§)
         {
            §"8§ = -1;
         }
         else
         {
            §;!V§();
         }
         §-"9§ = param1;
         §>!N§.renderer.setAnimation(param1);
      }
      
      override protected function updateState() : void
      {
         if(§`!1§)
         {
            §-"9§ = §'!y§;
         }
         switch(§-"9§)
         {
            case §+!=§:
               §7U§();
               break;
            case §%E§:
               §&!y§();
               break;
            case §4!^§:
               § §();
               break;
            case §`%§:
               §`!,§();
               break;
            case §0"4§:
               §+P§();
               break;
            case §@&§:
               §7D§();
               break;
            default:
               if(§`!1§)
               {
                  this.changeState(§'!y§);
                  break;
               }
               this.changeState(§+!=§);
               break;
         }
      }
   }
}
