package §'4§
{
   import §"!n§.§;"x§;
   import §"",§.§3"k§;
   import §##Z§.§'#N§;
   import §##Z§.§<$2§;
   import §%!-§.§5!z§;
   import §&$3§.§"!&§;
   import §&$3§.§7$C§;
   import §3+§.StateTournamentResults;
   import §7R§.§ #`§;
   import §8#K§.§3Z§;
   import com.rovio.assets.§6$A§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class LeagueProgressBar extends EventDispatcher
   {
      
      private static const §1#O§:String = "You are in";
      
      private static const § "h§:String = "You were in";
      
      private static const §]"O§:String = "Promoted to";
      
      private static const §##@§:String = "Demoted to ";
      
      private static const §5r§:String = "RatingCountLoopCountChannel";
       
      
      public var §3"§:MovieClip;
      
      private var §]Z§:MovieClip;
      
      private var §`=§:§7$C§ = null;
      
      private var §+"'§:§7$C§ = null;
      
      private var §?O§:§7$C§ = null;
      
      private var leagueProgressBar:MovieClip = null;
      
      private var leagueProgressFill:MovieClip = null;
      
      private var §[$5§:§5!z§;
      
      private var §!"%§:MovieClip;
      
      private var §-!'§:MovieClip;
      
      private var §@#f§:MovieClip;
      
      private var §^h§:MovieClip;
      
      private var §!0§:int;
      
      private var §+#d§:Object;
      
      private var §^#T§:Number = -1;
      
      private var §5"H§:Number = 0;
      
      private var §@#"§:Number = 0;
      
      public var mUserRatingCount:Number = 0;
      
      private var §4"z§:Class;
      
      private var §0"b§:Class;
      
      private var §^#^§:Class;
      
      private var §8!Z§:Class;
      
      private var §;#9§:Class;
      
      private var §!"E§:Class;
      
      private var §3#J§:Boolean;
      
      private const §1!u§:Number = 0;
      
      private const §&"2§:Number = 1;
      
      private const §3s§:Number = -1;
      
      private var §6e§:Number = 0;
      
      private var §8!<§:Number = 0.5;
      
      private var §@!#§:§7$C§;
      
      private var §7l§:Number = 20;
      
      private var §&"]§:Array;
      
      public function LeagueProgressBar(param1:§5!z§)
      {
         this.§&"]§ = [false,false];
         super();
         this.§[$5§ = param1;
         this.§4"z§ = §6$A§.§1!m§("PromotionAnimation");
         this.§0"b§ = §6$A§.§1!m§("DemotionAnimation");
         this.§^#^§ = §6$A§.§1!m§("DemotionAnimationStar");
         this.§8!Z§ = §6$A§.§1!m§("PromotionAnimationStar");
         this.§;#9§ = §6$A§.§1!m§("PromotionAnimationShine");
         this.§!"E§ = §6$A§.§1!m§("PromotionAnimationStarShine");
         §3Z§.§'#E§(§5r§,6,2);
      }
      
      private function § "3§(param1:Event) : void
      {
         if(this.§!"%§.currentFrameLabel == "action_sound_crack")
         {
            §3Z§.playSound(§'#N§.§?!6§(this.§+#d§.l.li.tn).§++§,§5r§);
         }
         if(this.§!"%§.currentFrameLabel == "action_sound_puff")
         {
            §3Z§.playSound(§'#N§.§?!6§(this.§+#d§.l.li.tn).§^#W§,§5r§);
         }
         if(this.§!"%§.currentFrameLabel == "action_sound_glow")
         {
            §3Z§.playSound(§'#N§.§?!6§(this.§+#d§.l.li.tn).§&$A§,§5r§);
         }
         if(this.§!"%§.currentFrameLabel == "action_sound_promo_change")
         {
            §3Z§.playSound(§'#N§.§?!6§(this.§+#d§.l.li.tn).§+#q§,§5r§);
         }
         if(this.§!"%§.currentFrameLabel == "action_sound_promo_change_star")
         {
            §3Z§.playSound("league_promotion_star",§5r§);
         }
         if(this.§!"%§.currentFrameLabel == "action_change")
         {
            this.§]!w§();
         }
         else if(this.§!"%§.currentFrame == this.§!"%§.totalFrames)
         {
            this.§&"]§[1] = true;
            this.§!"%§.stop();
            this.§!"%§.visible = false;
            this.§!"%§.removeEventListener(Event.ENTER_FRAME,this.§ "3§);
            if(this.§3"§.contains(this.§!"%§))
            {
               this.§3"§.removeChild(this.§!"%§);
            }
            if(this.§-!'§)
            {
               this.§-!'§.stop();
               this.§-!'§.visible = false;
               if(this.§3"§.contains(this.§-!'§))
               {
                  this.§3"§.removeChild(this.§-!'§);
               }
            }
            this.§3#J§ = false;
         }
         else if(this.§!"%§.currentFrame == 1)
         {
            this.§3#J§ = true;
            if(this.§!"%§.txtStarRating)
            {
               if(this.§!"7§ >= 0 && this.§@#"§ < 0)
               {
                  this.§!"%§.txtStarRating.text = (this.§!"7§ + 1).toString();
               }
            }
            if(this.§!"%§ is this.§0"b§)
            {
               if(this.§-!'§)
               {
                  this.§-!'§.visible = false;
               }
               this.§3"§.setChildIndex(this.§!"%§,this.§3"§.numChildren - 1);
            }
         }
      }
      
      private function §]!w§() : void
      {
         if(this.§3"§)
         {
            if(this.§!"7§ >= 0 && this.§@#"§ > 0 || this.§!"7§ >= 1 && this.§@#"§ < 0)
            {
               this.§3"§.gotoAndStop("DIAMOND");
               this.§3"§.StarPromotionIcon.visible = true;
               this.§3"§.StarPromotionIcon.txtStarRating.text = this.§!"7§.toString();
            }
            else if(this.§+#d§ && this.§+#d§.l)
            {
               this.§3"§.gotoAndStop(§'#N§.§?!6§(this.§+#d§.l.li.tn).id);
               if(this.§3"§.StarPromotionIcon)
               {
                  this.§3"§.StarPromotionIcon.visible = false;
               }
            }
         }
         (this.§[$5§.getItemByName("LeaguesRating").mClip.textProgress as TextField).text = this.§@#"§ > 0 ? §]"O§ : §##@§;
         if(this.§!"7§ > 0 || this.§!"7§ == 0 && this.§@#"§ < 0 && §'#N§.§?!6§(this.§+#d§.l.li.tn).id == §'#N§.§3"4§.id)
         {
            (this.§[$5§.getItemByName("LeaguesRating").mClip.textProgress as TextField).text = §1#O§;
         }
         (this.§[$5§.getItemByName("LeaguesRating").mClip.textLeague as TextField).text = §'#N§.§?!6§(this.§+#d§.l.li.tn).name + "!";
      }
      
      private function §3#H§() : Object
      {
         var _loc1_:Object = null;
         for each(_loc1_ in this.§+#d§.l.p)
         {
            if(_loc1_.u == (AngryBirdsBase.singleton.dataModel.userProgress as § #`§).userID)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function §^!5§(param1:Event) : void
      {
         var _loc2_:Number = NaN;
         if(this.§@#f§.currentFrameLabel == "action_change")
         {
            if(this.§]Z§)
            {
               if(this.§^h§)
               {
                  this.§]Z§.setChildIndex(this.§@#f§,this.§]Z§.numChildren - 1);
                  this.§^h§.stop();
                  this.§^h§.visible = false;
               }
               if(this.§6e§ == this.§&"2§ && this.§!0§ == StateTournamentResults.§="M§)
               {
                  §§push(Number(this.§!"7§ - 1));
               }
               else
               {
                  _loc2_ = this.§6e§ == this.§3s§ && this.§!0§ == StateTournamentResults.§="M§ ? Number(this.§!"7§ + 1) : Number(this.§!"7§);
                  if(this.§+#d§.l.nli.ls && this.§+#d§.l.nli.ls > 0)
                  {
                     this.§]Z§.gotoAndStop("STAR");
                     this.§]Z§.StarPromotionIcon.visible = true;
                     this.§]Z§.StarPromotionIcon.txtStarRating.text = this.§+#d§.l.nli.ls.toString();
                     addr9:
                     return;
                     addr560:
                  }
                  else
                  {
                     if(this.§!"7§ >= 0 && this.§@#"§ > 0)
                     {
                        this.§]Z§.gotoAndStop("STAR");
                        this.§]Z§.StarPromotionIcon.visible = true;
                        this.§]Z§.StarPromotionIcon.txtStarRating.text = (this.§!"7§ + 1).toString();
                     }
                     else if(this.§!"7§ > 1 && this.§@#"§ < 0)
                     {
                        this.§]Z§.gotoAndStop("STAR");
                        this.§]Z§.StarPromotionIcon.visible = true;
                        this.§]Z§.StarPromotionIcon.txtStarRating.text = _loc2_.toString();
                     }
                     else if(this.§!"7§ == 0 && this.§@#"§ != 0)
                     {
                        this.§]Z§.gotoAndStop("STAR");
                        this.§]Z§.StarPromotionIcon.visible = true;
                        this.§]Z§.StarPromotionIcon.txtStarRating.text = "1";
                     }
                     else if(this.§!"7§ == -1 && §'#N§.§?!6§(this.§+#d§.l.pli.tn).id == §'#N§.§3"4§.id)
                     {
                        this.§]Z§.gotoAndStop("DIAMOND");
                        this.§]Z§.StarPromotionIcon.visible = false;
                     }
                     else
                     {
                        this.§]Z§.gotoAndStop(§'#N§.§?!6§(this.§+#d§.l.nli.tn).id);
                     }
                     §§goto(addr560);
                  }
                  §§goto(addr560);
               }
               §§goto(addr854);
            }
            §§goto(addr560);
         }
         else if(this.§@#f§.currentFrame == this.§@#f§.totalFrames)
         {
            this.§@#f§.stop();
            this.§@#f§.visible = false;
            this.§@#f§.removeEventListener(Event.ENTER_FRAME,this.§ "3§);
            if(this.§]Z§.contains(this.§@#f§))
            {
               this.§]Z§.removeChild(this.§@#f§);
            }
            if(this.§^h§)
            {
               this.§^h§.stop();
               this.§^h§.visible = false;
               if(this.§]Z§.contains(this.§^h§))
               {
                  this.§]Z§.removeChild(this.§^h§);
               }
            }
            this.§3#J§ = false;
         }
         else if(this.§@#f§.currentFrame == 1)
         {
            this.§3#J§ = true;
            if(this.§]Z§.StarPromotionIcon && this.§]Z§.StarPromotionIcon.txtStarRating)
            {
               if(this.§6e§ == this.§&"2§ && this.§!0§ == StateTournamentResults.§="M§)
               {
                  §§push(Number(this.§!"7§ - 1));
               }
               else
               {
                  _loc2_ = this.§6e§ == this.§3s§ && this.§!0§ == StateTournamentResults.§="M§ ? Number(this.§!"7§ + 1) : Number(this.§!"7§);
                  if(this.§!"7§ >= 0 && this.§@#"§ > 0)
                  {
                     this.§]Z§.StarPromotionIcon.visible = true;
                     this.§]Z§.StarPromotionIcon.txtStarRating.text = this.§!"7§.toString();
                     addr26:
                     if(this.§@#f§ is this.§0"b§)
                     {
                        if(this.§^h§)
                        {
                           this.§^h§.visible = false;
                        }
                        this.§]Z§.setChildIndex(this.§@#f§,this.§]Z§.numChildren - 1);
                     }
                     §§goto(addr9);
                  }
                  else
                  {
                     if(this.§!"7§ >= 0 && this.§@#"§ < 0)
                     {
                        _loc2_ = this.§6e§ == this.§3s§ ? Number(_loc2_ + 1) : Number(_loc2_);
                        this.§]Z§.StarPromotionIcon.visible = true;
                        this.§]Z§.StarPromotionIcon.txtStarRating.text = _loc2_.toString();
                     }
                     §§goto(addr26);
                  }
               }
               §§goto(addr352);
            }
            §§goto(addr26);
         }
         §§goto(addr9);
      }
      
      public function §6"]§(param1:Object = null, param2:int = 0, param3:Boolean = false) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Object = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Object = null;
         this.§!0§ = param2;
         this.§+#d§ = param1;
         this.§6e§ = this.§1!u§;
         this.§&"]§ = [false,false];
         §3Z§.§&$?§(§5r§);
         this.§0!7§();
         this.leagueProgressBar = this.§[$5§.getItemByName("LeagueProgress").mClip;
         this.leagueProgressFill = this.leagueProgressBar.mcProgress;
         this.§[$5§.getItemByName("LeaguesRating").mClip.mcNotInLeague.visible = false;
         this.§[$5§.getItemByName("LeaguesRating").mClip.textLeague.visible = true;
         if(param1 && param1.l)
         {
            this.§[$5§.getItemByName("LeaguesRatingProgress").setVisibility(true);
            _loc4_ = !!param1.l.pli ? Number(param1.l.pli.rt) : Number(0);
            _loc5_ = !!param1.l.li ? Number(param1.l.li.rt) : Number(_loc4_);
            if((_loc6_ = !!param1.l.nli ? Number(param1.l.nli.rt) : Number(0)) == 0 && §<$2§.§`"H§.currentLeague())
            {
               _loc6_ = §'#N§.§6!>§(§<$2§.§`"H§.currentLeague().id).§+#s§;
            }
            else if(_loc6_ == 0 && param1.l.pli)
            {
               _loc6_ = §'#N§.§6!>§(§'#N§.§6!>§(param1.l.pli.tn).id).§+#s§;
            }
            _loc8_ = (_loc7_ = this.§3#H§()) && _loc7_.lr ? Number(_loc7_.lr) : (!!§<$2§.§`"H§.§1>§() ? Number(§<$2§.§`"H§.§1>§().lr) : Number(0));
            this.leagueProgressFill.scaleX = §;"x§.§<!f§((_loc8_ - this.§@#"§ - _loc5_) / (_loc6_ - _loc5_),0,1);
            _loc9_ = 1;
            if(this.§!"7§ == -1 && param1.l.li && param1.l.pli && §'#N§.§?!6§(param1.l.li.tn).id == §'#N§.§3"4§.id && §'#N§.§?!6§(param1.l.pli.tn).id == §'#N§.§3"4§.id)
            {
               this.§!"7§ = 0;
            }
            _loc10_ = _loc6_;
            _loc11_ = _loc5_;
            for each(_loc12_ in param1.l.p)
            {
               if(_loc12_.u == (AngryBirdsBase.singleton.dataModel.userProgress as § #`§).userID)
               {
                  if(_loc12_.lr)
                  {
                     _loc8_ = _loc12_.lr;
                  }
                  if(_loc12_.p)
                  {
                     if(_loc12_.p == "u")
                     {
                        _loc10_ = !!this.§+#d§.lastResult ? Number(_loc5_) : Number(_loc10_);
                        _loc11_ = !!this.§+#d§.lastResult ? Number(_loc4_) : Number(_loc11_);
                        this.§6e§ = this.§&"2§;
                        _loc9_ = 1;
                     }
                     if(_loc12_.p == "d")
                     {
                        _loc10_ = !!this.§+#d§.lastResult ? Number(_loc4_) : Number(_loc10_);
                        _loc11_ = !!this.§+#d§.lastResult ? Number(_loc5_) : Number(_loc11_);
                        if(this.§+#d§.lastResult)
                        {
                           if(this.§!"7§ != 0 || this.§!"7§ == 0 && param1.l.li && param1.l.li.tn == §'#N§.§3"4§.id)
                           {
                              _loc11_ += 100;
                              _loc10_ += 100;
                           }
                        }
                        this.leagueProgressFill.scaleX = §;"x§.§<!f§((_loc8_ + this.§@#"§ - _loc10_) / (_loc10_ - _loc11_),0,1);
                        _loc9_ = 0;
                        this.§6e§ = this.§3s§;
                     }
                  }
               }
            }
            this.§5"H§ = _loc8_;
            this.§5x§(param1,this.§!"7§);
            if(this.§!0§ == StateTournamentResults.§="M§)
            {
               this.§'V§(this.§!"7§);
            }
            this.§3#+§(_loc9_,_loc6_,_loc10_,_loc11_,this.§!"7§,param3);
            this.§8!-§(_loc8_,this.§@#"§,_loc10_,_loc11_,this.§!0§ == StateTournamentResults.§="M§);
         }
         else
         {
            this.§'$-§();
         }
      }
      
      private function §'$-§() : void
      {
         this.§3"§.gotoAndStop("NOLEAGUE");
         this.§[$5§.getItemByName("LeaguesRating").mClip.textLeague.visible = false;
         this.§[$5§.getItemByName("LeaguesRating").mClip.mcNotInLeague.visible = true;
         (this.§[$5§.getItemByName("LeaguesRating").mClip.textProgress as TextField).text = "";
         this.§[$5§.getItemByName("LeaguesRatingProgress").setVisibility(false);
      }
      
      private function §3#+§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean = false) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         if(this.§!0§ == StateTournamentResults.§="M§ && this.§+#d§.lastResult)
         {
            _loc7_ = this.§+#d§.l.pli && this.§+#d§.l.li && (this.§+#d§.l.pli.tn != this.§+#d§.l.li.tn || param5 >= 0);
            if(this.§6e§ == this.§&"2§)
            {
               §§push(Number(param5 - 1));
            }
            else
            {
               _loc8_ = this.§6e§ == this.§3s§ && param5 != -1 ? Number(param5 + 1) : Number(param5);
               if(_loc7_ && this.§6e§ != this.§1!u§)
               {
                  (this.§[$5§.getItemByName("LeaguesRating").mClip.textLeague as TextField).text = §'#N§.§?!6§(this.§+#d§.l.pli.tn).name + "!";
                  if(this.§@#"§ < 0)
                  {
                     if(param5 == 0)
                     {
                        this.§3"§.gotoAndStop("DIAMOND");
                        this.§3"§.StarPromotionIcon.visible = true;
                        this.§3"§.StarPromotionIcon.txtStarRating.text = (param5 + 1).toString();
                        this.§]Z§.gotoAndStop("STAR");
                        this.§]Z§.StarPromotionIcon.visible = true;
                        this.§]Z§.StarPromotionIcon.txtStarRating.text = (param5 + 1).toString();
                     }
                     else if(param5 >= 1)
                     {
                        this.§3"§.gotoAndStop("DIAMOND");
                        this.§3"§.StarPromotionIcon.visible = true;
                        this.§3"§.StarPromotionIcon.txtStarRating.text = _loc8_.toString();
                        this.§]Z§.gotoAndStop("STAR");
                        this.§]Z§.StarPromotionIcon.visible = true;
                        this.§]Z§.StarPromotionIcon.txtStarRating.text = (_loc8_ + 1).toString();
                     }
                     else if(param5 == -1 && §'#N§.§?!6§(this.§+#d§.l.pli.tn).id == §'#N§.§3"4§.id)
                     {
                        this.§3"§.gotoAndStop(§'#N§.§?!6§(this.§+#d§.l.pli.tn).id);
                        this.§]Z§.gotoAndStop("STAR");
                        this.§]Z§.StarPromotionIcon.visible = true;
                        this.§]Z§.StarPromotionIcon.txtStarRating.text = "1";
                     }
                     else
                     {
                        this.§3"§.gotoAndStop(§'#N§.§?!6§(this.§+#d§.l.pli.tn).id);
                        if(this.§3"§.StarPromotionIcon)
                        {
                           this.§3"§.StarPromotionIcon.visible = false;
                        }
                        this.§]Z§.gotoAndStop(§'#N§.§6!>§(this.§+#d§.l.pli.tn).id);
                     }
                     if(!param6)
                     {
                        this.mUserRatingCount = this.§5"H§ + Math.abs(this.§@#"§);
                     }
                  }
                  else
                  {
                     _loc8_ = this.§6e§ == this.§&"2§ ? Number(param5 - 1) : (this.§6e§ == this.§3s§ ? Number(param5 + 1) : Number(param5));
                     if(param5 == 1)
                     {
                        this.§3"§.gotoAndStop(§'#N§.§?!6§(this.§+#d§.l.pli.tn).id);
                        if(this.§3"§.StarPromotionIcon)
                        {
                           this.§3"§.StarPromotionIcon.visible = false;
                        }
                        this.§]Z§.gotoAndStop("STAR");
                        this.§]Z§.StarPromotionIcon.visible = true;
                        this.§]Z§.StarPromotionIcon.txtStarRating.text = param5.toString();
                     }
                     else if(param5 > 1)
                     {
                        this.§3"§.gotoAndStop("DIAMOND");
                        this.§3"§.StarPromotionIcon.visible = true;
                        this.§3"§.StarPromotionIcon.txtStarRating.text = _loc8_.toString();
                        this.§]Z§.gotoAndStop("STAR");
                        this.§]Z§.StarPromotionIcon.visible = true;
                        this.§]Z§.StarPromotionIcon.txtStarRating.text = (_loc8_ + 1).toString();
                     }
                     else
                     {
                        this.§3"§.gotoAndStop(§'#N§.§?!6§(this.§+#d§.l.pli.tn).id);
                        this.§]Z§.gotoAndStop(§'#N§.§?!6§(this.§+#d§.l.li.tn).id);
                     }
                     if(!param6)
                     {
                        this.mUserRatingCount = this.§5"H§ - Math.abs(this.§@#"§);
                     }
                  }
                  _loc9_ = §;"x§.§<!f§((this.§5"H§ - this.§@#"§ - param4) / (param3 - param4),0,1);
                  if(this.§@#"§ < 0)
                  {
                     _loc9_ = §;"x§.§<!f§((this.§5"H§ + this.§@#"§ * -1 - param4) / (param3 - param4),0,1);
                  }
                  this.leagueProgressFill.scaleX = _loc9_;
                  this.§^#%§(param3,param4);
                  if(param6)
                  {
                     _loc10_ = Math.abs(_loc9_ - param1);
                     _loc11_ = this.§;!d§(Math.abs(this.§@#"§) * _loc10_);
                     if(this.§6e§ == this.§&"2§)
                     {
                        this.§[#l§(true,param4,param3,_loc11_);
                     }
                     else
                     {
                        this.§[#l§(true,param3,param4,_loc11_);
                     }
                     this.§`=§ = §"!&§.§`"H§.§1"W§(this.leagueProgressFill,{"scaleX":§;"x§.§<!f§(param1,0,1)},null,_loc11_);
                     this.§`=§.onComplete = this.§["u§;
                     this.§`=§.play();
                  }
               }
               else
               {
                  this.§]Z§.visible = true;
                  if(this.§5"H§ > 0)
                  {
                     this.leagueProgressFill.scaleX = §;"x§.§<!f§((this.§5"H§ - this.§@#"§ - param4) / (param3 - param4),0,1);
                  }
                  else
                  {
                     this.leagueProgressFill.scaleX = §;"x§.§<!f§((this.§5"H§ + this.§@#"§ - param4) / (param3 - param4),0,1);
                  }
                  _loc12_ = 0;
                  _loc13_ = this.§5"H§;
                  if(this.§@#"§ > 0)
                  {
                     _loc12_ = _loc13_ - this.§@#"§;
                  }
                  else
                  {
                     _loc12_ = _loc13_ + Math.abs(this.§@#"§);
                  }
                  this.§&"]§[1] = true;
                  if(param6)
                  {
                     _loc11_ = this.§;!d§(Math.abs(this.§@#"§));
                     this.§[#l§(true,_loc12_,_loc13_,_loc11_);
                     this.§`=§ = §"!&§.§`"H§.§1"W§(this.leagueProgressFill,{"scaleX":§;"x§.§<!f§((this.§5"H§ - param4) / (param3 - param4),0,1)},null,_loc11_);
                     this.§`=§.onComplete = this.§&6§;
                     this.§`=§.play();
                  }
                  else
                  {
                     this.mUserRatingCount = _loc12_;
                     StateTournamentResults.§%§ = true;
                  }
               }
               §§goto(addr26);
            }
            §§goto(addr1329);
         }
         else
         {
            this.§]Z§.visible = true;
            this.leagueProgressFill.scaleX = §;"x§.§<!f§(Math.abs(this.§5"H§ - param4) / (param3 - param4),0,1);
            this.§^#%§(param3,param4);
            if(param6)
            {
               _loc11_ = this.§;!d§(this.§@#"§);
               this.§[#l§(false,this.§5"H§,this.§5"H§,_loc11_);
               if(this.§@#"§ != 0)
               {
                  this.§`=§ = §"!&§.§`"H§.§1"W§(this.leagueProgressFill,{"scaleX":§;"x§.§<!f§(Math.abs(this.§5"H§ - param4) / (param3 - param4),0,1)},null,_loc11_);
                  this.§`=§.onComplete = this.§&6§;
                  this.§`=§.play();
               }
            }
            else
            {
               this.mUserRatingCount = this.§5"H§;
            }
         }
         addr26:
      }
      
      private function §;!d§(param1:Number) : Number
      {
         var _loc2_:Number = Math.abs(param1) / this.§7l§ * this.§8!<§;
         if(_loc2_ < 0.1)
         {
            return 0.1;
         }
         return _loc2_;
      }
      
      private function §[#l§(param1:Boolean, param2:Number, param3:Number, param4:Number) : void
      {
         if(param1)
         {
            if(this.§@!#§)
            {
               this.§@!#§.stop();
               this.§@!#§ = null;
            }
            if(param2 != param3)
            {
               §3Z§.playSound("gamescorescreen_score_count_loop",§5r§,100);
            }
            this.§@!#§ = §"!&§.§`"H§.§1"W§(this,{"mUserRatingCount":param3},{"mUserRatingCount":param2},param4);
            this.§@!#§.onComplete = this.§2#m§;
            this.§@!#§.play();
         }
         else
         {
            this.mUserRatingCount = param3;
         }
      }
      
      private function §0!7§() : void
      {
         this.§3"§ = this.§[$5§.getItemByName("CurrentLeagueIcon").mClip;
         this.§]Z§ = this.§[$5§.getItemByName("NextLeagueIcon").mClip;
         this.§3"§.gotoAndStop(0);
         this.§]Z§.gotoAndStop(0);
         if(this.§3"§.StarPromotionIcon)
         {
            this.§3"§.StarPromotionIcon.visible = false;
         }
         if(this.§]Z§.StarPromotionIcon)
         {
            this.§]Z§.StarPromotionIcon.visible = false;
         }
      }
      
      private function §5x§(param1:Object, param2:Number = 0) : void
      {
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc3_:Number = this.§6e§ == this.§&"2§ && this.§!0§ == StateTournamentResults.§="M§ ? Number(param2 - 1) : (this.§6e§ == this.§3s§ && this.§!0§ == StateTournamentResults.§="M§ ? Number(param2 + 1) : Number(param2));
         if(param2 == 1 && this.§6e§ == this.§&"2§ && this.§+#d§.lastResult)
         {
            this.§3"§.gotoAndStop(§'#N§.§?!6§(this.§+#d§.l.pli.tn).id);
         }
         else if(param2 > 0)
         {
            this.§3"§.gotoAndStop("DIAMOND");
            this.§3"§.StarPromotionIcon.visible = true;
            this.§3"§.StarPromotionIcon.txtStarRating.text = _loc3_.toString();
         }
         else if(param2 == -1 && this.§6e§ == this.§3s§ && §'#N§.§?!6§(param1.l.pli.tn).id == §'#N§.§3"4§.id && param1.lastResult)
         {
            this.§3"§.gotoAndStop("DIAMOND");
            if(this.§3"§.StarPromotionIcon)
            {
               this.§3"§.StarPromotionIcon.visible = false;
            }
         }
         else if(param1.l.li)
         {
            this.§3"§.gotoAndStop(§'#N§.§?!6§(param1.l.li.tn).id);
            if(this.§3"§.StarPromotionIcon)
            {
               this.§3"§.StarPromotionIcon.visible = false;
            }
         }
         else if(param1.l.pli)
         {
            if(!param1.lastResult && this.§6e§ == this.§&"2§)
            {
               this.§3"§.gotoAndStop(§'#N§.§6!>§(param1.l.pli.tn).id);
            }
            else if(!param1.lastResult && this.§6e§ == this.§3s§)
            {
               this.§3"§.gotoAndStop(§'#N§.§]m§(param1.l.pli.tn).id);
            }
            else
            {
               this.§3"§.gotoAndStop(§'#N§.§?!6§(param1.l.pli.tn).id);
            }
         }
         else
         {
            this.§3"§.visble = false;
         }
         if(param2 == 1 && this.§6e§ == this.§&"2§)
         {
            this.§]Z§.gotoAndStop("STAR");
            this.§]Z§.StarPromotionIcon.visible = true;
            if(this.§+#d§.lastResult)
            {
               this.§]Z§.StarPromotionIcon.txtStarRating.text = param2.toString();
            }
            else
            {
               this.§]Z§.StarPromotionIcon.txtStarRating.text = this.§+#d§.l.nli.ls.toString();
            }
         }
         else if(param2 >= 0)
         {
            this.§]Z§.gotoAndStop("STAR");
            _loc3_ = this.§6e§ == this.§3s§ ? Number(_loc3_) : Number(_loc3_ + 1);
            if(!param1.lastResult && param1.l.nli.ls)
            {
               _loc3_ = param1.l.nli.ls;
            }
            this.§]Z§.StarPromotionIcon.visible = true;
            this.§]Z§.StarPromotionIcon.txtStarRating.text = _loc3_.toString();
         }
         else if(param1.lastResult && this.§6e§ == this.§3s§ && §'#N§.§?!6§(param1.l.pli.tn).id == §'#N§.§3"4§.id && param2 == -1)
         {
            this.§]Z§.gotoAndStop("STAR");
            this.§]Z§.StarPromotionIcon.visible = true;
            this.§]Z§.StarPromotionIcon.txtStarRating.text = (this.§+#d§.l.pli.ls + 1).toString();
         }
         else if(param1.l.nli)
         {
            this.§]Z§.gotoAndStop(§'#N§.§?!6§(param1.l.nli.tn).id);
            if(param1.l.nli.ls && param1.l.nli.ls >= 1)
            {
               this.§]Z§.gotoAndStop("STAR");
               this.§]Z§.StarPromotionIcon.visible = true;
               this.§]Z§.StarPromotionIcon.txtStarRating.text = this.§+#d§.l.nli.ls.toString();
            }
         }
         else if(param1.l.pli)
         {
            _loc5_ = !!§<$2§.§`"H§.currentLeague() ? §<$2§.§`"H§.currentLeague().id : param1.l.pli.tn;
            if(!param1.lastResult && this.§6e§ == this.§&"2§)
            {
               if(§<$2§.§`"H§.currentLeague())
               {
                  this.§]Z§.gotoAndStop(§'#N§.§6!>§(§<$2§.§`"H§.currentLeague().id).id);
               }
               else if(param1.l.pli)
               {
                  this.§]Z§.gotoAndStop(§'#N§.§6!>§(§'#N§.§6!>§(param1.l.pli.tn).id).id);
               }
            }
            else if(!param1.lastResult && this.§6e§ == this.§3s§)
            {
               this.§]Z§.gotoAndStop(§'#N§.§6!>§(_loc5_).id);
            }
            else
            {
               this.§]Z§.gotoAndStop(§'#N§.§?!6§(_loc5_).id);
            }
         }
         else
         {
            this.§]Z§.visble = false;
         }
         var _loc4_:String = "";
         if(!param1.lastResult && this.§6e§ == this.§&"2§ && param2 <= 0)
         {
            _loc4_ = §]"O§;
         }
         else if(!param1.lastResult && this.§6e§ == this.§3s§ && param2 <= 0)
         {
            _loc4_ = §##@§;
         }
         else
         {
            _loc4_ = !!param1.l.li ? §1#O§ : § "h§;
         }
         (this.§[$5§.getItemByName("LeaguesRating").mClip.textProgress as TextField).text = _loc4_;
         if(param1.l.li || param1.l.pli)
         {
            _loc6_ = !!param1.l.li ? §'#N§.§?!6§(param1.l.li.tn).name + "!" : §'#N§.§?!6§(param1.l.pli.tn).name + "!";
            if(!param1.lastResult && this.§6e§ == this.§&"2§)
            {
               _loc6_ = !!param1.l.li ? §'#N§.§?!6§(param1.l.li.tn).name + "!" : §'#N§.§6!>§(param1.l.pli.tn).name + "!";
            }
            else if(!param1.lastResult && this.§6e§ == this.§&"2§)
            {
               _loc6_ = !!param1.l.li ? §'#N§.§]m§(param1.l.li.tn).name + "!" : §'#N§.§]m§(param1.l.pli.tn).name + "!";
            }
            (this.§[$5§.getItemByName("LeaguesRating").mClip.textLeague as TextField).text = _loc6_;
         }
         else
         {
            (this.§[$5§.getItemByName("LeaguesRating").mClip.textLeague as TextField).text = "";
         }
      }
      
      private function §8!-§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Boolean = false) : void
      {
         this.§^#%§(param3,param4);
      }
      
      private function §2#m§() : void
      {
         §3Z§.§&$?§(§5r§);
         if(this.§@!#§)
         {
            this.§@!#§.stop();
            this.§@!#§ = null;
         }
      }
      
      private function §^#%§(param1:Number, param2:Number) : void
      {
         if(param2 > -1)
         {
            (this.§[$5§.getItemByName("LeaguesRatingProgress").mClip.TextField_LeagueProgressValue_Score as TextField).text = param2.toString();
         }
         else
         {
            (this.§[$5§.getItemByName("LeaguesRatingProgress").mClip.TextField_LeagueProgressValue_Score as TextField).text = "0";
         }
         (this.§[$5§.getItemByName("LeaguesRatingProgress").mClip.TextField_LeagueProgressValue_Goal as TextField).text = param1.toString();
      }
      
      private function §'V§(param1:Number = 0) : void
      {
         this.§"!§();
         if(this.§6e§ == this.§1!u§)
         {
            return;
         }
         this.§!"%§ = new this.§4"z§();
         this.§-!'§ = new this.§;#9§();
         this.§^h§ = new this.§;#9§();
         this.§@#f§ = new this.§4"z§();
         if(this.§@#"§ > 0 && this.§6e§ == this.§&"2§)
         {
            this.§^h§ = new this.§;#9§();
            if(param1 > 0)
            {
               this.§!"%§ = new this.§8!Z§();
               this.§@#f§ = new this.§8!Z§();
               this.§-!'§ = new this.§!"E§();
               this.§^h§ = new this.§!"E§();
            }
         }
         else if(this.§@#"§ < 0 && this.§6e§ == this.§3s§)
         {
            this.§!"%§ = new this.§0"b§();
            this.§@#f§ = new this.§0"b§();
            if(param1 >= 0)
            {
               this.§!"%§ = new this.§^#^§();
               this.§@#f§ = new this.§^#^§();
            }
         }
         this.§!"%§.name = "LeaguePromotionAnimation";
         this.§!"%§.gotoAndStop(0);
         this.§!"%§.visible = false;
         this.§@#f§.name = "LeaguePromotionAnimationNextLeague";
         this.§@#f§.gotoAndStop(0);
         this.§@#f§.visible = false;
         this.§-!'§.visible = false;
         this.§-!'§.name = "LeaguePromotionAnimationShine";
         this.§-!'§.gotoAndStop(0);
         this.§^h§.visible = false;
         this.§^h§.name = "LeaguePromotionAnimationNextLeagueShine";
         this.§^h§.gotoAndStop(0);
         var _loc2_:DisplayObject = this.§3"§.getChildByName(this.§!"%§.name);
         if(_loc2_)
         {
            this.§3"§.removeChild(_loc2_);
         }
         this.§!"%§.addEventListener(Event.ENTER_FRAME,this.§ "3§);
         this.§3"§.addChild(this.§!"%§);
         var _loc3_:Point = new Point(26,20);
         var _loc4_:Number = 1;
         if(this.§!"%§ is this.§^#^§ || this.§!"%§ is this.§8!Z§)
         {
            _loc3_ = new Point(25,23);
            _loc4_ = 0.5;
         }
         this.§-!'§.x = _loc3_.x;
         this.§-!'§.y = _loc3_.y;
         this.§-!'§.scaleX = this.§-!'§.scaleY = _loc4_;
         this.§!"%§.x = _loc3_.x;
         this.§!"%§.y = _loc3_.y;
         this.§!"%§.scaleX = this.§!"%§.scaleY = _loc4_;
         var _loc5_:DisplayObject;
         if(_loc5_ = this.§]Z§.getChildByName(this.§@#f§.name))
         {
            this.§]Z§.removeChild(_loc5_);
         }
         this.§@#f§.removeEventListener(Event.ENTER_FRAME,this.§^!5§);
         this.§@#f§.addEventListener(Event.ENTER_FRAME,this.§^!5§);
         this.§]Z§.addChild(this.§@#f§);
         if(this.§@#f§ is this.§^#^§ || this.§@#f§ is this.§8!Z§)
         {
            this.§@#f§.x = 0;
            this.§@#f§.y = 5;
            this.§^h§.scaleX = this.§^h§.scaleY = 0.5;
         }
         else
         {
            this.§@#f§.x = 25;
            this.§@#f§.y = 25;
         }
         this.§@#f§.scaleX = this.§@#f§.scaleY = 0.75;
         this.§^h§.x = this.§@#f§.x;
         this.§^h§.y = this.§@#f§.y;
         var _loc6_:DisplayObject;
         if(_loc6_ = this.§3"§.getChildByName(this.§-!'§.name))
         {
            this.§3"§.removeChild(_loc6_);
         }
         var _loc7_:DisplayObject;
         if(_loc7_ = this.§]Z§.getChildByName(this.§^h§.name))
         {
            this.§]Z§.removeChild(_loc7_);
         }
         this.§3"§.addChild(this.§-!'§);
         this.§]Z§.addChild(this.§^h§);
      }
      
      private function §&6§() : void
      {
         this.§&"]§[0] = true;
         this.§`=§.stop();
         this.§`=§ = null;
         StateTournamentResults.§%§ = true;
      }
      
      private function §["u§() : void
      {
         var _loc8_:Object = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         this.§`=§.stop();
         this.§`=§ = null;
         if(this.§!"%§)
         {
            this.§!"%§.visible = true;
            this.§-!'§.visible = true;
            this.§!"%§.gotoAndPlay(0);
            this.§-!'§.gotoAndPlay(0);
            StateTournamentResults.§%§ = true;
            if(this.§3"§.StarPromotionIcon)
            {
               this.§3"§.setChildIndex(this.§3"§.StarPromotionIcon,this.§3"§.numChildren - 1);
            }
            this.§3"§.setChildIndex(this.§-!'§,0);
         }
         if(this.§@#f§)
         {
            this.§@#f§.visible = true;
            this.§^h§.visible = !(this.§@#f§ is this.§^#^§);
            this.§@#f§.gotoAndPlay(0);
            this.§^h§.gotoAndPlay(0);
            if(this.§]Z§.StarPromotionIcon)
            {
               this.§]Z§.setChildIndex(this.§]Z§.StarPromotionIcon,this.§]Z§.numChildren - 1);
            }
            this.§]Z§.setChildIndex(this.§^h§,0);
         }
         this.leagueProgressFill.scaleX = 0;
         var _loc1_:Number = 0;
         if(!this.§+#d§ || !this.§+#d§.l)
         {
            this.§]Z§.visible = true;
            return;
         }
         var _loc2_:Number = !!this.§+#d§.l.pli ? Number(this.§+#d§.l.pli.rt) : Number(0);
         var _loc3_:Number = !!this.§+#d§.l.li ? Number(this.§+#d§.l.li.rt) : Number(_loc2_);
         var _loc4_:Number = !!this.§+#d§.l.nli ? Number(this.§+#d§.l.nli.rt) : Number(0);
         var _loc5_:Number = 1;
         var _loc6_:Number = 0;
         var _loc7_:Number = 0;
         for each(_loc8_ in this.§+#d§.l.p)
         {
            if(_loc8_.u == (AngryBirdsBase.singleton.dataModel.userProgress as § #`§).userID)
            {
               if(_loc8_.lrc)
               {
                  this.§11§ = _loc8_.lrc;
               }
               if(_loc8_.lr)
               {
                  _loc1_ = _loc8_.lr;
               }
               if(_loc8_.p)
               {
                  if(_loc8_.p == "u")
                  {
                     _loc6_ = _loc4_;
                     _loc7_ = _loc3_;
                     this.§6e§ = this.§&"2§;
                     _loc5_ = (_loc1_ - _loc7_) / (_loc6_ - _loc7_);
                  }
                  if(_loc8_.p == "d")
                  {
                     _loc6_ = _loc2_;
                     _loc7_ = _loc3_;
                     this.§6e§ = this.§3s§;
                     this.leagueProgressFill.scaleX = §;"x§.§<!f§((_loc1_ + this.§@#"§ * -1 - _loc7_) / (_loc6_ - _loc7_),0,1);
                     _loc5_ = (_loc1_ - _loc7_) / (_loc6_ - _loc7_);
                  }
               }
            }
         }
         this.§^#%§(_loc6_,_loc7_);
         _loc9_ = Math.abs(this.leagueProgressFill.scaleX - _loc5_);
         _loc10_ = this.§;!d§(Math.abs(this.§@#"§) * _loc9_);
         if(this.§6e§ == this.§&"2§)
         {
            this.§[#l§(true,_loc7_,_loc1_,_loc10_);
         }
         else
         {
            this.§[#l§(true,_loc6_,_loc1_,_loc10_);
         }
         this.§+"'§ = null;
         this.§+"'§ = §"!&§.§`"H§.§1"W§(this.leagueProgressFill,{"scaleX":§;"x§.§<!f§(_loc5_,0,1)},null,_loc10_);
         this.§+"'§.onComplete = this.§9"C§;
         this.§+"'§.play();
      }
      
      private function §9"C§() : void
      {
         this.§&"]§[0] = true;
         this.§+"'§.stop();
         this.§+"'§ = null;
         this.§]Z§.visible = true;
      }
      
      public function §@"o§() : Boolean
      {
         return this.§3#J§;
      }
      
      public function get §!"7§() : Number
      {
         return this.§^#T§;
      }
      
      public function set §!"7§(param1:Number) : void
      {
         this.§^#T§ = param1;
      }
      
      public function set §11§(param1:Number) : void
      {
         this.§@#"§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:String = this.§@#"§ > 0 ? "+" : "";
         (this.§[$5§.getItemByName("LeaguesRatingProgress").mClip.LeagueRating as TextField).text = int(this.mUserRatingCount) + " (" + _loc2_ + this.§@#"§.toString() + ")";
         if(this.§&"]§[0] && this.§&"]§[1])
         {
            this.§&"]§ = [false,false];
            dispatchEvent(new §3"k§(§3"k§.§<§));
         }
      }
      
      public function deActivate() : void
      {
         §3Z§.§&$?§(§5r§);
         this.§"!§();
      }
      
      private function §"!§() : void
      {
         if(this.§!"%§)
         {
            this.§!"%§.gotoAndStop(0);
            this.§!"%§.removeEventListener(Event.ENTER_FRAME,this.§ "3§);
         }
         if(this.§@#f§)
         {
            this.§@#f§.gotoAndStop(0);
            this.§@#f§.removeEventListener(Event.ENTER_FRAME,this.§^!5§);
         }
      }
   }
}
