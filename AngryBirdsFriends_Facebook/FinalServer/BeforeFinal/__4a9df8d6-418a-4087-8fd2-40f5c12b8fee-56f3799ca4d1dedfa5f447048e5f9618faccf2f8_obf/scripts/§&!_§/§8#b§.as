package §&!_§
{
   import §0!s§.§5!-§;
   import §0!s§.§]"Y§;
   import §1L§.§!!o§;
   import §1L§.§;#&§;
   import §>z§.§#"l§;
   import §>z§.§;#t§;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.utils.Timer;
   
   public class §8#b§
   {
      
      public static const §96§:int = 5 * 60;
       
      
      private var §&!i§:String = "";
      
      private var § #2§:int = 300.0;
      
      private var §%"<§:Timer;
      
      private var §^!-§:§!!o§;
      
      private var §0!b§:Boolean = false;
      
      private var §1!t§:Boolean = false;
      
      public function §8#b§(param1:String, param2:int = 300.0)
      {
         super();
         this.§&!i§ = param1;
         this.§ #2§ = param2;
      }
      
      public function start() : void
      {
         if(!this.§%"<§)
         {
            this.§%"<§ = new Timer(this.§ #2§ * 1000);
            this.§%"<§.addEventListener(TimerEvent.TIMER,this.§,!#§);
            this.§%"<§.start();
         }
      }
      
      public function stop() : void
      {
         if(this.§%"<§)
         {
            this.§%"<§.stop();
            this.§%"<§.removeEventListener(TimerEvent.TIMER,this.§,!#§);
            this.§%"<§ = null;
         }
      }
      
      public function set §=$<§(param1:Boolean) : void
      {
         var _loc2_:§5!-§ = null;
         this.§0!b§ = param1;
         if(!this.§0!b§ && this.§1!t§)
         {
            _loc2_ = new §;#t§(§#"l§.ERROR,§]"Y§.TOP);
            AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
         }
      }
      
      public function §^j§() : void
      {
         if(!this.§^!-§)
         {
            this.§^!-§ = new §!!o§();
            this.§^!-§.addEventListener(Event.COMPLETE,this.§?#X§);
            this.§^!-§.dataFormat = URLLoaderDataFormat.TEXT;
            this.§^!-§.load(§;#&§.§ #G§(AngryBirdsBase.SERVER_ROOT + "/serverversion/false"));
         }
      }
      
      private function §,!#§(param1:Event) : void
      {
         this.§^j§();
      }
      
      private function §?#X§(param1:Event) : void
      {
         var _loc3_:§5!-§ = null;
         var _loc2_:String = this.§^!-§.data;
         if(this.§&!i§ == null || this.§&!i§.length == 0)
         {
            this.§&!i§ = _loc2_;
         }
         this.§^!-§.removeEventListener(Event.COMPLETE,this.§?#X§);
         this.§^!-§ = null;
         if(_loc2_ != this.§&!i§)
         {
            if(this.§0!b§)
            {
               this.§1!t§ = true;
            }
            else
            {
               _loc3_ = new §;#t§(§#"l§.ERROR,§]"Y§.TOP);
               AngryBirdsBase.singleton.popupManager.openPopup(_loc3_);
            }
            this.§&!i§ = _loc2_;
            this.stop();
         }
      }
      
      public function §>#V§() : String
      {
         return this.§&!i§;
      }
   }
}
