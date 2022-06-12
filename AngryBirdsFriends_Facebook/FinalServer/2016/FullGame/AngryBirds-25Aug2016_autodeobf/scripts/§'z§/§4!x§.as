package §'z§
{
   import §#v§.§#!?§;
   import §52§.§#!,§;
   import §52§.§#%§;
   import §;!Q§.§%!Q§;
   import §@#^§.§case§;
   
   public class §4!x§ extends §7!J§
   {
       
      
      private var §`$0§:Array;
      
      public function §4!x§(param1:§#!,§, param2:§#!?§)
      {
         super(param1,param2);
      }
      
      public function get §#""§() : §#%§
      {
         return §,#2§ as §#%§;
      }
      
      override public function init() : void
      {
         super.init();
         this.§`$0§ = [];
      }
      
      public function §=!$§() : Array
      {
         return this.§`$0§;
      }
      
      public function §'$'§(param1:String) : void
      {
         this.§`$0§.push(param1);
         dispatchEvent(new §%!Q§(§%!Q§.§[?§,param1));
      }
      
      override public function changeGameState(param1:int, param2:Boolean = false) : void
      {
         super.changeGameState(param1,param2);
         dispatchEvent(new §case§(§case§.STATE_CHANGED,param1));
      }
   }
}
