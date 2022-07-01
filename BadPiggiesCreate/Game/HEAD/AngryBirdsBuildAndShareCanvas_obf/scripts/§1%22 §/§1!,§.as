package §1" §
{
   import §"_§.§!"8§;
   import §<i§.§'!e§;
   import §<i§.§-"?§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   
   public class §1!,§ extends EventDispatcher implements §4!x§
   {
       
      
      private var §^!P§:Vector.<String>;
      
      private var §9J§:§#!j§;
      
      private var §5!7§:String;
      
      public function §1!,§(param1:§#!j§)
      {
         super();
         this.§9J§ = param1;
      }
      
      public function initialize() : void
      {
         this.§9J§.§%8§.addEventListener(§!"8§.§4]§,this.onPhysicsEnabled,false,1);
         this.§9J§.§%8§.addEventListener(§!"8§.§3!?§,this.§@<§,false,1);
         this.§9J§.§<!_§.addEventListener(§!"8§.PLAY,this.onPlay,false,1);
         this.§9J§.§<!_§.addEventListener(KeyboardEvent.KEY_DOWN,this.§[H§);
      }
      
      public function activate() : void
      {
         if(this.§5!7§)
         {
            this.§79§(this.§5!7§);
            this.§5!7§ = null;
         }
      }
      
      private function onPlay(param1:§!"8§) : void
      {
         this.§5!7§ = this.§1!E§(false);
      }
      
      private function onPhysicsEnabled(param1:Event) : void
      {
         this.§1!E§();
      }
      
      private function §@<§(param1:Event) : void
      {
         this.§,!<§(false);
      }
      
      public function §0"0§() : void
      {
         this.§79§(this.§^!P§[this.§^!P§.length - 1]);
      }
      
      public function §79§(param1:String) : void
      {
         var _loc2_:§'!e§ = §-"?§.§ !N§(param1);
         this.§9J§.§0"!§.§@!0§(_loc2_);
      }
      
      public function §&",§() : void
      {
         this.§^!P§ = null;
      }
      
      public function §,!<§(param1:Boolean = true) : void
      {
         if(this.§^!P§ != null && this.§^!P§.length > 0)
         {
            this.§0"0§();
            this.§^!P§.pop();
            dispatchEvent(new §!"8§(§!"8§.§"!I§));
         }
      }
      
      public function §1!E§(param1:Boolean = true) : String
      {
         if(!§!!2§.§[E§.§^"#§())
         {
            return null;
         }
         if(this.§^!P§ == null)
         {
            this.§^!P§ = new Vector.<String>();
         }
         var _loc2_:String = this.§9J§.§0"!§.§0z§.§1!l§().§]Z§();
         if(param1)
         {
            this.§^!P§.push(_loc2_);
         }
         return _loc2_;
      }
      
      public function update(param1:Number) : void
      {
      }
      
      private function §[H§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == 90 && §!!2§.§[E§.§'%§())
         {
            this.§,!<§();
         }
      }
   }
}
