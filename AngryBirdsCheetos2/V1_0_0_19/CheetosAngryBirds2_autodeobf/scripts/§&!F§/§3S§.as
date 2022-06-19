package §&!F§
{
   import §1!E§.§>f§;
   import §12§.§25§;
   import §5G§.§39§;
   import §=!g§.§!!@§;
   import §[h§.§7Z§;
   import §[h§.§[!U§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §3S§ extends EventDispatcher implements §7Z§
   {
       
      
      private var §=9§:int;
      
      private var §[-§:§[! §;
      
      private var §9n§:§1!%§;
      
      public function §3S§()
      {
         super();
         this.§,W§();
         this.§[-§ = new §[! §(this);
         this.§9n§ = new §1!%§(this);
      }
      
      public function §,W§() : void
      {
         this.§5<§(0);
         if(this.§[-§)
         {
            this.§[-§.removeEventListener(§25§.§case §,this.§=v§);
            this.§[-§.removeEventListener(§25§.§^!9§,this.§>x§);
            this.§9n§.removeEventListener(§25§.§&a§,this.§!!b§);
            this.§9n§.removeEventListener(§25§.§?n§,this.§;!_§);
            this.§[-§.removeEventListener(§25§.§&g§,this.§95§);
            this.§9n§.removeEventListener(§25§.§&g§,this.§95§);
         }
      }
      
      public function §%!L§() : void
      {
         if(!§>f§.§%!`§)
         {
            return;
         }
         var _loc2_:Object = {"id":§>f§.§%!`§.id};
         new §"!d§(_loc2_,§5!9§.§<V§ + "getItems",this,§"!d§.§9X§);
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:Array = null;
         var _loc7_:String = null;
         var _loc2_:Object = §[!U§.§ !=§((param1.currentTarget as URLLoader).data);
         if(_loc2_.error)
         {
            dispatchEvent(new §25§(§25§.§ -§));
            return;
         }
         var _loc3_:Array = _loc2_.items;
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_.type == §"!d§.§;,§)
            {
               this.§5<§(_loc4_.count);
            }
         }
         (_loc5_ = {}).type = §"!d§.§;,§;
         _loc5_.count = this.§=9§;
         (_loc6_ = []).push(_loc5_);
         if(§>f§.§%!`§)
         {
            _loc7_ = §"!d§.§+!5§(§>f§.§%!`§.id,_loc6_);
         }
         if(_loc7_ != _loc2_.itemsSecurity && _loc3_.length != 0)
         {
            this.§5<§(0);
            dispatchEvent(new §25§(§25§.§ -§));
            return;
         }
         if(§>f§.§%!`§)
         {
            §>f§.§%!`§.§1!d§(true);
         }
         dispatchEvent(new §25§(§25§.§&g§));
      }
      
      public function onHttpStatus(param1:HTTPStatusEvent) : void
      {
      }
      
      public function onIOError(param1:IOErrorEvent) : void
      {
         §5!9§.§-!O§.§;!;§(§39§.§3!?§);
      }
      
      public function §"!4§() : int
      {
         return this.§=9§;
      }
      
      public function §5<§(param1:int) : void
      {
         this.§=9§ = param1;
         this.§%!I§();
      }
      
      public function §4!Z§() : void
      {
         this.§[-§.addEventListener(§25§.§case §,this.§=v§);
         this.§[-§.addEventListener(§25§.§^!9§,this.§>x§);
         this.§[-§.addEventListener(§25§.§&g§,this.§95§);
         this.§[-§.§6!a§(§"!d§.§7!c§);
      }
      
      private function §=v§(param1:Event) : void
      {
         dispatchEvent(new §25§(§25§.§case §));
         this.§[-§.removeEventListener(§25§.§case §,this.§=v§);
         this.§[-§.removeEventListener(§25§.§^!9§,this.§>x§);
      }
      
      private function §>x§(param1:Event) : void
      {
         dispatchEvent(new §25§(§25§.§^!9§));
         this.§[-§.removeEventListener(§25§.§case §,this.§=v§);
         this.§[-§.removeEventListener(§25§.§^!9§,this.§>x§);
      }
      
      public function §4!0§() : void
      {
         this.§9n§.addEventListener(§25§.§&a§,this.§!!b§);
         this.§9n§.addEventListener(§25§.§?n§,this.§;!_§);
         this.§9n§.addEventListener(§25§.§&g§,this.§95§);
         this.§9n§.§6!a§(§"!d§.§"!Q§);
      }
      
      private function §!!b§(param1:Event) : void
      {
         dispatchEvent(new §25§(§25§.§&a§));
         this.§9n§.removeEventListener(§25§.§&a§,this.§!!b§);
         this.§9n§.removeEventListener(§25§.§?n§,this.§;!_§);
      }
      
      private function §;!_§(param1:Event) : void
      {
         dispatchEvent(new §25§(§25§.§?n§));
         this.§[-§.removeEventListener(§25§.§&a§,this.§!!b§);
         this.§[-§.removeEventListener(§25§.§?n§,this.§;!_§);
      }
      
      private function §95§(param1:Event) : void
      {
         dispatchEvent(new §25§(§25§.§&g§));
         this.§[-§.removeEventListener(§25§.§&g§,this.§95§);
         this.§9n§.removeEventListener(§25§.§&g§,this.§95§);
      }
      
      private function §%!I§() : void
      {
         if(§>f§.§%!`§)
         {
            §!!@§.§%Q§("updateCredits",§>f§.§%!`§.§`!b§);
         }
      }
   }
}
