package § C§
{
   import §!Y§.§[o§;
   import §2!5§.§";§;
   import §2!5§.§?A§;
   import §2]§.§#H§;
   import §2]§.§set §;
   import §3"§.§&9§;
   import §3"§.§0$§;
   import §3O§.§@6§;
   import §[v§.§&F§;
   import §[v§.§^P§;
   import §]4§.§-§;
   import §`W§.§-[§;
   import §`W§.§<r§;
   import com.rovio.assets.§>D§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §9,§ extends §-§
   {
      
      public static const §?B§:String = "ChapterSelectionState";
      
      private static const §,2§:Number = 0.5;
       
      
      private var §!n§:Sprite;
      
      private var §#-§:§&F§;
      
      private var §+! §:Array;
      
      private var §[W§:Array;
      
      private var §7a§:int = 0;
      
      private var §+Y§:Number = 0;
      
      private var §12§:Number = 0;
      
      private var §+!#§:Dictionary;
      
      private var §2;§:Dictionary;
      
      private var §']§:§?A§ = null;
      
      private var §]n§:Boolean = false;
      
      private var §<§:Number = 0;
      
      public function §9,§(param1:Boolean, param2:String = "ChapterSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §,R§ = new §#H§(this);
         §,R§.init(§set §.§&!1§.Views.View_ChapterSelection[0]);
         this.§5o§();
      }
      
      override public function activate() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:§&9§ = null;
         super.activate();
         §[o§.§='§.§"3§(false);
         var _loc1_:int = 0;
         for each(_loc2_ in this.§+! §)
         {
            _loc3_ = §0$§.§]>§(_loc1_);
            if(_loc2_.Textfield_ME_Score != null)
            {
               _loc2_.Textfield_ME_Score.text.text = AngryBirdsFP11.§64§.§@!=§(_loc3_) + "/" + AngryBirdsFP11.§64§.§'o§(_loc3_);
            }
            if(_loc2_.Textfield_CollectedStars != null)
            {
               _loc2_.Textfield_CollectedStars.text.text = AngryBirdsFP11.§64§.§!!E§(_loc3_) + "/" + AngryBirdsFP11.§64§.§9b§(_loc3_);
            }
            if(_loc2_.Textfield_Score != null)
            {
               _loc2_.Textfield_Score.text.text = AngryBirdsFP11.§64§.§3<§(_loc3_);
            }
            _loc1_++;
         }
      }
      
      private function §5o§() : void
      {
         var _loc3_:§&9§ = null;
         var _loc4_:String = null;
         this.§#-§ = §,R§.getItemByName("Container_ChapterSelection") as §&F§;
         this.§+! § = [];
         this.§[W§ = [];
         var _loc1_:Number = 0;
         this.§!n§ = new Sprite();
         this.§!n§.y = AngryBirdsFP11.screenHeight / 2;
         this.§+Y§ = AngryBirdsFP11.screenWidth / 2;
         this.§!n§.x = this.§+Y§;
         this.§#-§.mClip.addChild(this.§!n§);
         this.§2;§ = new Dictionary();
         var _loc2_:int = 0;
         while(_loc2_ < §0$§.§ l§())
         {
            _loc3_ = §0$§.§]>§(_loc2_);
            _loc4_ = "MovieClip_" + _loc3_.menuImage;
            _loc1_ = this.§'!$§(_loc4_,_loc1_,_loc2_);
            _loc2_++;
         }
         _loc1_ = this.§'!$§("MovieClip_Chapter_Selection_More_Coming",_loc1_,_loc2_);
         _loc2_++;
         _loc1_ = this.§'!$§("MovieClip_Chapter_Selection_Shop",_loc1_,_loc2_);
         this.§<!A§();
      }
      
      private function §<!A§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = 0;
         this.§+!#§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§+! §.length)
         {
            _loc1_ = §>D§.§`C§("Button_Dot");
            _loc2_ = new _loc1_();
            if(_loc4_ == this.§7a§)
            {
               _loc2_.gotoAndStop("Selected");
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            _loc2_.x = AngryBirdsFP11.screenWidth / 2 + _loc3_ - this.§+! §.length * _loc2_.width / 2;
            _loc2_.y = (§,R§.getItemByName("Button_Next") as §^P§).y - _loc2_.height / 2;
            this.§#-§.mClip.addChild(_loc2_);
            _loc2_.buttonMode = true;
            this.§+!#§[_loc2_] = _loc4_;
            this.§[W§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§]j§);
            _loc4_++;
         }
         _loc3_ = this.§+! §.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§,R§.getItemByName("Button_Next") as §^P§).x = AngryBirdsFP11.screenWidth / 2;
         (§,R§.getItemByName("Button_Prev") as §^P§).x = AngryBirdsFP11.screenWidth / 2;
         (§,R§.getItemByName("Button_Next") as §^P§).x = (§,R§.getItemByName("Button_Next") as §^P§).x + (_loc3_ + 10);
         (§,R§.getItemByName("Button_Prev") as §^P§).x = (§,R§.getItemByName("Button_Prev") as §^P§).x - (_loc3_ + 10);
      }
      
      private function §'!$§(param1:String, param2:Number, param3:int) : Number
      {
         var _loc4_:§&9§ = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         if(§>D§.§2q§(param1))
         {
            _loc4_ = §0$§.§]>§(param3);
            (_loc6_ = new (_loc5_ = §>D§.§`C§(param1))()).x = param2;
            this.§!n§.addChild(_loc6_);
            this.§+! §.push(_loc6_);
            param2 += _loc6_.width * 1.55;
            this.§2;§[_loc6_] = param3;
            _loc6_.addEventListener(MouseEvent.CLICK,this.§7r§);
            _loc6_.buttonMode = true;
            if(_loc6_.Textfield_CollectedStars != null)
            {
               _loc6_.Textfield_CollectedStars.text.text = AngryBirdsFP11.§64§.§!!E§(_loc4_) + "/" + AngryBirdsFP11.§64§.§9b§(_loc4_);
            }
            if(_loc6_.Textfield_Score != null)
            {
               _loc6_.Textfield_Score.text.text = AngryBirdsFP11.§64§.§3<§(_loc4_);
            }
            if(_loc6_.Textfield_ME_Score != null)
            {
               _loc6_.Textfield_ME_Score.text.text = AngryBirdsFP11.§64§.§@!=§(_loc4_) + "/" + AngryBirdsFP11.§64§.§'o§(_loc4_);
            }
         }
         return param2;
      }
      
      private function §]j§(param1:MouseEvent) : void
      {
         if(!this.§]n§)
         {
            this.§#!&§(this.§+!#§[param1.target]);
         }
      }
      
      private function §7r§(param1:MouseEvent) : void
      {
         var _loc2_:MovieClip = null;
         if(!this.§]n§)
         {
            if(!(param1.currentTarget is MovieClip))
            {
               return;
            }
            _loc2_ = MovieClip(param1.currentTarget);
            if(this.§7a§ != this.§2;§[_loc2_])
            {
               this.§#!&§(this.§2;§[_loc2_]);
            }
            else if(this.§2;§[_loc2_] < §0$§.§ l§())
            {
               §0$§.§=l§ = this.§2;§[_loc2_];
               mNextState = §4t§.§?B§;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §-§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§%`§();
         this.§!!;§();
         if(mNextState.length > 0)
         {
            return §-§.STATE_STATUS_COMPLETED;
         }
         return §-§.STATE_STATUS_RUNNING;
      }
      
      private function §!!;§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§+! §.length)
         {
            _loc2_ = this.§!n§.x + this.§+! §[_loc1_].x - AngryBirdsFP11.screenWidth / 2;
            _loc2_ = Math.abs(_loc2_);
            _loc2_ *= 0.55;
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            this.§+! §[_loc1_].scaleX = 1.1 - _loc2_ / 1000;
            this.§+! §[_loc1_].scaleY = 1.1 - _loc2_ / 1000;
            this.§+! §[_loc1_].alpha = 1 - _loc2_ / 1000 * 1.5;
            this.§+! §[_loc1_].y = _loc2_ / 1000 * -200;
            _loc1_++;
         }
      }
      
      private function §%`§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§[W§.length)
         {
            if(-this.§!n§.x + 800 >= this.§+! §[_loc1_].x && -this.§<§ < this.§+! §[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§[W§.length)
               {
                  this.§[W§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§[W§[_loc1_].gotoAndStop("Selected");
            }
            if(-this.§!n§.x + 800 <= this.§+! §[_loc1_].x && -this.§<§ > this.§+! §[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§[W§.length)
               {
                  this.§[W§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§[W§[_loc1_].gotoAndStop("Selected");
            }
            _loc1_++;
         }
         this.§<§ = this.§!n§.x;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §[o§.§='§.clearLevel();
         (§,R§.getItemByName("Button_Back") as §^P§).setComponentVisualState(§<r§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-[§) : void
      {
         switch(param2)
         {
            case "BACK":
               §@6§.playSound("Menu_Back");
               mNextState = §,!?§.§?B§;
               break;
            case "PREV":
               §@6§.playSound("Menu_Confirm");
               if(!this.§]n§)
               {
                  --this.§7a§;
                  this.§#!&§(this.§7a§);
                  break;
               }
               break;
            case "NEXT":
               §@6§.playSound("Menu_Confirm");
               if(!this.§]n§)
               {
                  ++this.§7a§;
                  this.§#!&§(this.§7a§);
                  break;
               }
               break;
            case "FULLSCREEN_BUTTON":
               §@6§.playSound("Menu_Confirm");
               AngryBirdsFP11.§?L§.§,!!§();
         }
      }
      
      private function §#!&§(param1:int) : void
      {
         this.§]n§ = true;
         if(param1 > this.§+! §.length - 1)
         {
            param1 = this.§+! §.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§7a§ = param1;
         var _loc2_:Number = -this.§+! §[param1].x + this.§+Y§;
         var _loc3_:Number = this.§!n§.x - _loc2_;
         var _loc4_:Number;
         if((_loc4_ = (_loc4_ = (_loc4_ = Math.abs(_loc3_)) / 400) * §,2§) > 1)
         {
            _loc4_ = 1;
         }
         if(this.§']§ != null)
         {
            this.§']§.stop();
         }
         this.§']§ = §";§.§[8§.§6!$§(this.§!n§,{"x":_loc2_},null,_loc4_,§";§.§&w§);
         this.§']§.onComplete = this.§`'§;
         this.§']§.play();
      }
      
      private function §`'§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§[W§.length)
         {
            if(_loc1_ == this.§7a§)
            {
               this.§[W§[_loc1_].gotoAndStop("Selected");
            }
            else
            {
               this.§[W§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§]n§ = false;
      }
   }
}
