package §"!y§
{
   import §1#W§.§!#&§;
   import §5"?§.§4"-§;
   import §8"X§.StateTournamentResults;
   import §8#D§.§#E§;
   import §8Z§.§-#C§;
   import §8Z§.§6"w§;
   import §9"1§.§]"5§;
   import §[0§.§5#;§;
   import §[0§.§;$-§;
   import §^#]§.§@!g§;
   import com.rovio.assets.§+$#§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class §`"B§ extends EventDispatcher
   {
      
      private static const §%!c§:String = "You are in";
      
      private static const §&"7§:String = "You were in";
      
      private static const §%"7§:String = "Promoted to";
      
      private static const §,F§:String = "Demoted to ";
      
      private static const § !o§:String = "RatingCountLoopCountChannel";
       
      
      public var §6!Y§:MovieClip;
      
      private var §6!%§:MovieClip;
      
      private var §2#O§:§-#C§ = null;
      
      private var § a§:§-#C§ = null;
      
      private var §4N§:§-#C§ = null;
      
      private var §6"1§:MovieClip = null;
      
      private var §0!c§:MovieClip = null;
      
      private var §?Q§:§#E§;
      
      private var § !=§:MovieClip;
      
      private var §>"Y§:MovieClip;
      
      private var §=$0§:MovieClip;
      
      private var §&"$§:MovieClip;
      
      private var §-!>§:int;
      
      private var §2!;§:Object;
      
      private var §;#^§:Number = -1;
      
      private var §="m§:Number = 0;
      
      private var §5!,§:Number = 0;
      
      public var mUserRatingCount:Number = 0;
      
      private var §@#K§:Class;
      
      private var §["F§:Class;
      
      private var §<"0§:Class;
      
      private var §9"6§:Class;
      
      private var §2!4§:Class;
      
      private var §`"H§:Class;
      
      private var §%#o§:Boolean;
      
      private const §<"O§:Number = 0;
      
      private const §=Y§:Number = 1;
      
      private const §3"_§:Number = -1;
      
      private var §%!T§:Number = 0;
      
      private var §,B§:Number = 0.5;
      
      private var §=$;§:§-#C§;
      
      private var §2!1§:Number = 20;
      
      private var §>"m§:Array;
      
      public function §`"B§(param1:§#E§)
      {
         this.§>"m§ = [false,false];
         super();
         this.§?Q§ = param1;
         this.§@#K§ = §+$#§.§["`§("PromotionAnimation");
         this.§["F§ = §+$#§.§["`§("DemotionAnimation");
         this.§<"0§ = §+$#§.§["`§("DemotionAnimationStar");
         this.§9"6§ = §+$#§.§["`§("PromotionAnimationStar");
         this.§2!4§ = §+$#§.§["`§("PromotionAnimationShine");
         this.§`"H§ = §+$#§.§["`§("PromotionAnimationStarShine");
         §!#&§.§!"k§(§ !o§,6,2);
      }
      
      private function §2a§(param1:Event) : void
      {
         if(this.§ !=§.currentFrameLabel == "action_sound_crack")
         {
            §!#&§.playSound(§5#;§.§9"h§(this.§2!;§.l.li.tn).§&!8§,§ !o§);
         }
         if(this.§ !=§.currentFrameLabel == "action_sound_puff")
         {
            §!#&§.playSound(§5#;§.§9"h§(this.§2!;§.l.li.tn).§;!8§,§ !o§);
         }
         if(this.§ !=§.currentFrameLabel == "action_sound_glow")
         {
            §!#&§.playSound(§5#;§.§9"h§(this.§2!;§.l.li.tn).§&!<§,§ !o§);
         }
         if(this.§ !=§.currentFrameLabel == "action_sound_promo_change")
         {
            §!#&§.playSound(§5#;§.§9"h§(this.§2!;§.l.li.tn).§-"X§,§ !o§);
         }
         if(this.§ !=§.currentFrameLabel == "action_sound_promo_change_star")
         {
            §!#&§.playSound("league_promotion_star",§ !o§);
         }
         if(this.§ !=§.currentFrameLabel == "action_change")
         {
            this.§6!W§();
         }
         else if(this.§ !=§.currentFrame == this.§ !=§.totalFrames)
         {
            this.§>"m§[1] = true;
            this.§ !=§.stop();
            this.§ !=§.visible = false;
            this.§ !=§.removeEventListener(Event.ENTER_FRAME,this.§2a§);
            if(this.§6!Y§.contains(this.§ !=§))
            {
               this.§6!Y§.removeChild(this.§ !=§);
            }
            if(this.§>"Y§)
            {
               this.§>"Y§.stop();
               this.§>"Y§.visible = false;
               if(this.§6!Y§.contains(this.§>"Y§))
               {
                  this.§6!Y§.removeChild(this.§>"Y§);
               }
            }
            this.§%#o§ = false;
         }
         else if(this.§ !=§.currentFrame == 1)
         {
            this.§%#o§ = true;
            if(this.§ !=§.txtStarRating)
            {
               if(this.§ m§ >= 0 && this.§5!,§ < 0)
               {
                  this.§ !=§.txtStarRating.text = (this.§ m§ + 1).toString();
               }
            }
            if(this.§ !=§ is this.§["F§)
            {
               if(this.§>"Y§)
               {
                  this.§>"Y§.visible = false;
               }
               this.§6!Y§.setChildIndex(this.§ !=§,this.§6!Y§.numChildren - 1);
            }
         }
      }
      
      private function §6!W§() : void
      {
         if(this.§6!Y§)
         {
            if(this.§ m§ >= 0 && this.§5!,§ > 0 || this.§ m§ >= 1 && this.§5!,§ < 0)
            {
               this.§6!Y§.gotoAndStop("DIAMOND");
               this.§6!Y§.StarPromotionIcon.visible = true;
               this.§6!Y§.StarPromotionIcon.txtStarRating.text = this.§ m§.toString();
            }
            else if(this.§2!;§ && this.§2!;§.l)
            {
               this.§6!Y§.gotoAndStop(§5#;§.§9"h§(this.§2!;§.l.li.tn).id);
               if(this.§6!Y§.StarPromotionIcon)
               {
                  this.§6!Y§.StarPromotionIcon.visible = false;
               }
            }
         }
         (this.§?Q§.getItemByName("LeaguesRating").mClip.textProgress as TextField).text = this.§5!,§ > 0 ? §%"7§ : §,F§;
         if(this.§ m§ > 0 || this.§ m§ == 0 && this.§5!,§ < 0 && §5#;§.§9"h§(this.§2!;§.l.li.tn).id == §5#;§.§##W§.id)
         {
            (this.§?Q§.getItemByName("LeaguesRating").mClip.textProgress as TextField).text = §%!c§;
         }
         (this.§?Q§.getItemByName("LeaguesRating").mClip.textLeague as TextField).text = §5#;§.§9"h§(this.§2!;§.l.li.tn).name + "!";
      }
      
      private function §,!Q§() : Object
      {
         var _loc1_:Object = null;
         for each(_loc1_ in this.§2!;§.l.p)
         {
            if(_loc1_.u == (AngryBirdsBase.singleton.dataModel.userProgress as §4"-§).userID)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function §%#>§(param1:Event) : void
      {
         var _loc2_:Number = NaN;
         if(this.§=$0§.currentFrameLabel == "action_change")
         {
            if(this.§6!%§)
            {
               if(this.§&"$§)
               {
                  this.§6!%§.setChildIndex(this.§=$0§,this.§6!%§.numChildren - 1);
                  this.§&"$§.stop();
                  this.§&"$§.visible = false;
               }
               if(this.§%!T§ == this.§=Y§ && this.§-!>§ == StateTournamentResults.§2!?§)
               {
                  §§push(Number(this.§ m§ - 1));
               }
               else
               {
                  _loc2_ = this.§%!T§ == this.§3"_§ && this.§-!>§ == StateTournamentResults.§2!?§ ? Number(this.§ m§ + 1) : Number(this.§ m§);
                  if(this.§2!;§.l.nli.ls && this.§2!;§.l.nli.ls > 0)
                  {
                     this.§6!%§.gotoAndStop("STAR");
                     this.§6!%§.StarPromotionIcon.visible = true;
                     this.§6!%§.StarPromotionIcon.txtStarRating.text = this.§2!;§.l.nli.ls.toString();
                     addr5:
                     return;
                     addr552:
                  }
                  else
                  {
                     if(this.§ m§ >= 0 && this.§5!,§ > 0)
                     {
                        this.§6!%§.gotoAndStop("STAR");
                        this.§6!%§.StarPromotionIcon.visible = true;
                        this.§6!%§.StarPromotionIcon.txtStarRating.text = (this.§ m§ + 1).toString();
                     }
                     else if(this.§ m§ > 1 && this.§5!,§ < 0)
                     {
                        this.§6!%§.gotoAndStop("STAR");
                        this.§6!%§.StarPromotionIcon.visible = true;
                        this.§6!%§.StarPromotionIcon.txtStarRating.text = _loc2_.toString();
                     }
                     else if(this.§ m§ == 0 && this.§5!,§ != 0)
                     {
                        this.§6!%§.gotoAndStop("STAR");
                        this.§6!%§.StarPromotionIcon.visible = true;
                        this.§6!%§.StarPromotionIcon.txtStarRating.text = "1";
                     }
                     else if(this.§ m§ == -1 && §5#;§.§9"h§(this.§2!;§.l.pli.tn).id == §5#;§.§##W§.id)
                     {
                        this.§6!%§.gotoAndStop("DIAMOND");
                        this.§6!%§.StarPromotionIcon.visible = false;
                     }
                     else
                     {
                        this.§6!%§.gotoAndStop(§5#;§.§9"h§(this.§2!;§.l.nli.tn).id);
                     }
                     §§goto(addr552);
                  }
                  §§goto(addr552);
               }
               §§goto(addr854);
            }
            §§goto(addr552);
         }
         else if(this.§=$0§.currentFrame == this.§=$0§.totalFrames)
         {
            this.§=$0§.stop();
            this.§=$0§.visible = false;
            this.§=$0§.removeEventListener(Event.ENTER_FRAME,this.§2a§);
            if(this.§6!%§.contains(this.§=$0§))
            {
               this.§6!%§.removeChild(this.§=$0§);
            }
            if(this.§&"$§)
            {
               this.§&"$§.stop();
               this.§&"$§.visible = false;
               if(this.§6!%§.contains(this.§&"$§))
               {
                  this.§6!%§.removeChild(this.§&"$§);
               }
            }
            this.§%#o§ = false;
         }
         else if(this.§=$0§.currentFrame == 1)
         {
            this.§%#o§ = true;
            if(this.§6!%§.StarPromotionIcon && this.§6!%§.StarPromotionIcon.txtStarRating)
            {
               if(this.§%!T§ == this.§=Y§ && this.§-!>§ == StateTournamentResults.§2!?§)
               {
                  §§push(Number(this.§ m§ - 1));
               }
               else
               {
                  _loc2_ = this.§%!T§ == this.§3"_§ && this.§-!>§ == StateTournamentResults.§2!?§ ? Number(this.§ m§ + 1) : Number(this.§ m§);
                  if(this.§ m§ >= 0 && this.§5!,§ > 0)
                  {
                     this.§6!%§.StarPromotionIcon.visible = true;
                     this.§6!%§.StarPromotionIcon.txtStarRating.text = this.§ m§.toString();
                     addr30:
                     if(this.§=$0§ is this.§["F§)
                     {
                        if(this.§&"$§)
                        {
                           this.§&"$§.visible = false;
                        }
                        this.§6!%§.setChildIndex(this.§=$0§,this.§6!%§.numChildren - 1);
                     }
                     §§goto(addr5);
                  }
                  else
                  {
                     if(this.§ m§ >= 0 && this.§5!,§ < 0)
                     {
                        _loc2_ = this.§%!T§ == this.§3"_§ ? Number(_loc2_ + 1) : Number(_loc2_);
                        this.§6!%§.StarPromotionIcon.visible = true;
                        this.§6!%§.StarPromotionIcon.txtStarRating.text = _loc2_.toString();
                     }
                     §§goto(addr30);
                  }
               }
               §§goto(addr364);
            }
            §§goto(addr30);
         }
         §§goto(addr5);
      }
      
      public function §>"`§(param1:Object = null, param2:int = 0, param3:Boolean = false) : void
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
         this.§-!>§ = param2;
         this.§2!;§ = param1;
         this.§%!T§ = this.§<"O§;
         this.§>"m§ = [false,false];
         §!#&§.§4#J§(§ !o§);
         this.§@"Q§();
         this.§6"1§ = this.§?Q§.getItemByName("LeagueProgress").mClip;
         this.§0!c§ = this.§6"1§.mcProgress;
         this.§?Q§.getItemByName("LeaguesRating").mClip.mcNotInLeague.visible = false;
         this.§?Q§.getItemByName("LeaguesRating").mClip.textLeague.visible = true;
         if(param1 && param1.l)
         {
            this.§?Q§.getItemByName("LeaguesRatingProgress").setVisibility(true);
            _loc4_ = !!param1.l.pli ? Number(param1.l.pli.rt) : Number(0);
            _loc5_ = !!param1.l.li ? Number(param1.l.li.rt) : Number(_loc4_);
            if((_loc6_ = !!param1.l.nli ? Number(param1.l.nli.rt) : Number(0)) == 0 && §;$-§.§ "D§.§^"Z§())
            {
               _loc6_ = §5#;§.§,!-§(§;$-§.§ "D§.§^"Z§().id).§"e§;
            }
            else if(_loc6_ == 0 && param1.l.pli)
            {
               _loc6_ = §5#;§.§,!-§(§5#;§.§,!-§(param1.l.pli.tn).id).§"e§;
            }
            _loc8_ = (_loc7_ = this.§,!Q§()) && _loc7_.lr ? Number(_loc7_.lr) : (!!§;$-§.§ "D§.§!"E§() ? Number(§;$-§.§ "D§.§!"E§().lr) : Number(0));
            this.§0!c§.scaleX = §@!g§.§0"E§((_loc8_ - this.§5!,§ - _loc5_) / (_loc6_ - _loc5_),0,1);
            _loc9_ = 1;
            if(this.§ m§ == -1 && param1.l.li && param1.l.pli && §5#;§.§9"h§(param1.l.li.tn).id == §5#;§.§##W§.id && §5#;§.§9"h§(param1.l.pli.tn).id == §5#;§.§##W§.id)
            {
               this.§ m§ = 0;
            }
            _loc10_ = _loc6_;
            _loc11_ = _loc5_;
            for each(_loc12_ in param1.l.p)
            {
               if(_loc12_.u == (AngryBirdsBase.singleton.dataModel.userProgress as §4"-§).userID)
               {
                  if(_loc12_.lr)
                  {
                     _loc8_ = _loc12_.lr;
                  }
                  if(_loc12_.p)
                  {
                     if(_loc12_.p == "u")
                     {
                        _loc10_ = !!this.§2!;§.lastResult ? Number(_loc5_) : Number(_loc10_);
                        _loc11_ = !!this.§2!;§.lastResult ? Number(_loc4_) : Number(_loc11_);
                        this.§%!T§ = this.§=Y§;
                        _loc9_ = 1;
                     }
                     if(_loc12_.p == "d")
                     {
                        _loc10_ = !!this.§2!;§.lastResult ? Number(_loc4_) : Number(_loc10_);
                        _loc11_ = !!this.§2!;§.lastResult ? Number(_loc5_) : Number(_loc11_);
                        if(this.§2!;§.lastResult)
                        {
                           if(this.§ m§ != 0 || this.§ m§ == 0 && param1.l.li && param1.l.li.tn == §5#;§.§##W§.id)
                           {
                              _loc11_ += 100;
                              _loc10_ += 100;
                           }
                        }
                        this.§0!c§.scaleX = §@!g§.§0"E§((_loc8_ + this.§5!,§ - _loc10_) / (_loc10_ - _loc11_),0,1);
                        _loc9_ = 0;
                        this.§%!T§ = this.§3"_§;
                     }
                  }
               }
            }
            this.§="m§ = _loc8_;
            this.§+"$§(param1,this.§ m§);
            if(this.§-!>§ == StateTournamentResults.§2!?§)
            {
               this.§9!y§(this.§ m§);
            }
            this.§'">§(_loc9_,_loc6_,_loc10_,_loc11_,this.§ m§,param3);
            this.§>#C§(_loc8_,this.§5!,§,_loc10_,_loc11_,this.§-!>§ == StateTournamentResults.§2!?§);
         }
         else
         {
            this.§0!Q§();
         }
      }
      
      private function §0!Q§() : void
      {
         this.§6!Y§.gotoAndStop("NOLEAGUE");
         this.§?Q§.getItemByName("LeaguesRating").mClip.textLeague.visible = false;
         this.§?Q§.getItemByName("LeaguesRating").mClip.mcNotInLeague.visible = true;
         (this.§?Q§.getItemByName("LeaguesRating").mClip.textProgress as TextField).text = "";
         this.§?Q§.getItemByName("LeaguesRatingProgress").setVisibility(false);
      }
      
      private function §'">§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean = false) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         if(this.§-!>§ == StateTournamentResults.§2!?§ && this.§2!;§.lastResult)
         {
            _loc7_ = this.§2!;§.l.pli && this.§2!;§.l.li && (this.§2!;§.l.pli.tn != this.§2!;§.l.li.tn || param5 >= 0);
            if(this.§%!T§ == this.§=Y§)
            {
               §§push(Number(param5 - 1));
            }
            else
            {
               _loc8_ = this.§%!T§ == this.§3"_§ && param5 != -1 ? Number(param5 + 1) : Number(param5);
               if(_loc7_ && this.§%!T§ != this.§<"O§)
               {
                  (this.§?Q§.getItemByName("LeaguesRating").mClip.textLeague as TextField).text = §5#;§.§9"h§(this.§2!;§.l.pli.tn).name + "!";
                  if(this.§5!,§ < 0)
                  {
                     if(param5 == 0)
                     {
                        this.§6!Y§.gotoAndStop("DIAMOND");
                        this.§6!Y§.StarPromotionIcon.visible = true;
                        this.§6!Y§.StarPromotionIcon.txtStarRating.text = (param5 + 1).toString();
                        this.§6!%§.gotoAndStop("STAR");
                        this.§6!%§.StarPromotionIcon.visible = true;
                        this.§6!%§.StarPromotionIcon.txtStarRating.text = (param5 + 1).toString();
                     }
                     else if(param5 >= 1)
                     {
                        this.§6!Y§.gotoAndStop("DIAMOND");
                        this.§6!Y§.StarPromotionIcon.visible = true;
                        this.§6!Y§.StarPromotionIcon.txtStarRating.text = _loc8_.toString();
                        this.§6!%§.gotoAndStop("STAR");
                        this.§6!%§.StarPromotionIcon.visible = true;
                        this.§6!%§.StarPromotionIcon.txtStarRating.text = (_loc8_ + 1).toString();
                     }
                     else if(param5 == -1 && §5#;§.§9"h§(this.§2!;§.l.pli.tn).id == §5#;§.§##W§.id)
                     {
                        this.§6!Y§.gotoAndStop(§5#;§.§9"h§(this.§2!;§.l.pli.tn).id);
                        this.§6!%§.gotoAndStop("STAR");
                        this.§6!%§.StarPromotionIcon.visible = true;
                        this.§6!%§.StarPromotionIcon.txtStarRating.text = "1";
                     }
                     else
                     {
                        this.§6!Y§.gotoAndStop(§5#;§.§9"h§(this.§2!;§.l.pli.tn).id);
                        if(this.§6!Y§.StarPromotionIcon)
                        {
                           this.§6!Y§.StarPromotionIcon.visible = false;
                        }
                        this.§6!%§.gotoAndStop(§5#;§.§,!-§(this.§2!;§.l.pli.tn).id);
                     }
                     if(!param6)
                     {
                        this.mUserRatingCount = this.§="m§ + Math.abs(this.§5!,§);
                     }
                  }
                  else
                  {
                     _loc8_ = this.§%!T§ == this.§=Y§ ? Number(param5 - 1) : (this.§%!T§ == this.§3"_§ ? Number(param5 + 1) : Number(param5));
                     if(param5 == 1)
                     {
                        this.§6!Y§.gotoAndStop(§5#;§.§9"h§(this.§2!;§.l.pli.tn).id);
                        if(this.§6!Y§.StarPromotionIcon)
                        {
                           this.§6!Y§.StarPromotionIcon.visible = false;
                        }
                        this.§6!%§.gotoAndStop("STAR");
                        this.§6!%§.StarPromotionIcon.visible = true;
                        this.§6!%§.StarPromotionIcon.txtStarRating.text = param5.toString();
                     }
                     else if(param5 > 1)
                     {
                        this.§6!Y§.gotoAndStop("DIAMOND");
                        this.§6!Y§.StarPromotionIcon.visible = true;
                        this.§6!Y§.StarPromotionIcon.txtStarRating.text = _loc8_.toString();
                        this.§6!%§.gotoAndStop("STAR");
                        this.§6!%§.StarPromotionIcon.visible = true;
                        this.§6!%§.StarPromotionIcon.txtStarRating.text = (_loc8_ + 1).toString();
                     }
                     else
                     {
                        this.§6!Y§.gotoAndStop(§5#;§.§9"h§(this.§2!;§.l.pli.tn).id);
                        this.§6!%§.gotoAndStop(§5#;§.§9"h§(this.§2!;§.l.li.tn).id);
                     }
                     if(!param6)
                     {
                        this.mUserRatingCount = this.§="m§ - Math.abs(this.§5!,§);
                     }
                  }
                  _loc9_ = §@!g§.§0"E§((this.§="m§ - this.§5!,§ - param4) / (param3 - param4),0,1);
                  if(this.§5!,§ < 0)
                  {
                     _loc9_ = §@!g§.§0"E§((this.§="m§ + this.§5!,§ * -1 - param4) / (param3 - param4),0,1);
                  }
                  this.§0!c§.scaleX = _loc9_;
                  this.§]!q§(param3,param4);
                  if(param6)
                  {
                     _loc10_ = Math.abs(_loc9_ - param1);
                     _loc11_ = this.§<!§(Math.abs(this.§5!,§) * _loc10_);
                     if(this.§%!T§ == this.§=Y§)
                     {
                        this.§>#a§(true,param4,param3,_loc11_);
                     }
                     else
                     {
                        this.§>#a§(true,param3,param4,_loc11_);
                     }
                     this.§2#O§ = §6"w§.§ "D§.§""3§(this.§0!c§,{"scaleX":§@!g§.§0"E§(param1,0,1)},null,_loc11_);
                     this.§2#O§.onComplete = this.§%!§;
                     this.§2#O§.play();
                  }
               }
               else
               {
                  this.§6!%§.visible = true;
                  if(this.§="m§ > 0)
                  {
                     this.§0!c§.scaleX = §@!g§.§0"E§((this.§="m§ - this.§5!,§ - param4) / (param3 - param4),0,1);
                  }
                  else
                  {
                     this.§0!c§.scaleX = §@!g§.§0"E§((this.§="m§ + this.§5!,§ - param4) / (param3 - param4),0,1);
                  }
                  _loc12_ = 0;
                  _loc13_ = this.§="m§;
                  if(this.§5!,§ > 0)
                  {
                     _loc12_ = _loc13_ - this.§5!,§;
                  }
                  else
                  {
                     _loc12_ = _loc13_ + Math.abs(this.§5!,§);
                  }
                  this.§>"m§[1] = true;
                  if(param6)
                  {
                     _loc11_ = this.§<!§(Math.abs(this.§5!,§));
                     this.§>#a§(true,_loc12_,_loc13_,_loc11_);
                     this.§2#O§ = §6"w§.§ "D§.§""3§(this.§0!c§,{"scaleX":§@!g§.§0"E§((this.§="m§ - param4) / (param3 - param4),0,1)},null,_loc11_);
                     this.§2#O§.onComplete = this.§9"[§;
                     this.§2#O§.play();
                  }
                  else
                  {
                     this.mUserRatingCount = _loc12_;
                  }
               }
               §§goto(addr26);
            }
            §§goto(addr1348);
         }
         else
         {
            this.§6!%§.visible = true;
            this.§0!c§.scaleX = §@!g§.§0"E§(Math.abs(this.§="m§ - param4) / (param3 - param4),0,1);
            this.§]!q§(param3,param4);
            if(param6)
            {
               _loc11_ = this.§<!§(this.§5!,§);
               this.§>#a§(false,this.§="m§,this.§="m§,_loc11_);
               if(this.§5!,§ != 0)
               {
                  this.§2#O§ = §6"w§.§ "D§.§""3§(this.§0!c§,{"scaleX":§@!g§.§0"E§(Math.abs(this.§="m§ - param4) / (param3 - param4),0,1)},null,_loc11_);
                  this.§2#O§.onComplete = this.§9"[§;
                  this.§2#O§.play();
               }
            }
            else
            {
               this.mUserRatingCount = this.§="m§;
            }
         }
         addr26:
      }
      
      private function §<!§(param1:Number) : Number
      {
         var _loc2_:Number = Math.abs(param1) / this.§2!1§ * this.§,B§;
         if(_loc2_ < 0.1)
         {
            return 0.1;
         }
         return _loc2_;
      }
      
      private function §>#a§(param1:Boolean, param2:Number, param3:Number, param4:Number) : void
      {
         if(param1)
         {
            if(this.§=$;§)
            {
               this.§=$;§.stop();
               this.§=$;§ = null;
            }
            if(param2 != param3)
            {
               §!#&§.playSound("gamescorescreen_score_count_loop",§ !o§,100);
            }
            this.§=$;§ = §6"w§.§ "D§.§""3§(this,{"mUserRatingCount":param3},{"mUserRatingCount":param2},param4);
            this.§=$;§.onComplete = this.§7!!§;
            this.§=$;§.play();
         }
         else
         {
            this.mUserRatingCount = param3;
         }
      }
      
      private function §@"Q§() : void
      {
         this.§6!Y§ = this.§?Q§.getItemByName("CurrentLeagueIcon").mClip;
         this.§6!%§ = this.§?Q§.getItemByName("NextLeagueIcon").mClip;
         this.§6!Y§.gotoAndStop(0);
         this.§6!%§.gotoAndStop(0);
         if(this.§6!Y§.StarPromotionIcon)
         {
            this.§6!Y§.StarPromotionIcon.visible = false;
         }
         if(this.§6!%§.StarPromotionIcon)
         {
            this.§6!%§.StarPromotionIcon.visible = false;
         }
      }
      
      private function §+"$§(param1:Object, param2:Number = 0) : void
      {
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc3_:Number = this.§%!T§ == this.§=Y§ && this.§-!>§ == StateTournamentResults.§2!?§ ? Number(param2 - 1) : (this.§%!T§ == this.§3"_§ && this.§-!>§ == StateTournamentResults.§2!?§ ? Number(param2 + 1) : Number(param2));
         if(param2 == 1 && this.§%!T§ == this.§=Y§ && this.§2!;§.lastResult)
         {
            this.§6!Y§.gotoAndStop(§5#;§.§9"h§(this.§2!;§.l.pli.tn).id);
         }
         else if(param2 > 0)
         {
            this.§6!Y§.gotoAndStop("DIAMOND");
            this.§6!Y§.StarPromotionIcon.visible = true;
            this.§6!Y§.StarPromotionIcon.txtStarRating.text = _loc3_.toString();
         }
         else if(param2 == -1 && this.§%!T§ == this.§3"_§ && §5#;§.§9"h§(param1.l.pli.tn).id == §5#;§.§##W§.id && param1.lastResult)
         {
            this.§6!Y§.gotoAndStop("DIAMOND");
            if(this.§6!Y§.StarPromotionIcon)
            {
               this.§6!Y§.StarPromotionIcon.visible = false;
            }
         }
         else if(param1.l.li)
         {
            this.§6!Y§.gotoAndStop(§5#;§.§9"h§(param1.l.li.tn).id);
            if(this.§6!Y§.StarPromotionIcon)
            {
               this.§6!Y§.StarPromotionIcon.visible = false;
            }
         }
         else if(param1.l.pli)
         {
            if(!param1.lastResult && this.§%!T§ == this.§=Y§)
            {
               this.§6!Y§.gotoAndStop(§5#;§.§,!-§(param1.l.pli.tn).id);
            }
            else if(!param1.lastResult && this.§%!T§ == this.§3"_§)
            {
               this.§6!Y§.gotoAndStop(§5#;§.§6!R§(param1.l.pli.tn).id);
            }
            else
            {
               this.§6!Y§.gotoAndStop(§5#;§.§9"h§(param1.l.pli.tn).id);
            }
         }
         else
         {
            this.§6!Y§.visble = false;
         }
         if(param2 == 1 && this.§%!T§ == this.§=Y§)
         {
            this.§6!%§.gotoAndStop("STAR");
            this.§6!%§.StarPromotionIcon.visible = true;
            if(this.§2!;§.lastResult)
            {
               this.§6!%§.StarPromotionIcon.txtStarRating.text = param2.toString();
            }
            else
            {
               this.§6!%§.StarPromotionIcon.txtStarRating.text = this.§2!;§.l.nli.ls.toString();
            }
         }
         else if(param2 >= 0)
         {
            this.§6!%§.gotoAndStop("STAR");
            _loc3_ = this.§%!T§ == this.§3"_§ ? Number(_loc3_) : Number(_loc3_ + 1);
            if(!param1.lastResult && param1.l.nli.ls)
            {
               _loc3_ = param1.l.nli.ls;
            }
            this.§6!%§.StarPromotionIcon.visible = true;
            this.§6!%§.StarPromotionIcon.txtStarRating.text = _loc3_.toString();
         }
         else if(param1.lastResult && this.§%!T§ == this.§3"_§ && §5#;§.§9"h§(param1.l.pli.tn).id == §5#;§.§##W§.id && param2 == -1)
         {
            this.§6!%§.gotoAndStop("STAR");
            this.§6!%§.StarPromotionIcon.visible = true;
            this.§6!%§.StarPromotionIcon.txtStarRating.text = (this.§2!;§.l.pli.ls + 1).toString();
         }
         else if(param1.l.nli)
         {
            this.§6!%§.gotoAndStop(§5#;§.§9"h§(param1.l.nli.tn).id);
            if(param1.l.nli.ls && param1.l.nli.ls >= 1)
            {
               this.§6!%§.gotoAndStop("STAR");
               this.§6!%§.StarPromotionIcon.visible = true;
               this.§6!%§.StarPromotionIcon.txtStarRating.text = this.§2!;§.l.nli.ls.toString();
            }
         }
         else if(param1.l.pli)
         {
            _loc5_ = !!§;$-§.§ "D§.§^"Z§() ? §;$-§.§ "D§.§^"Z§().id : param1.l.pli.tn;
            if(!param1.lastResult && this.§%!T§ == this.§=Y§)
            {
               if(§;$-§.§ "D§.§^"Z§())
               {
                  this.§6!%§.gotoAndStop(§5#;§.§,!-§(§;$-§.§ "D§.§^"Z§().id).id);
               }
               else if(param1.l.pli)
               {
                  this.§6!%§.gotoAndStop(§5#;§.§,!-§(§5#;§.§,!-§(param1.l.pli.tn).id).id);
               }
            }
            else if(!param1.lastResult && this.§%!T§ == this.§3"_§)
            {
               this.§6!%§.gotoAndStop(§5#;§.§,!-§(_loc5_).id);
            }
            else
            {
               this.§6!%§.gotoAndStop(§5#;§.§9"h§(_loc5_).id);
            }
         }
         else
         {
            this.§6!%§.visble = false;
         }
         var _loc4_:String = "";
         if(!param1.lastResult && this.§%!T§ == this.§=Y§ && param2 <= 0)
         {
            _loc4_ = §%"7§;
         }
         else if(!param1.lastResult && this.§%!T§ == this.§3"_§ && param2 <= 0)
         {
            _loc4_ = §,F§;
         }
         else
         {
            _loc4_ = !!param1.l.li ? §%!c§ : §&"7§;
         }
         (this.§?Q§.getItemByName("LeaguesRating").mClip.textProgress as TextField).text = _loc4_;
         if(param1.l.li || param1.l.pli)
         {
            _loc6_ = !!param1.l.li ? §5#;§.§9"h§(param1.l.li.tn).name + "!" : §5#;§.§9"h§(param1.l.pli.tn).name + "!";
            if(!param1.lastResult && this.§%!T§ == this.§=Y§)
            {
               _loc6_ = !!param1.l.li ? §5#;§.§9"h§(param1.l.li.tn).name + "!" : §5#;§.§,!-§(param1.l.pli.tn).name + "!";
            }
            else if(!param1.lastResult && this.§%!T§ == this.§=Y§)
            {
               _loc6_ = !!param1.l.li ? §5#;§.§6!R§(param1.l.li.tn).name + "!" : §5#;§.§6!R§(param1.l.pli.tn).name + "!";
            }
            (this.§?Q§.getItemByName("LeaguesRating").mClip.textLeague as TextField).text = _loc6_;
         }
         else
         {
            (this.§?Q§.getItemByName("LeaguesRating").mClip.textLeague as TextField).text = "";
         }
      }
      
      private function §>#C§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Boolean = false) : void
      {
         this.§]!q§(param3,param4);
      }
      
      private function §7!!§() : void
      {
         §!#&§.§4#J§(§ !o§);
         if(this.§=$;§)
         {
            this.§=$;§.stop();
            this.§=$;§ = null;
         }
      }
      
      private function §]!q§(param1:Number, param2:Number) : void
      {
         if(param2 > -1)
         {
            (this.§?Q§.getItemByName("LeaguesRatingProgress").mClip.TextField_LeagueProgressValue_Score as TextField).text = param2.toString();
         }
         else
         {
            (this.§?Q§.getItemByName("LeaguesRatingProgress").mClip.TextField_LeagueProgressValue_Score as TextField).text = "0";
         }
         (this.§?Q§.getItemByName("LeaguesRatingProgress").mClip.TextField_LeagueProgressValue_Goal as TextField).text = param1.toString();
      }
      
      private function §9!y§(param1:Number = 0) : void
      {
         this.§@[§();
         if(this.§%!T§ == this.§<"O§)
         {
            return;
         }
         this.§ !=§ = new this.§@#K§();
         this.§>"Y§ = new this.§2!4§();
         this.§&"$§ = new this.§2!4§();
         this.§=$0§ = new this.§@#K§();
         if(this.§5!,§ > 0 && this.§%!T§ == this.§=Y§)
         {
            this.§&"$§ = new this.§2!4§();
            if(param1 > 0)
            {
               this.§ !=§ = new this.§9"6§();
               this.§=$0§ = new this.§9"6§();
               this.§>"Y§ = new this.§`"H§();
               this.§&"$§ = new this.§`"H§();
            }
         }
         else if(this.§5!,§ < 0 && this.§%!T§ == this.§3"_§)
         {
            this.§ !=§ = new this.§["F§();
            this.§=$0§ = new this.§["F§();
            if(param1 >= 0)
            {
               this.§ !=§ = new this.§<"0§();
               this.§=$0§ = new this.§<"0§();
            }
         }
         this.§ !=§.name = "LeaguePromotionAnimation";
         this.§ !=§.gotoAndStop(0);
         this.§ !=§.visible = false;
         this.§=$0§.name = "LeaguePromotionAnimationNextLeague";
         this.§=$0§.gotoAndStop(0);
         this.§=$0§.visible = false;
         this.§>"Y§.visible = false;
         this.§>"Y§.name = "LeaguePromotionAnimationShine";
         this.§>"Y§.gotoAndStop(0);
         this.§&"$§.visible = false;
         this.§&"$§.name = "LeaguePromotionAnimationNextLeagueShine";
         this.§&"$§.gotoAndStop(0);
         var _loc2_:DisplayObject = this.§6!Y§.getChildByName(this.§ !=§.name);
         if(_loc2_)
         {
            this.§6!Y§.removeChild(_loc2_);
         }
         this.§ !=§.addEventListener(Event.ENTER_FRAME,this.§2a§);
         this.§6!Y§.addChild(this.§ !=§);
         var _loc3_:Point = new Point(26,20);
         var _loc4_:Number = 1;
         if(this.§ !=§ is this.§<"0§ || this.§ !=§ is this.§9"6§)
         {
            _loc3_ = new Point(25,23);
            _loc4_ = 0.5;
         }
         this.§>"Y§.x = _loc3_.x;
         this.§>"Y§.y = _loc3_.y;
         this.§>"Y§.scaleX = this.§>"Y§.scaleY = _loc4_;
         this.§ !=§.x = _loc3_.x;
         this.§ !=§.y = _loc3_.y;
         this.§ !=§.scaleX = this.§ !=§.scaleY = _loc4_;
         var _loc5_:DisplayObject;
         if(_loc5_ = this.§6!%§.getChildByName(this.§=$0§.name))
         {
            this.§6!%§.removeChild(_loc5_);
         }
         this.§=$0§.removeEventListener(Event.ENTER_FRAME,this.§%#>§);
         this.§=$0§.addEventListener(Event.ENTER_FRAME,this.§%#>§);
         this.§6!%§.addChild(this.§=$0§);
         if(this.§=$0§ is this.§<"0§ || this.§=$0§ is this.§9"6§)
         {
            this.§=$0§.x = 0;
            this.§=$0§.y = 5;
            this.§&"$§.scaleX = this.§&"$§.scaleY = 0.5;
         }
         else
         {
            this.§=$0§.x = 25;
            this.§=$0§.y = 25;
         }
         this.§=$0§.scaleX = this.§=$0§.scaleY = 0.75;
         this.§&"$§.x = this.§=$0§.x;
         this.§&"$§.y = this.§=$0§.y;
         var _loc6_:DisplayObject;
         if(_loc6_ = this.§6!Y§.getChildByName(this.§>"Y§.name))
         {
            this.§6!Y§.removeChild(_loc6_);
         }
         var _loc7_:DisplayObject;
         if(_loc7_ = this.§6!%§.getChildByName(this.§&"$§.name))
         {
            this.§6!%§.removeChild(_loc7_);
         }
         this.§6!Y§.addChild(this.§>"Y§);
         this.§6!%§.addChild(this.§&"$§);
      }
      
      private function §9"[§() : void
      {
         this.§>"m§[0] = true;
         this.§2#O§.stop();
         this.§2#O§ = null;
         StateTournamentResults.§&b§ = true;
      }
      
      private function §%!§() : void
      {
         var _loc8_:Object = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         this.§2#O§.stop();
         this.§2#O§ = null;
         if(this.§ !=§)
         {
            this.§ !=§.visible = true;
            this.§>"Y§.visible = true;
            this.§ !=§.gotoAndPlay(0);
            this.§>"Y§.gotoAndPlay(0);
            StateTournamentResults.§&b§ = true;
            if(this.§6!Y§.StarPromotionIcon)
            {
               this.§6!Y§.setChildIndex(this.§6!Y§.StarPromotionIcon,this.§6!Y§.numChildren - 1);
            }
            this.§6!Y§.setChildIndex(this.§>"Y§,0);
         }
         if(this.§=$0§)
         {
            this.§=$0§.visible = true;
            this.§&"$§.visible = !(this.§=$0§ is this.§<"0§);
            this.§=$0§.gotoAndPlay(0);
            this.§&"$§.gotoAndPlay(0);
            if(this.§6!%§.StarPromotionIcon)
            {
               this.§6!%§.setChildIndex(this.§6!%§.StarPromotionIcon,this.§6!%§.numChildren - 1);
            }
            this.§6!%§.setChildIndex(this.§&"$§,0);
         }
         this.§0!c§.scaleX = 0;
         var _loc1_:Number = 0;
         if(!this.§2!;§ || !this.§2!;§.l)
         {
            this.§6!%§.visible = true;
            return;
         }
         var _loc2_:Number = !!this.§2!;§.l.pli ? Number(this.§2!;§.l.pli.rt) : Number(0);
         var _loc3_:Number = !!this.§2!;§.l.li ? Number(this.§2!;§.l.li.rt) : Number(_loc2_);
         var _loc4_:Number = !!this.§2!;§.l.nli ? Number(this.§2!;§.l.nli.rt) : Number(0);
         var _loc5_:Number = 1;
         var _loc6_:Number = 0;
         var _loc7_:Number = 0;
         for each(_loc8_ in this.§2!;§.l.p)
         {
            if(_loc8_.u == (AngryBirdsBase.singleton.dataModel.userProgress as §4"-§).userID)
            {
               if(_loc8_.lrc)
               {
                  this.§["4§ = _loc8_.lrc;
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
                     this.§%!T§ = this.§=Y§;
                     _loc5_ = (_loc1_ - _loc7_) / (_loc6_ - _loc7_);
                  }
                  if(_loc8_.p == "d")
                  {
                     _loc6_ = _loc2_;
                     _loc7_ = _loc3_;
                     this.§%!T§ = this.§3"_§;
                     this.§0!c§.scaleX = §@!g§.§0"E§((_loc1_ + this.§5!,§ * -1 - _loc7_) / (_loc6_ - _loc7_),0,1);
                     _loc5_ = (_loc1_ - _loc7_) / (_loc6_ - _loc7_);
                  }
               }
            }
         }
         this.§]!q§(_loc6_,_loc7_);
         _loc9_ = Math.abs(this.§0!c§.scaleX - _loc5_);
         _loc10_ = this.§<!§(Math.abs(this.§5!,§) * _loc9_);
         if(this.§%!T§ == this.§=Y§)
         {
            this.§>#a§(true,_loc7_,_loc1_,_loc10_);
         }
         else
         {
            this.§>#a§(true,_loc6_,_loc1_,_loc10_);
         }
         this.§ a§ = null;
         this.§ a§ = §6"w§.§ "D§.§""3§(this.§0!c§,{"scaleX":§@!g§.§0"E§(_loc5_,0,1)},null,_loc10_);
         this.§ a§.onComplete = this.§?"Z§;
         this.§ a§.play();
      }
      
      private function §?"Z§() : void
      {
         this.§>"m§[0] = true;
         this.§ a§.stop();
         this.§ a§ = null;
         this.§6!%§.visible = true;
      }
      
      public function §=!-§() : Boolean
      {
         return this.§%#o§;
      }
      
      public function get § m§() : Number
      {
         return this.§;#^§;
      }
      
      public function set § m§(param1:Number) : void
      {
         this.§;#^§ = param1;
      }
      
      public function set §["4§(param1:Number) : void
      {
         this.§5!,§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:String = this.§5!,§ > 0 ? "+" : "";
         (this.§?Q§.getItemByName("LeaguesRatingProgress").mClip.LeagueRating as TextField).text = int(this.mUserRatingCount) + " (" + _loc2_ + this.§5!,§.toString() + ")";
         if(this.§>"m§[0] && this.§>"m§[1])
         {
            this.§>"m§ = [false,false];
            dispatchEvent(new §]"5§(§]"5§.§["B§));
         }
      }
      
      public function deActivate() : void
      {
         §!#&§.§4#J§(§ !o§);
         this.§@[§();
      }
      
      private function §@[§() : void
      {
         if(this.§ !=§)
         {
            this.§ !=§.gotoAndStop(0);
            this.§ !=§.removeEventListener(Event.ENTER_FRAME,this.§2a§);
         }
         if(this.§=$0§)
         {
            this.§=$0§.gotoAndStop(0);
            this.§=$0§.removeEventListener(Event.ENTER_FRAME,this.§%#>§);
         }
      }
   }
}
