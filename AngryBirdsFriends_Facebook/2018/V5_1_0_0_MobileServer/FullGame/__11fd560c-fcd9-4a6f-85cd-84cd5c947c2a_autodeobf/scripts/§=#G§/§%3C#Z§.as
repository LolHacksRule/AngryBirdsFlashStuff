package §=#G§
{
   import §;$3§.§8=§;
   import §@!Q§.§]$0§;
   import §@0§.§%!q§;
   import §@0§.§2$2§;
   
   public class §<#Z§ extends §6"v§
   {
       
      
      public function §<#Z§(param1:§%!q§, param2:§8=§)
      {
         super(param1,param2);
      }
      
      public function get §'"`§() : §2$2§
      {
         return §=#N§ as §2$2§;
      }
      
      override public function changeGameState(param1:int, param2:Boolean = false) : void
      {
         super.changeGameState(param1,param2);
         dispatchEvent(new §]$0§(§]$0§.STATE_CHANGED,param1));
      }
   }
}
