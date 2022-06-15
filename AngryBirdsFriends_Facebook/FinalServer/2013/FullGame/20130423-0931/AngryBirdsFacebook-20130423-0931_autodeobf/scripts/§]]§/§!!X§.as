package §]]§
{
   import §2<§.§3d§;
   import §2<§.§9!7§;
   import §2<§.§9G§;
   import §5!Y§.§9"6§;
   import §5!Y§.§]!I§;
   import §59§.§="C§;
   import §9@§.§1!j§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   
   public class §!!X§ extends EventDispatcher
   {
       
      
      private var §>L§:§3d§;
      
      private var §%0§:Vector.<§="C§>;
      
      private var §9k§:Vector.<§="C§>;
      
      private var §&v§:Object;
      
      public function §!!X§()
      {
         super();
      }
      
      public function get §,1§() : Vector.<§="C§>
      {
         if(!this.§%0§)
         {
            this.§9!R§();
            return null;
         }
         return this.§%0§;
      }
      
      public function get §<$§() : Vector.<§="C§>
      {
         if(!this.§9k§)
         {
            this.§9!R§();
            return null;
         }
         return this.§9k§;
      }
      
      private function §9!R§() : void
      {
         if(this.§>L§ || this.§%0§ || this.§9k§)
         {
            return;
         }
         this.§>L§ = new §3d§();
         this.§>L§.addEventListener(Event.COMPLETE,this.§7"X§);
         this.§>L§.addEventListener(IOErrorEvent.IO_ERROR,this.§<W§);
         this.§>L§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§<W§);
         this.§>L§.addEventListener(§9G§.§33§,this.§<W§);
         this.§>L§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§>L§.load(§9!7§.§,!l§(AngryBirdsFP11.§?8§ + "/shoplisting"));
      }
      
      private function §7"X§(param1:Event) : void
      {
         var e:Event = param1;
         this.§>L§.removeEventListener(Event.COMPLETE,this.§7"X§);
         this.§>L§.removeEventListener(IOErrorEvent.IO_ERROR,this.§<W§);
         this.§>L§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§<W§);
         this.§>L§.removeEventListener(§9G§.§33§,this.§<W§);
         try
         {
            this.§&v§ = JSON.parse(this.§>L§.data);
         }
         catch(e:Error)
         {
            throw new Error("Error parsing JSON: " + §>L§.data,§1!j§.§%e§);
         }
         this.§^!6§(this.§&v§);
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function §^!6§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:§="C§ = null;
         var _loc5_:§="C§ = null;
         this.§9k§ = new Vector.<§="C§>();
         this.§%0§ = new Vector.<§="C§>();
         for each(_loc2_ in param1.fbCredits.commodities)
         {
            _loc4_ = new §="C§(_loc2_.id,_loc2_.prices,_loc2_.h);
            this.§9k§.push(_loc4_);
         }
         for each(_loc3_ in param1.vc.commodities)
         {
            _loc5_ = new §="C§(_loc3_.id,_loc3_.prices,_loc3_.h);
            this.§%0§.push(_loc5_);
         }
      }
      
      private function §<W§(param1:Event) : void
      {
         this.§>L§.removeEventListener(Event.COMPLETE,this.§7"X§);
         this.§>L§.removeEventListener(IOErrorEvent.IO_ERROR,this.§<W§);
         this.§>L§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§<W§);
         this.§>L§.removeEventListener(§9G§.§33§,this.§<W§);
         if(param1.type == §9G§.§33§)
         {
            §9"6§.§>_§(§]!I§.§`'§);
         }
         else
         {
            §9"6§.§#!o§();
         }
         this.§>L§ = null;
      }
   }
}
