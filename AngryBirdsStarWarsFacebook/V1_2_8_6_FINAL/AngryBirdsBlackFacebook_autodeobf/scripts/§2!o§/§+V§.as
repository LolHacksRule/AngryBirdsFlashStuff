package §2!o§
{
   import §!"-§.§]"_§;
   import §0"g§.§%b§;
   import §0"g§.§5!%§;
   import §5"Q§.§5"s§;
   import flash.display.MovieClip;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §+V§
   {
      
      public static const §7!O§:int = 7000;
      
      public static const §!=§:int = 200;
       
      
      private var §="y§:MovieClip;
      
      private var §<!Z§:Array;
      
      private var §>"D§:int = 0;
      
      private var §;!g§:Timer;
      
      private var §?i§:§%b§;
      
      private var §"=§:Number;
      
      public function §+V§(param1:MovieClip)
      {
         super();
         this.§="y§ = param1;
         this.§"=§ = this.§="y§.txtTip.y;
         this.§<!Z§ = this.§7I§(this.§?K§());
         if(this.§<!Z§.length == 0)
         {
            this.§="y§.visible = false;
         }
         else
         {
            this.§="y§.visible = true;
            this.§,"j§ = this.§<!Z§[0];
            if(this.§<!Z§.length > 1)
            {
               this.§5"j§();
            }
         }
      }
      
      private function §5"j§() : void
      {
         if(!this.§;!g§)
         {
            this.§;!g§ = new Timer(§7!O§);
            this.§;!g§.addEventListener(TimerEvent.TIMER,this.§["^§);
         }
         this.§;!g§.start();
      }
      
      private function §["^§(param1:TimerEvent) : void
      {
         this.§;!g§.stop();
         this.§,!!§();
      }
      
      private function §,!!§() : void
      {
         this.§?i§ = §5!%§.§!6§.§4!M§(this.§="y§.txtTip,{"alpha":0},null,§!=§ / 1000,§]"_§.easeOut);
         this.§?i§.onComplete = this.§5"u§;
         this.§?i§.play();
      }
      
      private function §5"u§() : void
      {
         ++this.§>"D§;
         if(this.§>"D§ >= this.§<!Z§.length)
         {
            this.§>"D§ = 0;
         }
         this.§,"j§ = this.§<!Z§[this.§>"D§];
         this.§%4§();
      }
      
      private function §%4§() : void
      {
         this.§?i§ = §5!%§.§!6§.§4!M§(this.§="y§.txtTip,{"alpha":1},null,§!=§ / 1000,§]"_§.easeOut);
         this.§?i§.onComplete = this.§`#§;
         this.§?i§.play();
      }
      
      private function §`#§() : void
      {
         this.§5"j§();
      }
      
      private function §?K§() : Array
      {
         try
         {
            return JSON.parse(§5"s§.§<!8§("getTips") as String) as Array;
         }
         catch(e:Error)
         {
            return [];
         }
      }
      
      private function §7I§(param1:Array) : Array
      {
         param1 = param1.concat();
         var _loc2_:Array = [];
         while(param1.length > 0)
         {
            _loc2_.push(param1.splice(Math.round(Math.random() * (param1.length - 1)),1)[0]);
         }
         return _loc2_;
      }
      
      private function set §,"j§(param1:String) : void
      {
         this.§="y§.txtTip.text = param1;
         this.§="y§.txtTip.y = this.§"=§ + Math.round((this.§="y§.txtTip.height - this.§="y§.txtTip.textHeight) / 2);
      }
   }
}
