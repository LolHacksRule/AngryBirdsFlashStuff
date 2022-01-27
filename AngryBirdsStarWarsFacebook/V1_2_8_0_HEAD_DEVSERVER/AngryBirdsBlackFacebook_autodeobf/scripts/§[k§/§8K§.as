package §[k§
{
   import §3y§.§9!Z§;
   import §6"G§.§-#C§;
   import §6"G§.§[#R§;
   import §="V§.§""v§;
   import flash.display.MovieClip;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §8K§
   {
      
      public static const §;I§:int = 7000;
      
      public static const §7_§:int = 200;
       
      
      private var §^"a§:MovieClip;
      
      private var §!#8§:Array;
      
      private var §=!x§:int = 0;
      
      private var §4"@§:Timer;
      
      private var §[$§:§[#R§;
      
      private var §0!S§:Number;
      
      public function §8K§(param1:MovieClip)
      {
         super();
         this.§^"a§ = param1;
         this.§0!S§ = this.§^"a§.txtTip.y;
         this.§!#8§ = this.§"2§(this.§]#W§());
         if(this.§!#8§.length == 0)
         {
            this.§^"a§.visible = false;
         }
         else
         {
            this.§^"a§.visible = true;
            this.§'#5§ = this.§!#8§[0];
            if(this.§!#8§.length > 1)
            {
               this.§!s§();
            }
         }
      }
      
      private function §!s§() : void
      {
         if(!this.§4"@§)
         {
            this.§4"@§ = new Timer(§;I§);
            this.§4"@§.addEventListener(TimerEvent.TIMER,this.§3"g§);
         }
         this.§4"@§.start();
      }
      
      private function §3"g§(param1:TimerEvent) : void
      {
         this.§4"@§.stop();
         this.§'#0§();
      }
      
      private function §'#0§() : void
      {
         this.§[$§ = §-#C§.§%!E§.§^!H§(this.§^"a§.txtTip,{"alpha":0},null,§7_§ / 1000,§9!Z§.easeOut);
         this.§[$§.onComplete = this.§@&§;
         this.§[$§.play();
      }
      
      private function §@&§() : void
      {
         ++this.§=!x§;
         if(this.§=!x§ >= this.§!#8§.length)
         {
            this.§=!x§ = 0;
         }
         this.§'#5§ = this.§!#8§[this.§=!x§];
         this.§"U§();
      }
      
      private function §"U§() : void
      {
         this.§[$§ = §-#C§.§%!E§.§^!H§(this.§^"a§.txtTip,{"alpha":1},null,§7_§ / 1000,§9!Z§.easeOut);
         this.§[$§.onComplete = this.§&8§;
         this.§[$§.play();
      }
      
      private function §&8§() : void
      {
         this.§!s§();
      }
      
      private function §]#W§() : Array
      {
         try
         {
            return JSON.parse(§""v§.§&R§("getTips") as String) as Array;
         }
         catch(e:Error)
         {
            return [];
         }
      }
      
      private function §"2§(param1:Array) : Array
      {
         param1 = param1.concat();
         var _loc2_:Array = [];
         while(param1.length > 0)
         {
            _loc2_.push(param1.splice(Math.round(Math.random() * (param1.length - 1)),1)[0]);
         }
         return _loc2_;
      }
      
      private function set §'#5§(param1:String) : void
      {
         this.§^"a§.txtTip.text = param1;
         this.§^"a§.txtTip.y = this.§0!S§ + Math.round((this.§^"a§.txtTip.height - this.§^"a§.txtTip.textHeight) / 2);
      }
   }
}
