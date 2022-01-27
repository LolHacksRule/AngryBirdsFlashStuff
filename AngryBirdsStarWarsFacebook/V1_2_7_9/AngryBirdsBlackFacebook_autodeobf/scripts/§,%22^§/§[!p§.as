package §,"^§
{
   import § 0§.§@Y§;
   import §#"_§.§<!Q§;
   import §'! §.§4!Q§;
   import §'! §.§41§;
   import flash.display.MovieClip;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §[!p§
   {
      
      public static const §?!&§:int = 7000;
      
      public static const §>"&§:int = 200;
       
      
      private var §@!Z§:MovieClip;
      
      private var §>##§:Array;
      
      private var §,M§:int = 0;
      
      private var §;#2§:Timer;
      
      private var §4# §:§4!Q§;
      
      private var §=6§:Number;
      
      public function §[!p§(param1:MovieClip)
      {
         super();
         this.§@!Z§ = param1;
         this.§=6§ = this.§@!Z§.txtTip.y;
         this.§>##§ = this.§#"M§(this.§09§());
         if(this.§>##§.length == 0)
         {
            this.§@!Z§.visible = false;
         }
         else
         {
            this.§@!Z§.visible = true;
            this.§,!`§ = this.§>##§[0];
            if(this.§>##§.length > 1)
            {
               this.§<!§();
            }
         }
      }
      
      private function §<!§() : void
      {
         if(!this.§;#2§)
         {
            this.§;#2§ = new Timer(§?!&§);
            this.§;#2§.addEventListener(TimerEvent.TIMER,this.§["q§);
         }
         this.§;#2§.start();
      }
      
      private function §["q§(param1:TimerEvent) : void
      {
         this.§;#2§.stop();
         this.§6u§();
      }
      
      private function §6u§() : void
      {
         this.§4# § = §41§.§-G§.§&#'§(this.§@!Z§.txtTip,{"alpha":0},null,§>"&§ / 1000,§<!Q§.easeOut);
         this.§4# §.onComplete = this.§]`§;
         this.§4# §.play();
      }
      
      private function §]`§() : void
      {
         ++this.§,M§;
         if(this.§,M§ >= this.§>##§.length)
         {
            this.§,M§ = 0;
         }
         this.§,!`§ = this.§>##§[this.§,M§];
         this.§7!q§();
      }
      
      private function §7!q§() : void
      {
         this.§4# § = §41§.§-G§.§&#'§(this.§@!Z§.txtTip,{"alpha":1},null,§>"&§ / 1000,§<!Q§.easeOut);
         this.§4# §.onComplete = this.§&!V§;
         this.§4# §.play();
      }
      
      private function §&!V§() : void
      {
         this.§<!§();
      }
      
      private function §09§() : Array
      {
         try
         {
            return JSON.parse(§@Y§.§7"H§("getTips") as String) as Array;
         }
         catch(e:Error)
         {
            return [];
         }
      }
      
      private function §#"M§(param1:Array) : Array
      {
         param1 = param1.concat();
         var _loc2_:Array = [];
         while(param1.length > 0)
         {
            _loc2_.push(param1.splice(Math.round(Math.random() * (param1.length - 1)),1)[0]);
         }
         return _loc2_;
      }
      
      private function set §,!`§(param1:String) : void
      {
         this.§@!Z§.txtTip.text = param1;
         this.§@!Z§.txtTip.y = this.§=6§ + Math.round((this.§@!Z§.txtTip.height - this.§@!Z§.txtTip.textHeight) / 2);
      }
   }
}
