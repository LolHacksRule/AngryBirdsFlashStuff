package §!L§
{
   import § !D§.§'"u§;
   import § !D§.§4B§;
   import §"$=§.§'![§;
   import §7"O§.§3!N§;
   
   public class §6!<§ extends §<"s§
   {
       
      
      public function §6!<§(param1:§'"u§, param2:§'![§)
      {
         super(param1,param2);
      }
      
      public function get §-a§() : §4B§
      {
         return §&!g§ as §4B§;
      }
      
      override public function changeGameState(param1:int, param2:Boolean = false) : void
      {
         super.changeGameState(param1,param2);
         dispatchEvent(new §3!N§(§3!N§.STATE_CHANGED,param1));
      }
   }
}
