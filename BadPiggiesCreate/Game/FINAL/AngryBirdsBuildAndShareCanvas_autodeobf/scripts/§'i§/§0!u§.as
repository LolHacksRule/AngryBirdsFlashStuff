package §'i§
{
   import §%c§.§=!X§;
   import §62§.§0!t§;
   import §7r§.§=q§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §0!u§ extends EventDispatcher implements §8p§
   {
       
      
      private var §<y§:Boolean = false;
      
      private var §6!^§:§'!;§;
      
      public function §0!u§(param1:§'!;§)
      {
         super();
         this.§6!^§ = param1;
      }
      
      public function initialize() : void
      {
         this.§6!^§.§+"2§.addEventListener(§0!t§.§!">§,this.§3!x§);
      }
      
      public function activate() : void
      {
         §,!1§.§2=§.§8!5§(this.§-!Q§,§,!1§.SAVE);
         §,!1§.§2=§.§8!5§(this.§?K§,§,!1§.MODIFY);
         §,!1§.§2=§.§8!5§(this.§^U§,§,!1§.ADD);
         §,!1§.§2=§.§8!5§(this.§5;§,§,!1§.DELETE);
      }
      
      protected function §3!x§(param1:Event) : void
      {
         this.§ !v§(!this.§<y§);
      }
      
      public function update(param1:Number) : void
      {
         if(!§=!X§.isPaused)
         {
            this.§6!^§.§8#§.§4+§.update(param1,this.§<y§);
         }
      }
      
      public function §7"4§() : Boolean
      {
         return this.§<y§;
      }
      
      public function § !v§(param1:Boolean) : void
      {
         if(this.§<y§ == param1)
         {
            return;
         }
         this.§<y§ = param1;
         if(this.§<y§)
         {
            dispatchEvent(new §0!t§(§0!t§.§1y§));
         }
         else
         {
            dispatchEvent(new §0!t§(§0!t§.§0!_§));
         }
      }
      
      public function §?K§(param1:§=q§ = null) : Boolean
      {
         return !this.§<y§;
      }
      
      public function §^U§(param1:String = null) : Boolean
      {
         return !this.§<y§;
      }
      
      public function §5;§(param1:§=q§ = null) : Boolean
      {
         return !this.§<y§;
      }
      
      public function §-!Q§() : Boolean
      {
         return !this.§<y§;
      }
   }
}
