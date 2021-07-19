package §9y§
{
   import §7!B§.§@!^§;
   import §=u§.§!D§;
   import §=u§.§5!9§;
   import §`!j§.§3,§;
   import com.rovio.assets.§ !h§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.filters.GlowFilter;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   
   public class §`"C§ extends Sprite
   {
      
      private static const §&!q§:Number = 1.5;
      
      private static const §;i§:Number = 1.2;
      
      private static const §;!o§:Number = 1;
       
      
      private var §;!i§:§3,§;
      
      private var §!!>§:MovieClip;
      
      private var §[!L§:Number;
      
      private var §1!'§:Dictionary;
      
      private var §7`§:Dictionary;
      
      private var §&W§:§5!9§;
      
      private var §?"@§:§5!9§;
      
      private var §-u§:Array;
      
      private var §+!Z§:Number;
      
      private var §""%§:Number;
      
      private var §"&§:Number;
      
      private var §7"&§:Number;
      
      private var §1_§:GlowFilter;
      
      private var §9n§:GlowFilter;
      
      private var §;"A§:Boolean = true;
      
      private var §;+§:Number = 0;
      
      private var §""+§:Number = 1000;
      
      public function §`"C§(param1:§3,§)
      {
         super();
         this.§;!i§ = param1;
         this.init();
      }
      
      public function §?U§() : Number
      {
         return this.§!!>§.layer1.scaleX;
      }
      
      private function init() : void
      {
         var _loc1_:MovieClip = null;
         var _loc2_:§><§ = null;
         var _loc3_:§><§ = null;
         var _loc4_:int = 0;
         this.§!!>§ = new § !h§.§["3§(this.§;!i§.menuImage)();
         addChild(this.§!!>§);
         this.§-u§ = [];
         this.§-u§.push(this.§!!>§.layer1.logo1);
         this.§-u§.push(this.§!!>§.layer1.logo2);
         this.§-u§.push(this.§!!>§.layer1.logo3);
         for each(_loc1_ in this.§-u§)
         {
            _loc1_.alpha = 0;
         }
         this.§1!'§ = new Dictionary();
         this.§7`§ = new Dictionary();
         _loc4_ = 0;
         while(_loc4_ < 3)
         {
            switch(_loc4_)
            {
               case 0:
                  _loc2_ = new §><§(this.§!!>§.layer1.level0);
                  _loc3_ = new §><§(this.§!!>§.layer1.lock1);
                  break;
               case 1:
                  _loc2_ = new §><§(this.§!!>§.layer1.level1);
                  _loc3_ = new §><§(this.§!!>§.layer1.lock2);
                  break;
               case 2:
                  _loc2_ = new §><§(this.§!!>§.layer1.level2);
                  _loc3_ = new §><§(this.§!!>§.layer1.lock3);
                  break;
            }
            this.§1!'§[_loc2_.§@v§] = _loc2_;
            _loc2_.levelNum = _loc4_;
            _loc2_.levelName = "" + this.§;!i§.§=!U§(_loc4_);
            _loc2_.§@v§.scaleX = _loc2_.§@v§.scaleY = §;!o§;
            this.§7`§[_loc3_.§@v§] = _loc3_;
            _loc3_.levelNum = _loc4_;
            _loc3_.levelName = "" + this.§;!i§.§=!U§(_loc4_);
            _loc4_++;
         }
         var _loc5_:MovieClip;
         (_loc5_ = this.§!!>§["glowEffect"]).filters = [new GlowFilter(6618980,0.6,8,8,8,3,false,false)];
      }
      
      public function refresh(param1:Boolean = false) : void
      {
         var _loc2_:§><§ = null;
         var _loc3_:§><§ = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         if(§@!^§.§2j§.§8B§)
         {
            this.§!!>§.planetLock.visible = true;
            (this.§!!>§.starText as TextField).visible = true;
            if(this.§!!>§.starTextBg)
            {
               (this.§!!>§.starTextBg as MovieClip).visible = true;
            }
            switch(this.§;!i§.name)
            {
               case "1":
                  this.§!!>§.planetLock.visible = false;
                  (this.§!!>§.starText as TextField).visible = false;
                  break;
               case "2":
                  _loc4_ = §@!^§.§2j§.starsNeededToUnlockEpisode2;
                  if(§@!^§.§2j§.stars >= _loc4_)
                  {
                     if(!this.§!!>§.planetLock.visible)
                     {
                        this.§;"A§ = true;
                     }
                     else
                     {
                        this.§;"A§ = false;
                     }
                     this.§!!>§.planetLock.visible = false;
                     (this.§!!>§.starText as TextField).visible = false;
                     if(this.§!!>§.starTextBg)
                     {
                        (this.§!!>§.starTextBg as MovieClip).visible = false;
                     }
                  }
                  else
                  {
                     (this.§!!>§.starText as TextField).text = §@!^§.§2j§.stars + "/" + _loc4_;
                  }
                  break;
               case "3":
                  _loc5_ = §@!^§.§2j§.starsNeededToUnlockEpisode3;
                  if(§@!^§.§2j§.stars >= _loc5_)
                  {
                     if(!this.§!!>§.planetLock.visible)
                     {
                        this.§;"A§ = true;
                     }
                     else
                     {
                        this.§;"A§ = false;
                     }
                     this.§!!>§.planetLock.visible = false;
                     (this.§!!>§.starText as TextField).text = _loc5_ + "/" + _loc5_;
                     (this.§!!>§.starText as TextField).visible = false;
                     if(this.§!!>§.starTextBg)
                     {
                        (this.§!!>§.starTextBg as MovieClip).visible = false;
                     }
                  }
                  else
                  {
                     (this.§!!>§.starText as TextField).text = §@!^§.§2j§.stars + "/" + _loc5_;
                  }
            }
         }
         else
         {
            switch(this.§;!i§.name)
            {
               case "1":
                  this.§!!>§.layer1.level0.visible = true;
                  break;
               case "2":
                  this.§!!>§.layer1.level1.visible = true;
                  break;
               case "3":
                  this.§!!>§.layer1.level2.visible = true;
            }
            this.§!!>§.planetLock.visible = false;
            (this.§!!>§.starText as TextField).visible = false;
            if(this.§!!>§.starTextBg)
            {
               (this.§!!>§.starTextBg as MovieClip).visible = false;
            }
         }
         for each(_loc2_ in this.§7`§)
         {
            if(§@!^§.§#^§(_loc2_.levelName) || param1)
            {
               _loc2_.§@v§.removeEventListener(MouseEvent.MOUSE_UP,this.§!!H§);
            }
            else
            {
               _loc2_.§@v§.addEventListener(MouseEvent.MOUSE_UP,this.§!!H§);
            }
         }
         for each(_loc3_ in this.§1!'§)
         {
            if(§@!^§.§2j§.§8B§)
            {
               if(§@!^§.§#^§(_loc3_.levelName) || param1)
               {
                  _loc3_.§@v§.addEventListener(MouseEvent.MOUSE_OVER,this.§[!w§);
                  _loc3_.§@v§.addEventListener(MouseEvent.MOUSE_OUT,this.§05§);
                  _loc3_.§@v§.addEventListener(MouseEvent.MOUSE_UP,this.§6!h§);
                  (this.§!!>§.layer1["level" + _loc3_.levelNum] as SimpleButton).visible = true;
                  (this.§!!>§.layer1["lock" + (_loc3_.levelNum + 1)] as SimpleButton).visible = false;
                  if((_loc6_ = (§ !g§.§;!'§ as §`Y§).§]]§.§,R§(_loc3_.levelName,(§ !g§.§;!'§ as §`Y§).§]]§.getScoreForLevel(_loc3_.levelName))) == 3)
                  {
                     (this.§!!>§.layer1["level_info" + _loc3_.levelNum].star3 as MovieClip).visible = true;
                  }
                  else if(_loc6_ == 2)
                  {
                     (this.§!!>§.layer1["level_info" + _loc3_.levelNum].star2 as MovieClip).visible = true;
                  }
                  else if(_loc6_ == 1)
                  {
                     (this.§!!>§.layer1["level_info" + _loc3_.levelNum].star1 as MovieClip).visible = true;
                  }
                  else if(_loc6_ == 0)
                  {
                     (this.§!!>§.layer1["level_info" + _loc3_.levelNum].star0 as MovieClip).visible = true;
                  }
                  _loc7_ = 0;
                  while(_loc7_ < this.§-u§.length)
                  {
                     this.§-u§[_loc7_].alpha = 0;
                     _loc7_++;
                  }
               }
               else
               {
                  _loc3_.§@v§.removeEventListener(MouseEvent.MOUSE_OVER,this.§[!w§);
                  _loc3_.§@v§.removeEventListener(MouseEvent.MOUSE_OUT,this.§05§);
                  _loc3_.§@v§.removeEventListener(MouseEvent.MOUSE_UP,this.§6!h§);
                  (this.§!!>§.layer1["level" + _loc3_.levelNum] as SimpleButton).visible = false;
                  (this.§!!>§.layer1["lock" + (_loc3_.levelNum + 1)] as SimpleButton).visible = true;
                  (this.§!!>§.layer1["level_info" + _loc3_.levelNum].star0 as MovieClip).visible = false;
                  (this.§!!>§.layer1["level_info" + _loc3_.levelNum].star1 as MovieClip).visible = false;
                  (this.§!!>§.layer1["level_info" + _loc3_.levelNum].star2 as MovieClip).visible = false;
                  (this.§!!>§.layer1["level_info" + _loc3_.levelNum].star3 as MovieClip).visible = false;
               }
            }
            else
            {
               _loc3_.§@v§.addEventListener(MouseEvent.MOUSE_OVER,this.§[!w§);
               _loc3_.§@v§.addEventListener(MouseEvent.MOUSE_OUT,this.§05§);
               _loc3_.§@v§.addEventListener(MouseEvent.MOUSE_UP,this.§6!h§);
               (this.§!!>§.layer1["level" + _loc3_.levelNum] as SimpleButton).visible = true;
               (this.§!!>§.layer1["lock" + (_loc3_.levelNum + 1)] as SimpleButton).visible = false;
               (this.§!!>§.layer1["level_info" + _loc3_.levelNum].star0 as MovieClip).visible = false;
               (this.§!!>§.layer1["level_info" + _loc3_.levelNum].star1 as MovieClip).visible = false;
               (this.§!!>§.layer1["level_info" + _loc3_.levelNum].star2 as MovieClip).visible = false;
               (this.§!!>§.layer1["level_info" + _loc3_.levelNum].star3 as MovieClip).visible = false;
            }
         }
      }
      
      private function §[!w§(param1:MouseEvent) : void
      {
         var _loc2_:String = (this.§1!'§[param1.currentTarget] as §><§).levelName;
         var _loc3_:§><§ = this.§1!'§[param1.currentTarget] as §><§;
         if(this.§&W§ != null)
         {
            this.§&W§.stop();
         }
         this.§&W§ = §!D§.§[!1§.§1"<§(_loc3_.§@v§,{
            "scaleX":§;i§,
            "scaleY":§;i§
         },null,0.1);
         this.§&W§.play();
         var _loc4_:int = 0;
         while(_loc4_ < this.§-u§.length)
         {
            if(_loc4_ != _loc3_.levelNum)
            {
               this.§-u§[_loc4_].alpha = 0;
            }
            _loc4_++;
         }
         if(§@!^§.§2j§.§8B§)
         {
            if(this.§?"@§ != null)
            {
               this.§?"@§.stop();
            }
            this.§?"@§ = §!D§.§[!1§.§1"<§(this.§-u§[_loc3_.levelNum],{"alpha":1},null,0.5);
            this.§?"@§.play();
         }
      }
      
      private function §05§(param1:MouseEvent) : void
      {
         var _loc2_:§><§ = this.§1!'§[param1.currentTarget] as §><§;
         if(this.§&W§ != null)
         {
            this.§&W§.stop();
         }
         this.§&W§ = §!D§.§[!1§.§1"<§(_loc2_.§@v§,{
            "scaleX":§;!o§,
            "scaleY":§;!o§
         },null,0.1);
         this.§&W§.play();
         var _loc3_:int = 0;
         while(_loc3_ < this.§-u§.length)
         {
            if(_loc3_ != _loc2_.levelNum)
            {
               this.§-u§[_loc3_].alpha = 0;
            }
            _loc3_++;
         }
         if(§@!^§.§2j§.§8B§)
         {
            if(this.§?"@§ != null)
            {
               this.§?"@§.stop();
            }
            this.§?"@§ = §!D§.§[!1§.§1"<§(this.§-u§[_loc2_.levelNum],{"alpha":0},null,0.25);
            this.§?"@§.play();
         }
      }
      
      private function §6!h§(param1:MouseEvent) : void
      {
         var _loc2_:String = (this.§1!'§[param1.currentTarget] as §><§).levelName;
         dispatchEvent(new EpisodeButtonEvent(EpisodeButtonEvent.§ for§,_loc2_,(this.§1!'§[param1.currentTarget] as §><§).§@v§.x,(this.§1!'§[param1.currentTarget] as §><§).§@v§.y,this.§1!'§[param1.currentTarget] as §><§));
      }
      
      private function §!!H§(param1:MouseEvent) : void
      {
         var _loc2_:String = (this.§7`§[param1.currentTarget] as §><§).levelName;
         dispatchEvent(new EpisodeButtonEvent(EpisodeButtonEvent.§ for§,_loc2_,(this.§7`§[param1.currentTarget] as §><§).§@v§.x,(this.§7`§[param1.currentTarget] as §><§).§@v§.y,this.§7`§[param1.currentTarget] as §><§));
         this.§]"2§(this.§!!>§.starTextBg as MovieClip);
      }
      
      private function §]"2§(param1:MovieClip) : void
      {
         this.§1_§ = new GlowFilter(10618390,0.6,3,3,0,5,true,false);
         this.§9n§ = new GlowFilter(15736864,0.6,7,7,0,5,false,false);
         var _loc2_:§5!9§ = §!D§.§[!1§.§7!$§(§!D§.§[!1§.§1"<§(this.§1_§,{"strength":2},{"strength":0},§&!q§ / 4,§!D§.§!!R§),§!D§.§[!1§.§1"<§(this.§1_§,{"strength":0},{"strength":2},§&!q§ / 4,§!D§.§=!t§),§!D§.§[!1§.§1"<§(this.§1_§,{"strength":2},{"strength":0},§&!q§ / 4,§!D§.§!!R§),§!D§.§[!1§.§1"<§(this.§1_§,{"strength":0},{"strength":2},§&!q§ / 4,§!D§.§=!t§));
         _loc2_.play();
         var _loc3_:§5!9§ = §!D§.§[!1§.§7!$§(§!D§.§[!1§.§1"<§(this.§9n§,{"strength":4},{"strength":0},§&!q§ / 4,§!D§.§!!R§),§!D§.§[!1§.§1"<§(this.§9n§,{"strength":0},{"strength":4},§&!q§ / 4,§!D§.§=!t§),§!D§.§[!1§.§1"<§(this.§9n§,{"strength":4},{"strength":0},§&!q§ / 4,§!D§.§!!R§),§!D§.§[!1§.§1"<§(this.§9n§,{"strength":0},{"strength":4},§&!q§ / 4,§!D§.§=!t§));
         _loc3_.play();
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:MovieClip = this.§!!>§["glowEffect"];
         _loc2_.visible = false;
         this.§#!m§();
      }
      
      private function §#!m§() : void
      {
         var _loc1_:MovieClip = this.§!!>§.starTextBg as MovieClip;
         var _loc2_:MovieClip = this.§!!>§.planetLock as MovieClip;
         if(this.§1_§)
         {
            _loc1_.filters = [this.§1_§,this.§9n§];
            _loc2_.filters = [this.§1_§,this.§9n§];
         }
      }
      
      public function set scrollIndex(param1:Number) : void
      {
         var _loc5_:MovieClip = null;
         this.§[!L§ = param1;
         var _loc2_:Number = Math.abs(param1);
         var _loc3_:Number = 1 - Math.min(_loc2_,1);
         var _loc4_:int = 1;
         if(_loc2_ > 2)
         {
            _loc3_ = _loc2_ - 2;
         }
         while(_loc4_ < 100)
         {
            if(!(_loc5_ = this.§!!>§["layer" + _loc4_]))
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
         return this.§[!L§;
      }
      
      public function get §%f§() : Number
      {
         return this.§+!Z§;
      }
      
      public function set §%f§(param1:Number) : void
      {
         this.§+!Z§ = param1;
      }
      
      public function get §+! §() : Number
      {
         return this.§""%§;
      }
      
      public function set §+! §(param1:Number) : void
      {
         this.§""%§ = param1;
      }
      
      public function get §=0§() : Number
      {
         return this.§"&§;
      }
      
      public function set §=0§(param1:Number) : void
      {
         this.§"&§ = param1;
      }
      
      public function get §3"2§() : Number
      {
         return this.§7"&§;
      }
      
      public function set §3"2§(param1:Number) : void
      {
         this.§7"&§ = param1;
      }
   }
}
