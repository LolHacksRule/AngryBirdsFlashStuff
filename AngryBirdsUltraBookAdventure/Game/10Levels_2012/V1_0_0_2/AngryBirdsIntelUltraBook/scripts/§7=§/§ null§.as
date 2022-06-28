package §7=§
{
   import §"R§.§ !Q§;
   import §+!Q§.§<[§;
   import §0!N§.LevelManager;
   import §2h§.§'!^§;
   import §3!8§.§%!5§;
   import §3!8§.§0z§;
   import §3!8§.§null §;
   import §57§.§,!b§;
   import §57§.§4!Z§;
   import §6!M§.§-!?§;
   import §6!M§.§9!d§;
   import §8u§.§3?§;
   import §8u§.§9=§;
   import §9Y§.§9j§;
   import §?!7§.§"j§;
   import §?!7§.§8;§;
   import §?!7§.§[I§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import §true§.§ _§;
   
   public class § null§
   {
       
      
      private var §5!P§:§'!^§;
      
      private var §<!3§:§9=§;
      
      private var §#!I§:§4!Z§;
      
      private var §-9§:§4!Z§;
      
      private var §4!9§:Number;
      
      private var §%n§:Number;
      
      private var §@3§:§0z§;
      
      private var §2b§:§null §;
      
      private var §4!Y§:Boolean = false;
      
      private var §+M§:Boolean;
      
      private var §@E§:§-!?§;
      
      private var §1!c§:int;
      
      private var §&!§:§-!?§;
      
      private var §>!;§:int = -1;
      
      private var § !$§:Array;
      
      private var §<H§:String;
      
      private var §!!5§:§-!?§;
      
      private var §?K§:§8;§;
      
      private var §&!0§:§8;§;
      
      private var §-!i§:§9j§;
      
      private var §5!=§:§[I§;
      
      private var §9<§:§[I§;
      
      private var §!!6§:§[I§;
      
      private var §;O§:§[I§;
      
      private var §3!D§:§[I§;
      
      private var §%!#§:§[I§;
      
      private var §<!#§:§"j§;
      
      private var §&!w§:§"j§;
      
      private var §!H§:§"j§;
      
      private var §1!<§:§"j§;
      
      private var §<!Y§:§"j§;
      
      private var §[!O§:§"j§;
      
      public function § null§(param1:§'!^§)
      {
         this.§ !$§ = [];
         super();
         this.§5!P§ = param1;
         this.§6!N§();
         this.§4!9§ = this.§&!0§.x;
         this.§%n§ = this.§-!i§.y;
      }
      
      private function §6!N§() : void
      {
         this.§&!0§ = this.§5!P§.getItemByName("Container_VsHero") as §8;§;
         this.§-!i§ = this.§5!P§.getItemByName("Container_VsEnemy") as §8;§;
         this.§?K§ = this.§5!P§.getItemByName("Container_Vs") as §8;§;
         this.§5!=§ = this.§5!P§.getItemByName("MovieClip_VsAnimation") as §[I§;
         this.§9<§ = this.§5!P§.getItemByName("MovieClip_Boom") as §[I§;
         this.§!!6§ = this.§5!P§.getItemByName("MovieClip_VsProfilePicHero") as §[I§;
         this.§;O§ = this.§5!P§.getItemByName("MovieClip_VsProfilePicEnemy") as §[I§;
         this.§3!D§ = this.§5!P§.getItemByName("MovieClip_CrownHero") as §[I§;
         this.§%!#§ = this.§5!P§.getItemByName("MovieClip_CrownEnemy") as §[I§;
         this.§<!#§ = this.§5!P§.getItemByName("TextField_VsScore") as §"j§;
         this.§&!w§ = this.§5!P§.getItemByName("TextField_VsScoreEnemy") as §"j§;
         this.§!H§ = this.§5!P§.getItemByName("TextField_NameHero") as §"j§;
         this.§1!<§ = this.§5!P§.getItemByName("TextField_NameEnemy") as §"j§;
         this.§<!Y§ = this.§5!P§.getItemByName("TextField_VsPositionHero") as §"j§;
         this.§[!O§ = this.§5!P§.getItemByName("TextField_VsPositionEnemy") as §"j§;
      }
      
      public function activate() : void
      {
         if(this.§#!I§)
         {
            this.§#!I§.play();
         }
         if(this.§-9§)
         {
            this.§-9§.play();
         }
         var _loc1_:MovieClip = this.§5!P§.getItemByName("PlayerNameMask").mClip;
         var _loc2_:String = (AngryBirdsFP11.sUserProgress as §<[§).userName;
         this.§+J§(_loc2_,this.§!H§,_loc1_);
         if(this.§!!5§)
         {
            this.§+J§(this.§!!5§.userName,this.§1!<§,this.§5!P§.getItemByName("EnemyNameMask").mClip);
         }
      }
      
      public function deActivate() : void
      {
         if(this.§#!I§)
         {
            this.§#!I§.pause();
            this.§#!I§.§-3§ = false;
         }
         if(this.§-9§)
         {
            this.§-9§.pause();
            this.§-9§.§-3§ = false;
         }
      }
      
      public function levelStarted(param1:§9=§, param2:String) : void
      {
         this.§<H§ = param2;
         this.§0s§();
         this.§6H§();
         this.§-!i§.setVisibility(true);
         this.§?K§.setVisibility(false);
         this.§<!3§ = param1;
         this.§4!Y§ = false;
         this.§&!§ = null;
         this.§>!;§ = -1;
         this.§ !$§ = [];
         this.§5!=§.setVisibility(true);
         this.§5!=§.§2!?§("Start");
         this.§5!=§.§;J§ = true;
         this.§1!c§ = -1;
         this.§&!0§.x = this.§4!9§;
         this.§-!i§.y = this.§%n§;
         this.§-9§ = null;
         this.§#!I§ = null;
         this.§-p§();
      }
      
      private function initialize() : void
      {
         var _loc3_:int = 0;
         this.§>!G§();
         var _loc1_:MovieClip = this.§5!P§.getItemByName("PlayerNameMask").mClip;
         var _loc2_:String = (AngryBirdsFP11.sUserProgress as §<[§).userName;
         _loc2_ = this.§+J§(_loc2_,this.§!H§,_loc1_);
         this.§&!§ = null;
         var _loc4_:int = AngryBirdsFP11.sUserProgress.getScoreForLevel(this.§<H§);
         this.§@E§ = this.§<!3§.§=>§();
         if(this.§@E§)
         {
            this.§!S§(this.§@E§);
            _loc3_ = this.§@E§.§ N§ + 1;
            this.§-!i§.setVisibility(true);
            this.§5!=§.setVisibility(true);
         }
         else
         {
            _loc3_ = 1;
            this.§-!i§.setVisibility(false);
            this.§5!=§.setVisibility(false);
            this.§&!0§.x = this.§-!i§.x;
         }
         this.§<!Y§.setText(_loc3_.toString());
         if(_loc4_ > 0)
         {
            (AngryBirdsFP11.sUserProgress as §<[§).§2!@§(LevelManager.§4Y§,_loc3_);
         }
         var _loc5_:int = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(this.§<H§);
         this.§3!D§.setVisibility(_loc3_ <= 3 && (_loc4_ > 0 || _loc5_ > 0));
         if(_loc3_ > 0 && _loc3_ <= 3 && (_loc4_ > 0 || _loc5_ > 0))
         {
            this.§3!D§.§2!?§(["Gold","Silver","Bronze"][_loc3_ - 1]);
         }
         else
         {
            this.§3!D§.§=!g§(1);
         }
         this.§?K§.setVisibility(true);
         this.§4!Y§ = true;
      }
      
      public function run(param1:Number) : Boolean
      {
         if(this.§<!3§.§2Q§ || § _§.§!6§.objects.mSardineCanAdded || this.§+M§)
         {
            this.§?K§.setVisibility(false);
            return true;
         }
         if(!this.§4!Y§)
         {
            this.initialize();
         }
         this.updateAnimations(param1);
         return this.§&!§ == null;
      }
      
      public function updateCurrentScore(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:int = 0;
         if(this.§1!c§ == param1)
         {
            return;
         }
         this.§1!c§ = param1;
         this.§<!#§.setText(this.§1!5§(this.§1!c§));
         if(!this.§@E§)
         {
            return;
         }
         if(this.§<!3§.§2Q§ || § _§.§!6§.objects.mSardineCanAdded || this.§+M§)
         {
            return;
         }
         while(this.§@E§ && this.§1!c§ > this.§@E§.§0!F§)
         {
            this.§ !$§.unshift(this.§@E§);
            if((_loc4_ = this.§<!3§.data.indexOf(this.§@E§) - 1) >= 0)
            {
               this.§@E§ = this.§<!3§.data[_loc4_];
            }
            else
            {
               this.§@E§ = null;
            }
         }
         while(this.§ !$§.length > 5)
         {
            this.§ !$§.pop();
         }
         if(this.§ !$§.length > 0 && !this.§&!§)
         {
            this.§-D§();
         }
      }
      
      private function §!S§(param1:§-!?§) : void
      {
         this.§%!#§.setVisibility(param1.§ N§ <= 3);
         if(param1.§ N§ > 0 && param1.§ N§ <= 3)
         {
            this.§%!#§.§2!?§(["Gold","Silver","Bronze"][param1.§ N§ - 1]);
         }
         this.§[!O§.setText(param1.§ N§.toString());
         this.§&!w§.setText(this.§1!5§(param1.§0!F§));
         this.§=!S§(param1);
      }
      
      private function updateAnimations(param1:Number) : void
      {
         var _loc2_:§[I§ = null;
         for each(_loc2_ in [this.§5!=§,this.§9<§,this.§5!=§])
         {
            this.§?!=§(_loc2_,param1,true);
         }
      }
      
      private function §=!S§(param1:§-!?§) : void
      {
         var _loc2_:String = §3?§.§"!r§(param1.userId);
         var _loc3_:String = param1.userId;
         this.§!!5§ = param1;
         this.§0s§();
         this.§@3§ = new §null §(_loc3_,"",false,§%!5§.NORMAL);
         this.§%!-§(this.§;O§,this.§@3§);
         this.§+J§(param1.userName,this.§1!<§,this.§5!P§.getItemByName("EnemyNameMask").mClip);
      }
      
      private function §+J§(param1:String, param2:§"j§, param3:MovieClip) : String
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
      
      private function §%!-§(param1:§[I§, param2:MovieClip) : void
      {
         while(param1.mClip.numChildren > 0)
         {
            param1.mClip.removeChildAt(0);
         }
         param1.mClip.addChild(param2);
      }
      
      private function §-p§() : void
      {
         var _loc1_:String = (AngryBirdsFP11.sUserProgress as §<[§).avatarString;
         var _loc2_:String = (AngryBirdsFP11.sUserProgress as §<[§).§0u§;
         this.§6H§();
         this.§2b§ = new §null §(_loc2_,"",false,§%!5§.NORMAL);
         this.§%!-§(this.§!!6§,this.§2b§);
      }
      
      private function §76§(param1:Event) : void
      {
         this.§-p§();
      }
      
      private function §0s§() : void
      {
         if(this.§@3§)
         {
            this.§@3§.dispose();
            this.§@3§ = null;
         }
      }
      
      private function §6H§() : void
      {
         if(this.§2b§)
         {
            this.§2b§.dispose();
            this.§2b§ = null;
         }
      }
      
      public function set §5!j§(param1:Boolean) : void
      {
         this.§+M§ = param1;
         this.§?K§.setVisibility(!this.§+M§);
      }
      
      private function §-D§() : void
      {
         this.§&!§ = this.§ !$§.pop();
         this.§-9§ = §,!b§.§<d§.§>a§(this.§&!0§.mClip,{"x":this.§4!9§ + 15},{"x":this.§4!9§},0.5,§,!b§.§8!k§);
         this.§-9§.onComplete = this.§%9§;
         this.§-9§.play();
         § !Q§.playSound("NextToBeat_Sound","ChannelPowerups");
      }
      
      private function §%9§() : void
      {
         var _loc2_:int = 0;
         this.§-9§ = null;
         this.§9<§.§2!?§("Start");
         this.§9<§.§;J§ = true;
         this.§9<§.setVisibility(true);
         var _loc1_:§-!?§ = this.§ !$§.length > 0 ? this.§ !$§[this.§ !$§.length - 1] : this.§@E§;
         if(this.§&!§.§ N§ == 1 || _loc1_ == null)
         {
            this.§-!i§.setVisibility(false);
            this.§-9§ = §,!b§.§<d§.§>a§(this.§&!0§.mClip,{"x":this.§-!i§.mClip.x},null,0.5);
            this.§-9§.onComplete = this.§2!K§;
            this.§-9§.play();
            this.§3!D§.§2!?§("Gold");
            this.§<!Y§.setText("1");
            this.§3!D§.setVisibility(true);
         }
         else
         {
            this.§-9§ = §,!b§.§<d§.§>a§(this.§&!0§.mClip,{"x":this.§4!9§},null,0.5);
            this.§-9§.onComplete = null;
            this.§-9§.play();
            this.§!S§(_loc1_);
            _loc2_ = _loc1_.§ N§ + 1;
            this.§3!D§.setVisibility(_loc2_ <= 3);
            if(_loc2_ > 0 && _loc2_ <= 3)
            {
               this.§3!D§.§2!?§(["Gold","Silver","Bronze"][_loc2_ - 1]);
            }
            this.§<!Y§.setText(_loc2_.toString());
            this.§#!I§ = §,!b§.§<d§.§>a§(this.§-!i§.mClip,{"y":this.§%n§},{"y":-150},2,§,!b§.§8!k§);
            this.§#!I§.onComplete = this.§^!x§;
            this.§#!I§.play();
         }
      }
      
      private function §^!x§() : void
      {
         this.§#!I§ = null;
         this.§&!§ = null;
         if(this.§ !$§.length > 0)
         {
            this.§-D§();
         }
      }
      
      private function §2!K§() : void
      {
         this.§-9§ = null;
         this.§&!§ = null;
      }
      
      private function §1!5§(param1:int) : String
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
      
      private function §?!=§(param1:§[I§, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:String = null;
         if(param1.§;J§ == true)
         {
            if((_loc4_ = param1.§+#§(param2)) == "End")
            {
               param1.§;J§ = false;
               if(param3)
               {
                  param1.setVisibility(false);
               }
            }
         }
      }
      
      private function §>!G§() : void
      {
         var _loc1_:§9!d§ = null;
         var _loc2_:§0z§ = null;
         for each(_loc1_ in this.§<!3§.data)
         {
            if(_loc1_ is §-!?§)
            {
               _loc2_ = new §0z§(_loc1_.userId,"",false,§%!5§.NORMAL);
               _loc2_.dispose();
            }
         }
      }
   }
}
