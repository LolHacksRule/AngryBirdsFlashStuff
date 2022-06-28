package §_-wA§
{
   import §_-01E§.§_-5b§;
   import §_-01E§.§_-M3§;
   import §_-0AB§.§_-cx§;
   import §_-0AB§.§_-dd§;
   import §_-0EZ§.§_-48§;
   import §_-0EZ§.§_-Dk§;
   import §_-4g§.§_-pX§;
   import §_-6C§.§_-0Eo§;
   import §_-6C§.§_-gt§;
   import §_-6C§.§_-k6§;
   import §_-Ga§.LevelManager;
   import §_-MN§.§_-rD§;
   import §_-Yl§.§_-5q§;
   import §_-hX§.§_-bT§;
   import §_-hX§.§_-pI§;
   import §_-hX§.§_-yo§;
   import §_-mh§.§_-09d§;
   import §_-qO§.§ in§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §_-qb§
   {
       
      
      private var §_-s0§:§_-5q§;
      
      private var §_-KW§:§_-48§;
      
      private var §_-0n§:§_-dd§;
      
      private var §_-01n§:§_-dd§;
      
      private var §_-xB§:Number;
      
      private var §_-1T§:Number;
      
      private var §_-t-§:§_-pI§;
      
      private var §_-HQ§:§_-yo§;
      
      private var §_-OC§:Boolean = false;
      
      private var §_-01Y§:Boolean;
      
      private var §_-ji§:§_-5b§;
      
      private var §_-09N§:int;
      
      private var §_-0AJ§:§_-5b§;
      
      private var §_-ek§:int = -1;
      
      private var §_-eY§:Array;
      
      private var §_-oY§:String;
      
      private var §_-EO§:§_-5b§;
      
      private var §_-75§:§_-gt§;
      
      private var §_-08W§:§_-gt§;
      
      private var §_-0-g§:§_-rD§;
      
      private var §_-sC§:§_-k6§;
      
      private var §_-NE§:§_-k6§;
      
      private var §_-00o§:§_-k6§;
      
      private var §_-6g§:§_-k6§;
      
      private var §_-90§:§_-k6§;
      
      private var §_-ME§:§_-k6§;
      
      private var §_-hY§:§_-0Eo§;
      
      private var §_-eT§:§_-0Eo§;
      
      private var §_-0CA§:§_-0Eo§;
      
      private var §_-0Aq§:§_-0Eo§;
      
      private var §_-04p§:§_-0Eo§;
      
      private var §_-wo§:§_-0Eo§;
      
      public function §_-qb§(param1:§_-5q§)
      {
         this.§_-eY§ = [];
         super();
         this.§_-s0§ = param1;
         this.§_-Oe§();
         this.§_-xB§ = this.§_-08W§.x;
         this.§_-1T§ = this.§_-0-g§.y;
      }
      
      private function §_-Oe§() : void
      {
         this.§_-08W§ = this.§_-s0§.getItemByName("Container_VsHero") as §_-gt§;
         this.§_-0-g§ = this.§_-s0§.getItemByName("Container_VsEnemy") as §_-gt§;
         this.§_-75§ = this.§_-s0§.getItemByName("Container_Vs") as §_-gt§;
         this.§_-sC§ = this.§_-s0§.getItemByName("MovieClip_VsAnimation") as §_-k6§;
         this.§_-NE§ = this.§_-s0§.getItemByName("MovieClip_Boom") as §_-k6§;
         this.§_-00o§ = this.§_-s0§.getItemByName("MovieClip_VsProfilePicHero") as §_-k6§;
         this.§_-6g§ = this.§_-s0§.getItemByName("MovieClip_VsProfilePicEnemy") as §_-k6§;
         this.§_-90§ = this.§_-s0§.getItemByName("MovieClip_CrownHero") as §_-k6§;
         this.§_-ME§ = this.§_-s0§.getItemByName("MovieClip_CrownEnemy") as §_-k6§;
         this.§_-hY§ = this.§_-s0§.getItemByName("TextField_VsScore") as §_-0Eo§;
         this.§_-eT§ = this.§_-s0§.getItemByName("TextField_VsScoreEnemy") as §_-0Eo§;
         this.§_-0CA§ = this.§_-s0§.getItemByName("TextField_NameHero") as §_-0Eo§;
         this.§_-0Aq§ = this.§_-s0§.getItemByName("TextField_NameEnemy") as §_-0Eo§;
         this.§_-04p§ = this.§_-s0§.getItemByName("TextField_VsPositionHero") as §_-0Eo§;
         this.§_-wo§ = this.§_-s0§.getItemByName("TextField_VsPositionEnemy") as §_-0Eo§;
      }
      
      public function activate() : void
      {
         if(this.§_-0n§)
         {
            this.§_-0n§.play();
         }
         if(this.§_-01n§)
         {
            this.§_-01n§.play();
         }
         var _loc1_:MovieClip = this.§_-s0§.getItemByName("PlayerNameMask").mClip;
         var _loc2_:String = (AngryBirdsFP11.sUserProgress as §_-09d§).userName;
         this.§_-07m§(_loc2_,this.§_-0CA§,_loc1_);
         if(this.§_-EO§)
         {
            this.§_-07m§(this.§_-EO§.userName,this.§_-0Aq§,this.§_-s0§.getItemByName("EnemyNameMask").mClip);
         }
      }
      
      public function deActivate() : void
      {
         if(this.§_-0n§)
         {
            this.§_-0n§.pause();
            this.§_-0n§.§_-04E§ = false;
         }
         if(this.§_-01n§)
         {
            this.§_-01n§.pause();
            this.§_-01n§.§_-04E§ = false;
         }
      }
      
      public function levelStarted(param1:§_-48§, param2:String) : void
      {
         this.§_-oY§ = param2;
         this.§_-hs§();
         this.§_-TS§();
         this.§_-0-g§.setVisibility(true);
         this.§_-75§.setVisibility(false);
         this.§_-KW§ = param1;
         this.§_-OC§ = false;
         this.§_-0AJ§ = null;
         this.§_-ek§ = -1;
         this.§_-eY§ = [];
         this.§_-sC§.setVisibility(true);
         this.§_-sC§.§_-0Du§("Start");
         this.§_-sC§.§_-3t§ = true;
         this.§_-09N§ = -1;
         this.§_-08W§.x = this.§_-xB§;
         this.§_-0-g§.y = this.§_-1T§;
         this.§_-01n§ = null;
         this.§_-0n§ = null;
         this.§_-02P§();
      }
      
      private function initialize() : void
      {
         var _loc3_:int = 0;
         this.§_-S3§();
         var _loc1_:MovieClip = this.§_-s0§.getItemByName("PlayerNameMask").mClip;
         var _loc2_:String = (AngryBirdsFP11.sUserProgress as §_-09d§).userName;
         _loc2_ = this.§_-07m§(_loc2_,this.§_-0CA§,_loc1_);
         this.§_-0AJ§ = null;
         var _loc4_:int = AngryBirdsFP11.sUserProgress.getScoreForLevel(this.§_-oY§);
         this.§_-ji§ = this.§_-KW§.§_-YX§();
         if(this.§_-ji§)
         {
            this.§_-aE§(this.§_-ji§);
            _loc3_ = this.§_-ji§.§_-0Ef§ + 1;
            this.§_-0-g§.setVisibility(true);
            this.§_-sC§.setVisibility(true);
         }
         else
         {
            _loc3_ = 1;
            this.§_-0-g§.setVisibility(false);
            this.§_-sC§.setVisibility(false);
            this.§_-08W§.x = this.§_-0-g§.x;
         }
         this.§_-04p§.setText(_loc3_.toString());
         if(_loc4_ > 0)
         {
            (AngryBirdsFP11.sUserProgress as §_-09d§).§_-00D§(LevelManager.§_-HM§,_loc3_);
         }
         var _loc5_:int = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(this.§_-oY§);
         this.§_-90§.setVisibility(_loc3_ <= 3 && (_loc4_ > 0 || _loc5_ > 0));
         if(_loc3_ > 0 && _loc3_ <= 3 && (_loc4_ > 0 || _loc5_ > 0))
         {
            this.§_-90§.§_-0Du§(["Gold","Silver","Bronze"][_loc3_ - 1]);
         }
         else
         {
            this.§_-90§.§_-Y5§(1);
         }
         this.§_-75§.setVisibility(true);
         this.§_-OC§ = true;
      }
      
      public function run(param1:Number) : Boolean
      {
         if(this.§_-KW§.§_-Er§ || § in§.§_-Dc§.objects.mSardineCanAdded || this.§_-01Y§)
         {
            this.§_-75§.setVisibility(false);
            return true;
         }
         if(!this.§_-OC§)
         {
            this.initialize();
         }
         this.updateAnimations(param1);
         return this.§_-0AJ§ == null;
      }
      
      public function updateCurrentScore(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:int = 0;
         if(this.§_-09N§ == param1)
         {
            return;
         }
         this.§_-09N§ = param1;
         this.§_-hY§.setText(this.§_-2e§(this.§_-09N§));
         if(!this.§_-ji§)
         {
            return;
         }
         if(this.§_-KW§.§_-Er§ || § in§.§_-Dc§.objects.mSardineCanAdded || this.§_-01Y§)
         {
            return;
         }
         while(this.§_-ji§ && this.§_-09N§ > this.§_-ji§.§_-04F§)
         {
            this.§_-eY§.unshift(this.§_-ji§);
            if((_loc4_ = this.§_-KW§.data.indexOf(this.§_-ji§) - 1) >= 0)
            {
               this.§_-ji§ = this.§_-KW§.data[_loc4_];
            }
            else
            {
               this.§_-ji§ = null;
            }
         }
         while(this.§_-eY§.length > 5)
         {
            this.§_-eY§.pop();
         }
         if(this.§_-eY§.length > 0 && !this.§_-0AJ§)
         {
            this.§_-xO§();
         }
      }
      
      private function §_-aE§(param1:§_-5b§) : void
      {
         this.§_-ME§.setVisibility(param1.§_-0Ef§ <= 3);
         if(param1.§_-0Ef§ > 0 && param1.§_-0Ef§ <= 3)
         {
            this.§_-ME§.§_-0Du§(["Gold","Silver","Bronze"][param1.§_-0Ef§ - 1]);
         }
         this.§_-wo§.setText(param1.§_-0Ef§.toString());
         this.§_-eT§.setText(this.§_-2e§(param1.§_-04F§));
         this.§_-WV§(param1);
      }
      
      private function updateAnimations(param1:Number) : void
      {
         var _loc2_:§_-k6§ = null;
         for each(_loc2_ in [this.§_-sC§,this.§_-NE§,this.§_-sC§])
         {
            this.§_-ee§(_loc2_,param1,true);
         }
      }
      
      private function §_-WV§(param1:§_-5b§) : void
      {
         var _loc2_:String = §_-Dk§.§_-03B§(param1.userId);
         var _loc3_:String = param1.userId;
         this.§_-EO§ = param1;
         this.§_-hs§();
         this.§_-t-§ = new §_-yo§(_loc3_,"",false,§_-bT§.NORMAL);
         this.§_-gJ§(this.§_-6g§,this.§_-t-§);
         this.§_-07m§(param1.userName,this.§_-0Aq§,this.§_-s0§.getItemByName("EnemyNameMask").mClip);
      }
      
      private function §_-07m§(param1:String, param2:§_-0Eo§, param3:MovieClip) : String
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
      
      private function §_-gJ§(param1:§_-k6§, param2:MovieClip) : void
      {
         while(param1.mClip.numChildren > 0)
         {
            param1.mClip.removeChildAt(0);
         }
         param1.mClip.addChild(param2);
      }
      
      private function §_-02P§() : void
      {
         var _loc1_:String = (AngryBirdsFP11.sUserProgress as §_-09d§).avatarString;
         var _loc2_:String = (AngryBirdsFP11.sUserProgress as §_-09d§).§_-0x§;
         this.§_-TS§();
         this.§_-HQ§ = new §_-yo§(_loc2_,"",false,§_-bT§.NORMAL);
         this.§_-gJ§(this.§_-00o§,this.§_-HQ§);
      }
      
      private function §_-J9§(param1:Event) : void
      {
         this.§_-02P§();
      }
      
      private function §_-hs§() : void
      {
         if(this.§_-t-§)
         {
            this.§_-t-§.dispose();
            this.§_-t-§ = null;
         }
      }
      
      private function §_-TS§() : void
      {
         if(this.§_-HQ§)
         {
            this.§_-HQ§.dispose();
            this.§_-HQ§ = null;
         }
      }
      
      public function set §_-Id§(param1:Boolean) : void
      {
         this.§_-01Y§ = param1;
         this.§_-75§.setVisibility(!this.§_-01Y§);
      }
      
      private function §_-xO§() : void
      {
         this.§_-0AJ§ = this.§_-eY§.pop();
         this.§_-01n§ = §_-cx§.§_-3S§.§_-Wf§(this.§_-08W§.mClip,{"x":this.§_-xB§ + 15},{"x":this.§_-xB§},0.5,§_-cx§.§_-Kl§);
         this.§_-01n§.onComplete = this.§_-06§;
         this.§_-01n§.play();
         §_-pX§.playSound("NextToBeat_Sound","ChannelPowerups");
      }
      
      private function §_-06§() : void
      {
         var _loc2_:int = 0;
         this.§_-01n§ = null;
         this.§_-NE§.§_-0Du§("Start");
         this.§_-NE§.§_-3t§ = true;
         this.§_-NE§.setVisibility(true);
         var _loc1_:§_-5b§ = this.§_-eY§.length > 0 ? this.§_-eY§[this.§_-eY§.length - 1] : this.§_-ji§;
         if(this.§_-0AJ§.§_-0Ef§ == 1 || _loc1_ == null)
         {
            this.§_-0-g§.setVisibility(false);
            this.§_-01n§ = §_-cx§.§_-3S§.§_-Wf§(this.§_-08W§.mClip,{"x":this.§_-0-g§.mClip.x},null,0.5);
            this.§_-01n§.onComplete = this.§_-0Db§;
            this.§_-01n§.play();
            this.§_-90§.§_-0Du§("Gold");
            this.§_-04p§.setText("1");
            this.§_-90§.setVisibility(true);
         }
         else
         {
            this.§_-01n§ = §_-cx§.§_-3S§.§_-Wf§(this.§_-08W§.mClip,{"x":this.§_-xB§},null,0.5);
            this.§_-01n§.onComplete = null;
            this.§_-01n§.play();
            this.§_-aE§(_loc1_);
            _loc2_ = _loc1_.§_-0Ef§ + 1;
            this.§_-90§.setVisibility(_loc2_ <= 3);
            if(_loc2_ > 0 && _loc2_ <= 3)
            {
               this.§_-90§.§_-0Du§(["Gold","Silver","Bronze"][_loc2_ - 1]);
            }
            this.§_-04p§.setText(_loc2_.toString());
            this.§_-0n§ = §_-cx§.§_-3S§.§_-Wf§(this.§_-0-g§.mClip,{"y":this.§_-1T§},{"y":-150},2,§_-cx§.§_-Kl§);
            this.§_-0n§.onComplete = this.§false§;
            this.§_-0n§.play();
         }
      }
      
      private function §false§() : void
      {
         this.§_-0n§ = null;
         this.§_-0AJ§ = null;
         if(this.§_-eY§.length > 0)
         {
            this.§_-xO§();
         }
      }
      
      private function §_-0Db§() : void
      {
         this.§_-01n§ = null;
         this.§_-0AJ§ = null;
      }
      
      private function §_-2e§(param1:int) : String
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
      
      private function §_-ee§(param1:§_-k6§, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:String = null;
         if(param1.§_-3t§ == true)
         {
            if((_loc4_ = param1.§_-eB§(param2)) == "End")
            {
               param1.§_-3t§ = false;
               if(param3)
               {
                  param1.setVisibility(false);
               }
            }
         }
      }
      
      private function §_-S3§() : void
      {
         var _loc1_:§_-M3§ = null;
         var _loc2_:§_-pI§ = null;
         for each(_loc1_ in this.§_-KW§.data)
         {
            if(_loc1_ is §_-5b§)
            {
               _loc2_ = new §_-pI§(_loc1_.userId,"",false,§_-bT§.NORMAL);
               _loc2_.dispose();
            }
         }
      }
   }
}
