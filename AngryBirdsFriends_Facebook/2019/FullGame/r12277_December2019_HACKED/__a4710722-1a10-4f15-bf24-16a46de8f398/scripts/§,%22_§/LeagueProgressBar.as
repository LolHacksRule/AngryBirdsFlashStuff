package §,"_§
{
   import § "v§.§4$4§;
   import § null§.§5"<§;
   import § null§.§@§;
   import §!!H§.§ $4§;
   import §-"S§.§>#G§;
   import §1!1§.§!g§;
   import §[#A§.§+#<§;
   import §[#v§.StateTournamentResults;
   import §^#?§.§#!T§;
   import §^#?§.§?#,§;
   import com.rovio.assets.§=@§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class LeagueProgressBar extends EventDispatcher
   {
      
      private static const §"#>§:String = "You are in";
      
      private static const §1"3§:String = "You were in";
      
      private static const §-<§:String = "Promoted to";
      
      private static const §9#i§:String = "Demoted to ";
      
      private static const §<>§:String = "RatingCountLoopCountChannel";
       
      
      public var §;!k§:MovieClip;
      
      private var § N§:MovieClip;
      
      private var §,"'§:§@#5§ = null;
      
      private var §,!Z§:§@#5§ = null;
      
      private var §1!w§:§@#5§ = null;
      
      private var leagueProgressBar:MovieClip = null;
      
      private var leagueProgressFill:MovieClip = null;
      
      private var §@!D§:§+#<§;
      
      private var §!!w§:MovieClip;
      
      private var § !H§:MovieClip;
      
      private var §'"?§:MovieClip;
      
      private var §9"Y§:MovieClip;
      
      private var §+"y§:int;
      
      private var §[>§:Object;
      
      private var §6"y§:Number = -1;
      
      private var §]x§:Number = 0;
      
      private var §,T§:Number = 0;
      
      public var mUserRatingCount:Number = 0;
      
      private var §'#@§:Class;
      
      private var §7!x§:Class;
      
      private var §?"=§:Class;
      
      private var §1!,§:Class;
      
      private var §!x§:Class;
      
      private var §^"x§:Class;
      
      private var §;$,§:Boolean;
      
      private const §"z§:Number = 0;
      
      private const §2#E§:Number = 1;
      
      private const §3#'§:Number = -1;
      
      private var §#!U§:Number = 0;
      
      private var §&h§:Number = 0.5;
      
      private var §##a§:§@#5§;
      
      private var §6#e§:Number = 20;
      
      private var §5#`§:Array;
      
      public function LeagueProgressBar(param1:§+#<§)
      {
         this.§5#`§ = [false,false];
         super();
         this.§@!D§ = param1;
         this.§'#@§ = §=@§.§9!x§("PromotionAnimation");
         this.§7!x§ = §=@§.§9!x§("DemotionAnimation");
         this.§?"=§ = §=@§.§9!x§("DemotionAnimationStar");
         this.§1!,§ = §=@§.§9!x§("PromotionAnimationStar");
         this.§!x§ = §=@§.§9!x§("PromotionAnimationShine");
         this.§^"x§ = §=@§.§9!x§("PromotionAnimationStarShine");
         §4$4§.§<!A§(§<>§,6,2);
      }
      
      private function §?!#§(param1:Event) : void
      {
         if(this.§!!w§.currentFrameLabel == "action_sound_crack")
         {
            §4$4§.playSound(§#!T§.§5!&§(this.§[>§.l.li.tn).§##Z§,§<>§);
         }
         if(this.§!!w§.currentFrameLabel == "action_sound_puff")
         {
            §4$4§.playSound(§#!T§.§5!&§(this.§[>§.l.li.tn).§9#6§,§<>§);
         }
         if(this.§!!w§.currentFrameLabel == "action_sound_glow")
         {
            §4$4§.playSound(§#!T§.§5!&§(this.§[>§.l.li.tn).§##0§,§<>§);
         }
         if(this.§!!w§.currentFrameLabel == "action_sound_promo_change")
         {
            §4$4§.playSound(§#!T§.§5!&§(this.§[>§.l.li.tn).§3#W§,§<>§);
         }
         if(this.§!!w§.currentFrameLabel == "action_sound_promo_change_star")
         {
            §4$4§.playSound("league_promotion_star",§<>§);
         }
         if(this.§!!w§.currentFrameLabel == "action_change")
         {
            this.§]e§();
         }
         else if(this.§!!w§.currentFrame == this.§!!w§.totalFrames)
         {
            this.§5#`§[1] = true;
            this.§!!w§.stop();
            this.§!!w§.visible = false;
            this.§!!w§.removeEventListener(Event.ENTER_FRAME,this.§?!#§);
            if(this.§;!k§.contains(this.§!!w§))
            {
               this.§;!k§.removeChild(this.§!!w§);
            }
            if(this.§ !H§)
            {
               this.§ !H§.stop();
               this.§ !H§.visible = false;
               if(this.§;!k§.contains(this.§ !H§))
               {
                  this.§;!k§.removeChild(this.§ !H§);
               }
            }
            this.§;$,§ = false;
         }
         else if(this.§!!w§.currentFrame == 1)
         {
            this.§;$,§ = true;
            if(this.§!!w§.txtStarRating)
            {
               if(this.§`v§ >= 0 && this.§,T§ < 0)
               {
                  this.§!!w§.txtStarRating.text = (this.§`v§ + 1).toString();
               }
            }
            if(this.§!!w§ is this.§7!x§)
            {
               if(this.§ !H§)
               {
                  this.§ !H§.visible = false;
               }
               this.§;!k§.setChildIndex(this.§!!w§,this.§;!k§.numChildren - 1);
            }
         }
      }
      
      private function §]e§() : void
      {
         if(this.§;!k§)
         {
            if(this.§`v§ >= 0 && this.§,T§ > 0 || this.§`v§ >= 1 && this.§,T§ < 0)
            {
               this.§;!k§.gotoAndStop("DIAMOND");
               this.§;!k§.StarPromotionIcon.visible = true;
               this.§;!k§.StarPromotionIcon.txtStarRating.text = this.§`v§.toString();
            }
            else if(this.§[>§ && this.§[>§.l)
            {
               this.§;!k§.gotoAndStop(§#!T§.§5!&§(this.§[>§.l.li.tn).id);
               if(this.§;!k§.StarPromotionIcon)
               {
                  this.§;!k§.StarPromotionIcon.visible = false;
               }
            }
         }
         (this.§@!D§.getItemByName("LeaguesRating").mClip.textProgress as TextField).text = this.§,T§ > 0 ? §-<§ : §9#i§;
         if(this.§`v§ > 0 || this.§`v§ == 0 && this.§,T§ < 0 && §#!T§.§5!&§(this.§[>§.l.li.tn).id == §#!T§.§`"S§.id)
         {
            (this.§@!D§.getItemByName("LeaguesRating").mClip.textProgress as TextField).text = §"#>§;
         }
         (this.§@!D§.getItemByName("LeaguesRating").mClip.textLeague as TextField).text = §#!T§.§5!&§(this.§[>§.l.li.tn).name + "!";
      }
      
      private function §]!p§() : Object
      {
         var _loc1_:Object = null;
         for each(_loc1_ in this.§[>§.l.p)
         {
            if(_loc1_.u == (AngryBirdsBase.singleton.dataModel.userProgress as §>#G§).userID)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function §^#l§(param1:Event) : void
      {
         var _loc2_:Number = NaN;
         if(this.§'"?§.currentFrameLabel == "action_change")
         {
            if(this.§ N§)
            {
               if(this.§9"Y§)
               {
                  this.§ N§.setChildIndex(this.§'"?§,this.§ N§.numChildren - 1);
                  this.§9"Y§.stop();
                  this.§9"Y§.visible = false;
               }
               _loc2_ = this.§#!U§ == this.§2#E§ && this.§+"y§ == StateTournamentResults.§9!@§ ? Number(this.§`v§ - 1) : (this.§#!U§ == this.§3#'§ && this.§+"y§ == StateTournamentResults.§9!@§ ? Number(this.§`v§ + 1) : Number(this.§`v§));
               if(this.§[>§.l.nli.ls && this.§[>§.l.nli.ls > 0)
               {
                  this.§ N§.gotoAndStop("STAR");
                  this.§ N§.StarPromotionIcon.visible = true;
                  this.§ N§.StarPromotionIcon.txtStarRating.text = this.§[>§.l.nli.ls.toString();
               }
               else if(this.§`v§ >= 0 && this.§,T§ > 0)
               {
                  this.§ N§.gotoAndStop("STAR");
                  this.§ N§.StarPromotionIcon.visible = true;
                  this.§ N§.StarPromotionIcon.txtStarRating.text = (this.§`v§ + 1).toString();
               }
               else if(this.§`v§ > 1 && this.§,T§ < 0)
               {
                  this.§ N§.gotoAndStop("STAR");
                  this.§ N§.StarPromotionIcon.visible = true;
                  this.§ N§.StarPromotionIcon.txtStarRating.text = _loc2_.toString();
               }
               else if(this.§`v§ == 0 && this.§,T§ != 0)
               {
                  this.§ N§.gotoAndStop("STAR");
                  this.§ N§.StarPromotionIcon.visible = true;
                  this.§ N§.StarPromotionIcon.txtStarRating.text = "1";
               }
               else if(this.§`v§ == -1 && §#!T§.§5!&§(this.§[>§.l.pli.tn).id == §#!T§.§`"S§.id)
               {
                  this.§ N§.gotoAndStop("DIAMOND");
                  this.§ N§.StarPromotionIcon.visible = false;
               }
               else
               {
                  this.§ N§.gotoAndStop(§#!T§.§5!&§(this.§[>§.l.nli.tn).id);
               }
            }
         }
         else if(this.§'"?§.currentFrame == this.§'"?§.totalFrames)
         {
            this.§'"?§.stop();
            this.§'"?§.visible = false;
            this.§'"?§.removeEventListener(Event.ENTER_FRAME,this.§?!#§);
            if(this.§ N§.contains(this.§'"?§))
            {
               this.§ N§.removeChild(this.§'"?§);
            }
            if(this.§9"Y§)
            {
               this.§9"Y§.stop();
               this.§9"Y§.visible = false;
               if(this.§ N§.contains(this.§9"Y§))
               {
                  this.§ N§.removeChild(this.§9"Y§);
               }
            }
            this.§;$,§ = false;
         }
         else if(this.§'"?§.currentFrame == 1)
         {
            this.§;$,§ = true;
            if(this.§ N§.StarPromotionIcon && this.§ N§.StarPromotionIcon.txtStarRating)
            {
               _loc2_ = this.§#!U§ == this.§2#E§ && this.§+"y§ == StateTournamentResults.§9!@§ ? Number(this.§`v§ - 1) : (this.§#!U§ == this.§3#'§ && this.§+"y§ == StateTournamentResults.§9!@§ ? Number(this.§`v§ + 1) : Number(this.§`v§));
               if(this.§`v§ >= 0 && this.§,T§ > 0)
               {
                  this.§ N§.StarPromotionIcon.visible = true;
                  this.§ N§.StarPromotionIcon.txtStarRating.text = this.§`v§.toString();
               }
               else if(this.§`v§ >= 0 && this.§,T§ < 0)
               {
                  _loc2_ = this.§#!U§ == this.§3#'§ ? Number(_loc2_ + 1) : Number(_loc2_);
                  this.§ N§.StarPromotionIcon.visible = true;
                  this.§ N§.StarPromotionIcon.txtStarRating.text = _loc2_.toString();
               }
            }
            if(this.§'"?§ is this.§7!x§)
            {
               if(this.§9"Y§)
               {
                  this.§9"Y§.visible = false;
               }
               this.§ N§.setChildIndex(this.§'"?§,this.§ N§.numChildren - 1);
            }
         }
      }
      
      public function §'#v§(param1:Object = null, param2:int = 0, param3:Boolean = false) : void
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
         this.§+"y§ = param2;
         this.§[>§ = param1;
         this.§#!U§ = this.§"z§;
         this.§5#`§ = [false,false];
         §4$4§.§'!?§(§<>§);
         this.§2# §();
         this.leagueProgressBar = this.§@!D§.getItemByName("LeagueProgress").mClip;
         this.leagueProgressFill = this.leagueProgressBar.mcProgress;
         this.§@!D§.getItemByName("LeaguesRating").mClip.mcNotInLeague.visible = false;
         this.§@!D§.getItemByName("LeaguesRating").mClip.textLeague.visible = true;
         if(param1 && param1.l)
         {
            this.§@!D§.getItemByName("LeaguesRatingProgress").setVisibility(true);
            _loc4_ = !!param1.l.pli ? Number(param1.l.pli.rt) : Number(0);
            _loc5_ = !!param1.l.li ? Number(param1.l.li.rt) : Number(_loc4_);
            if((_loc6_ = !!param1.l.nli ? Number(param1.l.nli.rt) : Number(0)) == 0 && §?#,§.§3"1§.currentLeague())
            {
               _loc6_ = §#!T§.§8p§(§?#,§.§3"1§.currentLeague().id).§+9§;
            }
            else if(_loc6_ == 0 && param1.l.pli)
            {
               _loc6_ = §#!T§.§8p§(§#!T§.§8p§(param1.l.pli.tn).id).§+9§;
            }
            _loc8_ = (_loc7_ = this.§]!p§()) && _loc7_.lr ? Number(_loc7_.lr) : (!!§?#,§.§3"1§.§4"4§() ? Number(§?#,§.§3"1§.§4"4§().lr) : Number(0));
            this.leagueProgressFill.scaleX = § $4§.§-$"§((_loc8_ - this.§,T§ - _loc5_) / (_loc6_ - _loc5_),0,1);
            _loc9_ = 1;
            if(this.§`v§ == -1 && param1.l.li && param1.l.pli && §#!T§.§5!&§(param1.l.li.tn).id == §#!T§.§`"S§.id && §#!T§.§5!&§(param1.l.pli.tn).id == §#!T§.§`"S§.id)
            {
               this.§`v§ = 0;
            }
            _loc10_ = _loc6_;
            _loc11_ = _loc5_;
            for each(_loc12_ in param1.l.p)
            {
               if(_loc12_.u == (AngryBirdsBase.singleton.dataModel.userProgress as §>#G§).userID)
               {
                  if(_loc12_.lr)
                  {
                     _loc8_ = _loc12_.lr;
                  }
                  if(_loc12_.p)
                  {
                     if(_loc12_.p == "u")
                     {
                        _loc10_ = !!this.§[>§.lastResult ? Number(_loc5_) : Number(_loc10_);
                        _loc11_ = !!this.§[>§.lastResult ? Number(_loc4_) : Number(_loc11_);
                        this.§#!U§ = this.§2#E§;
                        _loc9_ = 1;
                     }
                     if(_loc12_.p == "d")
                     {
                        _loc10_ = !!this.§[>§.lastResult ? Number(_loc4_) : Number(_loc10_);
                        _loc11_ = !!this.§[>§.lastResult ? Number(_loc5_) : Number(_loc11_);
                        if(this.§[>§.lastResult)
                        {
                           if(this.§`v§ != 0 || this.§`v§ == 0 && param1.l.li && param1.l.li.tn == §#!T§.§`"S§.id)
                           {
                              _loc11_ += 100;
                              _loc10_ += 100;
                           }
                        }
                        this.leagueProgressFill.scaleX = § $4§.§-$"§((_loc8_ + this.§,T§ - _loc10_) / (_loc10_ - _loc11_),0,1);
                        _loc9_ = 0;
                        this.§#!U§ = this.§3#'§;
                     }
                  }
               }
            }
            this.§]x§ = _loc8_;
            this.§-G§(param1,this.§`v§);
            if(this.§+"y§ == StateTournamentResults.§9!@§)
            {
               this.§9!,§(this.§`v§);
            }
            this.§[_§(_loc9_,_loc6_,_loc10_,_loc11_,this.§`v§,param3);
            this.§%$'§(_loc8_,this.§,T§,_loc10_,_loc11_,this.§+"y§ == StateTournamentResults.§9!@§);
         }
         else
         {
            this.§2"G§();
         }
      }
      
      private function §2"G§() : void
      {
         this.§;!k§.gotoAndStop("NOLEAGUE");
         this.§@!D§.getItemByName("LeaguesRating").mClip.textLeague.visible = false;
         this.§@!D§.getItemByName("LeaguesRating").mClip.mcNotInLeague.visible = true;
         (this.§@!D§.getItemByName("LeaguesRating").mClip.textProgress as TextField).text = "";
         this.§@!D§.getItemByName("LeaguesRatingProgress").setVisibility(false);
      }
      
      private function §[_§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean = false) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         if(this.§+"y§ == StateTournamentResults.§9!@§ && this.§[>§.lastResult)
         {
            _loc7_ = this.§[>§.l.pli && this.§[>§.l.li && (this.§[>§.l.pli.tn != this.§[>§.l.li.tn || param5 >= 0);
            _loc8_ = this.§#!U§ == this.§2#E§ ? Number(param5 - 1) : (this.§#!U§ == this.§3#'§ && param5 != -1 ? Number(param5 + 1) : Number(param5));
            if(_loc7_ && this.§#!U§ != this.§"z§)
            {
               (this.§@!D§.getItemByName("LeaguesRating").mClip.textLeague as TextField).text = §#!T§.§5!&§(this.§[>§.l.pli.tn).name + "!";
               if(this.§,T§ < 0)
               {
                  if(param5 == 0)
                  {
                     this.§;!k§.gotoAndStop("DIAMOND");
                     this.§;!k§.StarPromotionIcon.visible = true;
                     this.§;!k§.StarPromotionIcon.txtStarRating.text = (param5 + 1).toString();
                     this.§ N§.gotoAndStop("STAR");
                     this.§ N§.StarPromotionIcon.visible = true;
                     this.§ N§.StarPromotionIcon.txtStarRating.text = (param5 + 1).toString();
                  }
                  else if(param5 >= 1)
                  {
                     this.§;!k§.gotoAndStop("DIAMOND");
                     this.§;!k§.StarPromotionIcon.visible = true;
                     this.§;!k§.StarPromotionIcon.txtStarRating.text = _loc8_.toString();
                     this.§ N§.gotoAndStop("STAR");
                     this.§ N§.StarPromotionIcon.visible = true;
                     this.§ N§.StarPromotionIcon.txtStarRating.text = (_loc8_ + 1).toString();
                  }
                  else if(param5 == -1 && §#!T§.§5!&§(this.§[>§.l.pli.tn).id == §#!T§.§`"S§.id)
                  {
                     this.§;!k§.gotoAndStop(§#!T§.§5!&§(this.§[>§.l.pli.tn).id);
                     this.§ N§.gotoAndStop("STAR");
                     this.§ N§.StarPromotionIcon.visible = true;
                     this.§ N§.StarPromotionIcon.txtStarRating.text = "1";
                  }
                  else
                  {
                     this.§;!k§.gotoAndStop(§#!T§.§5!&§(this.§[>§.l.pli.tn).id);
                     if(this.§;!k§.StarPromotionIcon)
                     {
                        this.§;!k§.StarPromotionIcon.visible = false;
                     }
                     this.§ N§.gotoAndStop(§#!T§.§8p§(this.§[>§.l.pli.tn).id);
                  }
                  if(!param6)
                  {
                     this.mUserRatingCount = this.§]x§ + Math.abs(this.§,T§);
                  }
               }
               else
               {
                  _loc8_ = this.§#!U§ == this.§2#E§ ? Number(param5 - 1) : (this.§#!U§ == this.§3#'§ ? Number(param5 + 1) : Number(param5));
                  if(param5 == 1)
                  {
                     this.§;!k§.gotoAndStop(§#!T§.§5!&§(this.§[>§.l.pli.tn).id);
                     if(this.§;!k§.StarPromotionIcon)
                     {
                        this.§;!k§.StarPromotionIcon.visible = false;
                     }
                     this.§ N§.gotoAndStop("STAR");
                     this.§ N§.StarPromotionIcon.visible = true;
                     this.§ N§.StarPromotionIcon.txtStarRating.text = param5.toString();
                  }
                  else if(param5 > 1)
                  {
                     this.§;!k§.gotoAndStop("DIAMOND");
                     this.§;!k§.StarPromotionIcon.visible = true;
                     this.§;!k§.StarPromotionIcon.txtStarRating.text = _loc8_.toString();
                     this.§ N§.gotoAndStop("STAR");
                     this.§ N§.StarPromotionIcon.visible = true;
                     this.§ N§.StarPromotionIcon.txtStarRating.text = (_loc8_ + 1).toString();
                  }
                  else
                  {
                     this.§;!k§.gotoAndStop(§#!T§.§5!&§(this.§[>§.l.pli.tn).id);
                     this.§ N§.gotoAndStop(§#!T§.§5!&§(this.§[>§.l.li.tn).id);
                  }
                  if(!param6)
                  {
                     this.mUserRatingCount = this.§]x§ - Math.abs(this.§,T§);
                  }
               }
               _loc9_ = § $4§.§-$"§((this.§]x§ - this.§,T§ - param4) / (param3 - param4),0,1);
               if(this.§,T§ < 0)
               {
                  _loc9_ = § $4§.§-$"§((this.§]x§ + this.§,T§ * -1 - param4) / (param3 - param4),0,1);
               }
               this.leagueProgressFill.scaleX = _loc9_;
               this.§%#9§(param3,param4);
               if(param6)
               {
                  _loc10_ = Math.abs(_loc9_ - param1);
                  _loc11_ = this.§?$=§(Math.abs(this.§,T§) * _loc10_);
                  if(this.§#!U§ == this.§2#E§)
                  {
                     this.§5m§(true,param4,param3,_loc11_);
                  }
                  else
                  {
                     this.§5m§(true,param3,param4,_loc11_);
                  }
                  this.§,"'§ = §5"<§.§3"1§.§3#§(this.leagueProgressFill,{"scaleX":§ $4§.§-$"§(param1,0,1)},null,_loc11_);
                  this.§,"'§.onComplete = this.§#!I§;
                  this.§,"'§.play();
               }
            }
            else
            {
               this.§ N§.visible = true;
               if(this.§]x§ > 0)
               {
                  this.leagueProgressFill.scaleX = § $4§.§-$"§((this.§]x§ - this.§,T§ - param4) / (param3 - param4),0,1);
               }
               else
               {
                  this.leagueProgressFill.scaleX = § $4§.§-$"§((this.§]x§ + this.§,T§ - param4) / (param3 - param4),0,1);
               }
               _loc12_ = 0;
               _loc13_ = this.§]x§;
               if(this.§,T§ > 0)
               {
                  _loc12_ = _loc13_ - this.§,T§;
               }
               else
               {
                  _loc12_ = _loc13_ + Math.abs(this.§,T§);
               }
               this.§5#`§[1] = true;
               if(param6)
               {
                  _loc11_ = this.§?$=§(Math.abs(this.§,T§));
                  this.§5m§(true,_loc12_,_loc13_,_loc11_);
                  this.§,"'§ = §5"<§.§3"1§.§3#§(this.leagueProgressFill,{"scaleX":§ $4§.§-$"§((this.§]x§ - param4) / (param3 - param4),0,1)},null,_loc11_);
                  this.§,"'§.onComplete = this.§ "p§;
                  this.§,"'§.play();
               }
               else
               {
                  this.mUserRatingCount = _loc12_;
                  StateTournamentResults.§<!n§ = true;
               }
            }
         }
         else
         {
            this.§ N§.visible = true;
            this.leagueProgressFill.scaleX = § $4§.§-$"§(Math.abs(this.§]x§ - param4) / (param3 - param4),0,1);
            this.§%#9§(param3,param4);
            if(param6)
            {
               _loc11_ = this.§?$=§(this.§,T§);
               this.§5m§(false,this.§]x§,this.§]x§,_loc11_);
               if(this.§,T§ != 0)
               {
                  this.§,"'§ = §5"<§.§3"1§.§3#§(this.leagueProgressFill,{"scaleX":§ $4§.§-$"§(Math.abs(this.§]x§ - param4) / (param3 - param4),0,1)},null,_loc11_);
                  this.§,"'§.onComplete = this.§ "p§;
                  this.§,"'§.play();
               }
            }
            else
            {
               this.mUserRatingCount = this.§]x§;
            }
         }
      }
      
      private function §?$=§(param1:Number) : Number
      {
         var _loc2_:Number = Math.abs(param1) / this.§6#e§ * this.§&h§;
         if(_loc2_ < 0.1)
         {
            return 0.1;
         }
         return _loc2_;
      }
      
      private function §5m§(param1:Boolean, param2:Number, param3:Number, param4:Number) : void
      {
         if(param1)
         {
            if(this.§##a§)
            {
               this.§##a§.stop();
               this.§##a§ = null;
            }
            if(param2 != param3)
            {
               §4$4§.playSound("gamescorescreen_score_count_loop",§<>§,100);
            }
            this.§##a§ = §5"<§.§3"1§.§3#§(this,{"mUserRatingCount":param3},{"mUserRatingCount":param2},param4);
            this.§##a§.onComplete = this.§2z§;
            this.§##a§.play();
         }
         else
         {
            this.mUserRatingCount = param3;
         }
      }
      
      private function §2# §() : void
      {
         this.§;!k§ = this.§@!D§.getItemByName("CurrentLeagueIcon").mClip;
         this.§ N§ = this.§@!D§.getItemByName("NextLeagueIcon").mClip;
         this.§;!k§.gotoAndStop(0);
         this.§ N§.gotoAndStop(0);
         if(this.§;!k§.StarPromotionIcon)
         {
            this.§;!k§.StarPromotionIcon.visible = false;
         }
         if(this.§ N§.StarPromotionIcon)
         {
            this.§ N§.StarPromotionIcon.visible = false;
         }
      }
      
      private function §-G§(param1:Object, param2:Number = 0) : void
      {
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc3_:Number = this.§#!U§ == this.§2#E§ && this.§+"y§ == StateTournamentResults.§9!@§ ? Number(param2 - 1) : (this.§#!U§ == this.§3#'§ && this.§+"y§ == StateTournamentResults.§9!@§ ? Number(param2 + 1) : Number(param2));
         if(param2 == 1 && this.§#!U§ == this.§2#E§ && this.§[>§.lastResult)
         {
            this.§;!k§.gotoAndStop(§#!T§.§5!&§(this.§[>§.l.pli.tn).id);
         }
         else if(param2 > 0)
         {
            this.§;!k§.gotoAndStop("DIAMOND");
            this.§;!k§.StarPromotionIcon.visible = true;
            this.§;!k§.StarPromotionIcon.txtStarRating.text = _loc3_.toString();
         }
         else if(param2 == -1 && this.§#!U§ == this.§3#'§ && §#!T§.§5!&§(param1.l.pli.tn).id == §#!T§.§`"S§.id && param1.lastResult)
         {
            this.§;!k§.gotoAndStop("DIAMOND");
            if(this.§;!k§.StarPromotionIcon)
            {
               this.§;!k§.StarPromotionIcon.visible = false;
            }
         }
         else if(param1.l.li)
         {
            this.§;!k§.gotoAndStop(§#!T§.§5!&§(param1.l.li.tn).id);
            if(this.§;!k§.StarPromotionIcon)
            {
               this.§;!k§.StarPromotionIcon.visible = false;
            }
         }
         else if(param1.l.pli)
         {
            if(!param1.lastResult && this.§#!U§ == this.§2#E§)
            {
               this.§;!k§.gotoAndStop(§#!T§.§8p§(param1.l.pli.tn).id);
            }
            else if(!param1.lastResult && this.§#!U§ == this.§3#'§)
            {
               this.§;!k§.gotoAndStop(§#!T§.§^#S§(param1.l.pli.tn).id);
            }
            else
            {
               this.§;!k§.gotoAndStop(§#!T§.§5!&§(param1.l.pli.tn).id);
            }
         }
         else
         {
            this.§;!k§.visble = false;
         }
         if(param2 == 1 && this.§#!U§ == this.§2#E§)
         {
            this.§ N§.gotoAndStop("STAR");
            this.§ N§.StarPromotionIcon.visible = true;
            if(this.§[>§.lastResult)
            {
               this.§ N§.StarPromotionIcon.txtStarRating.text = param2.toString();
            }
            else
            {
               this.§ N§.StarPromotionIcon.txtStarRating.text = this.§[>§.l.nli.ls.toString();
            }
         }
         else if(param2 >= 0)
         {
            this.§ N§.gotoAndStop("STAR");
            _loc3_ = this.§#!U§ == this.§3#'§ ? Number(_loc3_) : Number(_loc3_ + 1);
            if(!param1.lastResult && param1.l.nli.ls)
            {
               _loc3_ = param1.l.nli.ls;
            }
            this.§ N§.StarPromotionIcon.visible = true;
            this.§ N§.StarPromotionIcon.txtStarRating.text = _loc3_.toString();
         }
         else if(param1.lastResult && this.§#!U§ == this.§3#'§ && §#!T§.§5!&§(param1.l.pli.tn).id == §#!T§.§`"S§.id && param2 == -1)
         {
            this.§ N§.gotoAndStop("STAR");
            this.§ N§.StarPromotionIcon.visible = true;
            this.§ N§.StarPromotionIcon.txtStarRating.text = (this.§[>§.l.pli.ls + 1).toString();
         }
         else if(param1.l.nli)
         {
            this.§ N§.gotoAndStop(§#!T§.§5!&§(param1.l.nli.tn).id);
            if(param1.l.nli.ls && param1.l.nli.ls >= 1)
            {
               this.§ N§.gotoAndStop("STAR");
               this.§ N§.StarPromotionIcon.visible = true;
               this.§ N§.StarPromotionIcon.txtStarRating.text = this.§[>§.l.nli.ls.toString();
            }
         }
         else if(param1.l.pli)
         {
            _loc5_ = !!§?#,§.§3"1§.currentLeague() ? §?#,§.§3"1§.currentLeague().id : param1.l.pli.tn;
            if(!param1.lastResult && this.§#!U§ == this.§2#E§)
            {
               if(§?#,§.§3"1§.currentLeague())
               {
                  this.§ N§.gotoAndStop(§#!T§.§8p§(§?#,§.§3"1§.currentLeague().id).id);
               }
               else if(param1.l.pli)
               {
                  this.§ N§.gotoAndStop(§#!T§.§8p§(§#!T§.§8p§(param1.l.pli.tn).id).id);
               }
            }
            else if(!param1.lastResult && this.§#!U§ == this.§3#'§)
            {
               this.§ N§.gotoAndStop(§#!T§.§8p§(_loc5_).id);
            }
            else
            {
               this.§ N§.gotoAndStop(§#!T§.§5!&§(_loc5_).id);
            }
         }
         else
         {
            this.§ N§.visble = false;
         }
         var _loc4_:String = "";
         if(!param1.lastResult && this.§#!U§ == this.§2#E§ && param2 <= 0)
         {
            _loc4_ = §-<§;
         }
         else if(!param1.lastResult && this.§#!U§ == this.§3#'§ && param2 <= 0)
         {
            _loc4_ = §9#i§;
         }
         else
         {
            _loc4_ = !!param1.l.li ? §"#>§ : §1"3§;
         }
         (this.§@!D§.getItemByName("LeaguesRating").mClip.textProgress as TextField).text = _loc4_;
         if(param1.l.li || param1.l.pli)
         {
            _loc6_ = !!param1.l.li ? §#!T§.§5!&§(param1.l.li.tn).name + "!" : §#!T§.§5!&§(param1.l.pli.tn).name + "!";
            if(!param1.lastResult && this.§#!U§ == this.§2#E§)
            {
               _loc6_ = !!param1.l.li ? §#!T§.§5!&§(param1.l.li.tn).name + "!" : §#!T§.§8p§(param1.l.pli.tn).name + "!";
            }
            else if(!param1.lastResult && this.§#!U§ == this.§2#E§)
            {
               _loc6_ = !!param1.l.li ? §#!T§.§^#S§(param1.l.li.tn).name + "!" : §#!T§.§^#S§(param1.l.pli.tn).name + "!";
            }
            (this.§@!D§.getItemByName("LeaguesRating").mClip.textLeague as TextField).text = _loc6_;
         }
         else
         {
            (this.§@!D§.getItemByName("LeaguesRating").mClip.textLeague as TextField).text = "";
         }
      }
      
      private function §%$'§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Boolean = false) : void
      {
         this.§%#9§(param3,param4);
      }
      
      private function §2z§() : void
      {
         §4$4§.§'!?§(§<>§);
         if(this.§##a§)
         {
            this.§##a§.stop();
            this.§##a§ = null;
         }
      }
      
      private function §%#9§(param1:Number, param2:Number) : void
      {
         if(param2 > -1)
         {
            (this.§@!D§.getItemByName("LeaguesRatingProgress").mClip.TextField_LeagueProgressValue_Score as TextField).text = param2.toString();
         }
         else
         {
            (this.§@!D§.getItemByName("LeaguesRatingProgress").mClip.TextField_LeagueProgressValue_Score as TextField).text = "0";
         }
         (this.§@!D§.getItemByName("LeaguesRatingProgress").mClip.TextField_LeagueProgressValue_Goal as TextField).text = param1.toString();
      }
      
      private function §9!,§(param1:Number = 0) : void
      {
         this.§'F§();
         if(this.§#!U§ == this.§"z§)
         {
            return;
         }
         this.§!!w§ = new this.§'#@§();
         this.§ !H§ = new this.§!x§();
         this.§9"Y§ = new this.§!x§();
         this.§'"?§ = new this.§'#@§();
         if(this.§,T§ > 0 && this.§#!U§ == this.§2#E§)
         {
            this.§9"Y§ = new this.§!x§();
            if(param1 > 0)
            {
               this.§!!w§ = new this.§1!,§();
               this.§'"?§ = new this.§1!,§();
               this.§ !H§ = new this.§^"x§();
               this.§9"Y§ = new this.§^"x§();
            }
         }
         else if(this.§,T§ < 0 && this.§#!U§ == this.§3#'§)
         {
            this.§!!w§ = new this.§7!x§();
            this.§'"?§ = new this.§7!x§();
            if(param1 >= 0)
            {
               this.§!!w§ = new this.§?"=§();
               this.§'"?§ = new this.§?"=§();
            }
         }
         this.§!!w§.name = "LeaguePromotionAnimation";
         this.§!!w§.gotoAndStop(0);
         this.§!!w§.visible = false;
         this.§'"?§.name = "LeaguePromotionAnimationNextLeague";
         this.§'"?§.gotoAndStop(0);
         this.§'"?§.visible = false;
         this.§ !H§.visible = false;
         this.§ !H§.name = "LeaguePromotionAnimationShine";
         this.§ !H§.gotoAndStop(0);
         this.§9"Y§.visible = false;
         this.§9"Y§.name = "LeaguePromotionAnimationNextLeagueShine";
         this.§9"Y§.gotoAndStop(0);
         var _loc2_:DisplayObject = this.§;!k§.getChildByName(this.§!!w§.name);
         if(_loc2_)
         {
            this.§;!k§.removeChild(_loc2_);
         }
         this.§!!w§.addEventListener(Event.ENTER_FRAME,this.§?!#§);
         this.§;!k§.addChild(this.§!!w§);
         var _loc3_:Point = new Point(26,20);
         var _loc4_:Number = 1;
         if(this.§!!w§ is this.§?"=§ || this.§!!w§ is this.§1!,§)
         {
            _loc3_ = new Point(25,23);
            _loc4_ = 0.5;
         }
         this.§ !H§.x = _loc3_.x;
         this.§ !H§.y = _loc3_.y;
         this.§ !H§.scaleX = this.§ !H§.scaleY = _loc4_;
         this.§!!w§.x = _loc3_.x;
         this.§!!w§.y = _loc3_.y;
         this.§!!w§.scaleX = this.§!!w§.scaleY = _loc4_;
         var _loc5_:DisplayObject;
         if(_loc5_ = this.§ N§.getChildByName(this.§'"?§.name))
         {
            this.§ N§.removeChild(_loc5_);
         }
         this.§'"?§.removeEventListener(Event.ENTER_FRAME,this.§^#l§);
         this.§'"?§.addEventListener(Event.ENTER_FRAME,this.§^#l§);
         this.§ N§.addChild(this.§'"?§);
         if(this.§'"?§ is this.§?"=§ || this.§'"?§ is this.§1!,§)
         {
            this.§'"?§.x = 0;
            this.§'"?§.y = 5;
            this.§9"Y§.scaleX = this.§9"Y§.scaleY = 0.5;
         }
         else
         {
            this.§'"?§.x = 25;
            this.§'"?§.y = 25;
         }
         this.§'"?§.scaleX = this.§'"?§.scaleY = 0.75;
         this.§9"Y§.x = this.§'"?§.x;
         this.§9"Y§.y = this.§'"?§.y;
         var _loc6_:DisplayObject;
         if(_loc6_ = this.§;!k§.getChildByName(this.§ !H§.name))
         {
            this.§;!k§.removeChild(_loc6_);
         }
         var _loc7_:DisplayObject;
         if(_loc7_ = this.§ N§.getChildByName(this.§9"Y§.name))
         {
            this.§ N§.removeChild(_loc7_);
         }
         this.§;!k§.addChild(this.§ !H§);
         this.§ N§.addChild(this.§9"Y§);
      }
      
      private function § "p§() : void
      {
         this.§5#`§[0] = true;
         this.§,"'§.stop();
         this.§,"'§ = null;
         StateTournamentResults.§<!n§ = true;
      }
      
      private function §#!I§() : void
      {
         var _loc8_:Object = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         this.§,"'§.stop();
         this.§,"'§ = null;
         if(this.§!!w§)
         {
            this.§!!w§.visible = true;
            this.§ !H§.visible = true;
            this.§!!w§.gotoAndPlay(0);
            this.§ !H§.gotoAndPlay(0);
            StateTournamentResults.§<!n§ = true;
            if(this.§;!k§.StarPromotionIcon)
            {
               this.§;!k§.setChildIndex(this.§;!k§.StarPromotionIcon,this.§;!k§.numChildren - 1);
            }
            this.§;!k§.setChildIndex(this.§ !H§,0);
         }
         if(this.§'"?§)
         {
            this.§'"?§.visible = true;
            this.§9"Y§.visible = !(this.§'"?§ is this.§?"=§);
            this.§'"?§.gotoAndPlay(0);
            this.§9"Y§.gotoAndPlay(0);
            if(this.§ N§.StarPromotionIcon)
            {
               this.§ N§.setChildIndex(this.§ N§.StarPromotionIcon,this.§ N§.numChildren - 1);
            }
            this.§ N§.setChildIndex(this.§9"Y§,0);
         }
         this.leagueProgressFill.scaleX = 0;
         var _loc1_:Number = 0;
         if(!this.§[>§ || !this.§[>§.l)
         {
            this.§ N§.visible = true;
            return;
         }
         var _loc2_:Number = !!this.§[>§.l.pli ? Number(this.§[>§.l.pli.rt) : Number(0);
         var _loc3_:Number = !!this.§[>§.l.li ? Number(this.§[>§.l.li.rt) : Number(_loc2_);
         var _loc4_:Number = !!this.§[>§.l.nli ? Number(this.§[>§.l.nli.rt) : Number(0);
         var _loc5_:Number = 1;
         var _loc6_:Number = 0;
         var _loc7_:Number = 0;
         for each(_loc8_ in this.§[>§.l.p)
         {
            if(_loc8_.u == (AngryBirdsBase.singleton.dataModel.userProgress as §>#G§).userID)
            {
               if(_loc8_.lrc)
               {
                  this.§'f§ = _loc8_.lrc;
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
                     this.§#!U§ = this.§2#E§;
                     _loc5_ = (_loc1_ - _loc7_) / (_loc6_ - _loc7_);
                  }
                  if(_loc8_.p == "d")
                  {
                     _loc6_ = _loc2_;
                     _loc7_ = _loc3_;
                     this.§#!U§ = this.§3#'§;
                     this.leagueProgressFill.scaleX = § $4§.§-$"§((_loc1_ + this.§,T§ * -1 - _loc7_) / (_loc6_ - _loc7_),0,1);
                     _loc5_ = (_loc1_ - _loc7_) / (_loc6_ - _loc7_);
                  }
               }
            }
         }
         this.§%#9§(_loc6_,_loc7_);
         _loc9_ = Math.abs(this.leagueProgressFill.scaleX - _loc5_);
         _loc10_ = this.§?$=§(Math.abs(this.§,T§) * _loc9_);
         if(this.§#!U§ == this.§2#E§)
         {
            this.§5m§(true,_loc7_,_loc1_,_loc10_);
         }
         else
         {
            this.§5m§(true,_loc6_,_loc1_,_loc10_);
         }
         this.§,!Z§ = null;
         this.§,!Z§ = §5"<§.§3"1§.§3#§(this.leagueProgressFill,{"scaleX":§ $4§.§-$"§(_loc5_,0,1)},null,_loc10_);
         this.§,!Z§.onComplete = this.§>,§;
         this.§,!Z§.play();
      }
      
      private function §>,§() : void
      {
         this.§5#`§[0] = true;
         this.§,!Z§.stop();
         this.§,!Z§ = null;
         this.§ N§.visible = true;
      }
      
      public function §[#?§() : Boolean
      {
         return this.§;$,§;
      }
      
      public function get §`v§() : Number
      {
         return this.§6"y§;
      }
      
      public function set §`v§(param1:Number) : void
      {
         this.§6"y§ = param1;
      }
      
      public function set §'f§(param1:Number) : void
      {
         this.§,T§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:String = this.§,T§ > 0 ? "+" : "";
         (this.§@!D§.getItemByName("LeaguesRatingProgress").mClip.LeagueRating as TextField).text = int(this.mUserRatingCount) + " (" + _loc2_ + this.§,T§.toString() + ")";
         if(this.§5#`§[0] && this.§5#`§[1])
         {
            this.§5#`§ = [false,false];
            dispatchEvent(new §!g§(§!g§.§8#D§));
         }
      }
      
      public function deActivate() : void
      {
         §4$4§.§'!?§(§<>§);
         this.§'F§();
      }
      
      private function §'F§() : void
      {
         if(this.§!!w§)
         {
            this.§!!w§.gotoAndStop(0);
            this.§!!w§.removeEventListener(Event.ENTER_FRAME,this.§?!#§);
         }
         if(this.§'"?§)
         {
            this.§'"?§.gotoAndStop(0);
            this.§'"?§.removeEventListener(Event.ENTER_FRAME,this.§^#l§);
         }
      }
   }
}
