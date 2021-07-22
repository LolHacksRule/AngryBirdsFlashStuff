package §+!u§
{
   import §#v§.§#!?§;
   import §'U§.§]#[§;
   import §-"i§.§6#A§;
   import §5"$§.§]!m§;
   import §8§.§#$+§;
   import com.rovio.assets.§@`§;
   
   public class §1s§ extends §6#A§
   {
       
      
      public function §1s§(param1:§#!?§, param2:§]#[§, param3:Boolean = false, param4:String = "stateTournamentLevelEnd")
      {
         super(param1,param2,param3,param4);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         var _loc2_:String = "LEVEL_WIN_SFX_" + §]!m§.§3!]§.§,"K§.§+G§;
         if(§@`§.§38§(_loc2_))
         {
            §#$+§.§#$-§();
            §#$+§.playSound(_loc2_,§#$+§.§#"k§);
         }
      }
   }
}
