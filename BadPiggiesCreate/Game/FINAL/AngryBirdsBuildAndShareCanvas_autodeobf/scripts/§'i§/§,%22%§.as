package §'i§
{
   import §"v§.§9"§;
   import §"v§.§]!B§;
   import §62§.§0!t§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   
   public class §,"%§ extends EventDispatcher implements §8p§
   {
       
      
      private var §^?§:Vector.<String>;
      
      private var §6!^§:§'!;§;
      
      private var § !>§:String;
      
      public function §,"%§(param1:§'!;§)
      {
         super();
         this.§6!^§ = param1;
      }
      
      public function initialize() : void
      {
         this.§6!^§.§1?§.addEventListener(§0!t§.§1y§,this.onPhysicsEnabled,false,1);
         this.§6!^§.§1?§.addEventListener(§0!t§.§0!_§,this.§0!h§,false,1);
         this.§6!^§.§+"2§.addEventListener(§0!t§.PLAY,this.onPlay,false,1);
         this.§6!^§.§+"2§.addEventListener(KeyboardEvent.KEY_DOWN,this.§8!l§);
      }
      
      public function activate() : void
      {
         if(this.§ !>§)
         {
            this.§+"$§(this.§ !>§);
            this.§ !>§ = null;
         }
      }
      
      private function onPlay(param1:§0!t§) : void
      {
         this.§ !>§ = this.§5R§(false);
      }
      
      private function onPhysicsEnabled(param1:Event) : void
      {
         this.§5R§();
      }
      
      private function §0!h§(param1:Event) : void
      {
         this.§`!c§(false);
      }
      
      public function §@I§() : void
      {
         this.§+"$§(this.§^?§[this.§^?§.length - 1]);
      }
      
      public function §+"$§(param1:String) : void
      {
         var _loc2_:§9"§ = §]!B§.§+0§(param1);
         this.§6!^§.§8#§.§48§(_loc2_);
      }
      
      public function §4!G§() : void
      {
         this.§^?§ = null;
      }
      
      public function §`!c§(param1:Boolean = true) : void
      {
         if(this.§^?§ != null && this.§^?§.length > 0)
         {
            this.§@I§();
            this.§^?§.pop();
            dispatchEvent(new §0!t§(§0!t§.§6!D§));
         }
      }
      
      public function §5R§(param1:Boolean = true) : String
      {
         if(!§,!1§.§2=§.§8§())
         {
            return null;
         }
         if(this.§^?§ == null)
         {
            this.§^?§ = new Vector.<String>();
         }
         var _loc2_:String = this.§6!^§.§8#§.§4+§.§6!P§().§4U§();
         if(param1)
         {
            this.§^?§.push(_loc2_);
         }
         return _loc2_;
      }
      
      public function update(param1:Number) : void
      {
      }
      
      private function §8!l§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == 90 && §,!1§.§2=§.§>L§())
         {
            this.§`!c§();
         }
      }
   }
}
