package §7"2§
{
   import §%!n§.§7P§;
   import §5!k§.§6"6§;
   import §6!&§.§",§;
   import §6!&§.§0!b§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   
   public class §#!a§ extends EventDispatcher implements §!"1§
   {
       
      
      private var §<!k§:Vector.<String>;
      
      private var §"Z§:§;!5§;
      
      public function §#!a§(param1:§;!5§)
      {
         super();
         this.§"Z§ = param1;
      }
      
      public function initialize() : void
      {
         this.§"Z§.§!!7§.addEventListener(§6"6§.§#§,this.onPhysicsEnabled,false,1);
         this.§"Z§.§!!7§.addEventListener(§6"6§.§]!'§,this.§?!o§,false,1);
         this.§"Z§.§[U§.addEventListener(KeyboardEvent.KEY_DOWN,this.§`$§);
      }
      
      protected function onPhysicsEnabled(param1:Event) : void
      {
         this.§?"-§();
      }
      
      protected function §?!o§(param1:Event) : void
      {
         this.§3!x§(false);
      }
      
      public function §!!p§() : void
      {
         var _loc1_:§0!b§ = §",§.§4!S§(this.§<!k§[this.§<!k§.length - 1]);
         this.§"Z§.§94§.§![§(_loc1_);
      }
      
      public function §"6§() : void
      {
         this.§<!k§ = null;
      }
      
      public function §3!x§(param1:Boolean = true) : void
      {
         if(this.§<!k§ != null && this.§<!k§.length > 0)
         {
            this.§!!p§();
            this.§<!k§.pop();
            dispatchEvent(new §6"6§(§6"6§.§]>§));
         }
      }
      
      public function §?"-§() : void
      {
         if(!§7P§.§'!o§.canCreateUndoPoint())
         {
            return;
         }
         if(this.§<!k§ == null)
         {
            this.§<!k§ = new Vector.<String>();
         }
         this.§<!k§.push(this.§"Z§.§94§.§'!E§.§+!3§().§%!§());
      }
      
      public function activate() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      private function §`$§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == 90 && §7P§.§'!o§.§&$§())
         {
            this.§3!x§();
         }
      }
   }
}
