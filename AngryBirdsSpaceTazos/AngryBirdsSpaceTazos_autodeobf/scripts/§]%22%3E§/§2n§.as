package §]">§
{
   import §"!&§.§3",§;
   
   public class §2n§ extends §;W§
   {
       
      
      public function §2n§(param1:§?!`§, param2:§3",§)
      {
         super(param1,param2);
      }
      
      override protected function changeState(param1:String) : void
      {
         §<!?§ = 0;
         §=!`§ = §^K§(param1);
         if(§]"&§)
         {
            param1 = §;!4§;
         }
         else if(param1 != §function§)
         {
            §<"!§ = -1;
         }
         else
         {
            §&"8§();
         }
         §>!2§ = param1;
         §;g§.renderer.setAnimation(param1);
      }
      
      override protected function updateState() : void
      {
         if(§]"&§)
         {
            §>!2§ = §;!4§;
         }
         switch(§>!2§)
         {
            case §function§:
               §]g§();
               break;
            case §"J§:
               §1"4§();
               break;
            case §!c§:
               §5" §();
               break;
            case §<"B§:
               §2!8§();
               break;
            case §7#§:
               §<!m§();
               break;
            case §0"E§:
               §'"#§();
               break;
            default:
               if(§]"&§)
               {
                  this.changeState(§;!4§);
               }
               else
               {
                  this.changeState(§function§);
               }
         }
      }
   }
}
