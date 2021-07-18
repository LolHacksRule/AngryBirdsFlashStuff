package §1" §
{
   import §"_§.§!"8§;
   import §,P§.§'_§;
   import §7t§.§7a§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §`!]§ extends EventDispatcher implements §4!x§
   {
       
      
      private var §;!w§:Boolean = false;
      
      private var §9J§:§#!j§;
      
      public function §`!]§(param1:§#!j§)
      {
         super();
         this.§9J§ = param1;
      }
      
      public function initialize() : void
      {
         this.§9J§.§<!_§.addEventListener(§!"8§.§;`§,this.§>!>§);
      }
      
      public function activate() : void
      {
         §!!2§.§[E§.§[j§(this.§?!p§,§!!2§.SAVE);
         §!!2§.§[E§.§[j§(this.§[?§,§!!2§.MODIFY);
         §!!2§.§[E§.§[j§(this.§+'§,§!!2§.ADD);
         §!!2§.§[E§.§[j§(this.§[Q§,§!!2§.DELETE);
      }
      
      protected function §>!>§(param1:Event) : void
      {
         this.§9!G§(!this.§;!w§);
      }
      
      public function update(param1:Number) : void
      {
         if(!§'_§.isPaused)
         {
            this.§9J§.§0"!§.§0z§.update(param1,this.§;!w§);
         }
      }
      
      public function §'[§() : Boolean
      {
         return this.§;!w§;
      }
      
      public function §9!G§(param1:Boolean) : void
      {
         if(this.§;!w§ == param1)
         {
            return;
         }
         this.§;!w§ = param1;
         if(this.§;!w§)
         {
            dispatchEvent(new §!"8§(§!"8§.§4]§));
         }
         else
         {
            dispatchEvent(new §!"8§(§!"8§.§3!?§));
         }
      }
      
      public function §[?§(param1:§7a§ = null) : Boolean
      {
         return !this.§;!w§;
      }
      
      public function §+'§(param1:String = null) : Boolean
      {
         return !this.§;!w§;
      }
      
      public function §[Q§(param1:§7a§ = null) : Boolean
      {
         return !this.§;!w§;
      }
      
      public function §?!p§() : Boolean
      {
         return !this.§;!w§;
      }
   }
}
