package §6#h§
{
   import §#g§.§!P§;
   import §#g§.§8§;
   import §7#$§.§]#q§;
   import §@!l§.§+!N§;
   
   public class §5#&§ extends §'!t§
   {
       
      
      public function §5#&§(param1:§8#3§, param2:§]#q§)
      {
         super(param1,param2);
      }
      
      public function get §,!M§() : §!P§
      {
         return §9!E§ as §!P§;
      }
      
      override public function changeGameState(param1:int, param2:Boolean = false) : void
      {
         super.changeGameState(param1,param2);
         dispatchEvent(new §+!N§(§+!N§.STATE_CHANGED,param1));
      }
   }
}
