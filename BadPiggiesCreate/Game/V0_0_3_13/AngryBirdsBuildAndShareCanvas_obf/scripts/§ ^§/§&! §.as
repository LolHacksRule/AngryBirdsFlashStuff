package § ^§
{
   import §0s§.§?!?§;
   import §0s§.§];§;
   import §7!g§.§?!i§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   
   public class §&! § extends EventDispatcher implements §-!"§
   {
       
      
      private var §7!i§:Vector.<String>;
      
      private var §`5§:§0c§;
      
      private var §,"2§:String;
      
      public function §&! §(param1:§0c§)
      {
         super();
         this.§`5§ = param1;
      }
      
      public function initialize() : void
      {
         this.§`5§.§^!'§.addEventListener(§?!i§.§]`§,this.onPhysicsEnabled,false,1);
         this.§`5§.§^!'§.addEventListener(§?!i§.§@!+§,this.§5C§,false,1);
         this.§`5§.§!A§.addEventListener(§?!i§.PLAY,this.onPlay,false,1);
         this.§`5§.§!A§.addEventListener(KeyboardEvent.KEY_DOWN,this.§<7§);
      }
      
      public function activate() : void
      {
         if(this.§,"2§)
         {
            this.§;F§(this.§,"2§);
            this.§,"2§ = null;
         }
      }
      
      private function onPlay(param1:§?!i§) : void
      {
         this.§,"2§ = this.§8q§(false);
      }
      
      private function onPhysicsEnabled(param1:Event) : void
      {
         this.§8q§();
      }
      
      private function §5C§(param1:Event) : void
      {
         this.§=V§(false);
      }
      
      public function §`4§() : void
      {
         this.§;F§(this.§7!i§[this.§7!i§.length - 1]);
      }
      
      public function §;F§(param1:String) : void
      {
         var _loc2_:§];§ = §?!?§.§>I§(param1);
         this.§`5§.§6%§.§,!]§(_loc2_);
      }
      
      public function §8!'§() : void
      {
         this.§7!i§ = null;
      }
      
      public function §=V§(param1:Boolean = true) : void
      {
         if(this.§7!i§ != null && this.§7!i§.length > 0)
         {
            this.§`4§();
            this.§7!i§.pop();
            dispatchEvent(new §?!i§(§?!i§.§%"6§));
         }
      }
      
      public function §8q§(param1:Boolean = true) : String
      {
         if(!§@#§.§7!?§.§[!k§())
         {
            return null;
         }
         if(this.§7!i§ == null)
         {
            this.§7!i§ = new Vector.<String>();
         }
         var _loc2_:String = this.§`5§.§6%§.§9"&§.§3U§().§'!`§();
         if(param1)
         {
            this.§7!i§.push(_loc2_);
         }
         return _loc2_;
      }
      
      public function update(param1:Number) : void
      {
      }
      
      private function §<7§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == 90 && §@#§.§7!?§.§9d§())
         {
            this.§=V§();
         }
      }
   }
}
