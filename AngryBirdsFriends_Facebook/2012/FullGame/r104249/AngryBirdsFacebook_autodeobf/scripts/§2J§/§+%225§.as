package §2J§
{
   import §#M§.§^0§;
   import §-B§.§#p§;
   import §-B§.§="0§;
   import §-B§.§?!j§;
   import §2E§.§!"&§;
   import §2E§.§&p§;
   import §2L§.§[!3§;
   import §2L§.§`W§;
   import §5!G§.§&2§;
   import §6! §.§<"#§;
   import §6! §.§@!k§;
   import §6! §.§@2§;
   import §;n§.§&G§;
   import §<";§.§'y§;
   import §>s§.§+m§;
   import §^!U§.§2!M§;
   import §^!U§.§default§;
   import §`!n§.LevelManager;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §+"5§
   {
       
      
      private var §2!K§:§^0§;
      
      private var §'"G§:§`W§;
      
      private var §!T§:§!"&§;
      
      private var § !u§:§!"&§;
      
      private var §=w§:Number;
      
      private var §super§:Number;
      
      private var §""#§:§<"#§;
      
      private var §3k§:§@2§;
      
      private var §2!F§:Boolean = false;
      
      private var §'!B§:Boolean;
      
      private var § !+§:§default§;
      
      private var §+!U§:int;
      
      private var §#!Y§:§default§;
      
      private var §0D§:int = -1;
      
      private var §1J§:Array;
      
      private var §!"B§:String;
      
      private var §@!e§:§default§;
      
      private var §+"F§:§?!j§;
      
      private var §[c§:§?!j§;
      
      private var §!!H§:§&G§;
      
      private var §=@§:§="0§;
      
      private var §<",§:§="0§;
      
      private var §#!<§:§="0§;
      
      private var §=6§:§="0§;
      
      private var §@"$§:§="0§;
      
      private var §`q§:§="0§;
      
      private var §07§:§#p§;
      
      private var §]9§:§#p§;
      
      private var §6!S§:§#p§;
      
      private var §!"-§:§#p§;
      
      private var §8!t§:§#p§;
      
      private var §0"!§:§#p§;
      
      public function §+"5§(param1:§^0§)
      {
         this.§1J§ = [];
         super();
         this.§2!K§ = param1;
         this.§'"<§();
         this.§=w§ = this.§[c§.x;
         this.§super§ = this.§!!H§.y;
      }
      
      private function §'"<§() : void
      {
         this.§[c§ = this.§2!K§.getItemByName("Container_VsHero") as §?!j§;
         this.§!!H§ = this.§2!K§.getItemByName("Container_VsEnemy") as §?!j§;
         this.§+"F§ = this.§2!K§.getItemByName("Container_Vs") as §?!j§;
         this.§=@§ = this.§2!K§.getItemByName("MovieClip_VsAnimation") as §="0§;
         this.§<",§ = this.§2!K§.getItemByName("MovieClip_Boom") as §="0§;
         this.§#!<§ = this.§2!K§.getItemByName("MovieClip_VsProfilePicHero") as §="0§;
         this.§=6§ = this.§2!K§.getItemByName("MovieClip_VsProfilePicEnemy") as §="0§;
         this.§@"$§ = this.§2!K§.getItemByName("MovieClip_CrownHero") as §="0§;
         this.§`q§ = this.§2!K§.getItemByName("MovieClip_CrownEnemy") as §="0§;
         this.§07§ = this.§2!K§.getItemByName("TextField_VsScore") as §#p§;
         this.§]9§ = this.§2!K§.getItemByName("TextField_VsScoreEnemy") as §#p§;
         this.§6!S§ = this.§2!K§.getItemByName("TextField_NameHero") as §#p§;
         this.§!"-§ = this.§2!K§.getItemByName("TextField_NameEnemy") as §#p§;
         this.§8!t§ = this.§2!K§.getItemByName("TextField_VsPositionHero") as §#p§;
         this.§0"!§ = this.§2!K§.getItemByName("TextField_VsPositionEnemy") as §#p§;
      }
      
      public function activate() : void
      {
         if(this.§!T§)
         {
            this.§!T§.play();
         }
         if(this.§ !u§)
         {
            this.§ !u§.play();
         }
         var _loc1_:MovieClip = this.§2!K§.getItemByName("PlayerNameMask").mClip;
         var _loc2_:String = (AngryBirdsFP11.sUserProgress as §'y§).userName;
         this.§=";§(_loc2_,this.§6!S§,_loc1_);
         if(this.§@!e§)
         {
            this.§=";§(this.§@!e§.userName,this.§!"-§,this.§2!K§.getItemByName("EnemyNameMask").mClip);
         }
      }
      
      public function deActivate() : void
      {
         if(this.§!T§)
         {
            this.§!T§.pause();
            this.§!T§.§=!h§ = false;
         }
         if(this.§ !u§)
         {
            this.§ !u§.pause();
            this.§ !u§.§=!h§ = false;
         }
      }
      
      public function levelStarted(param1:§`W§, param2:String) : void
      {
         this.§!"B§ = param2;
         this.§4!@§();
         this.§+d§();
         this.§!!H§.setVisibility(true);
         this.§+"F§.setVisibility(false);
         this.§'"G§ = param1;
         this.§2!F§ = false;
         this.§#!Y§ = null;
         this.§0D§ = -1;
         this.§1J§ = [];
         this.§=@§.setVisibility(true);
         this.§=@§.§!!s§("Start");
         this.§=@§.§%![§ = true;
         this.§+!U§ = -1;
         this.§[c§.x = this.§=w§;
         this.§!!H§.y = this.§super§;
         this.§ !u§ = null;
         this.§!T§ = null;
         this.§,"6§();
      }
      
      private function initialize() : void
      {
         var _loc3_:int = 0;
         this.§##§();
         var _loc1_:MovieClip = this.§2!K§.getItemByName("PlayerNameMask").mClip;
         var _loc2_:String = (AngryBirdsFP11.sUserProgress as §'y§).userName;
         _loc2_ = this.§=";§(_loc2_,this.§6!S§,_loc1_);
         this.§#!Y§ = null;
         var _loc4_:int = AngryBirdsFP11.sUserProgress.getScoreForLevel(this.§!"B§);
         this.§ !+§ = this.§'"G§.§6f§();
         if(this.§ !+§)
         {
            this.§7p§(this.§ !+§);
            _loc3_ = this.§ !+§.§+!r§ + 1;
            this.§!!H§.setVisibility(true);
            this.§=@§.setVisibility(true);
         }
         else
         {
            _loc3_ = 1;
            this.§!!H§.setVisibility(false);
            this.§=@§.setVisibility(false);
            this.§[c§.x = this.§!!H§.x;
         }
         this.§8!t§.setText(_loc3_.toString());
         if(_loc4_ > 0)
         {
            (AngryBirdsFP11.sUserProgress as §'y§).§ set§(LevelManager.§`-§,_loc3_);
         }
         var _loc5_:int = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(this.§!"B§);
         this.§@"$§.setVisibility(_loc3_ <= 3 && (_loc4_ > 0 || _loc5_ > 0));
         if(_loc3_ > 0 && _loc3_ <= 3 && (_loc4_ > 0 || _loc5_ > 0))
         {
            this.§@"$§.§!!s§(["Gold","Silver","Bronze"][_loc3_ - 1]);
         }
         else
         {
            this.§@"$§.§2!Q§(1);
         }
         this.§+"F§.setVisibility(true);
         this.§2!F§ = true;
      }
      
      public function run(param1:Number) : Boolean
      {
         if(this.§'"G§.§@!o§ || §&2§.§],§.objects.mSardineCanAdded || this.§'!B§)
         {
            this.§+"F§.setVisibility(false);
            return true;
         }
         if(!this.§2!F§)
         {
            this.initialize();
         }
         this.updateAnimations(param1);
         return this.§#!Y§ == null;
      }
      
      public function updateCurrentScore(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:int = 0;
         if(this.§+!U§ == param1)
         {
            return;
         }
         this.§+!U§ = param1;
         this.§07§.setText(this.§+!-§(this.§+!U§));
         if(!this.§ !+§)
         {
            return;
         }
         if(this.§'"G§.§@!o§ || §&2§.§],§.objects.mSardineCanAdded || this.§'!B§)
         {
            return;
         }
         while(this.§ !+§ && this.§+!U§ > this.§ !+§.§1l§)
         {
            this.§1J§.unshift(this.§ !+§);
            if((_loc4_ = this.§'"G§.data.indexOf(this.§ !+§) - 1) >= 0)
            {
               this.§ !+§ = this.§'"G§.data[_loc4_];
            }
            else
            {
               this.§ !+§ = null;
            }
         }
         while(this.§1J§.length > 5)
         {
            this.§1J§.pop();
         }
         if(this.§1J§.length > 0 && !this.§#!Y§)
         {
            this.§<!a§();
         }
      }
      
      private function §7p§(param1:§default§) : void
      {
         this.§`q§.setVisibility(param1.§+!r§ <= 3);
         if(param1.§+!r§ > 0 && param1.§+!r§ <= 3)
         {
            this.§`q§.§!!s§(["Gold","Silver","Bronze"][param1.§+!r§ - 1]);
         }
         this.§0"!§.setText(param1.§+!r§.toString());
         this.§]9§.setText(this.§+!-§(param1.§1l§));
         this.§30§(param1);
      }
      
      private function updateAnimations(param1:Number) : void
      {
         var _loc2_:§="0§ = null;
         for each(_loc2_ in [this.§=@§,this.§<",§,this.§=@§])
         {
            this.§%!]§(_loc2_,param1,true);
         }
      }
      
      private function §30§(param1:§default§) : void
      {
         var _loc2_:String = §[!3§.§5O§(param1.userId);
         var _loc3_:String = param1.userId;
         this.§@!e§ = param1;
         this.§4!@§();
         this.§""#§ = new §@2§(_loc3_,"",false,§@!k§.NORMAL);
         this.§7!o§(this.§=6§,this.§""#§);
         this.§=";§(param1.userName,this.§!"-§,this.§2!K§.getItemByName("EnemyNameMask").mClip);
      }
      
      private function §=";§(param1:String, param2:§#p§, param3:MovieClip) : String
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
      
      private function §7!o§(param1:§="0§, param2:MovieClip) : void
      {
         while(param1.mClip.numChildren > 0)
         {
            param1.mClip.removeChildAt(0);
         }
         param1.mClip.addChild(param2);
      }
      
      private function §,"6§() : void
      {
         var _loc1_:String = (AngryBirdsFP11.sUserProgress as §'y§).avatarString;
         var _loc2_:String = (AngryBirdsFP11.sUserProgress as §'y§).§;#§;
         this.§+d§();
         this.§3k§ = new §@2§(_loc2_,"",false,§@!k§.NORMAL);
         this.§7!o§(this.§#!<§,this.§3k§);
      }
      
      private function §%x§(param1:Event) : void
      {
         this.§,"6§();
      }
      
      private function §4!@§() : void
      {
         if(this.§""#§)
         {
            this.§""#§.dispose();
            this.§""#§ = null;
         }
      }
      
      private function §+d§() : void
      {
         if(this.§3k§)
         {
            this.§3k§.dispose();
            this.§3k§ = null;
         }
      }
      
      public function set §'8§(param1:Boolean) : void
      {
         this.§'!B§ = param1;
         this.§+"F§.setVisibility(!this.§'!B§);
      }
      
      private function §<!a§() : void
      {
         this.§#!Y§ = this.§1J§.pop();
         this.§ !u§ = §&p§.§1[§.§7!3§(this.§[c§.mClip,{"x":this.§=w§ + 15},{"x":this.§=w§},0.5,§&p§.§>!i§);
         this.§ !u§.onComplete = this.§+e§;
         this.§ !u§.play();
         §+m§.§]!N§("NextToBeat_Sound","ChannelPowerups");
      }
      
      private function §+e§() : void
      {
         var _loc2_:int = 0;
         this.§ !u§ = null;
         this.§<",§.§!!s§("Start");
         this.§<",§.§%![§ = true;
         this.§<",§.setVisibility(true);
         var _loc1_:§default§ = this.§1J§.length > 0 ? this.§1J§[this.§1J§.length - 1] : this.§ !+§;
         if(this.§#!Y§.§+!r§ == 1 || _loc1_ == null)
         {
            this.§!!H§.setVisibility(false);
            this.§ !u§ = §&p§.§1[§.§7!3§(this.§[c§.mClip,{"x":this.§!!H§.mClip.x},null,0.5);
            this.§ !u§.onComplete = this.§?!G§;
            this.§ !u§.play();
            this.§@"$§.§!!s§("Gold");
            this.§8!t§.setText("1");
            this.§@"$§.setVisibility(true);
         }
         else
         {
            this.§ !u§ = §&p§.§1[§.§7!3§(this.§[c§.mClip,{"x":this.§=w§},null,0.5);
            this.§ !u§.onComplete = null;
            this.§ !u§.play();
            this.§7p§(_loc1_);
            _loc2_ = _loc1_.§+!r§ + 1;
            this.§@"$§.setVisibility(_loc2_ <= 3);
            if(_loc2_ > 0 && _loc2_ <= 3)
            {
               this.§@"$§.§!!s§(["Gold","Silver","Bronze"][_loc2_ - 1]);
            }
            this.§8!t§.setText(_loc2_.toString());
            this.§!T§ = §&p§.§1[§.§7!3§(this.§!!H§.mClip,{"y":this.§super§},{"y":-150},2,§&p§.§>!i§);
            this.§!T§.onComplete = this.§?!<§;
            this.§!T§.play();
         }
      }
      
      private function §?!<§() : void
      {
         this.§!T§ = null;
         this.§#!Y§ = null;
         if(this.§1J§.length > 0)
         {
            this.§<!a§();
         }
      }
      
      private function §?!G§() : void
      {
         this.§ !u§ = null;
         this.§#!Y§ = null;
      }
      
      private function §+!-§(param1:int) : String
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
      
      private function §%!]§(param1:§="0§, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:String = null;
         if(param1.§%![§ == true)
         {
            if((_loc4_ = param1.§'!$§(param2)) == "End")
            {
               param1.§%![§ = false;
               if(param3)
               {
                  param1.setVisibility(false);
               }
            }
         }
      }
      
      private function §##§() : void
      {
         var _loc1_:§2!M§ = null;
         var _loc2_:§<"#§ = null;
         for each(_loc1_ in this.§'"G§.data)
         {
            if(_loc1_ is §default§)
            {
               _loc2_ = new §<"#§(_loc1_.userId,"",false,§@!k§.NORMAL);
               _loc2_.dispose();
            }
         }
      }
   }
}
