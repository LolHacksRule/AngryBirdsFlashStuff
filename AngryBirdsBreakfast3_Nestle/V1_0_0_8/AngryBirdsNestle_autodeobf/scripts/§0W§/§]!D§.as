package §0W§
{
   import §"!G§.§3!f§;
   import §#!n§.§+!o§;
   import §,#§.§ K§;
   import §,#§.§=%§;
   import §8!e§.§3"&§;
   import §;"+§.§^!i§;
   import flash.events.EventDispatcher;
   
   public class §]!D§ extends EventDispatcher implements §&!6§
   {
       
      
      protected var §[_§:§^!i§;
      
      protected var §`^§:Boolean;
      
      protected var §%""§:§+!o§;
      
      protected var §>!L§:§3!f§;
      
      protected var §!3§:§3"&§;
      
      public function §]!D§(param1:§^!i§, param2:§3"&§, param3:§+!o§, param4:§3!f§)
      {
         super();
         this.§[_§ = param1;
         this.§!3§ = param2;
         this.§>!L§ = param4;
         this.§%""§ = param3;
         this.§`^§ = true;
         this.init();
      }
      
      public function get §7"8§() : §^!i§
      {
         return this.§[_§;
      }
      
      protected function refresh() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function §@!;§() : Boolean
      {
         return !this.§`^§;
      }
      
      protected function init() : void
      {
         throw "--#AbstractShopTab[init]:: MUST BE IMPLEMENTED";
      }
      
      public function dispose() : void
      {
         throw "--#AbstractShopTab[init]:: MUST BE IMPLEMENTED";
      }
      
      public function disable(param1:Boolean) : void
      {
         this.§`^§ = true;
      }
      
      public function enable(param1:Boolean) : void
      {
         this.§`^§ = false;
      }
      
      protected function § O§() : String
      {
         return §=%§.§'u§;
      }
      
      protected function §'m§() : String
      {
         return § K§.§'u§;
      }
   }
}
