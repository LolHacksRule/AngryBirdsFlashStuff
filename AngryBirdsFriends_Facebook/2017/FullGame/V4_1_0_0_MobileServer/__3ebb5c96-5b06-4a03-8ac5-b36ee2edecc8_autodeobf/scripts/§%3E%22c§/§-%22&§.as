package §>"c§
{
   import §&$!§.§+#!§;
   import §1#W§.§!#&§;
   import §8"X§.§#p§;
   import §@#§.§^#Q§;
   import §];§.§-!t§;
   import com.rovio.assets.§+$#§;
   
   public class §-"&§ extends §#p§
   {
       
      
      public function §-"&§(param1:§^#Q§, param2:§+#!§, param3:Boolean = false, param4:String = "stateTournamentLevelEnd")
      {
         super(param1,param2,param3,param4);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         var _loc2_:String = "LEVEL_WIN_SFX_" + §-!t§.§ "D§.tournamentRules.§@!l§;
         if(§+$#§.§1!X§(_loc2_))
         {
            §!#&§.§^!2§();
            §!#&§.playSound(_loc2_,§!#&§.§>#c§);
         }
      }
   }
}
