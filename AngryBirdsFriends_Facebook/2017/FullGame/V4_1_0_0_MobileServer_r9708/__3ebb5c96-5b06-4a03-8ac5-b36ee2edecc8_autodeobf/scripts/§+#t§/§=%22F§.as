package §+#t§
{
   import §%#!§.§4,§;
   import §%#!§.Item;
   import §4#,§.Avatar;
   import §<"@§.§8y§;
   import §[$8§.§2%§;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §="F§ extends §5F§
   {
      
      private static const §5!m§:§9#f§ = new §9#f§(15,40);
      
      private static const §=z§:§9#f§ = new §9#f§(115,131);
      
      private static const §2"W§:§9#f§ = new §9#f§(132,145);
      
      private static const §'#p§:Array = [§5!m§,§=z§,§2"W§];
      
      private static const §@"9§:Array = [§5!m§,§2"W§];
      
      private static var §0<§:§@!R§;
       
      
      private var §`$"§:§9#f§;
      
      private var §>,§:Avatar;
      
      private var §8!#§:int;
      
      private var § #L§:Timer;
      
      private var §4#?§:Timer;
      
      private var §=A§:int = 30;
      
      private var §8=§:Number = 0;
      
      private var §"#f§:Number = 0;
      
      private var §'$5§:Number = 40.0;
      
      public function §="F§(param1:String, param2:String, param3:Boolean = false)
      {
         var _loc5_:Item = null;
         var _loc6_:§4,§ = null;
         var _loc4_:Array = §2%§.§&S§(param1);
         for each(_loc5_ in _loc4_)
         {
            if(_loc5_.§8!G§ == "CategoryBirds")
            {
               _loc6_ = §8y§.§ "D§.characters.§6"J§(_loc5_.mId);
               this.§>,§ = new Avatar(_loc6_);
            }
         }
         super(param1,param2,param3);
      }
      
      override public function dispose() : void
      {
         if(this.§4#?§)
         {
            this.§4#?§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§"#Z§);
            this.§4#?§.stop();
         }
         if(this.§ #L§)
         {
            this.§ #L§.removeEventListener(TimerEvent.TIMER,this.§if §);
            this.§ #L§.stop();
         }
         if(§8!>§)
         {
            while(§8!>§.numChildren > 0)
            {
               §8!>§.removeChildAt(0);
            }
         }
         §8!>§ = null;
      }
      
      public function §4#6§(param1:§9#f§) : void
      {
         this.§`$"§ = param1;
         this.§8!#§ = param1.start;
         if(this.§ #L§)
         {
            this.§ #L§.removeEventListener(TimerEvent.TIMER,this.§if §);
            this.§ #L§.stop();
         }
         this.§ #L§ = new Timer(0);
         this.§ #L§.addEventListener(TimerEvent.TIMER,this.§if §);
         this.§ #L§.start();
      }
      
      override protected function sendAvatarToRenderer() : void
      {
         §4"b§.render(§]<§,this.renderAvatar,§@$9§(),§7"v§,null,null,this.§=A§);
      }
      
      private function §if §(param1:TimerEvent) : void
      {
         var _loc2_:Number = getTimer() - this.§8=§;
         this.§"#f§ += _loc2_;
         if(this.§"#f§ > this.§'$5§)
         {
            this.§8!#§ += 1;
            this.§"#f§ = 0;
            §4"b§.render(§]<§,this.renderAvatar,§@$9§(),§7"v§,this.§8!#§,this.§>,§,this.§=A§);
         }
         if(this.§8!#§ >= this.§`$"§.end)
         {
            this.§ #L§.stop();
            this.§ #L§.removeEventListener(TimerEvent.TIMER,this.§if §);
         }
         this.§8=§ = getTimer();
      }
      
      public function §%g§() : void
      {
         this.sendAvatarToRenderer();
         if(this.§4#?§)
         {
            this.§4#?§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§"#Z§);
            this.§4#?§.stop();
         }
         this.§4#?§ = new Timer(5000 + Math.random() * 1000,1);
         this.§4#?§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§"#Z§);
         this.§4#?§.start();
      }
      
      private function §"#Z§(param1:TimerEvent) : void
      {
         this.§?#!§();
         this.§%g§();
      }
      
      public function §?#!§() : void
      {
         var _loc1_:Array = §'#p§;
         if(§]<§.indexOf("M50003") != -1 || §]<§.indexOf("M50006") != -1 && §]<§.indexOf("C10005") != -1 || §]<§.indexOf("M50010") != -1)
         {
            _loc1_ = §@"9§;
         }
         var _loc2_:int = Math.floor(Math.random() * _loc1_.length);
         this.§4#6§(_loc1_[_loc2_]);
      }
      
      override public function renderAvatar(param1:BitmapData, param2:MovieClip) : void
      {
         if(§8!>§ == null)
         {
            §8!>§ = new Sprite();
         }
         if(§8!>§.parent != this)
         {
            addChild(§8!>§);
         }
         while(§8!>§.numChildren > 0)
         {
            §8!>§.removeChildAt(0);
         }
         §8!>§.addChild(param2);
         param2.x = 200;
         param2.y = 290;
         param2.buttonMode = true;
         param2.stop();
      }
   }
}
