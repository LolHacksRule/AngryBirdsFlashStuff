package §-2§
{
   import § !x§.§4F§;
   import § !x§.§5+§;
   import §!!§.LevelManager;
   import §'H§.§9!f§;
   import §+k§.§%!2§;
   import §+k§.§>t§;
   import §1!T§.§6!H§;
   import §1n§.§ C§;
   import §4[§.§-w§;
   import §4[§.§?O§;
   import §5i§.§4!]§;
   import §;!q§.§"r§;
   import §;!q§.§%t§;
   import §;!q§.§=t§;
   import §=R§.§&W§;
   import §`M§.§&!G§;
   import §`M§.§3!@§;
   import §`M§.§9!#§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §=!Q§
   {
       
      
      private var §`-§:§ C§;
      
      private var §<§:§>t§;
      
      private var §#6§:§4F§;
      
      private var §9!?§:§4F§;
      
      private var §&v§:Number;
      
      private var §>^§:Number;
      
      private var §5F§:§=t§;
      
      private var §=!X§:§"r§;
      
      private var §+e§:Boolean = false;
      
      private var §9R§:Boolean;
      
      private var §;s§:§-w§;
      
      private var §1t§:int;
      
      private var §@#§:§-w§;
      
      private var §8_§:int = -1;
      
      private var §@!_§:Array;
      
      private var §1M§:String;
      
      private var §-`§:§-w§;
      
      private var §1X§:§9!#§;
      
      private var §#9§:§9!#§;
      
      private var §3!3§:§&W§;
      
      private var §-!J§:§&!G§;
      
      private var §^>§:§&!G§;
      
      private var §+!B§:§&!G§;
      
      private var §>!Q§:§&!G§;
      
      private var §6P§:§&!G§;
      
      private var §?_§:§&!G§;
      
      private var §,>§:§3!@§;
      
      private var §+!u§:§3!@§;
      
      private var §%!q§:§3!@§;
      
      private var §3%§:§3!@§;
      
      private var §!!3§:§3!@§;
      
      private var §%!&§:§3!@§;
      
      public function §=!Q§(param1:§ C§)
      {
         this.§@!_§ = [];
         super();
         this.§`-§ = param1;
         this.§3p§();
         this.§&v§ = this.§#9§.x;
         this.§>^§ = this.§3!3§.y;
      }
      
      private function §3p§() : void
      {
         this.§#9§ = this.§`-§.getItemByName("Container_VsHero") as §9!#§;
         this.§3!3§ = this.§`-§.getItemByName("Container_VsEnemy") as §9!#§;
         this.§1X§ = this.§`-§.getItemByName("Container_Vs") as §9!#§;
         this.§-!J§ = this.§`-§.getItemByName("MovieClip_VsAnimation") as §&!G§;
         this.§^>§ = this.§`-§.getItemByName("MovieClip_Boom") as §&!G§;
         this.§+!B§ = this.§`-§.getItemByName("MovieClip_VsProfilePicHero") as §&!G§;
         this.§>!Q§ = this.§`-§.getItemByName("MovieClip_VsProfilePicEnemy") as §&!G§;
         this.§6P§ = this.§`-§.getItemByName("MovieClip_CrownHero") as §&!G§;
         this.§?_§ = this.§`-§.getItemByName("MovieClip_CrownEnemy") as §&!G§;
         this.§,>§ = this.§`-§.getItemByName("TextField_VsScore") as §3!@§;
         this.§+!u§ = this.§`-§.getItemByName("TextField_VsScoreEnemy") as §3!@§;
         this.§%!q§ = this.§`-§.getItemByName("TextField_NameHero") as §3!@§;
         this.§3%§ = this.§`-§.getItemByName("TextField_NameEnemy") as §3!@§;
         this.§!!3§ = this.§`-§.getItemByName("TextField_VsPositionHero") as §3!@§;
         this.§%!&§ = this.§`-§.getItemByName("TextField_VsPositionEnemy") as §3!@§;
      }
      
      public function activate() : void
      {
         if(this.§#6§)
         {
            this.§#6§.play();
         }
         if(this.§9!?§)
         {
            this.§9!?§.play();
         }
         var _loc1_:MovieClip = this.§`-§.getItemByName("PlayerNameMask").mClip;
         var _loc2_:String = (AngryBirdsFP11.sUserProgress as §9!f§).userName;
         this.§0!G§(_loc2_,this.§%!q§,_loc1_);
         if(this.§-`§)
         {
            this.§0!G§(this.§-`§.userName,this.§3%§,this.§`-§.getItemByName("EnemyNameMask").mClip);
         }
      }
      
      public function deActivate() : void
      {
         if(this.§#6§)
         {
            this.§#6§.pause();
            this.§#6§.§+!^§ = false;
         }
         if(this.§9!?§)
         {
            this.§9!?§.pause();
            this.§9!?§.§+!^§ = false;
         }
      }
      
      public function levelStarted(param1:§>t§, param2:String) : void
      {
         this.§1M§ = param2;
         this.§^!v§();
         this.§5!q§();
         this.§3!3§.setVisibility(true);
         this.§1X§.setVisibility(false);
         this.§<§ = param1;
         this.§+e§ = false;
         this.§@#§ = null;
         this.§8_§ = -1;
         this.§@!_§ = [];
         this.§-!J§.setVisibility(true);
         this.§-!J§.§#!q§("Start");
         this.§-!J§.§<!P§ = true;
         this.§1t§ = -1;
         this.§#9§.x = this.§&v§;
         this.§3!3§.y = this.§>^§;
         this.§9!?§ = null;
         this.§#6§ = null;
         this.§3A§();
      }
      
      private function initialize() : void
      {
         var _loc3_:int = 0;
         this.§0!]§();
         var _loc1_:MovieClip = this.§`-§.getItemByName("PlayerNameMask").mClip;
         var _loc2_:String = (AngryBirdsFP11.sUserProgress as §9!f§).userName;
         _loc2_ = this.§0!G§(_loc2_,this.§%!q§,_loc1_);
         this.§@#§ = null;
         var _loc4_:int = AngryBirdsFP11.sUserProgress.getScoreForLevel(this.§1M§);
         this.§;s§ = this.§<§.§=u§();
         if(this.§;s§)
         {
            this.§ !8§(this.§;s§);
            _loc3_ = this.§;s§.§0v§ + 1;
            this.§3!3§.setVisibility(true);
            this.§-!J§.setVisibility(true);
         }
         else
         {
            _loc3_ = 1;
            this.§3!3§.setVisibility(false);
            this.§-!J§.setVisibility(false);
            this.§#9§.x = this.§3!3§.x;
         }
         this.§!!3§.setText(_loc3_.toString());
         if(_loc4_ > 0)
         {
            (AngryBirdsFP11.sUserProgress as §9!f§).§%!§(LevelManager.§^!F§,_loc3_);
         }
         var _loc5_:int = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(this.§1M§);
         this.§6P§.setVisibility(_loc3_ <= 3 && (_loc4_ > 0 || _loc5_ > 0));
         if(_loc3_ > 0 && _loc3_ <= 3 && (_loc4_ > 0 || _loc5_ > 0))
         {
            this.§6P§.§#!q§(["Gold","Silver","Bronze"][_loc3_ - 1]);
         }
         else
         {
            this.§6P§.§=!Z§(1);
         }
         this.§1X§.setVisibility(true);
         this.§+e§ = true;
      }
      
      public function run(param1:Number) : Boolean
      {
         if(this.§<§.§6j§ || §4!]§.§8C§.objects.mSardineCanAdded || this.§9R§)
         {
            this.§1X§.setVisibility(false);
            return true;
         }
         if(!this.§+e§)
         {
            this.initialize();
         }
         this.updateAnimations(param1);
         return this.§@#§ == null;
      }
      
      public function updateCurrentScore(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:int = 0;
         if(this.§1t§ == param1)
         {
            return;
         }
         this.§1t§ = param1;
         this.§,>§.setText(this.§[-§(this.§1t§));
         if(!this.§;s§)
         {
            return;
         }
         if(this.§<§.§6j§ || §4!]§.§8C§.objects.mSardineCanAdded || this.§9R§)
         {
            return;
         }
         while(this.§;s§ && this.§1t§ > this.§;s§.§'!j§)
         {
            this.§@!_§.unshift(this.§;s§);
            if((_loc4_ = this.§<§.data.indexOf(this.§;s§) - 1) >= 0)
            {
               this.§;s§ = this.§<§.data[_loc4_];
            }
            else
            {
               this.§;s§ = null;
            }
         }
         while(this.§@!_§.length > 5)
         {
            this.§@!_§.pop();
         }
         if(this.§@!_§.length > 0 && !this.§@#§)
         {
            this.§ !E§();
         }
      }
      
      private function § !8§(param1:§-w§) : void
      {
         this.§?_§.setVisibility(param1.§0v§ <= 3);
         if(param1.§0v§ > 0 && param1.§0v§ <= 3)
         {
            this.§?_§.§#!q§(["Gold","Silver","Bronze"][param1.§0v§ - 1]);
         }
         this.§%!&§.setText(param1.§0v§.toString());
         this.§+!u§.setText(this.§[-§(param1.§'!j§));
         this.§]!u§(param1);
      }
      
      private function updateAnimations(param1:Number) : void
      {
         var _loc2_:§&!G§ = null;
         for each(_loc2_ in [this.§-!J§,this.§^>§,this.§-!J§])
         {
            this.§9F§(_loc2_,param1,true);
         }
      }
      
      private function §]!u§(param1:§-w§) : void
      {
         var _loc2_:String = §%!2§.§&B§(param1.userId);
         var _loc3_:String = param1.userId;
         this.§-`§ = param1;
         this.§^!v§();
         this.§5F§ = new §"r§(_loc3_,"",false,§%t§.NORMAL);
         this.§?!8§(this.§>!Q§,this.§5F§);
         this.§0!G§(param1.userName,this.§3%§,this.§`-§.getItemByName("EnemyNameMask").mClip);
      }
      
      private function §0!G§(param1:String, param2:§3!@§, param3:MovieClip) : String
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
      
      private function §?!8§(param1:§&!G§, param2:MovieClip) : void
      {
         while(param1.mClip.numChildren > 0)
         {
            param1.mClip.removeChildAt(0);
         }
         param1.mClip.addChild(param2);
      }
      
      private function §3A§() : void
      {
         var _loc1_:String = (AngryBirdsFP11.sUserProgress as §9!f§).avatarString;
         var _loc2_:String = (AngryBirdsFP11.sUserProgress as §9!f§).§0!V§;
         this.§5!q§();
         this.§=!X§ = new §"r§(_loc2_,"",false,§%t§.NORMAL);
         this.§?!8§(this.§+!B§,this.§=!X§);
      }
      
      private function §;!G§(param1:Event) : void
      {
         this.§3A§();
      }
      
      private function §^!v§() : void
      {
         if(this.§5F§)
         {
            this.§5F§.dispose();
            this.§5F§ = null;
         }
      }
      
      private function §5!q§() : void
      {
         if(this.§=!X§)
         {
            this.§=!X§.dispose();
            this.§=!X§ = null;
         }
      }
      
      public function set §;§(param1:Boolean) : void
      {
         this.§9R§ = param1;
         this.§1X§.setVisibility(!this.§9R§);
      }
      
      private function § !E§() : void
      {
         this.§@#§ = this.§@!_§.pop();
         this.§9!?§ = §5+§.§^Z§.§=!a§(this.§#9§.mClip,{"x":this.§&v§ + 15},{"x":this.§&v§},0.5,§5+§.§>!u§);
         this.§9!?§.onComplete = this.§8!U§;
         this.§9!?§.play();
         §6!H§.playSound("NextToBeat_Sound","ChannelPowerups");
      }
      
      private function §8!U§() : void
      {
         var _loc2_:int = 0;
         this.§9!?§ = null;
         this.§^>§.§#!q§("Start");
         this.§^>§.§<!P§ = true;
         this.§^>§.setVisibility(true);
         var _loc1_:§-w§ = this.§@!_§.length > 0 ? this.§@!_§[this.§@!_§.length - 1] : this.§;s§;
         if(this.§@#§.§0v§ == 1 || _loc1_ == null)
         {
            this.§3!3§.setVisibility(false);
            this.§9!?§ = §5+§.§^Z§.§=!a§(this.§#9§.mClip,{"x":this.§3!3§.mClip.x},null,0.5);
            this.§9!?§.onComplete = this.§3T§;
            this.§9!?§.play();
            this.§6P§.§#!q§("Gold");
            this.§!!3§.setText("1");
            this.§6P§.setVisibility(true);
         }
         else
         {
            this.§9!?§ = §5+§.§^Z§.§=!a§(this.§#9§.mClip,{"x":this.§&v§},null,0.5);
            this.§9!?§.onComplete = null;
            this.§9!?§.play();
            this.§ !8§(_loc1_);
            _loc2_ = _loc1_.§0v§ + 1;
            this.§6P§.setVisibility(_loc2_ <= 3);
            if(_loc2_ > 0 && _loc2_ <= 3)
            {
               this.§6P§.§#!q§(["Gold","Silver","Bronze"][_loc2_ - 1]);
            }
            this.§!!3§.setText(_loc2_.toString());
            this.§#6§ = §5+§.§^Z§.§=!a§(this.§3!3§.mClip,{"y":this.§>^§},{"y":-150},2,§5+§.§>!u§);
            this.§#6§.onComplete = this.§"B§;
            this.§#6§.play();
         }
      }
      
      private function §"B§() : void
      {
         this.§#6§ = null;
         this.§@#§ = null;
         if(this.§@!_§.length > 0)
         {
            this.§ !E§();
         }
      }
      
      private function §3T§() : void
      {
         this.§9!?§ = null;
         this.§@#§ = null;
      }
      
      private function §[-§(param1:int) : String
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
      
      private function §9F§(param1:§&!G§, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:String = null;
         if(param1.§<!P§ == true)
         {
            if((_loc4_ = param1.§,!C§(param2)) == "End")
            {
               param1.§<!P§ = false;
               if(param3)
               {
                  param1.setVisibility(false);
               }
            }
         }
      }
      
      private function §0!]§() : void
      {
         var _loc1_:§?O§ = null;
         var _loc2_:§=t§ = null;
         for each(_loc1_ in this.§<§.data)
         {
            if(_loc1_ is §-w§)
            {
               _loc2_ = new §=t§(_loc1_.userId,"",false,§%t§.NORMAL);
               _loc2_.dispose();
            }
         }
      }
   }
}
