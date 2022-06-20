package §6V§
{
   import § $%§.§%§;
   import § $%§.§4"v§;
   import § o§.§%"!§;
   import § o§.§0!?§;
   import §<#m§.§!"<§;
   import §<#m§.§^#o§;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.utils.Timer;
   
   public class §-#9§
   {
      
      public static const §-#M§:int = 5 * 60;
       
      
      private var §>!+§:String = "";
      
      private var §3$+§:int = 300.0;
      
      private var §`#^§:Timer;
      
      private var §="$§:§4"v§;
      
      private var §!#E§:Boolean = false;
      
      private var §>!>§:Boolean = false;
      
      public function §-#9§(param1:String, param2:int = 300.0)
      {
         super();
         this.§>!+§ = param1;
         this.§3$+§ = param2;
      }
      
      public function start() : void
      {
         if(!this.§`#^§)
         {
            this.§`#^§ = new Timer(this.§3$+§ * 1000);
            this.§`#^§.addEventListener(TimerEvent.TIMER,this.§""W§);
            this.§`#^§.start();
         }
      }
      
      public function stop() : void
      {
         if(this.§`#^§)
         {
            this.§`#^§.stop();
            this.§`#^§.removeEventListener(TimerEvent.TIMER,this.§""W§);
            this.§`#^§ = null;
         }
      }
      
      public function set §''§(param1:Boolean) : void
      {
         var _loc2_:§!"<§ = null;
         this.§!#E§ = param1;
         if(!this.§!#E§ && this.§>!>§)
         {
            _loc2_ = new §0!?§(§%"!§.ERROR,§^#o§.TOP);
            AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
         }
      }
      
      public function §^"M§() : void
      {
         if(!this.§="$§)
         {
            this.§="$§ = new §4"v§();
            this.§="$§.addEventListener(Event.COMPLETE,this.§="X§);
            this.§="$§.dataFormat = URLLoaderDataFormat.TEXT;
            this.§="$§.load(§%#9§.§`#<§(AngryBirdsBase.SERVER_ROOT + "/serverversion/false"));
         }
      }
      
      private function §""W§(param1:Event) : void
      {
         this.§^"M§();
      }
      
      private function §="X§(param1:Event) : void
      {
         var _loc3_:§!"<§ = null;
         var _loc2_:String = this.§="$§.data;
         if(this.§>!+§ == null || this.§>!+§.length == 0)
         {
            this.§>!+§ = _loc2_;
         }
         this.§="$§.removeEventListener(Event.COMPLETE,this.§="X§);
         this.§="$§ = null;
         if(_loc2_ != this.§>!+§)
         {
            if(this.§!#E§)
            {
               this.§>!>§ = true;
            }
            else
            {
               _loc3_ = new §0!?§(§%"!§.ERROR,§^#o§.TOP);
               AngryBirdsBase.singleton.popupManager.openPopup(_loc3_);
            }
            this.§>!+§ = _loc2_;
            this.stop();
         }
      }
      
      public function §;#O§() : String
      {
         return this.§>!+§;
      }
   }
}
