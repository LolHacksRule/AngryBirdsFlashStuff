package § ^§
{
   import §7!g§.§?!i§;
   import §=!<§.§5!U§;
   import §=%§.§<A§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §`""§ extends EventDispatcher implements §-!"§
   {
       
      
      private var §5=§:Boolean = false;
      
      private var §`5§:§0c§;
      
      public function §`""§(param1:§0c§)
      {
         super();
         this.§`5§ = param1;
      }
      
      public function initialize() : void
      {
         this.§`5§.§!A§.addEventListener(§?!i§.§"!,§,this.§"_§);
      }
      
      public function activate() : void
      {
         §@#§.§7!?§.§<?§(this.§<"$§,§@#§.SAVE);
         §@#§.§7!?§.§<?§(this.§>!<§,§@#§.MODIFY);
         §@#§.§7!?§.§<?§(this.§"!F§,§@#§.ADD);
         §@#§.§7!?§.§<?§(this.§5!,§,§@#§.DELETE);
      }
      
      protected function §"_§(param1:Event) : void
      {
         this.§<"+§(!this.§5=§);
      }
      
      public function update(param1:Number) : void
      {
         if(!§5!U§.isPaused)
         {
            this.§`5§.§6%§.§9"&§.update(param1,this.§5=§);
         }
      }
      
      public function §7Y§() : Boolean
      {
         return this.§5=§;
      }
      
      public function §<"+§(param1:Boolean) : void
      {
         if(this.§5=§ == param1)
         {
            return;
         }
         this.§5=§ = param1;
         if(this.§5=§)
         {
            dispatchEvent(new §?!i§(§?!i§.§]`§));
         }
         else
         {
            dispatchEvent(new §?!i§(§?!i§.§@!+§));
         }
      }
      
      public function §>!<§(param1:§<A§ = null) : Boolean
      {
         return !this.§5=§;
      }
      
      public function §"!F§(param1:String = null) : Boolean
      {
         return !this.§5=§;
      }
      
      public function §5!,§(param1:§<A§ = null) : Boolean
      {
         return !this.§5=§;
      }
      
      public function §<"$§() : Boolean
      {
         return !this.§5=§;
      }
   }
}
