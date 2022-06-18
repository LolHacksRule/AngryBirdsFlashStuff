package §0!>§
{
   import §2x§.§ !h§;
   import §?$#§.§<d§;
   import §?$#§.§^#j§;
   import §?o§.§4#?§;
   
   public class § !b§ extends §;#$§
   {
       
      
      public function § !b§(param1:§<d§, param2:§4#?§)
      {
         super(param1,param2);
      }
      
      public function get §'"&§() : §^#j§
      {
         return § 6§ as §^#j§;
      }
      
      override public function changeGameState(param1:int, param2:Boolean = false) : void
      {
         super.changeGameState(param1,param2);
         dispatchEvent(new § !h§(§ !h§.STATE_CHANGED,param1));
      }
   }
}
