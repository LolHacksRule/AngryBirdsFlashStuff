package §@!l§
{
   import § !Q§.§=!3§;
   import §!!`§.§4!f§;
   import §!!`§.§>!&§;
   import §;!y§.§&o§;
   import §;!y§.§4![§;
   import §>P§.§]"4§;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §,!D§ extends §-"+§
   {
      
      private static var §`U§:Class = §[!t§;
      
      public static var §+]§:Number = 5000;
       
      
      private var §-!U§:Number;
      
      private var §>!=§:§4![§;
      
      private var §@!#§:String;
      
      private var §;!C§:Timer;
      
      private var §<R§:Boolean;
      
      public function §,!D§(param1:String, param2:Number = 5000, param3:Boolean = false)
      {
         this.§@!#§ = param1;
         this.§-!U§ = param2;
         §>,§ = true;
         super(§>!&§.§0?§,§4!f§.DEFAULT,this.§[x§());
         this.§<R§ = param3;
      }
      
      protected function §[x§() : XML
      {
         var _loc1_:XML = §=!3§.§0I§(§`U§);
         return AngryBirdsCustom.§^Z§(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         if(!this.§<R§)
         {
            this.§;!C§ = new Timer(this.§-!U§,1);
            this.§;!C§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§;"!§);
            this.§;!C§.start();
         }
         this.§>!=§ = new §4![§(§-"1§,-AngryBirdsCustom.§1<§ / 2);
         this.§>!=§.show(this.§@!#§);
         this.§>!=§.addEventListener(§&o§.§[!C§,this.§3!v§);
         if(!this.§<R§)
         {
            §6!x§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§5T§,true);
         }
      }
      
      private function §5T§(param1:MouseEvent) : void
      {
         §6!x§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§5T§);
         if(this.§>!=§)
         {
            this.§>!=§.hide();
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
      }
      
      private function §;"!§(param1:TimerEvent) : void
      {
         this.§>!=§.hide();
      }
      
      private function §3!v§(param1:§&o§) : void
      {
         close();
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         if(this.§;!C§)
         {
            this.§;!C§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§;"!§);
         }
         this.§>!=§.removeEventListener(§&o§.§[!C§,this.§3!v§);
         §6!x§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§5T§);
         this.§>!=§.dispose();
         this.§>!=§ = null;
         super.hide(param1,param2);
      }
      
      public function §8k§() : void
      {
         if(this.§>!=§)
         {
            this.§>!=§.hide();
         }
      }
      
      public function get container() : §]"4§
      {
         return §-"1§;
      }
   }
}
