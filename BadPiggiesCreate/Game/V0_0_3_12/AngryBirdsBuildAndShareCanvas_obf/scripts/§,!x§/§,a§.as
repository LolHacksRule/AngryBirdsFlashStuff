package §,!x§
{
   import §-=§.§8"1§;
   import §1!N§.§"!k§;
   import §7"1§.§%W§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §,a§ extends EventDispatcher implements §]!'§
   {
       
      
      private var §@!1§:Boolean = false;
      
      private var §[",§:§]S§;
      
      public function §,a§(param1:§]S§)
      {
         super();
         this.§[",§ = param1;
      }
      
      public function initialize() : void
      {
         this.§[",§.§]!c§.addEventListener(§8"1§.§'i§,this.§#+§);
      }
      
      public function activate() : void
      {
         §0!s§.§ "!§.§3"'§(this.§-U§,§0!s§.SAVE);
         §0!s§.§ "!§.§3"'§(this.§%§,§0!s§.MODIFY);
         §0!s§.§ "!§.§3"'§(this.§^I§,§0!s§.ADD);
         §0!s§.§ "!§.§3"'§(this.§&!t§,§0!s§.DELETE);
      }
      
      protected function §#+§(param1:Event) : void
      {
         this.§'=§(!this.§@!1§);
      }
      
      public function update(param1:Number) : void
      {
         if(!§%W§.isPaused)
         {
            this.§[",§.§<" §.§9!8§.update(param1,this.§@!1§);
         }
      }
      
      public function §";§() : Boolean
      {
         return this.§@!1§;
      }
      
      public function §'=§(param1:Boolean) : void
      {
         if(this.§@!1§ == param1)
         {
            return;
         }
         this.§@!1§ = param1;
         if(this.§@!1§)
         {
            dispatchEvent(new §8"1§(§8"1§.§-!V§));
         }
         else
         {
            dispatchEvent(new §8"1§(§8"1§.§1!e§));
         }
      }
      
      public function §%§(param1:§"!k§ = null) : Boolean
      {
         return !this.§@!1§;
      }
      
      public function §^I§(param1:String = null) : Boolean
      {
         return !this.§@!1§;
      }
      
      public function §&!t§(param1:§"!k§ = null) : Boolean
      {
         return !this.§@!1§;
      }
      
      public function §-U§() : Boolean
      {
         return !this.§@!1§;
      }
   }
}
