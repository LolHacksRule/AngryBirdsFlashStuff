package §8!;§
{
   import §#&§.§9!o§;
   import §#&§.§`S§;
   import §%t§.§4!&§;
   import §%t§.§9!7§;
   import §%t§.§?!a§;
   import §,!§.§![§;
   import §1!E§.§#?§;
   import §1!E§.§1!=§;
   import §1!E§.§?!x§;
   import §2!H§.§!q§;
   import §2!H§.§-!,§;
   import §3!G§.LevelManager;
   import §5!c§.§9'§;
   import §6!Y§.§!o§;
   import §6!Y§.§0!x§;
   import §>! §.§^!c§;
   import §>7§.§&! §;
   import §[!+§.§4`§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §3;§
   {
       
      
      private var §&!m§:§4`§;
      
      private var §@e§:§0!x§;
      
      private var §<+§:§!q§;
      
      private var §2N§:§!q§;
      
      private var §6!H§:Number;
      
      private var §&T§:Number;
      
      private var §^F§:§9!7§;
      
      private var §%!u§:§4!&§;
      
      private var §&$§:Boolean = false;
      
      private var §]!y§:Boolean;
      
      private var §!J§:§9!o§;
      
      private var §4!q§:int;
      
      private var §9;§:§9!o§;
      
      private var §-!'§:int = -1;
      
      private var § k§:Array;
      
      private var §`!2§:String;
      
      private var §1P§:§9!o§;
      
      private var §`]§:§#?§;
      
      private var §1!$§:§#?§;
      
      private var §?r§:§&! §;
      
      private var §#!q§:§1!=§;
      
      private var §[R§:§1!=§;
      
      private var §3A§:§1!=§;
      
      private var §"X§:§1!=§;
      
      private var §;y§:§1!=§;
      
      private var §?"§:§1!=§;
      
      private var §3k§:§?!x§;
      
      private var §`X§:§?!x§;
      
      private var §2!G§:§?!x§;
      
      private var §>!M§:§?!x§;
      
      private var §&f§:§?!x§;
      
      private var §`!%§:§?!x§;
      
      public function §3;§(param1:§4`§)
      {
         this.§ k§ = [];
         super();
         this.§&!m§ = param1;
         this.§7!r§();
         this.§6!H§ = this.§1!$§.x;
         this.§&T§ = this.§?r§.y;
      }
      
      private function §7!r§() : void
      {
         this.§1!$§ = this.§&!m§.getItemByName("Container_VsHero") as §#?§;
         this.§?r§ = this.§&!m§.getItemByName("Container_VsEnemy") as §#?§;
         this.§`]§ = this.§&!m§.getItemByName("Container_Vs") as §#?§;
         this.§#!q§ = this.§&!m§.getItemByName("MovieClip_VsAnimation") as §1!=§;
         this.§[R§ = this.§&!m§.getItemByName("MovieClip_Boom") as §1!=§;
         this.§3A§ = this.§&!m§.getItemByName("MovieClip_VsProfilePicHero") as §1!=§;
         this.§"X§ = this.§&!m§.getItemByName("MovieClip_VsProfilePicEnemy") as §1!=§;
         this.§;y§ = this.§&!m§.getItemByName("MovieClip_CrownHero") as §1!=§;
         this.§?"§ = this.§&!m§.getItemByName("MovieClip_CrownEnemy") as §1!=§;
         this.§3k§ = this.§&!m§.getItemByName("TextField_VsScore") as §?!x§;
         this.§`X§ = this.§&!m§.getItemByName("TextField_VsScoreEnemy") as §?!x§;
         this.§2!G§ = this.§&!m§.getItemByName("TextField_NameHero") as §?!x§;
         this.§>!M§ = this.§&!m§.getItemByName("TextField_NameEnemy") as §?!x§;
         this.§&f§ = this.§&!m§.getItemByName("TextField_VsPositionHero") as §?!x§;
         this.§`!%§ = this.§&!m§.getItemByName("TextField_VsPositionEnemy") as §?!x§;
      }
      
      public function activate() : void
      {
         if(this.§<+§)
         {
            this.§<+§.play();
         }
         if(this.§2N§)
         {
            this.§2N§.play();
         }
         var _loc1_:MovieClip = this.§&!m§.getItemByName("PlayerNameMask").mClip;
         var _loc2_:String = (AngryBirdsFP11.sUserProgress as §![§).userName;
         this.§"+§(_loc2_,this.§2!G§,_loc1_);
         if(this.§1P§)
         {
            this.§"+§(this.§1P§.userName,this.§>!M§,this.§&!m§.getItemByName("EnemyNameMask").mClip);
         }
      }
      
      public function deActivate() : void
      {
         if(this.§<+§)
         {
            this.§<+§.pause();
            this.§<+§.§]! § = false;
         }
         if(this.§2N§)
         {
            this.§2N§.pause();
            this.§2N§.§]! § = false;
         }
      }
      
      public function levelStarted(param1:§0!x§, param2:String) : void
      {
         this.§`!2§ = param2;
         this.§2!1§();
         this.§6&§();
         this.§?r§.setVisibility(true);
         this.§`]§.setVisibility(false);
         this.§@e§ = param1;
         this.§&$§ = false;
         this.§9;§ = null;
         this.§-!'§ = -1;
         this.§ k§ = [];
         this.§#!q§.setVisibility(true);
         this.§#!q§.§&!3§("Start");
         this.§#!q§.§;,§ = true;
         this.§4!q§ = -1;
         this.§1!$§.x = this.§6!H§;
         this.§?r§.y = this.§&T§;
         this.§2N§ = null;
         this.§<+§ = null;
         this.§ !4§();
      }
      
      private function initialize() : void
      {
         var _loc3_:int = 0;
         this.§6!+§();
         var _loc1_:MovieClip = this.§&!m§.getItemByName("PlayerNameMask").mClip;
         var _loc2_:String = (AngryBirdsFP11.sUserProgress as §![§).userName;
         _loc2_ = this.§"+§(_loc2_,this.§2!G§,_loc1_);
         this.§9;§ = null;
         var _loc4_:int = AngryBirdsFP11.sUserProgress.getScoreForLevel(this.§`!2§);
         this.§!J§ = this.§@e§.§'![§();
         if(this.§!J§)
         {
            this.§2!k§(this.§!J§);
            _loc3_ = this.§!J§.§&d§ + 1;
            this.§?r§.setVisibility(true);
            this.§#!q§.setVisibility(true);
         }
         else
         {
            _loc3_ = 1;
            this.§?r§.setVisibility(false);
            this.§#!q§.setVisibility(false);
            this.§1!$§.x = this.§?r§.x;
         }
         this.§&f§.setText(_loc3_.toString());
         if(_loc4_ > 0)
         {
            (AngryBirdsFP11.sUserProgress as §![§).§=!9§(LevelManager.§%n§,_loc3_);
         }
         var _loc5_:int = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(this.§`!2§);
         this.§;y§.setVisibility(_loc3_ <= 3 && (_loc4_ > 0 || _loc5_ > 0));
         if(_loc3_ > 0 && _loc3_ <= 3 && (_loc4_ > 0 || _loc5_ > 0))
         {
            this.§;y§.§&!3§(["Gold","Silver","Bronze"][_loc3_ - 1]);
         }
         else
         {
            this.§;y§.§!8§(1);
         }
         this.§`]§.setVisibility(true);
         this.§&$§ = true;
      }
      
      public function run(param1:Number) : Boolean
      {
         if(this.§@e§.§@B§ || §^!c§.§5!Y§.objects.mSardineCanAdded || this.§]!y§)
         {
            this.§`]§.setVisibility(false);
            return true;
         }
         if(!this.§&$§)
         {
            this.initialize();
         }
         this.updateAnimations(param1);
         return this.§9;§ == null;
      }
      
      public function updateCurrentScore(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:int = 0;
         if(this.§4!q§ == param1)
         {
            return;
         }
         this.§4!q§ = param1;
         this.§3k§.setText(this.§&!s§(this.§4!q§));
         if(!this.§!J§)
         {
            return;
         }
         if(this.§@e§.§@B§ || §^!c§.§5!Y§.objects.mSardineCanAdded || this.§]!y§)
         {
            return;
         }
         while(this.§!J§ && this.§4!q§ > this.§!J§.§#!6§)
         {
            this.§ k§.unshift(this.§!J§);
            if((_loc4_ = this.§@e§.data.indexOf(this.§!J§) - 1) >= 0)
            {
               this.§!J§ = this.§@e§.data[_loc4_];
            }
            else
            {
               this.§!J§ = null;
            }
         }
         while(this.§ k§.length > 5)
         {
            this.§ k§.pop();
         }
         if(this.§ k§.length > 0 && !this.§9;§)
         {
            this.§&?§();
         }
      }
      
      private function §2!k§(param1:§9!o§) : void
      {
         this.§?"§.setVisibility(param1.§&d§ <= 3);
         if(param1.§&d§ > 0 && param1.§&d§ <= 3)
         {
            this.§?"§.§&!3§(["Gold","Silver","Bronze"][param1.§&d§ - 1]);
         }
         this.§`!%§.setText(param1.§&d§.toString());
         this.§`X§.setText(this.§&!s§(param1.§#!6§));
         this.§@!o§(param1);
      }
      
      private function updateAnimations(param1:Number) : void
      {
         var _loc2_:§1!=§ = null;
         for each(_loc2_ in [this.§#!q§,this.§[R§,this.§#!q§])
         {
            this.§'!R§(_loc2_,param1,true);
         }
      }
      
      private function §@!o§(param1:§9!o§) : void
      {
         var _loc2_:String = §!o§.§#7§(param1.userId);
         var _loc3_:String = param1.userId;
         this.§1P§ = param1;
         this.§2!1§();
         this.§^F§ = new §4!&§(_loc3_,"",false,§?!a§.NORMAL);
         this.§2f§(this.§"X§,this.§^F§);
         this.§"+§(param1.userName,this.§>!M§,this.§&!m§.getItemByName("EnemyNameMask").mClip);
      }
      
      private function §"+§(param1:String, param2:§?!x§, param3:MovieClip) : String
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
      
      private function §2f§(param1:§1!=§, param2:MovieClip) : void
      {
         while(param1.mClip.numChildren > 0)
         {
            param1.mClip.removeChildAt(0);
         }
         param1.mClip.addChild(param2);
      }
      
      private function § !4§() : void
      {
         var _loc1_:String = (AngryBirdsFP11.sUserProgress as §![§).avatarString;
         var _loc2_:String = (AngryBirdsFP11.sUserProgress as §![§).§-H§;
         this.§6&§();
         this.§%!u§ = new §4!&§(_loc2_,"",false,§?!a§.NORMAL);
         this.§2f§(this.§3A§,this.§%!u§);
      }
      
      private function §-I§(param1:Event) : void
      {
         this.§ !4§();
      }
      
      private function §2!1§() : void
      {
         if(this.§^F§)
         {
            this.§^F§.dispose();
            this.§^F§ = null;
         }
      }
      
      private function §6&§() : void
      {
         if(this.§%!u§)
         {
            this.§%!u§.dispose();
            this.§%!u§ = null;
         }
      }
      
      public function set §%O§(param1:Boolean) : void
      {
         this.§]!y§ = param1;
         this.§`]§.setVisibility(!this.§]!y§);
      }
      
      private function §&?§() : void
      {
         this.§9;§ = this.§ k§.pop();
         this.§2N§ = §-!,§.§7!j§.§,!`§(this.§1!$§.mClip,{"x":this.§6!H§ + 15},{"x":this.§6!H§},0.5,§-!,§.§;!z§);
         this.§2N§.onComplete = this.§<H§;
         this.§2N§.play();
         §9'§.playSound("NextToBeat_Sound","ChannelPowerups");
      }
      
      private function §<H§() : void
      {
         var _loc2_:int = 0;
         this.§2N§ = null;
         this.§[R§.§&!3§("Start");
         this.§[R§.§;,§ = true;
         this.§[R§.setVisibility(true);
         var _loc1_:§9!o§ = this.§ k§.length > 0 ? this.§ k§[this.§ k§.length - 1] : this.§!J§;
         if(this.§9;§.§&d§ == 1 || _loc1_ == null)
         {
            this.§?r§.setVisibility(false);
            this.§2N§ = §-!,§.§7!j§.§,!`§(this.§1!$§.mClip,{"x":this.§?r§.mClip.x},null,0.5);
            this.§2N§.onComplete = this.§3V§;
            this.§2N§.play();
            this.§;y§.§&!3§("Gold");
            this.§&f§.setText("1");
            this.§;y§.setVisibility(true);
         }
         else
         {
            this.§2N§ = §-!,§.§7!j§.§,!`§(this.§1!$§.mClip,{"x":this.§6!H§},null,0.5);
            this.§2N§.onComplete = null;
            this.§2N§.play();
            this.§2!k§(_loc1_);
            _loc2_ = _loc1_.§&d§ + 1;
            this.§;y§.setVisibility(_loc2_ <= 3);
            if(_loc2_ > 0 && _loc2_ <= 3)
            {
               this.§;y§.§&!3§(["Gold","Silver","Bronze"][_loc2_ - 1]);
            }
            this.§&f§.setText(_loc2_.toString());
            this.§<+§ = §-!,§.§7!j§.§,!`§(this.§?r§.mClip,{"y":this.§&T§},{"y":-150},2,§-!,§.§;!z§);
            this.§<+§.onComplete = this.§-!m§;
            this.§<+§.play();
         }
      }
      
      private function §-!m§() : void
      {
         this.§<+§ = null;
         this.§9;§ = null;
         if(this.§ k§.length > 0)
         {
            this.§&?§();
         }
      }
      
      private function §3V§() : void
      {
         this.§2N§ = null;
         this.§9;§ = null;
      }
      
      private function §&!s§(param1:int) : String
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
      
      private function §'!R§(param1:§1!=§, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:String = null;
         if(param1.§;,§ == true)
         {
            if((_loc4_ = param1.§@!5§(param2)) == "End")
            {
               param1.§;,§ = false;
               if(param3)
               {
                  param1.setVisibility(false);
               }
            }
         }
      }
      
      private function §6!+§() : void
      {
         var _loc1_:§`S§ = null;
         var _loc2_:§9!7§ = null;
         for each(_loc1_ in this.§@e§.data)
         {
            if(_loc1_ is §9!o§)
            {
               _loc2_ = new §9!7§(_loc1_.userId,"",false,§?!a§.NORMAL);
               _loc2_.dispose();
            }
         }
      }
   }
}
