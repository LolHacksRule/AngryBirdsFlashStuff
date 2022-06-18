package §["-§
{
   import §&!m§.§'#E§;
   import §+!C§.§!!S§;
   import §+!C§.§#!L§;
   import §@#§.§^#Q§;
   
   public class §3"<§ extends §;#>§
   {
       
      
      public function §3"<§(param1:§!!S§, param2:§^#Q§)
      {
         super(param1,param2);
      }
      
      public function get §"!!§() : §#!L§
      {
         return §`=§ as §#!L§;
      }
      
      override public function changeGameState(param1:int, param2:Boolean = false) : void
      {
         super.changeGameState(param1,param2);
         dispatchEvent(new §'#E§(§'#E§.STATE_CHANGED,param1));
      }
   }
}
