package §`>§
{
   import §#!O§.§"!t§;
   import §#!O§.§,4§;
   import §1z§.§^"6§;
   import §5"@§.§1!N§;
   import com.rovio.assets.§1!h§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.filters.GlowFilter;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   
   public class §`Z§ extends Sprite
   {
      
      private static const §<!Q§:Number = 1.5;
      
      private static const §&"%§:Number = 1.2;
      
      private static const §'" §:Number = 1;
       
      
      private var §<$§:§^"6§;
      
      private var § `§:MovieClip;
      
      private var §,=§:Number;
      
      private var §;c§:Dictionary;
      
      private var §implements§:Dictionary;
      
      private var §@!C§:§,4§;
      
      private var § "C§:§,4§;
      
      private var §'"§:Array;
      
      private var §`4§:Number;
      
      private var §;!I§:Number;
      
      private var §?>§:Number;
      
      private var §>!J§:Number;
      
      private var §4!A§:GlowFilter;
      
      private var §[!7§:GlowFilter;
      
      private var §@j§:Boolean = true;
      
      private var §#!R§:Number = 0;
      
      private var §4"@§:Number = 1000;
      
      public function §`Z§(param1:§^"6§)
      {
         super();
         this.§<$§ = param1;
         this.init();
      }
      
      public function §1K§() : Number
      {
         return this.§ `§.layer1.scaleX;
      }
      
      private function init() : void
      {
         var _loc1_:MovieClip = null;
         var _loc2_:§"!R§ = null;
         var _loc3_:§"!R§ = null;
         var _loc4_:int = 0;
         this.§ `§ = new §1!h§.§4!D§(this.§<$§.menuImage)();
         addChild(this.§ `§);
         this.§'"§ = [];
         this.§'"§.push(this.§ `§.layer1.logo1);
         this.§'"§.push(this.§ `§.layer1.logo2);
         this.§'"§.push(this.§ `§.layer1.logo3);
         for each(_loc1_ in this.§'"§)
         {
            _loc1_.alpha = 0;
         }
         this.§;c§ = new Dictionary();
         this.§implements§ = new Dictionary();
         _loc4_ = 0;
         while(_loc4_ < 3)
         {
            switch(_loc4_)
            {
               case 0:
                  _loc2_ = new §"!R§(this.§ `§.layer1.level0);
                  _loc3_ = new §"!R§(this.§ `§.layer1.lock1);
                  break;
               case 1:
                  _loc2_ = new §"!R§(this.§ `§.layer1.level1);
                  _loc3_ = new §"!R§(this.§ `§.layer1.lock2);
                  break;
               case 2:
                  _loc2_ = new §"!R§(this.§ `§.layer1.level2);
                  _loc3_ = new §"!R§(this.§ `§.layer1.lock3);
                  break;
            }
            this.§;c§[_loc2_.§>!o§] = _loc2_;
            _loc2_.levelNum = _loc4_;
            _loc2_.levelName = "" + this.§<$§.§#+§(_loc4_);
            _loc2_.§>!o§.scaleX = _loc2_.§>!o§.scaleY = §'" §;
            this.§implements§[_loc3_.§>!o§] = _loc3_;
            _loc3_.levelNum = _loc4_;
            _loc3_.levelName = "" + this.§<$§.§#+§(_loc4_);
            _loc4_++;
         }
         var _loc5_:MovieClip;
         (_loc5_ = this.§ `§["glowEffect"]).filters = [new GlowFilter(6618980,0.6,8,8,8,3,false,false)];
      }
      
      public function refresh(param1:Boolean = false) : void
      {
         var _loc2_:§"!R§ = null;
         var _loc3_:§"!R§ = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         if(§1!N§.§,!<§.§=!9§)
         {
            this.§ `§.planetLock.visible = true;
            (this.§ `§.starText as TextField).visible = true;
            if(this.§ `§.starTextBg)
            {
               (this.§ `§.starTextBg as MovieClip).visible = true;
            }
            switch(this.§<$§.name)
            {
               case "1":
                  this.§ `§.planetLock.visible = false;
                  (this.§ `§.starText as TextField).visible = false;
                  break;
               case "2":
                  _loc4_ = §1!N§.§,!<§.starsNeededToUnlockEpisode2;
                  if(§1!N§.§,!<§.stars >= _loc4_)
                  {
                     if(!this.§ `§.planetLock.visible)
                     {
                        this.§@j§ = true;
                     }
                     else
                     {
                        this.§@j§ = false;
                     }
                     this.§ `§.planetLock.visible = false;
                     (this.§ `§.starText as TextField).visible = false;
                     if(this.§ `§.starTextBg)
                     {
                        (this.§ `§.starTextBg as MovieClip).visible = false;
                     }
                  }
                  else
                  {
                     (this.§ `§.starText as TextField).text = §1!N§.§,!<§.stars + "/" + _loc4_;
                  }
                  break;
               case "3":
                  _loc5_ = §1!N§.§,!<§.starsNeededToUnlockEpisode3;
                  if(§1!N§.§,!<§.stars >= _loc5_)
                  {
                     if(!this.§ `§.planetLock.visible)
                     {
                        this.§@j§ = true;
                     }
                     else
                     {
                        this.§@j§ = false;
                     }
                     this.§ `§.planetLock.visible = false;
                     (this.§ `§.starText as TextField).text = _loc5_ + "/" + _loc5_;
                     (this.§ `§.starText as TextField).visible = false;
                     if(this.§ `§.starTextBg)
                     {
                        (this.§ `§.starTextBg as MovieClip).visible = false;
                     }
                     break;
                  }
                  (this.§ `§.starText as TextField).text = §1!N§.§,!<§.stars + "/" + _loc5_;
                  break;
            }
         }
         else
         {
            switch(this.§<$§.name)
            {
               case "1":
                  this.§ `§.layer1.level0.visible = true;
                  break;
               case "2":
                  this.§ `§.layer1.level1.visible = true;
                  break;
               case "3":
                  this.§ `§.layer1.level2.visible = true;
            }
            this.§ `§.planetLock.visible = false;
            (this.§ `§.starText as TextField).visible = false;
            if(this.§ `§.starTextBg)
            {
               (this.§ `§.starTextBg as MovieClip).visible = false;
            }
         }
         for each(_loc2_ in this.§implements§)
         {
            if(§1!N§.§8![§(_loc2_.levelName) || param1)
            {
               _loc2_.§>!o§.removeEventListener(MouseEvent.MOUSE_UP,this.§3Y§);
            }
            else
            {
               _loc2_.§>!o§.addEventListener(MouseEvent.MOUSE_UP,this.§3Y§);
            }
         }
         for each(_loc3_ in this.§;c§)
         {
            if(§1!N§.§,!<§.§=!9§)
            {
               if(§1!N§.§8![§(_loc3_.levelName) || param1)
               {
                  _loc3_.§>!o§.addEventListener(MouseEvent.MOUSE_OVER,this.§<!!§);
                  _loc3_.§>!o§.addEventListener(MouseEvent.MOUSE_OUT,this.§+"8§);
                  _loc3_.§>!o§.addEventListener(MouseEvent.MOUSE_UP,this.§`L§);
                  (this.§ `§.layer1["level" + _loc3_.levelNum] as SimpleButton).visible = true;
                  (this.§ `§.layer1["lock" + (_loc3_.levelNum + 1)] as SimpleButton).visible = false;
                  if((_loc6_ = (§2&§.§6o§ as §@T§).§'"5§.§>"3§(_loc3_.levelName,(§2&§.§6o§ as §@T§).§'"5§.getScoreForLevel(_loc3_.levelName))) == 3)
                  {
                     (this.§ `§.layer1["level_info" + _loc3_.levelNum].star3 as MovieClip).visible = true;
                  }
                  else if(_loc6_ == 2)
                  {
                     (this.§ `§.layer1["level_info" + _loc3_.levelNum].star2 as MovieClip).visible = true;
                  }
                  else if(_loc6_ == 1)
                  {
                     (this.§ `§.layer1["level_info" + _loc3_.levelNum].star1 as MovieClip).visible = true;
                  }
                  else if(_loc6_ == 0)
                  {
                     (this.§ `§.layer1["level_info" + _loc3_.levelNum].star0 as MovieClip).visible = true;
                  }
                  _loc7_ = 0;
                  while(_loc7_ < this.§'"§.length)
                  {
                     this.§'"§[_loc7_].alpha = 0;
                     _loc7_++;
                  }
               }
               else
               {
                  _loc3_.§>!o§.removeEventListener(MouseEvent.MOUSE_OVER,this.§<!!§);
                  _loc3_.§>!o§.removeEventListener(MouseEvent.MOUSE_OUT,this.§+"8§);
                  _loc3_.§>!o§.removeEventListener(MouseEvent.MOUSE_UP,this.§`L§);
                  (this.§ `§.layer1["level" + _loc3_.levelNum] as SimpleButton).visible = false;
                  (this.§ `§.layer1["lock" + (_loc3_.levelNum + 1)] as SimpleButton).visible = true;
                  (this.§ `§.layer1["level_info" + _loc3_.levelNum].star0 as MovieClip).visible = false;
                  (this.§ `§.layer1["level_info" + _loc3_.levelNum].star1 as MovieClip).visible = false;
                  (this.§ `§.layer1["level_info" + _loc3_.levelNum].star2 as MovieClip).visible = false;
                  (this.§ `§.layer1["level_info" + _loc3_.levelNum].star3 as MovieClip).visible = false;
               }
            }
            else
            {
               _loc3_.§>!o§.addEventListener(MouseEvent.MOUSE_OVER,this.§<!!§);
               _loc3_.§>!o§.addEventListener(MouseEvent.MOUSE_OUT,this.§+"8§);
               _loc3_.§>!o§.addEventListener(MouseEvent.MOUSE_UP,this.§`L§);
               (this.§ `§.layer1["level" + _loc3_.levelNum] as SimpleButton).visible = true;
               (this.§ `§.layer1["lock" + (_loc3_.levelNum + 1)] as SimpleButton).visible = false;
               (this.§ `§.layer1["level_info" + _loc3_.levelNum].star0 as MovieClip).visible = false;
               (this.§ `§.layer1["level_info" + _loc3_.levelNum].star1 as MovieClip).visible = false;
               (this.§ `§.layer1["level_info" + _loc3_.levelNum].star2 as MovieClip).visible = false;
               (this.§ `§.layer1["level_info" + _loc3_.levelNum].star3 as MovieClip).visible = false;
            }
         }
      }
      
      private function §<!!§(param1:MouseEvent) : void
      {
         var _loc2_:String = (this.§;c§[param1.currentTarget] as §"!R§).levelName;
         var _loc3_:§"!R§ = this.§;c§[param1.currentTarget] as §"!R§;
         if(this.§@!C§ != null)
         {
            this.§@!C§.stop();
         }
         this.§@!C§ = §"!t§.§3R§.§2m§(_loc3_.§>!o§,{
            "scaleX":§&"%§,
            "scaleY":§&"%§
         },null,0.1);
         this.§@!C§.play();
         var _loc4_:int = 0;
         while(_loc4_ < this.§'"§.length)
         {
            if(_loc4_ != _loc3_.levelNum)
            {
               this.§'"§[_loc4_].alpha = 0;
            }
            _loc4_++;
         }
         if(§1!N§.§,!<§.§=!9§)
         {
            if(this.§ "C§ != null)
            {
               this.§ "C§.stop();
            }
            this.§ "C§ = §"!t§.§3R§.§2m§(this.§'"§[_loc3_.levelNum],{"alpha":1},null,0.5);
            this.§ "C§.play();
         }
      }
      
      private function §+"8§(param1:MouseEvent) : void
      {
         var _loc2_:§"!R§ = this.§;c§[param1.currentTarget] as §"!R§;
         if(this.§@!C§ != null)
         {
            this.§@!C§.stop();
         }
         this.§@!C§ = §"!t§.§3R§.§2m§(_loc2_.§>!o§,{
            "scaleX":§'" §,
            "scaleY":§'" §
         },null,0.1);
         this.§@!C§.play();
         var _loc3_:int = 0;
         while(_loc3_ < this.§'"§.length)
         {
            if(_loc3_ != _loc2_.levelNum)
            {
               this.§'"§[_loc3_].alpha = 0;
            }
            _loc3_++;
         }
         if(§1!N§.§,!<§.§=!9§)
         {
            if(this.§ "C§ != null)
            {
               this.§ "C§.stop();
            }
            this.§ "C§ = §"!t§.§3R§.§2m§(this.§'"§[_loc2_.levelNum],{"alpha":0},null,0.25);
            this.§ "C§.play();
         }
      }
      
      private function §`L§(param1:MouseEvent) : void
      {
         var _loc2_:String = (this.§;c§[param1.currentTarget] as §"!R§).levelName;
         dispatchEvent(new EpisodeButtonEvent(EpisodeButtonEvent.§-!c§,_loc2_,(this.§;c§[param1.currentTarget] as §"!R§).§>!o§.x,(this.§;c§[param1.currentTarget] as §"!R§).§>!o§.y,this.§;c§[param1.currentTarget] as §"!R§));
      }
      
      private function §3Y§(param1:MouseEvent) : void
      {
         var _loc2_:String = (this.§implements§[param1.currentTarget] as §"!R§).levelName;
         dispatchEvent(new EpisodeButtonEvent(EpisodeButtonEvent.§-!c§,_loc2_,(this.§implements§[param1.currentTarget] as §"!R§).§>!o§.x,(this.§implements§[param1.currentTarget] as §"!R§).§>!o§.y,this.§implements§[param1.currentTarget] as §"!R§));
         this.§@"<§(this.§ `§.starTextBg as MovieClip);
      }
      
      private function §@"<§(param1:MovieClip) : void
      {
         this.§4!A§ = new GlowFilter(10618390,0.6,3,3,0,5,true,false);
         this.§[!7§ = new GlowFilter(15736864,0.6,7,7,0,5,false,false);
         var _loc2_:§,4§ = §"!t§.§3R§.§&"9§(§"!t§.§3R§.§2m§(this.§4!A§,{"strength":2},{"strength":0},§<!Q§ / 4,§"!t§.§]!o§),§"!t§.§3R§.§2m§(this.§4!A§,{"strength":0},{"strength":2},§<!Q§ / 4,§"!t§.§&!p§),§"!t§.§3R§.§2m§(this.§4!A§,{"strength":2},{"strength":0},§<!Q§ / 4,§"!t§.§]!o§),§"!t§.§3R§.§2m§(this.§4!A§,{"strength":0},{"strength":2},§<!Q§ / 4,§"!t§.§&!p§));
         _loc2_.play();
         var _loc3_:§,4§ = §"!t§.§3R§.§&"9§(§"!t§.§3R§.§2m§(this.§[!7§,{"strength":4},{"strength":0},§<!Q§ / 4,§"!t§.§]!o§),§"!t§.§3R§.§2m§(this.§[!7§,{"strength":0},{"strength":4},§<!Q§ / 4,§"!t§.§&!p§),§"!t§.§3R§.§2m§(this.§[!7§,{"strength":4},{"strength":0},§<!Q§ / 4,§"!t§.§]!o§),§"!t§.§3R§.§2m§(this.§[!7§,{"strength":0},{"strength":4},§<!Q§ / 4,§"!t§.§&!p§));
         _loc3_.play();
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:MovieClip = this.§ `§["glowEffect"];
         _loc2_.visible = false;
         this.§?"6§();
      }
      
      private function §?"6§() : void
      {
         var _loc1_:MovieClip = this.§ `§.starTextBg as MovieClip;
         var _loc2_:MovieClip = this.§ `§.planetLock as MovieClip;
         if(this.§4!A§)
         {
            _loc1_.filters = [this.§4!A§,this.§[!7§];
            _loc2_.filters = [this.§4!A§,this.§[!7§];
         }
      }
      
      public function set scrollIndex(param1:Number) : void
      {
         var _loc5_:MovieClip = null;
         this.§,=§ = param1;
         var _loc2_:Number = Math.abs(param1);
         var _loc3_:Number = 1 - Math.min(_loc2_,1);
         var _loc4_:int = 1;
         if(_loc2_ > 2)
         {
            _loc3_ = _loc2_ - 2;
         }
         while(_loc4_ < 100)
         {
            if(!(_loc5_ = this.§ `§["layer" + _loc4_]))
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
         return this.§,=§;
      }
      
      public function get §@y§() : Number
      {
         return this.§`4§;
      }
      
      public function set §@y§(param1:Number) : void
      {
         this.§`4§ = param1;
      }
      
      public function get §2!P§() : Number
      {
         return this.§;!I§;
      }
      
      public function set §2!P§(param1:Number) : void
      {
         this.§;!I§ = param1;
      }
      
      public function get §,"C§() : Number
      {
         return this.§?>§;
      }
      
      public function set §,"C§(param1:Number) : void
      {
         this.§?>§ = param1;
      }
      
      public function get §,!D§() : Number
      {
         return this.§>!J§;
      }
      
      public function set §,!D§(param1:Number) : void
      {
         this.§>!J§ = param1;
      }
   }
}
