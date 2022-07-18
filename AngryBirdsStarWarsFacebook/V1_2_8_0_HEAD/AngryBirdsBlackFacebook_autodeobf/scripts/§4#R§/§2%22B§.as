package §4#R§
{
   import §!!c§.§]# §;
   import §+!J§.§""A§;
   import §+!J§.§>n§;
   import §,0§.§"§;
   import §1"b§.§7",§;
   import §1"b§.§>l§;
   import §]"U§.§'#;§;
   import §]"r§.§2!H§;
   import §]"r§.§;"6§;
   import §`^§.DropDownEvent;
   import com.furusystems.dconsole2.§!!%§;
   import flash.utils.Dictionary;
   
   public class §2"B§ extends §>n§ implements §]# §
   {
       
      
      private var §@l§:Dictionary;
      
      private var §-s§:§;"6§;
      
      private var §5"d§:§>l§;
      
      public function §2"B§(param1:§!!%§)
      {
         this.§@l§ = new Dictionary();
         super();
         this.§5"d§ = param1.§]"z§;
         this.§5"d§.addCallback(§""A§.§4#I§,this.§-!B§);
         this.§-s§ = new §;"6§("Inspectors");
         addChild(this.§-s§);
         this.§-s§.addEventListener(DropDownEvent.§0F§,this.§=!U§,false,0,true);
      }
      
      private function §=!U§(param1:DropDownEvent) : void
      {
         this.§"#7§(param1.§5d§.data);
      }
      
      public function §-!B§(param1:§7",§) : void
      {
         this.§-s§.§<!P§();
      }
      
      public function §8#§(param1:§'#;§) : void
      {
         this.§-s§.§8#§(new §2!H§(param1.title,param1.view,true));
      }
      
      public function §^q§(param1:§'#;§) : void
      {
         this.§-s§.§[!N§(param1.title);
      }
      
      public function §"#7§(param1:§"#9§) : void
      {
         this.§-s§.§##4§(param1.title);
         this.§5"d§.§#!"§(§""A§.§3#5§,param1,this);
      }
   }
}
