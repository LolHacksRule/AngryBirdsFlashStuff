package §;^§
{
   import §"",§.§"Z§;
   import §"",§.§+§;
   import §"",§.§<+§;
   import §+I§.§9!%§;
   import §,"-§.§2!P§;
   import §0r§.§-!F§;
   import §0r§.§7!b§;
   import §0t§.§"I§;
   import §0t§.§9c§;
   import §1"2§.§#z§;
   import §1k§.§%4§;
   import §1o§.§'8§;
   import §1o§.§,!c§;
   import §1o§.§7B§;
   import §2!,§.§9"$§;
   import §2!,§.§=n§;
   import §[!z§.LevelManager;
   import §]!F§.§"!j§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §9!$§
   {
       
      
      private var §2"-§:§"!j§;
      
      private var §&2§:§9c§;
      
      private var §;!F§:§-!F§;
      
      private var § u§:§-!F§;
      
      private var §5<§:Number;
      
      private var §^!O§:Number;
      
      private var §;m§:§,!c§;
      
      private var §@I§:§7B§;
      
      private var §;!'§:Boolean = false;
      
      private var §?g§:Boolean;
      
      private var §<E§:§9"$§;
      
      private var §1!N§:int;
      
      private var §97§:§9"$§;
      
      private var §!i§:int = -1;
      
      private var §"!o§:Array;
      
      private var §!"1§:String;
      
      private var §5!N§:§9"$§;
      
      private var §!C§:§<+§;
      
      private var §?"$§:§<+§;
      
      private var §7!n§:§#z§;
      
      private var §"q§:§"Z§;
      
      private var §7!9§:§"Z§;
      
      private var §6o§:§"Z§;
      
      private var §]!u§:§"Z§;
      
      private var §+!V§:§"Z§;
      
      private var §0"=§:§"Z§;
      
      private var § c§:§+§;
      
      private var §2"!§:§+§;
      
      private var §,s§:§+§;
      
      private var §8>§:§+§;
      
      private var §'!i§:§+§;
      
      private var §"?§:§+§;
      
      public function §9!$§(param1:§"!j§)
      {
         this.§"!o§ = [];
         super();
         this.§2"-§ = param1;
         this.§"D§();
         this.§5<§ = this.§?"$§.x;
         this.§^!O§ = this.§7!n§.y;
      }
      
      private function §"D§() : void
      {
         this.§?"$§ = this.§2"-§.getItemByName("Container_VsHero") as §<+§;
         this.§7!n§ = this.§2"-§.getItemByName("Container_VsEnemy") as §<+§;
         this.§!C§ = this.§2"-§.getItemByName("Container_Vs") as §<+§;
         this.§"q§ = this.§2"-§.getItemByName("MovieClip_VsAnimation") as §"Z§;
         this.§7!9§ = this.§2"-§.getItemByName("MovieClip_Boom") as §"Z§;
         this.§6o§ = this.§2"-§.getItemByName("MovieClip_VsProfilePicHero") as §"Z§;
         this.§]!u§ = this.§2"-§.getItemByName("MovieClip_VsProfilePicEnemy") as §"Z§;
         this.§+!V§ = this.§2"-§.getItemByName("MovieClip_CrownHero") as §"Z§;
         this.§0"=§ = this.§2"-§.getItemByName("MovieClip_CrownEnemy") as §"Z§;
         this.§ c§ = this.§2"-§.getItemByName("TextField_VsScore") as §+§;
         this.§2"!§ = this.§2"-§.getItemByName("TextField_VsScoreEnemy") as §+§;
         this.§,s§ = this.§2"-§.getItemByName("TextField_NameHero") as §+§;
         this.§8>§ = this.§2"-§.getItemByName("TextField_NameEnemy") as §+§;
         this.§'!i§ = this.§2"-§.getItemByName("TextField_VsPositionHero") as §+§;
         this.§"?§ = this.§2"-§.getItemByName("TextField_VsPositionEnemy") as §+§;
      }
      
      public function activate() : void
      {
         if(this.§;!F§)
         {
            this.§;!F§.play();
         }
         if(this.§ u§)
         {
            this.§ u§.play();
         }
         var _loc1_:MovieClip = this.§2"-§.getItemByName("PlayerNameMask").mClip;
         var _loc2_:String = (AngryBirdsFP11.sUserProgress as §2!P§).userName;
         this.§ "!§(_loc2_,this.§,s§,_loc1_);
         if(this.§5!N§)
         {
            this.§ "!§(this.§5!N§.userName,this.§8>§,this.§2"-§.getItemByName("EnemyNameMask").mClip);
         }
      }
      
      public function deActivate() : void
      {
         if(this.§;!F§)
         {
            this.§;!F§.pause();
            this.§;!F§.§?"+§ = false;
         }
         if(this.§ u§)
         {
            this.§ u§.pause();
            this.§ u§.§?"+§ = false;
         }
      }
      
      public function levelStarted(param1:§9c§, param2:String) : void
      {
         this.§!"1§ = param2;
         this.§]k§();
         this.§-!!§();
         this.§7!n§.setVisibility(true);
         this.§!C§.setVisibility(false);
         this.§&2§ = param1;
         this.§;!'§ = false;
         this.§97§ = null;
         this.§!i§ = -1;
         this.§"!o§ = [];
         this.§"q§.setVisibility(true);
         this.§"q§.§;!B§("Start");
         this.§"q§.§^^§ = true;
         this.§1!N§ = -1;
         this.§?"$§.x = this.§5<§;
         this.§7!n§.y = this.§^!O§;
         this.§ u§ = null;
         this.§;!F§ = null;
         this.§'!G§();
      }
      
      private function initialize() : void
      {
         var _loc3_:int = 0;
         this.§&c§();
         var _loc1_:MovieClip = this.§2"-§.getItemByName("PlayerNameMask").mClip;
         var _loc2_:String = (AngryBirdsFP11.sUserProgress as §2!P§).userName;
         _loc2_ = this.§ "!§(_loc2_,this.§,s§,_loc1_);
         this.§97§ = null;
         var _loc4_:int = AngryBirdsFP11.sUserProgress.getScoreForLevel(this.§!"1§);
         this.§<E§ = this.§&2§.§ r§();
         if(this.§<E§)
         {
            this.§9a§(this.§<E§);
            _loc3_ = this.§<E§.§]!S§ + 1;
            this.§7!n§.setVisibility(true);
            this.§"q§.setVisibility(true);
         }
         else
         {
            _loc3_ = 1;
            this.§7!n§.setVisibility(false);
            this.§"q§.setVisibility(false);
            this.§?"$§.x = this.§7!n§.x;
         }
         this.§'!i§.setText(_loc3_.toString());
         if(_loc4_ > 0)
         {
            (AngryBirdsFP11.sUserProgress as §2!P§).§ 7§(LevelManager.§[!<§,_loc3_);
         }
         var _loc5_:int = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(this.§!"1§);
         this.§+!V§.setVisibility(_loc3_ <= 3 && (_loc4_ > 0 || _loc5_ > 0));
         if(_loc3_ > 0 && _loc3_ <= 3 && (_loc4_ > 0 || _loc5_ > 0))
         {
            this.§+!V§.§;!B§(["Gold","Silver","Bronze"][_loc3_ - 1]);
         }
         else
         {
            this.§+!V§.§5$§(1);
         }
         this.§!C§.setVisibility(true);
         this.§;!'§ = true;
      }
      
      public function run(param1:Number) : Boolean
      {
         if(this.§&2§.§%!H§ || §9!%§.§!!M§.objects.mSardineCanAdded || this.§?g§)
         {
            this.§!C§.setVisibility(false);
            return true;
         }
         if(!this.§;!'§)
         {
            this.initialize();
         }
         this.updateAnimations(param1);
         return this.§97§ == null;
      }
      
      public function updateCurrentScore(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:int = 0;
         if(this.§1!N§ == param1)
         {
            return;
         }
         this.§1!N§ = param1;
         this.§ c§.setText(this.§<X§(this.§1!N§));
         if(!this.§<E§)
         {
            return;
         }
         if(this.§&2§.§%!H§ || §9!%§.§!!M§.objects.mSardineCanAdded || this.§?g§)
         {
            return;
         }
         while(this.§<E§ && this.§1!N§ > this.§<E§.§+!^§)
         {
            this.§"!o§.unshift(this.§<E§);
            if((_loc4_ = this.§&2§.data.indexOf(this.§<E§) - 1) >= 0)
            {
               this.§<E§ = this.§&2§.data[_loc4_];
            }
            else
            {
               this.§<E§ = null;
            }
         }
         while(this.§"!o§.length > 5)
         {
            this.§"!o§.pop();
         }
         if(this.§"!o§.length > 0 && !this.§97§)
         {
            this.§5!'§();
         }
      }
      
      private function §9a§(param1:§9"$§) : void
      {
         this.§0"=§.setVisibility(param1.§]!S§ <= 3);
         if(param1.§]!S§ > 0 && param1.§]!S§ <= 3)
         {
            this.§0"=§.§;!B§(["Gold","Silver","Bronze"][param1.§]!S§ - 1]);
         }
         this.§"?§.setText(param1.§]!S§.toString());
         this.§2"!§.setText(this.§<X§(param1.§+!^§));
         this.§6!m§(param1);
      }
      
      private function updateAnimations(param1:Number) : void
      {
         var _loc2_:§"Z§ = null;
         for each(_loc2_ in [this.§"q§,this.§7!9§,this.§"q§])
         {
            this.§?X§(_loc2_,param1,true);
         }
      }
      
      private function §6!m§(param1:§9"$§) : void
      {
         var _loc2_:String = §"I§.§<!v§(param1.userId);
         var _loc3_:String = param1.userId;
         this.§5!N§ = param1;
         this.§]k§();
         this.§;m§ = new §7B§(_loc3_,"",false,§'8§.NORMAL);
         this.§%"4§(this.§]!u§,this.§;m§);
         this.§ "!§(param1.userName,this.§8>§,this.§2"-§.getItemByName("EnemyNameMask").mClip);
      }
      
      private function § "!§(param1:String, param2:§+§, param3:MovieClip) : String
      {
         if(param1.length > 6)
         {
            param2.mClip.mask = param3;
            param3.visible = true;
         }
         else
         {
            param2.mClip.mask = null;
            param3.visible = false;
         }
         param2.setText(param1);
         return param1;
      }
      
      private function §%"4§(param1:§"Z§, param2:MovieClip) : void
      {
         while(param1.mClip.numChildren > 0)
         {
            param1.mClip.removeChildAt(0);
         }
         param1.mClip.addChild(param2);
      }
      
      private function §'!G§() : void
      {
         var _loc1_:String = (AngryBirdsFP11.sUserProgress as §2!P§).avatarString;
         var _loc2_:String = (AngryBirdsFP11.sUserProgress as §2!P§).§!!'§;
         this.§-!!§();
         this.§@I§ = new §7B§(_loc2_,"",false,§'8§.NORMAL);
         this.§%"4§(this.§6o§,this.§@I§);
      }
      
      private function § !t§(param1:Event) : void
      {
         this.§'!G§();
      }
      
      private function §]k§() : void
      {
         if(this.§;m§)
         {
            this.§;m§.dispose();
            this.§;m§ = null;
         }
      }
      
      private function §-!!§() : void
      {
         if(this.§@I§)
         {
            this.§@I§.dispose();
            this.§@I§ = null;
         }
      }
      
      public function set §5!U§(param1:Boolean) : void
      {
         this.§?g§ = param1;
         this.§!C§.setVisibility(!this.§?g§);
      }
      
      private function §5!'§() : void
      {
         this.§97§ = this.§"!o§.pop();
         this.§ u§ = §7!b§.§8c§.§4&§(this.§?"$§.mClip,{"x":this.§5<§ + 15},{"x":this.§5<§},0.5,§7!b§.§5E§);
         this.§ u§.onComplete = this.§<!n§;
         this.§ u§.play();
         §%4§.§>f§("NextToBeat_Sound","ChannelPowerups");
      }
      
      private function §<!n§() : void
      {
         var _loc2_:int = 0;
         this.§ u§ = null;
         this.§7!9§.§;!B§("Start");
         this.§7!9§.§^^§ = true;
         this.§7!9§.setVisibility(true);
         var _loc1_:§9"$§ = this.§"!o§.length > 0 ? this.§"!o§[this.§"!o§.length - 1] : this.§<E§;
         if(this.§97§.§]!S§ == 1 || _loc1_ == null)
         {
            this.§7!n§.setVisibility(false);
            this.§ u§ = §7!b§.§8c§.§4&§(this.§?"$§.mClip,{"x":this.§7!n§.mClip.x},null,0.5);
            this.§ u§.onComplete = this.§%^§;
            this.§ u§.play();
            this.§+!V§.§;!B§("Gold");
            this.§'!i§.setText("1");
            this.§+!V§.setVisibility(true);
         }
         else
         {
            this.§ u§ = §7!b§.§8c§.§4&§(this.§?"$§.mClip,{"x":this.§5<§},null,0.5);
            this.§ u§.onComplete = null;
            this.§ u§.play();
            this.§9a§(_loc1_);
            _loc2_ = _loc1_.§]!S§ + 1;
            this.§+!V§.setVisibility(_loc2_ <= 3);
            if(_loc2_ > 0 && _loc2_ <= 3)
            {
               this.§+!V§.§;!B§(["Gold","Silver","Bronze"][_loc2_ - 1]);
            }
            this.§'!i§.setText(_loc2_.toString());
            this.§;!F§ = §7!b§.§8c§.§4&§(this.§7!n§.mClip,{"y":this.§^!O§},{"y":-150},2,§7!b§.§5E§);
            this.§;!F§.onComplete = this.§^!P§;
            this.§;!F§.play();
         }
      }
      
      private function §^!P§() : void
      {
         this.§;!F§ = null;
         this.§97§ = null;
         if(this.§"!o§.length > 0)
         {
            this.§5!'§();
         }
      }
      
      private function §%^§() : void
      {
         this.§ u§ = null;
         this.§97§ = null;
      }
      
      private function §<X§(param1:int) : String
      {
         var _loc4_:String = null;
         var _loc2_:String = param1.toString();
         var _loc3_:Array = [];
         if(_loc2_.length % 3 > 0)
         {
            _loc3_.push(_loc2_.substr(0,_loc2_.length % 3));
            _loc2_ = _loc2_.slice(_loc2_.length % 3);
         }
         while(_loc2_.length > 0)
         {
            _loc3_.push(_loc2_.substr(0,3));
            _loc2_ = _loc2_.substr(3);
         }
         for each(_loc4_ in _loc3_)
         {
            _loc2_ += _loc4_ + ",";
         }
         return _loc2_.substr(0,_loc2_.length - 1);
      }
      
      private function §?X§(param1:§"Z§, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:String = null;
         if(param1.§^^§ == true)
         {
            if((_loc4_ = param1.§1!k§(param2)) == "End")
            {
               param1.§^^§ = false;
               if(param3)
               {
                  param1.setVisibility(false);
               }
            }
         }
      }
      
      private function §&c§() : void
      {
         var _loc1_:§=n§ = null;
         var _loc2_:§,!c§ = null;
         for each(_loc1_ in this.§&2§.data)
         {
            if(_loc1_ is §9"$§)
            {
               _loc2_ = new §,!c§(_loc1_.userId,"",false,§'8§.NORMAL);
               _loc2_.dispose();
            }
         }
      }
   }
}
