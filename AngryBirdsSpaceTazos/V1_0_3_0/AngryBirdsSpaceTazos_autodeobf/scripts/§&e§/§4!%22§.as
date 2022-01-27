package §&e§
{
   import §!"4§.§;";§;
   import §4",§.§2!S§;
   import §9!U§.§15§;
   import §9!U§.§@F§;
   import com.rovio.assets.§>!;§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.filters.GlowFilter;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   
   public class §4!"§ extends Sprite
   {
      
      private static const §9s§:Number = 1.5;
      
      private static const §@"5§:Number = 1.2;
      
      private static const §,"1§:Number = 1;
       
      
      private var §,"H§:§2!S§;
      
      private var §>I§:MovieClip;
      
      private var §+P§:Number;
      
      private var §;Z§:Dictionary;
      
      private var §,!U§:Dictionary;
      
      private var §"!;§:§15§;
      
      private var §4!%§:§15§;
      
      private var §66§:Array;
      
      private var §["2§:Number;
      
      private var § I§:Number;
      
      private var §<8§:Number;
      
      private var §,S§:Number;
      
      private var §1!Y§:GlowFilter;
      
      private var §>!§:GlowFilter;
      
      private var §0!b§:Boolean = true;
      
      private var §3! §:Number = 0;
      
      private var §1!M§:Number = 1000;
      
      public function §4!"§(param1:§2!S§)
      {
         super();
         this.§,"H§ = param1;
         this.init();
      }
      
      public function §>i§() : Number
      {
         return this.§>I§.layer1.scaleX;
      }
      
      private function init() : void
      {
         var _loc1_:MovieClip = null;
         var _loc2_:§^"0§ = null;
         var _loc3_:§^"0§ = null;
         var _loc4_:int = 0;
         this.§>I§ = new §>!;§.§+!u§(this.§,"H§.menuImage)();
         addChild(this.§>I§);
         this.§66§ = [];
         this.§66§.push(this.§>I§.layer1.logo1);
         this.§66§.push(this.§>I§.layer1.logo2);
         this.§66§.push(this.§>I§.layer1.logo3);
         for each(_loc1_ in this.§66§)
         {
            _loc1_.alpha = 0;
         }
         this.§;Z§ = new Dictionary();
         this.§,!U§ = new Dictionary();
         _loc4_ = 0;
         while(_loc4_ < 3)
         {
            switch(_loc4_)
            {
               case 0:
                  _loc2_ = new §^"0§(this.§>I§.layer1.level0);
                  _loc3_ = new §^"0§(this.§>I§.layer1.lock1);
                  break;
               case 1:
                  _loc2_ = new §^"0§(this.§>I§.layer1.level1);
                  _loc3_ = new §^"0§(this.§>I§.layer1.lock2);
                  break;
               case 2:
                  _loc2_ = new §^"0§(this.§>I§.layer1.level2);
                  _loc3_ = new §^"0§(this.§>I§.layer1.lock3);
                  break;
            }
            this.§;Z§[_loc2_.§%1§] = _loc2_;
            _loc2_.levelNum = _loc4_;
            _loc2_.levelName = "" + this.§,"H§.§9!I§(_loc4_);
            _loc2_.§%1§.scaleX = _loc2_.§%1§.scaleY = §,"1§;
            this.§,!U§[_loc3_.§%1§] = _loc3_;
            _loc3_.levelNum = _loc4_;
            _loc3_.levelName = "" + this.§,"H§.§9!I§(_loc4_);
            _loc4_++;
         }
         var _loc5_:MovieClip;
         (_loc5_ = this.§>I§["glowEffect"]).filters = [new GlowFilter(6618980,0.6,8,8,8,3,false,false)];
      }
      
      public function refresh(param1:Boolean = false) : void
      {
         var _loc2_:§^"0§ = null;
         var _loc3_:§^"0§ = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         if(§;";§.§3U§.§1T§)
         {
            this.§>I§.planetLock.visible = true;
            (this.§>I§.starText as TextField).visible = true;
            if(this.§>I§.starTextBg)
            {
               (this.§>I§.starTextBg as MovieClip).visible = true;
            }
            switch(this.§,"H§.name)
            {
               case "1":
                  this.§>I§.planetLock.visible = false;
                  (this.§>I§.starText as TextField).visible = false;
                  break;
               case "2":
                  _loc4_ = §;";§.§3U§.starsNeededToUnlockEpisode2;
                  if(§;";§.§3U§.stars >= _loc4_)
                  {
                     if(!this.§>I§.planetLock.visible)
                     {
                        this.§0!b§ = true;
                     }
                     else
                     {
                        this.§0!b§ = false;
                     }
                     this.§>I§.planetLock.visible = false;
                     (this.§>I§.starText as TextField).visible = false;
                     if(this.§>I§.starTextBg)
                     {
                        (this.§>I§.starTextBg as MovieClip).visible = false;
                     }
                  }
                  else
                  {
                     (this.§>I§.starText as TextField).text = §;";§.§3U§.stars + "/" + _loc4_;
                  }
                  break;
               case "3":
                  _loc5_ = §;";§.§3U§.starsNeededToUnlockEpisode3;
                  if(§;";§.§3U§.stars >= _loc5_)
                  {
                     if(!this.§>I§.planetLock.visible)
                     {
                        this.§0!b§ = true;
                     }
                     else
                     {
                        this.§0!b§ = false;
                     }
                     this.§>I§.planetLock.visible = false;
                     (this.§>I§.starText as TextField).text = _loc5_ + "/" + _loc5_;
                     (this.§>I§.starText as TextField).visible = false;
                     if(this.§>I§.starTextBg)
                     {
                        (this.§>I§.starTextBg as MovieClip).visible = false;
                     }
                     break;
                  }
                  (this.§>I§.starText as TextField).text = §;";§.§3U§.stars + "/" + _loc5_;
                  break;
            }
         }
         else
         {
            switch(this.§,"H§.name)
            {
               case "1":
                  this.§>I§.layer1.level0.visible = true;
                  break;
               case "2":
                  this.§>I§.layer1.level1.visible = true;
                  break;
               case "3":
                  this.§>I§.layer1.level2.visible = true;
            }
            this.§>I§.planetLock.visible = false;
            (this.§>I§.starText as TextField).visible = false;
            if(this.§>I§.starTextBg)
            {
               (this.§>I§.starTextBg as MovieClip).visible = false;
            }
         }
         for each(_loc2_ in this.§,!U§)
         {
            if(§;";§.§9I§(_loc2_.levelName) || param1)
            {
               _loc2_.§%1§.removeEventListener(MouseEvent.MOUSE_UP,this.§0-§);
            }
            else
            {
               _loc2_.§%1§.addEventListener(MouseEvent.MOUSE_UP,this.§0-§);
            }
         }
         for each(_loc3_ in this.§;Z§)
         {
            if(§;";§.§3U§.§1T§)
            {
               if(§;";§.§9I§(_loc3_.levelName) || param1)
               {
                  _loc3_.§%1§.addEventListener(MouseEvent.MOUSE_OVER,this.§^!Z§);
                  _loc3_.§%1§.addEventListener(MouseEvent.MOUSE_OUT,this.§>W§);
                  _loc3_.§%1§.addEventListener(MouseEvent.MOUSE_UP,this.§3!u§);
                  (this.§>I§.layer1["level" + _loc3_.levelNum] as SimpleButton).visible = true;
                  (this.§>I§.layer1["lock" + (_loc3_.levelNum + 1)] as SimpleButton).visible = false;
                  if((_loc6_ = (§&"<§.§<!7§ as §["!§).§<!%§.§7=§(_loc3_.levelName,(§&"<§.§<!7§ as §["!§).§<!%§.getScoreForLevel(_loc3_.levelName))) == 3)
                  {
                     (this.§>I§.layer1["level_info" + _loc3_.levelNum].star3 as MovieClip).visible = true;
                  }
                  else if(_loc6_ == 2)
                  {
                     (this.§>I§.layer1["level_info" + _loc3_.levelNum].star2 as MovieClip).visible = true;
                  }
                  else if(_loc6_ == 1)
                  {
                     (this.§>I§.layer1["level_info" + _loc3_.levelNum].star1 as MovieClip).visible = true;
                  }
                  else if(_loc6_ == 0)
                  {
                     (this.§>I§.layer1["level_info" + _loc3_.levelNum].star0 as MovieClip).visible = true;
                  }
                  _loc7_ = 0;
                  while(_loc7_ < this.§66§.length)
                  {
                     this.§66§[_loc7_].alpha = 0;
                     _loc7_++;
                  }
               }
               else
               {
                  _loc3_.§%1§.removeEventListener(MouseEvent.MOUSE_OVER,this.§^!Z§);
                  _loc3_.§%1§.removeEventListener(MouseEvent.MOUSE_OUT,this.§>W§);
                  _loc3_.§%1§.removeEventListener(MouseEvent.MOUSE_UP,this.§3!u§);
                  (this.§>I§.layer1["level" + _loc3_.levelNum] as SimpleButton).visible = false;
                  (this.§>I§.layer1["lock" + (_loc3_.levelNum + 1)] as SimpleButton).visible = true;
                  (this.§>I§.layer1["level_info" + _loc3_.levelNum].star0 as MovieClip).visible = false;
                  (this.§>I§.layer1["level_info" + _loc3_.levelNum].star1 as MovieClip).visible = false;
                  (this.§>I§.layer1["level_info" + _loc3_.levelNum].star2 as MovieClip).visible = false;
                  (this.§>I§.layer1["level_info" + _loc3_.levelNum].star3 as MovieClip).visible = false;
               }
            }
            else
            {
               _loc3_.§%1§.addEventListener(MouseEvent.MOUSE_OVER,this.§^!Z§);
               _loc3_.§%1§.addEventListener(MouseEvent.MOUSE_OUT,this.§>W§);
               _loc3_.§%1§.addEventListener(MouseEvent.MOUSE_UP,this.§3!u§);
               (this.§>I§.layer1["level" + _loc3_.levelNum] as SimpleButton).visible = true;
               (this.§>I§.layer1["lock" + (_loc3_.levelNum + 1)] as SimpleButton).visible = false;
               (this.§>I§.layer1["level_info" + _loc3_.levelNum].star0 as MovieClip).visible = false;
               (this.§>I§.layer1["level_info" + _loc3_.levelNum].star1 as MovieClip).visible = false;
               (this.§>I§.layer1["level_info" + _loc3_.levelNum].star2 as MovieClip).visible = false;
               (this.§>I§.layer1["level_info" + _loc3_.levelNum].star3 as MovieClip).visible = false;
            }
         }
      }
      
      private function §^!Z§(param1:MouseEvent) : void
      {
         var _loc2_:String = (this.§;Z§[param1.currentTarget] as §^"0§).levelName;
         var _loc3_:§^"0§ = this.§;Z§[param1.currentTarget] as §^"0§;
         if(this.§"!;§ != null)
         {
            this.§"!;§.stop();
         }
         this.§"!;§ = §@F§.§8!J§.§&6§(_loc3_.§%1§,{
            "scaleX":§@"5§,
            "scaleY":§@"5§
         },null,0.1);
         this.§"!;§.play();
         var _loc4_:int = 0;
         while(_loc4_ < this.§66§.length)
         {
            if(_loc4_ != _loc3_.levelNum)
            {
               this.§66§[_loc4_].alpha = 0;
            }
            _loc4_++;
         }
         if(§;";§.§3U§.§1T§)
         {
            if(this.§4!%§ != null)
            {
               this.§4!%§.stop();
            }
            this.§4!%§ = §@F§.§8!J§.§&6§(this.§66§[_loc3_.levelNum],{"alpha":1},null,0.5);
            this.§4!%§.play();
         }
      }
      
      private function §>W§(param1:MouseEvent) : void
      {
         var _loc2_:§^"0§ = this.§;Z§[param1.currentTarget] as §^"0§;
         if(this.§"!;§ != null)
         {
            this.§"!;§.stop();
         }
         this.§"!;§ = §@F§.§8!J§.§&6§(_loc2_.§%1§,{
            "scaleX":§,"1§,
            "scaleY":§,"1§
         },null,0.1);
         this.§"!;§.play();
         var _loc3_:int = 0;
         while(_loc3_ < this.§66§.length)
         {
            if(_loc3_ != _loc2_.levelNum)
            {
               this.§66§[_loc3_].alpha = 0;
            }
            _loc3_++;
         }
         if(§;";§.§3U§.§1T§)
         {
            if(this.§4!%§ != null)
            {
               this.§4!%§.stop();
            }
            this.§4!%§ = §@F§.§8!J§.§&6§(this.§66§[_loc2_.levelNum],{"alpha":0},null,0.25);
            this.§4!%§.play();
         }
      }
      
      private function §3!u§(param1:MouseEvent) : void
      {
         var _loc2_:String = (this.§;Z§[param1.currentTarget] as §^"0§).levelName;
         dispatchEvent(new EpisodeButtonEvent(EpisodeButtonEvent.§9Q§,_loc2_,(this.§;Z§[param1.currentTarget] as §^"0§).§%1§.x,(this.§;Z§[param1.currentTarget] as §^"0§).§%1§.y,this.§;Z§[param1.currentTarget] as §^"0§));
      }
      
      private function §0-§(param1:MouseEvent) : void
      {
         var _loc2_:String = (this.§,!U§[param1.currentTarget] as §^"0§).levelName;
         dispatchEvent(new EpisodeButtonEvent(EpisodeButtonEvent.§9Q§,_loc2_,(this.§,!U§[param1.currentTarget] as §^"0§).§%1§.x,(this.§,!U§[param1.currentTarget] as §^"0§).§%1§.y,this.§,!U§[param1.currentTarget] as §^"0§));
         this.§@!M§(this.§>I§.starTextBg as MovieClip);
      }
      
      private function §@!M§(param1:MovieClip) : void
      {
         this.§1!Y§ = new GlowFilter(10618390,0.6,3,3,0,5,true,false);
         this.§>!§ = new GlowFilter(15736864,0.6,7,7,0,5,false,false);
         var _loc2_:§15§ = §@F§.§8!J§.§^"&§(§@F§.§8!J§.§&6§(this.§1!Y§,{"strength":2},{"strength":0},§9s§ / 4,§@F§.§%<§),§@F§.§8!J§.§&6§(this.§1!Y§,{"strength":0},{"strength":2},§9s§ / 4,§@F§.§<">§),§@F§.§8!J§.§&6§(this.§1!Y§,{"strength":2},{"strength":0},§9s§ / 4,§@F§.§%<§),§@F§.§8!J§.§&6§(this.§1!Y§,{"strength":0},{"strength":2},§9s§ / 4,§@F§.§<">§));
         _loc2_.play();
         var _loc3_:§15§ = §@F§.§8!J§.§^"&§(§@F§.§8!J§.§&6§(this.§>!§,{"strength":4},{"strength":0},§9s§ / 4,§@F§.§%<§),§@F§.§8!J§.§&6§(this.§>!§,{"strength":0},{"strength":4},§9s§ / 4,§@F§.§<">§),§@F§.§8!J§.§&6§(this.§>!§,{"strength":4},{"strength":0},§9s§ / 4,§@F§.§%<§),§@F§.§8!J§.§&6§(this.§>!§,{"strength":0},{"strength":4},§9s§ / 4,§@F§.§<">§));
         _loc3_.play();
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:MovieClip = this.§>I§["glowEffect"];
         _loc2_.visible = false;
         this.§#z§();
      }
      
      private function §#z§() : void
      {
         var _loc1_:MovieClip = this.§>I§.starTextBg as MovieClip;
         var _loc2_:MovieClip = this.§>I§.planetLock as MovieClip;
         if(this.§1!Y§)
         {
            _loc1_.filters = [this.§1!Y§,this.§>!§];
            _loc2_.filters = [this.§1!Y§,this.§>!§];
         }
      }
      
      public function set scrollIndex(param1:Number) : void
      {
         var _loc5_:MovieClip = null;
         this.§+P§ = param1;
         var _loc2_:Number = Math.abs(param1);
         var _loc3_:Number = 1 - Math.min(_loc2_,1);
         var _loc4_:int = 1;
         if(_loc2_ > 2)
         {
            _loc3_ = _loc2_ - 2;
         }
         while(_loc4_ < 100)
         {
            if(!(_loc5_ = this.§>I§["layer" + _loc4_]))
            {
               break;
            }
            _loc5_.scaleX = _loc5_.scaleY = _loc3_;
            _loc5_.visible = _loc3_ != 0;
            _loc4_++;
         }
      }
      
      public function get scrollIndex() : Number
      {
         return this.§+P§;
      }
      
      public function get §,!8§() : Number
      {
         return this.§["2§;
      }
      
      public function set §,!8§(param1:Number) : void
      {
         this.§["2§ = param1;
      }
      
      public function get §[p§() : Number
      {
         return this.§ I§;
      }
      
      public function set §[p§(param1:Number) : void
      {
         this.§ I§ = param1;
      }
      
      public function get §3s§() : Number
      {
         return this.§<8§;
      }
      
      public function set §3s§(param1:Number) : void
      {
         this.§<8§ = param1;
      }
      
      public function get §6" §() : Number
      {
         return this.§,S§;
      }
      
      public function set §6" §(param1:Number) : void
      {
         this.§,S§ = param1;
      }
   }
}
