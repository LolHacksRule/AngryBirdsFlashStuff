package §5s§
{
   import §6"6§.§40§;
   import §;!0§.§]§;
   import §<§.§8"+§;
   import §<§.§<K§;
   import com.rovio.assets.§2!3§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.filters.GlowFilter;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   
   public class §=!4§ extends Sprite
   {
      
      private static const §!! §:Number = 1.5;
      
      private static const §[!O§:Number = 1.2;
      
      private static const §#y§:Number = 1;
       
      
      private var §%,§:§]§;
      
      private var §`h§:MovieClip;
      
      private var §4Q§:Number;
      
      private var §;!6§:Dictionary;
      
      private var §!n§:Dictionary;
      
      private var §6!m§:§8"+§;
      
      private var §-?§:§8"+§;
      
      private var §+x§:Array;
      
      private var §>l§:Number;
      
      private var §^!`§:Number;
      
      private var §-e§:Number;
      
      private var §8<§:Number;
      
      private var §[!+§:GlowFilter;
      
      private var §,5§:GlowFilter;
      
      private var §in §:Boolean = true;
      
      private var §%"=§:Number = 0;
      
      private var §3"#§:Number = 1000;
      
      public function §=!4§(param1:§]§)
      {
         super();
         this.§%,§ = param1;
         this.init();
      }
      
      public function §&!n§() : Number
      {
         return this.§`h§.layer1.scaleX;
      }
      
      private function init() : void
      {
         var _loc1_:MovieClip = null;
         var _loc2_:§3l§ = null;
         var _loc3_:§3l§ = null;
         var _loc4_:int = 0;
         this.§`h§ = new §2!3§.dynamic(this.§%,§.menuImage)();
         addChild(this.§`h§);
         this.§+x§ = [];
         this.§+x§.push(this.§`h§.layer1.logo1);
         this.§+x§.push(this.§`h§.layer1.logo2);
         this.§+x§.push(this.§`h§.layer1.logo3);
         for each(_loc1_ in this.§+x§)
         {
            _loc1_.alpha = 0;
         }
         this.§;!6§ = new Dictionary();
         this.§!n§ = new Dictionary();
         _loc4_ = 0;
         while(_loc4_ < 3)
         {
            switch(_loc4_)
            {
               case 0:
                  _loc2_ = new §3l§(this.§`h§.layer1.level0);
                  _loc3_ = new §3l§(this.§`h§.layer1.lock1);
                  break;
               case 1:
                  _loc2_ = new §3l§(this.§`h§.layer1.level1);
                  _loc3_ = new §3l§(this.§`h§.layer1.lock2);
                  break;
               case 2:
                  _loc2_ = new §3l§(this.§`h§.layer1.level2);
                  _loc3_ = new §3l§(this.§`h§.layer1.lock3);
                  break;
            }
            this.§;!6§[_loc2_.§^a§] = _loc2_;
            _loc2_.levelNum = _loc4_;
            _loc2_.levelName = "" + this.§%,§.§06§(_loc4_);
            _loc2_.§^a§.scaleX = _loc2_.§^a§.scaleY = §#y§;
            this.§!n§[_loc3_.§^a§] = _loc3_;
            _loc3_.levelNum = _loc4_;
            _loc3_.levelName = "" + this.§%,§.§06§(_loc4_);
            _loc4_++;
         }
         var _loc5_:MovieClip;
         (_loc5_ = this.§`h§["glowEffect"]).filters = [new GlowFilter(6618980,0.6,8,8,8,3,false,false)];
      }
      
      public function refresh(param1:Boolean = false) : void
      {
         var _loc2_:§3l§ = null;
         var _loc3_:§3l§ = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         if(§40§.§1"$§.§ !0§)
         {
            this.§`h§.planetLock.visible = true;
            (this.§`h§.starText as TextField).visible = true;
            if(this.§`h§.starTextBg)
            {
               (this.§`h§.starTextBg as MovieClip).visible = true;
            }
            switch(this.§%,§.name)
            {
               case "1":
                  this.§`h§.planetLock.visible = false;
                  (this.§`h§.starText as TextField).visible = false;
                  break;
               case "2":
                  _loc4_ = §40§.§1"$§.starsNeededToUnlockEpisode2;
                  if(§40§.§1"$§.stars >= _loc4_)
                  {
                     if(!this.§`h§.planetLock.visible)
                     {
                        this.§in § = true;
                     }
                     else
                     {
                        this.§in § = false;
                     }
                     this.§`h§.planetLock.visible = false;
                     (this.§`h§.starText as TextField).visible = false;
                     if(this.§`h§.starTextBg)
                     {
                        (this.§`h§.starTextBg as MovieClip).visible = false;
                     }
                  }
                  else
                  {
                     (this.§`h§.starText as TextField).text = §40§.§1"$§.stars + "/" + _loc4_;
                  }
                  break;
               case "3":
                  _loc5_ = §40§.§1"$§.starsNeededToUnlockEpisode3;
                  if(§40§.§1"$§.stars >= _loc5_)
                  {
                     if(!this.§`h§.planetLock.visible)
                     {
                        this.§in § = true;
                     }
                     else
                     {
                        this.§in § = false;
                     }
                     this.§`h§.planetLock.visible = false;
                     (this.§`h§.starText as TextField).text = _loc5_ + "/" + _loc5_;
                     (this.§`h§.starText as TextField).visible = false;
                     if(this.§`h§.starTextBg)
                     {
                        (this.§`h§.starTextBg as MovieClip).visible = false;
                     }
                     break;
                  }
                  (this.§`h§.starText as TextField).text = §40§.§1"$§.stars + "/" + _loc5_;
                  break;
            }
         }
         else
         {
            switch(this.§%,§.name)
            {
               case "1":
                  this.§`h§.layer1.level0.visible = true;
                  break;
               case "2":
                  this.§`h§.layer1.level1.visible = true;
                  break;
               case "3":
                  this.§`h§.layer1.level2.visible = true;
            }
            this.§`h§.planetLock.visible = false;
            (this.§`h§.starText as TextField).visible = false;
            if(this.§`h§.starTextBg)
            {
               (this.§`h§.starTextBg as MovieClip).visible = false;
            }
         }
         for each(_loc2_ in this.§!n§)
         {
            if(§40§.§1!f§(_loc2_.levelName) || param1)
            {
               _loc2_.§^a§.removeEventListener(MouseEvent.MOUSE_UP,this.§ !C§);
            }
            else
            {
               _loc2_.§^a§.addEventListener(MouseEvent.MOUSE_UP,this.§ !C§);
            }
         }
         for each(_loc3_ in this.§;!6§)
         {
            if(§40§.§1"$§.§ !0§)
            {
               if(§40§.§1!f§(_loc3_.levelName) || param1)
               {
                  _loc3_.§^a§.addEventListener(MouseEvent.MOUSE_OVER,this.§#^§);
                  _loc3_.§^a§.addEventListener(MouseEvent.MOUSE_OUT,this.§3!H§);
                  _loc3_.§^a§.addEventListener(MouseEvent.MOUSE_UP,this.§9!C§);
                  (this.§`h§.layer1["level" + _loc3_.levelNum] as SimpleButton).visible = true;
                  (this.§`h§.layer1["lock" + (_loc3_.levelNum + 1)] as SimpleButton).visible = false;
                  if((_loc6_ = (§&!h§.§ u§ as §^"=§).§^!7§.§]!F§(_loc3_.levelName,(§&!h§.§ u§ as §^"=§).§^!7§.getScoreForLevel(_loc3_.levelName))) == 3)
                  {
                     (this.§`h§.layer1["level_info" + _loc3_.levelNum].star3 as MovieClip).visible = true;
                  }
                  else if(_loc6_ == 2)
                  {
                     (this.§`h§.layer1["level_info" + _loc3_.levelNum].star2 as MovieClip).visible = true;
                  }
                  else if(_loc6_ == 1)
                  {
                     (this.§`h§.layer1["level_info" + _loc3_.levelNum].star1 as MovieClip).visible = true;
                  }
                  else if(_loc6_ == 0)
                  {
                     (this.§`h§.layer1["level_info" + _loc3_.levelNum].star0 as MovieClip).visible = true;
                  }
                  _loc7_ = 0;
                  while(_loc7_ < this.§+x§.length)
                  {
                     this.§+x§[_loc7_].alpha = 0;
                     _loc7_++;
                  }
               }
               else
               {
                  _loc3_.§^a§.removeEventListener(MouseEvent.MOUSE_OVER,this.§#^§);
                  _loc3_.§^a§.removeEventListener(MouseEvent.MOUSE_OUT,this.§3!H§);
                  _loc3_.§^a§.removeEventListener(MouseEvent.MOUSE_UP,this.§9!C§);
                  (this.§`h§.layer1["level" + _loc3_.levelNum] as SimpleButton).visible = false;
                  (this.§`h§.layer1["lock" + (_loc3_.levelNum + 1)] as SimpleButton).visible = true;
                  (this.§`h§.layer1["level_info" + _loc3_.levelNum].star0 as MovieClip).visible = false;
                  (this.§`h§.layer1["level_info" + _loc3_.levelNum].star1 as MovieClip).visible = false;
                  (this.§`h§.layer1["level_info" + _loc3_.levelNum].star2 as MovieClip).visible = false;
                  (this.§`h§.layer1["level_info" + _loc3_.levelNum].star3 as MovieClip).visible = false;
               }
            }
            else
            {
               _loc3_.§^a§.addEventListener(MouseEvent.MOUSE_OVER,this.§#^§);
               _loc3_.§^a§.addEventListener(MouseEvent.MOUSE_OUT,this.§3!H§);
               _loc3_.§^a§.addEventListener(MouseEvent.MOUSE_UP,this.§9!C§);
               (this.§`h§.layer1["level" + _loc3_.levelNum] as SimpleButton).visible = true;
               (this.§`h§.layer1["lock" + (_loc3_.levelNum + 1)] as SimpleButton).visible = false;
               (this.§`h§.layer1["level_info" + _loc3_.levelNum].star0 as MovieClip).visible = false;
               (this.§`h§.layer1["level_info" + _loc3_.levelNum].star1 as MovieClip).visible = false;
               (this.§`h§.layer1["level_info" + _loc3_.levelNum].star2 as MovieClip).visible = false;
               (this.§`h§.layer1["level_info" + _loc3_.levelNum].star3 as MovieClip).visible = false;
            }
         }
      }
      
      private function §#^§(param1:MouseEvent) : void
      {
         var _loc2_:String = (this.§;!6§[param1.currentTarget] as §3l§).levelName;
         var _loc3_:§3l§ = this.§;!6§[param1.currentTarget] as §3l§;
         if(this.§6!m§ != null)
         {
            this.§6!m§.stop();
         }
         this.§6!m§ = §<K§.§<"B§.§`!c§(_loc3_.§^a§,{
            "scaleX":§[!O§,
            "scaleY":§[!O§
         },null,0.1);
         this.§6!m§.play();
         var _loc4_:int = 0;
         while(_loc4_ < this.§+x§.length)
         {
            if(_loc4_ != _loc3_.levelNum)
            {
               this.§+x§[_loc4_].alpha = 0;
            }
            _loc4_++;
         }
         if(§40§.§1"$§.§ !0§)
         {
            if(this.§-?§ != null)
            {
               this.§-?§.stop();
            }
            this.§-?§ = §<K§.§<"B§.§`!c§(this.§+x§[_loc3_.levelNum],{"alpha":1},null,0.5);
            this.§-?§.play();
         }
      }
      
      private function §3!H§(param1:MouseEvent) : void
      {
         var _loc2_:§3l§ = this.§;!6§[param1.currentTarget] as §3l§;
         if(this.§6!m§ != null)
         {
            this.§6!m§.stop();
         }
         this.§6!m§ = §<K§.§<"B§.§`!c§(_loc2_.§^a§,{
            "scaleX":§#y§,
            "scaleY":§#y§
         },null,0.1);
         this.§6!m§.play();
         var _loc3_:int = 0;
         while(_loc3_ < this.§+x§.length)
         {
            if(_loc3_ != _loc2_.levelNum)
            {
               this.§+x§[_loc3_].alpha = 0;
            }
            _loc3_++;
         }
         if(§40§.§1"$§.§ !0§)
         {
            if(this.§-?§ != null)
            {
               this.§-?§.stop();
            }
            this.§-?§ = §<K§.§<"B§.§`!c§(this.§+x§[_loc2_.levelNum],{"alpha":0},null,0.25);
            this.§-?§.play();
         }
      }
      
      private function §9!C§(param1:MouseEvent) : void
      {
         var _loc2_:String = (this.§;!6§[param1.currentTarget] as §3l§).levelName;
         dispatchEvent(new EpisodeButtonEvent(EpisodeButtonEvent.§"!M§,_loc2_,(this.§;!6§[param1.currentTarget] as §3l§).§^a§.x,(this.§;!6§[param1.currentTarget] as §3l§).§^a§.y,this.§;!6§[param1.currentTarget] as §3l§));
      }
      
      private function § !C§(param1:MouseEvent) : void
      {
         var _loc2_:String = (this.§!n§[param1.currentTarget] as §3l§).levelName;
         dispatchEvent(new EpisodeButtonEvent(EpisodeButtonEvent.§"!M§,_loc2_,(this.§!n§[param1.currentTarget] as §3l§).§^a§.x,(this.§!n§[param1.currentTarget] as §3l§).§^a§.y,this.§!n§[param1.currentTarget] as §3l§));
         this.§9[§(this.§`h§.starTextBg as MovieClip);
      }
      
      private function §9[§(param1:MovieClip) : void
      {
         this.§[!+§ = new GlowFilter(10618390,0.6,3,3,0,5,true,false);
         this.§,5§ = new GlowFilter(15736864,0.6,7,7,0,5,false,false);
         var _loc2_:§8"+§ = §<K§.§<"B§.§-!E§(§<K§.§<"B§.§`!c§(this.§[!+§,{"strength":2},{"strength":0},§!! § / 4,§<K§.§""@§),§<K§.§<"B§.§`!c§(this.§[!+§,{"strength":0},{"strength":2},§!! § / 4,§<K§.§?b§),§<K§.§<"B§.§`!c§(this.§[!+§,{"strength":2},{"strength":0},§!! § / 4,§<K§.§""@§),§<K§.§<"B§.§`!c§(this.§[!+§,{"strength":0},{"strength":2},§!! § / 4,§<K§.§?b§));
         _loc2_.play();
         var _loc3_:§8"+§ = §<K§.§<"B§.§-!E§(§<K§.§<"B§.§`!c§(this.§,5§,{"strength":4},{"strength":0},§!! § / 4,§<K§.§""@§),§<K§.§<"B§.§`!c§(this.§,5§,{"strength":0},{"strength":4},§!! § / 4,§<K§.§?b§),§<K§.§<"B§.§`!c§(this.§,5§,{"strength":4},{"strength":0},§!! § / 4,§<K§.§""@§),§<K§.§<"B§.§`!c§(this.§,5§,{"strength":0},{"strength":4},§!! § / 4,§<K§.§?b§));
         _loc3_.play();
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:MovieClip = this.§`h§["glowEffect"];
         _loc2_.visible = false;
         this.§0d§();
      }
      
      private function §0d§() : void
      {
         var _loc1_:MovieClip = this.§`h§.starTextBg as MovieClip;
         var _loc2_:MovieClip = this.§`h§.planetLock as MovieClip;
         if(this.§[!+§)
         {
            _loc1_.filters = [this.§[!+§,this.§,5§];
            _loc2_.filters = [this.§[!+§,this.§,5§];
         }
      }
      
      public function set scrollIndex(param1:Number) : void
      {
         var _loc5_:MovieClip = null;
         this.§4Q§ = param1;
         var _loc2_:Number = Math.abs(param1);
         var _loc3_:Number = 1 - Math.min(_loc2_,1);
         var _loc4_:int = 1;
         if(_loc2_ > 2)
         {
            _loc3_ = _loc2_ - 2;
         }
         while(_loc4_ < 100)
         {
            if(!(_loc5_ = this.§`h§["layer" + _loc4_]))
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
         return this.§4Q§;
      }
      
      public function get §'6§() : Number
      {
         return this.§>l§;
      }
      
      public function set §'6§(param1:Number) : void
      {
         this.§>l§ = param1;
      }
      
      public function get §^K§() : Number
      {
         return this.§^!`§;
      }
      
      public function set §^K§(param1:Number) : void
      {
         this.§^!`§ = param1;
      }
      
      public function get §84§() : Number
      {
         return this.§-e§;
      }
      
      public function set §84§(param1:Number) : void
      {
         this.§-e§ = param1;
      }
      
      public function get §0!U§() : Number
      {
         return this.§8<§;
      }
      
      public function set §0!U§(param1:Number) : void
      {
         this.§8<§ = param1;
      }
   }
}
