package §4§#3
{
   import §,"v§.§;"n§;
   import §5"D§.§!$E§;
   import §>2§.§!6§;
   import §>2§.§"§;
   
   public class §;!X§ extends §9#i§
   {
       
      
      public function §;!X§(param1:§!6§, param2:§;"n§)
      {
         super(param1,param2);
      }
      
      public function get §1$'§() : §"#1§
      {
         return §5#0§ as §"#1§;
      }
      
      override public function changeGameState(param1:int, param2:Boolean = false) : void
      {
         super.changeGameState(param1,param2);
         dispatchEvent(new §!$E§(§!$E§.STATE_CHANGED,param1));
      }
   }
}
