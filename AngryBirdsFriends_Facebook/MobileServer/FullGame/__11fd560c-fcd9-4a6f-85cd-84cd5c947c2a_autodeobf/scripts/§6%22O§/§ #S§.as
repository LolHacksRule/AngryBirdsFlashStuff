package §6"O§
{
   import § %§.§0"8§;
   import §!#"§.§&"H§;
   import §!#"§.§4[§;
   import §"$!§.§ $A§;
   import §%#w§.§2#s§;
   import §%#w§.§?"z§;
   import §-!S§.§##>§;
   import §9#B§.StateTournamentResults;
   import §@!M§.§!"p§;
   import §[#[§.§=#Q§;
   import com.rovio.assets.§!"f§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class § #S§ extends EventDispatcher
   {
      
      private static const §5!f§:String = "You are in";
      
      private static const §&$§:String = "You were in";
      
      private static const §5e§:String = "Promoted to";
      
      private static const §`#W§:String = "Demoted to ";
      
      private static const §!!?§:String = "RatingCountLoopCountChannel";
       
      
      public var §3$#§:MovieClip;
      
      private var §3#s§:MovieClip;
      
      private var §[!i§:§4[§ = null;
      
      private var §[h§:§4[§ = null;
      
      private var §>"?§:§4[§ = null;
      
      private var §0"_§:MovieClip = null;
      
      private var §1"t§:MovieClip = null;
      
      private var §`!H§:§0"8§;
      
      private var §#"-§:MovieClip;
      
      private var §@!i§:MovieClip;
      
      private var §+#H§:MovieClip;
      
      private var §="A§:MovieClip;
      
      private var §5!'§:int;
      
      private var §9"s§:Object;
      
      private var §6"b§:Number = -1;
      
      private var §#L§:Number = 0;
      
      private var §9C§:Number = 0;
      
      public var mUserRatingCount:Number = 0;
      
      private var §;#J§:Class;
      
      private var §1"^§:Class;
      
      private var §="a§:Class;
      
      private var §3!b§:Class;
      
      private var §,$@§:Class;
      
      private var §&y§:Class;
      
      private var §9$?§:Boolean;
      
      private const §"$,§:Number = 0;
      
      private const §"1§:Number = 1;
      
      private const §""$§:Number = -1;
      
      private var §6$+§:Number = 0;
      
      private var §1"L§:Number = 0.5;
      
      private var §%"-§:§4[§;
      
      private var §"#M§:Number = 20;
      
      private var §0"L§:Array;
      
      public function § #S§(param1:§0"8§)
      {
         this.§0"L§ = [false,false];
         super();
         this.§`!H§ = param1;
         this.§;#J§ = §!"f§.§##?§("PromotionAnimation");
         this.§1"^§ = §!"f§.§##?§("DemotionAnimation");
         this.§="a§ = §!"f§.§##?§("DemotionAnimationStar");
         this.§3!b§ = §!"f§.§##?§("PromotionAnimationStar");
         this.§,$@§ = §!"f§.§##?§("PromotionAnimationShine");
         this.§&y§ = §!"f§.§##?§("PromotionAnimationStarShine");
         §!"p§.§5#4§(§!!?§,6,2);
      }
      
      private function §;U§(param1:Event) : void
      {
         if(this.§#"-§.currentFrameLabel == "action_sound_crack")
         {
            §!"p§.playSound(§?"z§.§-M§(this.§9"s§.l.li.tn).§7!u§,§!!?§);
         }
         if(this.§#"-§.currentFrameLabel == "action_sound_puff")
         {
            §!"p§.playSound(§?"z§.§-M§(this.§9"s§.l.li.tn).§ "r§,§!!?§);
         }
         if(this.§#"-§.currentFrameLabel == "action_sound_glow")
         {
            §!"p§.playSound(§?"z§.§-M§(this.§9"s§.l.li.tn).§#!k§,§!!?§);
         }
         if(this.§#"-§.currentFrameLabel == "action_sound_promo_change")
         {
            §!"p§.playSound(§?"z§.§-M§(this.§9"s§.l.li.tn).§0"O§,§!!?§);
         }
         if(this.§#"-§.currentFrameLabel == "action_sound_promo_change_star")
         {
            §!"p§.playSound("league_promotion_star",§!!?§);
         }
         if(this.§#"-§.currentFrameLabel == "action_change")
         {
            this.§<!p§();
         }
         else if(this.§#"-§.currentFrame == this.§#"-§.totalFrames)
         {
            this.§0"L§[1] = true;
            this.§#"-§.stop();
            this.§#"-§.visible = false;
            this.§#"-§.removeEventListener(Event.ENTER_FRAME,this.§;U§);
            if(this.§3$#§.contains(this.§#"-§))
            {
               this.§3$#§.removeChild(this.§#"-§);
            }
            if(this.§@!i§)
            {
               this.§@!i§.stop();
               this.§@!i§.visible = false;
               if(this.§3$#§.contains(this.§@!i§))
               {
                  this.§3$#§.removeChild(this.§@!i§);
               }
            }
            this.§9$?§ = false;
         }
         else if(this.§#"-§.currentFrame == 1)
         {
            this.§9$?§ = true;
            if(this.§#"-§.txtStarRating)
            {
               if(this.§1"d§ >= 0 && this.§9C§ < 0)
               {
                  this.§#"-§.txtStarRating.text = (this.§1"d§ + 1).toString();
               }
            }
            if(this.§#"-§ is this.§1"^§)
            {
               if(this.§@!i§)
               {
                  this.§@!i§.visible = false;
               }
               this.§3$#§.setChildIndex(this.§#"-§,this.§3$#§.numChildren - 1);
            }
         }
      }
      
      private function §<!p§() : void
      {
         if(this.§3$#§)
         {
            if(this.§1"d§ >= 0 && this.§9C§ > 0 || this.§1"d§ >= 1 && this.§9C§ < 0)
            {
               this.§3$#§.gotoAndStop("DIAMOND");
               this.§3$#§.StarPromotionIcon.visible = true;
               this.§3$#§.StarPromotionIcon.txtStarRating.text = this.§1"d§.toString();
            }
            else if(this.§9"s§ && this.§9"s§.l)
            {
               this.§3$#§.gotoAndStop(§?"z§.§-M§(this.§9"s§.l.li.tn).id);
               if(this.§3$#§.StarPromotionIcon)
               {
                  this.§3$#§.StarPromotionIcon.visible = false;
               }
            }
         }
         (this.§`!H§.getItemByName("LeaguesRating").mClip.textProgress as TextField).text = this.§9C§ > 0 ? §5e§ : §`#W§;
         if(this.§1"d§ > 0 || this.§1"d§ == 0 && this.§9C§ < 0 && §?"z§.§-M§(this.§9"s§.l.li.tn).id == §?"z§.§`#A§.id)
         {
            (this.§`!H§.getItemByName("LeaguesRating").mClip.textProgress as TextField).text = §5!f§;
         }
         (this.§`!H§.getItemByName("LeaguesRating").mClip.textLeague as TextField).text = §?"z§.§-M§(this.§9"s§.l.li.tn).name + "!";
      }
      
      private function §8"p§() : Object
      {
         var _loc1_:Object = null;
         for each(_loc1_ in this.§9"s§.l.p)
         {
            if(_loc1_.u == (AngryBirdsBase.singleton.dataModel.userProgress as §##>§).userID)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function §4"8§(param1:Event) : void
      {
         var _loc2_:Number = NaN;
         if(this.§+#H§.currentFrameLabel == "action_change")
         {
            if(this.§3#s§)
            {
               if(this.§="A§)
               {
                  this.§3#s§.setChildIndex(this.§+#H§,this.§3#s§.numChildren - 1);
                  this.§="A§.stop();
                  this.§="A§.visible = false;
               }
               if(this.§6$+§ == this.§"1§ && this.§5!'§ == StateTournamentResults.§ "-§)
               {
                  §§push(Number(this.§1"d§ - 1));
               }
               else
               {
                  _loc2_ = this.§6$+§ == this.§""$§ && this.§5!'§ == StateTournamentResults.§ "-§ ? Number(this.§1"d§ + 1) : Number(this.§1"d§);
                  if(this.§9"s§.l.nli.ls && this.§9"s§.l.nli.ls > 0)
                  {
                     this.§3#s§.gotoAndStop("STAR");
                     this.§3#s§.StarPromotionIcon.visible = true;
                     this.§3#s§.StarPromotionIcon.txtStarRating.text = this.§9"s§.l.nli.ls.toString();
                     addr9:
                     return;
                     addr536:
                  }
                  else
                  {
                     if(this.§1"d§ >= 0 && this.§9C§ > 0)
                     {
                        this.§3#s§.gotoAndStop("STAR");
                        this.§3#s§.StarPromotionIcon.visible = true;
                        this.§3#s§.StarPromotionIcon.txtStarRating.text = (this.§1"d§ + 1).toString();
                     }
                     else if(this.§1"d§ > 1 && this.§9C§ < 0)
                     {
                        this.§3#s§.gotoAndStop("STAR");
                        this.§3#s§.StarPromotionIcon.visible = true;
                        this.§3#s§.StarPromotionIcon.txtStarRating.text = _loc2_.toString();
                     }
                     else if(this.§1"d§ == 0 && this.§9C§ != 0)
                     {
                        this.§3#s§.gotoAndStop("STAR");
                        this.§3#s§.StarPromotionIcon.visible = true;
                        this.§3#s§.StarPromotionIcon.txtStarRating.text = "1";
                     }
                     else if(this.§1"d§ == -1 && §?"z§.§-M§(this.§9"s§.l.pli.tn).id == §?"z§.§`#A§.id)
                     {
                        this.§3#s§.gotoAndStop("DIAMOND");
                        this.§3#s§.StarPromotionIcon.visible = false;
                     }
                     else
                     {
                        this.§3#s§.gotoAndStop(§?"z§.§-M§(this.§9"s§.l.nli.tn).id);
                     }
                     §§goto(addr536);
                  }
                  §§goto(addr536);
               }
               §§goto(addr826);
            }
            §§goto(addr536);
         }
         else if(this.§+#H§.currentFrame == this.§+#H§.totalFrames)
         {
            this.§+#H§.stop();
            this.§+#H§.visible = false;
            this.§+#H§.removeEventListener(Event.ENTER_FRAME,this.§;U§);
            if(this.§3#s§.contains(this.§+#H§))
            {
               this.§3#s§.removeChild(this.§+#H§);
            }
            if(this.§="A§)
            {
               this.§="A§.stop();
               this.§="A§.visible = false;
               if(this.§3#s§.contains(this.§="A§))
               {
                  this.§3#s§.removeChild(this.§="A§);
               }
            }
            this.§9$?§ = false;
         }
         else if(this.§+#H§.currentFrame == 1)
         {
            this.§9$?§ = true;
            if(this.§3#s§.StarPromotionIcon && this.§3#s§.StarPromotionIcon.txtStarRating)
            {
               if(this.§6$+§ == this.§"1§ && this.§5!'§ == StateTournamentResults.§ "-§)
               {
                  §§push(Number(this.§1"d§ - 1));
               }
               else
               {
                  _loc2_ = this.§6$+§ == this.§""$§ && this.§5!'§ == StateTournamentResults.§ "-§ ? Number(this.§1"d§ + 1) : Number(this.§1"d§);
                  if(this.§1"d§ >= 0 && this.§9C§ > 0)
                  {
                     this.§3#s§.StarPromotionIcon.visible = true;
                     this.§3#s§.StarPromotionIcon.txtStarRating.text = this.§1"d§.toString();
                     addr26:
                     if(this.§+#H§ is this.§1"^§)
                     {
                        if(this.§="A§)
                        {
                           this.§="A§.visible = false;
                        }
                        this.§3#s§.setChildIndex(this.§+#H§,this.§3#s§.numChildren - 1);
                     }
                     §§goto(addr9);
                  }
                  else
                  {
                     if(this.§1"d§ >= 0 && this.§9C§ < 0)
                     {
                        _loc2_ = this.§6$+§ == this.§""$§ ? Number(_loc2_ + 1) : Number(_loc2_);
                        this.§3#s§.StarPromotionIcon.visible = true;
                        this.§3#s§.StarPromotionIcon.txtStarRating.text = _loc2_.toString();
                     }
                     §§goto(addr26);
                  }
               }
               §§goto(addr340);
            }
            §§goto(addr26);
         }
         §§goto(addr9);
      }
      
      public function §+O§(param1:Object = null, param2:int = 0, param3:Boolean = false) : void
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
         this.§5!'§ = param2;
         this.§9"s§ = param1;
         this.§6$+§ = this.§"$,§;
         this.§0"L§ = [false,false];
         §!"p§.§5#u§(§!!?§);
         this.§'!?§();
         this.§0"_§ = this.§`!H§.getItemByName("LeagueProgress").mClip;
         this.§1"t§ = this.§0"_§.mcProgress;
         this.§`!H§.getItemByName("LeaguesRating").mClip.mcNotInLeague.visible = false;
         this.§`!H§.getItemByName("LeaguesRating").mClip.textLeague.visible = true;
         if(param1 && param1.l)
         {
            this.§`!H§.getItemByName("LeaguesRatingProgress").setVisibility(true);
            _loc4_ = !!param1.l.pli ? Number(param1.l.pli.rt) : Number(0);
            _loc5_ = !!param1.l.li ? Number(param1.l.li.rt) : Number(_loc4_);
            if((_loc6_ = !!param1.l.nli ? Number(param1.l.nli.rt) : Number(0)) == 0 && §2#s§.§6!§.currentLeague())
            {
               _loc6_ = §?"z§.§5?§(§2#s§.§6!§.currentLeague().id).§[#_§;
            }
            else if(_loc6_ == 0 && param1.l.pli)
            {
               _loc6_ = §?"z§.§5?§(§?"z§.§5?§(param1.l.pli.tn).id).§[#_§;
            }
            _loc8_ = (_loc7_ = this.§8"p§()) && _loc7_.lr ? Number(_loc7_.lr) : (!!§2#s§.§6!§.§5"Y§() ? Number(§2#s§.§6!§.§5"Y§().lr) : Number(0));
            this.§1"t§.scaleX = §=#Q§.§0"k§((_loc8_ - this.§9C§ - _loc5_) / (_loc6_ - _loc5_),0,1);
            _loc9_ = 1;
            if(this.§1"d§ == -1 && param1.l.li && param1.l.pli && §?"z§.§-M§(param1.l.li.tn).id == §?"z§.§`#A§.id && §?"z§.§-M§(param1.l.pli.tn).id == §?"z§.§`#A§.id)
            {
               this.§1"d§ = 0;
            }
            _loc10_ = _loc6_;
            _loc11_ = _loc5_;
            for each(_loc12_ in param1.l.p)
            {
               if(_loc12_.u == (AngryBirdsBase.singleton.dataModel.userProgress as §##>§).userID)
               {
                  if(_loc12_.lr)
                  {
                     _loc8_ = _loc12_.lr;
                  }
                  if(_loc12_.p)
                  {
                     if(_loc12_.p == "u")
                     {
                        _loc10_ = !!this.§9"s§.lastResult ? Number(_loc5_) : Number(_loc10_);
                        _loc11_ = !!this.§9"s§.lastResult ? Number(_loc4_) : Number(_loc11_);
                        this.§6$+§ = this.§"1§;
                        _loc9_ = 1;
                     }
                     if(_loc12_.p == "d")
                     {
                        _loc10_ = !!this.§9"s§.lastResult ? Number(_loc4_) : Number(_loc10_);
                        _loc11_ = !!this.§9"s§.lastResult ? Number(_loc5_) : Number(_loc11_);
                        if(this.§9"s§.lastResult)
                        {
                           if(this.§1"d§ != 0 || this.§1"d§ == 0 && param1.l.li && param1.l.li.tn == §?"z§.§`#A§.id)
                           {
                              _loc11_ += 100;
                              _loc10_ += 100;
                           }
                        }
                        this.§1"t§.scaleX = §=#Q§.§0"k§((_loc8_ + this.§9C§ - _loc10_) / (_loc10_ - _loc11_),0,1);
                        _loc9_ = 0;
                        this.§6$+§ = this.§""$§;
                     }
                  }
               }
            }
            this.§#L§ = _loc8_;
            this.§=!z§(param1,this.§1"d§);
            if(this.§5!'§ == StateTournamentResults.§ "-§)
            {
               this.§-"$§(this.§1"d§);
            }
            this.§`!T§(_loc9_,_loc6_,_loc10_,_loc11_,this.§1"d§,param3);
            this.§@!6§(_loc8_,this.§9C§,_loc10_,_loc11_,this.§5!'§ == StateTournamentResults.§ "-§);
         }
         else
         {
            this.§[0§();
         }
      }
      
      private function §[0§() : void
      {
         this.§3$#§.gotoAndStop("NOLEAGUE");
         this.§`!H§.getItemByName("LeaguesRating").mClip.textLeague.visible = false;
         this.§`!H§.getItemByName("LeaguesRating").mClip.mcNotInLeague.visible = true;
         (this.§`!H§.getItemByName("LeaguesRating").mClip.textProgress as TextField).text = "";
         this.§`!H§.getItemByName("LeaguesRatingProgress").setVisibility(false);
      }
      
      private function §`!T§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean = false) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         if(this.§5!'§ == StateTournamentResults.§ "-§ && this.§9"s§.lastResult)
         {
            _loc7_ = this.§9"s§.l.pli && this.§9"s§.l.li && (this.§9"s§.l.pli.tn != this.§9"s§.l.li.tn || param5 >= 0);
            if(this.§6$+§ == this.§"1§)
            {
               §§push(Number(param5 - 1));
            }
            else
            {
               _loc8_ = this.§6$+§ == this.§""$§ && param5 != -1 ? Number(param5 + 1) : Number(param5);
               if(_loc7_ && this.§6$+§ != this.§"$,§)
               {
                  (this.§`!H§.getItemByName("LeaguesRating").mClip.textLeague as TextField).text = §?"z§.§-M§(this.§9"s§.l.pli.tn).name + "!";
                  if(this.§9C§ < 0)
                  {
                     if(param5 == 0)
                     {
                        this.§3$#§.gotoAndStop("DIAMOND");
                        this.§3$#§.StarPromotionIcon.visible = true;
                        this.§3$#§.StarPromotionIcon.txtStarRating.text = (param5 + 1).toString();
                        this.§3#s§.gotoAndStop("STAR");
                        this.§3#s§.StarPromotionIcon.visible = true;
                        this.§3#s§.StarPromotionIcon.txtStarRating.text = (param5 + 1).toString();
                     }
                     else if(param5 >= 1)
                     {
                        this.§3$#§.gotoAndStop("DIAMOND");
                        this.§3$#§.StarPromotionIcon.visible = true;
                        this.§3$#§.StarPromotionIcon.txtStarRating.text = _loc8_.toString();
                        this.§3#s§.gotoAndStop("STAR");
                        this.§3#s§.StarPromotionIcon.visible = true;
                        this.§3#s§.StarPromotionIcon.txtStarRating.text = (_loc8_ + 1).toString();
                     }
                     else if(param5 == -1 && §?"z§.§-M§(this.§9"s§.l.pli.tn).id == §?"z§.§`#A§.id)
                     {
                        this.§3$#§.gotoAndStop(§?"z§.§-M§(this.§9"s§.l.pli.tn).id);
                        this.§3#s§.gotoAndStop("STAR");
                        this.§3#s§.StarPromotionIcon.visible = true;
                        this.§3#s§.StarPromotionIcon.txtStarRating.text = "1";
                     }
                     else
                     {
                        this.§3$#§.gotoAndStop(§?"z§.§-M§(this.§9"s§.l.pli.tn).id);
                        if(this.§3$#§.StarPromotionIcon)
                        {
                           this.§3$#§.StarPromotionIcon.visible = false;
                        }
                        this.§3#s§.gotoAndStop(§?"z§.§5?§(this.§9"s§.l.pli.tn).id);
                     }
                     if(!param6)
                     {
                        this.mUserRatingCount = this.§#L§ + Math.abs(this.§9C§);
                     }
                  }
                  else
                  {
                     _loc8_ = this.§6$+§ == this.§"1§ ? Number(param5 - 1) : (this.§6$+§ == this.§""$§ ? Number(param5 + 1) : Number(param5));
                     if(param5 == 1)
                     {
                        this.§3$#§.gotoAndStop(§?"z§.§-M§(this.§9"s§.l.pli.tn).id);
                        if(this.§3$#§.StarPromotionIcon)
                        {
                           this.§3$#§.StarPromotionIcon.visible = false;
                        }
                        this.§3#s§.gotoAndStop("STAR");
                        this.§3#s§.StarPromotionIcon.visible = true;
                        this.§3#s§.StarPromotionIcon.txtStarRating.text = param5.toString();
                     }
                     else if(param5 > 1)
                     {
                        this.§3$#§.gotoAndStop("DIAMOND");
                        this.§3$#§.StarPromotionIcon.visible = true;
                        this.§3$#§.StarPromotionIcon.txtStarRating.text = _loc8_.toString();
                        this.§3#s§.gotoAndStop("STAR");
                        this.§3#s§.StarPromotionIcon.visible = true;
                        this.§3#s§.StarPromotionIcon.txtStarRating.text = (_loc8_ + 1).toString();
                     }
                     else
                     {
                        this.§3$#§.gotoAndStop(§?"z§.§-M§(this.§9"s§.l.pli.tn).id);
                        this.§3#s§.gotoAndStop(§?"z§.§-M§(this.§9"s§.l.li.tn).id);
                     }
                     if(!param6)
                     {
                        this.mUserRatingCount = this.§#L§ - Math.abs(this.§9C§);
                     }
                  }
                  _loc9_ = §=#Q§.§0"k§((this.§#L§ - this.§9C§ - param4) / (param3 - param4),0,1);
                  if(this.§9C§ < 0)
                  {
                     _loc9_ = §=#Q§.§0"k§((this.§#L§ + this.§9C§ * -1 - param4) / (param3 - param4),0,1);
                  }
                  this.§1"t§.scaleX = _loc9_;
                  this.§]w§(param3,param4);
                  if(param6)
                  {
                     _loc10_ = Math.abs(_loc9_ - param1);
                     _loc11_ = this.§7"#§(Math.abs(this.§9C§) * _loc10_);
                     if(this.§6$+§ == this.§"1§)
                     {
                        this.§8#L§(true,param4,param3,_loc11_);
                     }
                     else
                     {
                        this.§8#L§(true,param3,param4,_loc11_);
                     }
                     this.§[!i§ = §&"H§.§6!§.§6C§(this.§1"t§,{"scaleX":§=#Q§.§0"k§(param1,0,1)},null,_loc11_);
                     this.§[!i§.onComplete = this.§5!k§;
                     this.§[!i§.play();
                  }
               }
               else
               {
                  this.§3#s§.visible = true;
                  if(this.§#L§ > 0)
                  {
                     this.§1"t§.scaleX = §=#Q§.§0"k§((this.§#L§ - this.§9C§ - param4) / (param3 - param4),0,1);
                  }
                  else
                  {
                     this.§1"t§.scaleX = §=#Q§.§0"k§((this.§#L§ + this.§9C§ - param4) / (param3 - param4),0,1);
                  }
                  _loc12_ = 0;
                  _loc13_ = this.§#L§;
                  if(this.§9C§ > 0)
                  {
                     _loc12_ = _loc13_ - this.§9C§;
                  }
                  else
                  {
                     _loc12_ = _loc13_ + Math.abs(this.§9C§);
                  }
                  this.§0"L§[1] = true;
                  if(param6)
                  {
                     _loc11_ = this.§7"#§(Math.abs(this.§9C§));
                     this.§8#L§(true,_loc12_,_loc13_,_loc11_);
                     this.§[!i§ = §&"H§.§6!§.§6C§(this.§1"t§,{"scaleX":§=#Q§.§0"k§((this.§#L§ - param4) / (param3 - param4),0,1)},null,_loc11_);
                     this.§[!i§.onComplete = this.§@!O§;
                     this.§[!i§.play();
                  }
                  else
                  {
                     this.mUserRatingCount = _loc12_;
                  }
               }
               §§goto(addr26);
            }
            §§goto(addr1296);
         }
         else
         {
            this.§3#s§.visible = true;
            this.§1"t§.scaleX = §=#Q§.§0"k§(Math.abs(this.§#L§ - param4) / (param3 - param4),0,1);
            this.§]w§(param3,param4);
            if(param6)
            {
               _loc11_ = this.§7"#§(this.§9C§);
               this.§8#L§(false,this.§#L§,this.§#L§,_loc11_);
               if(this.§9C§ != 0)
               {
                  this.§[!i§ = §&"H§.§6!§.§6C§(this.§1"t§,{"scaleX":§=#Q§.§0"k§(Math.abs(this.§#L§ - param4) / (param3 - param4),0,1)},null,_loc11_);
                  this.§[!i§.onComplete = this.§@!O§;
                  this.§[!i§.play();
               }
            }
            else
            {
               this.mUserRatingCount = this.§#L§;
            }
         }
         addr26:
      }
      
      private function §7"#§(param1:Number) : Number
      {
         var _loc2_:Number = Math.abs(param1) / this.§"#M§ * this.§1"L§;
         if(_loc2_ < 0.1)
         {
            return 0.1;
         }
         return _loc2_;
      }
      
      private function §8#L§(param1:Boolean, param2:Number, param3:Number, param4:Number) : void
      {
         if(param1)
         {
            if(this.§%"-§)
            {
               this.§%"-§.stop();
               this.§%"-§ = null;
            }
            if(param2 != param3)
            {
               §!"p§.playSound("gamescorescreen_score_count_loop",§!!?§,100);
            }
            this.§%"-§ = §&"H§.§6!§.§6C§(this,{"mUserRatingCount":param3},{"mUserRatingCount":param2},param4);
            this.§%"-§.onComplete = this.§["_§;
            this.§%"-§.play();
         }
         else
         {
            this.mUserRatingCount = param3;
         }
      }
      
      private function §'!?§() : void
      {
         this.§3$#§ = this.§`!H§.getItemByName("CurrentLeagueIcon").mClip;
         this.§3#s§ = this.§`!H§.getItemByName("NextLeagueIcon").mClip;
         this.§3$#§.gotoAndStop(0);
         this.§3#s§.gotoAndStop(0);
         if(this.§3$#§.StarPromotionIcon)
         {
            this.§3$#§.StarPromotionIcon.visible = false;
         }
         if(this.§3#s§.StarPromotionIcon)
         {
            this.§3#s§.StarPromotionIcon.visible = false;
         }
      }
      
      private function §=!z§(param1:Object, param2:Number = 0) : void
      {
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc3_:Number = this.§6$+§ == this.§"1§ && this.§5!'§ == StateTournamentResults.§ "-§ ? Number(param2 - 1) : (this.§6$+§ == this.§""$§ && this.§5!'§ == StateTournamentResults.§ "-§ ? Number(param2 + 1) : Number(param2));
         if(param2 == 1 && this.§6$+§ == this.§"1§ && this.§9"s§.lastResult)
         {
            this.§3$#§.gotoAndStop(§?"z§.§-M§(this.§9"s§.l.pli.tn).id);
         }
         else if(param2 > 0)
         {
            this.§3$#§.gotoAndStop("DIAMOND");
            this.§3$#§.StarPromotionIcon.visible = true;
            this.§3$#§.StarPromotionIcon.txtStarRating.text = _loc3_.toString();
         }
         else if(param2 == -1 && this.§6$+§ == this.§""$§ && §?"z§.§-M§(param1.l.pli.tn).id == §?"z§.§`#A§.id && param1.lastResult)
         {
            this.§3$#§.gotoAndStop("DIAMOND");
            if(this.§3$#§.StarPromotionIcon)
            {
               this.§3$#§.StarPromotionIcon.visible = false;
            }
         }
         else if(param1.l.li)
         {
            this.§3$#§.gotoAndStop(§?"z§.§-M§(param1.l.li.tn).id);
            if(this.§3$#§.StarPromotionIcon)
            {
               this.§3$#§.StarPromotionIcon.visible = false;
            }
         }
         else if(param1.l.pli)
         {
            if(!param1.lastResult && this.§6$+§ == this.§"1§)
            {
               this.§3$#§.gotoAndStop(§?"z§.§5?§(param1.l.pli.tn).id);
            }
            else if(!param1.lastResult && this.§6$+§ == this.§""$§)
            {
               this.§3$#§.gotoAndStop(§?"z§.§ W§(param1.l.pli.tn).id);
            }
            else
            {
               this.§3$#§.gotoAndStop(§?"z§.§-M§(param1.l.pli.tn).id);
            }
         }
         else
         {
            this.§3$#§.visble = false;
         }
         if(param2 == 1 && this.§6$+§ == this.§"1§)
         {
            this.§3#s§.gotoAndStop("STAR");
            this.§3#s§.StarPromotionIcon.visible = true;
            if(this.§9"s§.lastResult)
            {
               this.§3#s§.StarPromotionIcon.txtStarRating.text = param2.toString();
            }
            else
            {
               this.§3#s§.StarPromotionIcon.txtStarRating.text = this.§9"s§.l.nli.ls.toString();
            }
         }
         else if(param2 >= 0)
         {
            this.§3#s§.gotoAndStop("STAR");
            _loc3_ = this.§6$+§ == this.§""$§ ? Number(_loc3_) : Number(_loc3_ + 1);
            if(!param1.lastResult && param1.l.nli.ls)
            {
               _loc3_ = param1.l.nli.ls;
            }
            this.§3#s§.StarPromotionIcon.visible = true;
            this.§3#s§.StarPromotionIcon.txtStarRating.text = _loc3_.toString();
         }
         else if(param1.lastResult && this.§6$+§ == this.§""$§ && §?"z§.§-M§(param1.l.pli.tn).id == §?"z§.§`#A§.id && param2 == -1)
         {
            this.§3#s§.gotoAndStop("STAR");
            this.§3#s§.StarPromotionIcon.visible = true;
            this.§3#s§.StarPromotionIcon.txtStarRating.text = (this.§9"s§.l.pli.ls + 1).toString();
         }
         else if(param1.l.nli)
         {
            this.§3#s§.gotoAndStop(§?"z§.§-M§(param1.l.nli.tn).id);
            if(param1.l.nli.ls && param1.l.nli.ls >= 1)
            {
               this.§3#s§.gotoAndStop("STAR");
               this.§3#s§.StarPromotionIcon.visible = true;
               this.§3#s§.StarPromotionIcon.txtStarRating.text = this.§9"s§.l.nli.ls.toString();
            }
         }
         else if(param1.l.pli)
         {
            _loc5_ = !!§2#s§.§6!§.currentLeague() ? §2#s§.§6!§.currentLeague().id : param1.l.pli.tn;
            if(!param1.lastResult && this.§6$+§ == this.§"1§)
            {
               if(§2#s§.§6!§.currentLeague())
               {
                  this.§3#s§.gotoAndStop(§?"z§.§5?§(§2#s§.§6!§.currentLeague().id).id);
               }
               else if(param1.l.pli)
               {
                  this.§3#s§.gotoAndStop(§?"z§.§5?§(§?"z§.§5?§(param1.l.pli.tn).id).id);
               }
            }
            else if(!param1.lastResult && this.§6$+§ == this.§""$§)
            {
               this.§3#s§.gotoAndStop(§?"z§.§5?§(_loc5_).id);
            }
            else
            {
               this.§3#s§.gotoAndStop(§?"z§.§-M§(_loc5_).id);
            }
         }
         else
         {
            this.§3#s§.visble = false;
         }
         var _loc4_:String = "";
         if(!param1.lastResult && this.§6$+§ == this.§"1§ && param2 <= 0)
         {
            _loc4_ = §5e§;
         }
         else if(!param1.lastResult && this.§6$+§ == this.§""$§ && param2 <= 0)
         {
            _loc4_ = §`#W§;
         }
         else
         {
            _loc4_ = !!param1.l.li ? §5!f§ : §&$§;
         }
         (this.§`!H§.getItemByName("LeaguesRating").mClip.textProgress as TextField).text = _loc4_;
         if(param1.l.li || param1.l.pli)
         {
            _loc6_ = !!param1.l.li ? §?"z§.§-M§(param1.l.li.tn).name + "!" : §?"z§.§-M§(param1.l.pli.tn).name + "!";
            if(!param1.lastResult && this.§6$+§ == this.§"1§)
            {
               _loc6_ = !!param1.l.li ? §?"z§.§-M§(param1.l.li.tn).name + "!" : §?"z§.§5?§(param1.l.pli.tn).name + "!";
            }
            else if(!param1.lastResult && this.§6$+§ == this.§"1§)
            {
               _loc6_ = !!param1.l.li ? §?"z§.§ W§(param1.l.li.tn).name + "!" : §?"z§.§ W§(param1.l.pli.tn).name + "!";
            }
            (this.§`!H§.getItemByName("LeaguesRating").mClip.textLeague as TextField).text = _loc6_;
         }
         else
         {
            (this.§`!H§.getItemByName("LeaguesRating").mClip.textLeague as TextField).text = "";
         }
      }
      
      private function §@!6§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Boolean = false) : void
      {
         this.§]w§(param3,param4);
      }
      
      private function §["_§() : void
      {
         §!"p§.§5#u§(§!!?§);
         if(this.§%"-§)
         {
            this.§%"-§.stop();
            this.§%"-§ = null;
         }
      }
      
      private function §]w§(param1:Number, param2:Number) : void
      {
         if(param2 > -1)
         {
            (this.§`!H§.getItemByName("LeaguesRatingProgress").mClip.TextField_LeagueProgressValue_Score as TextField).text = param2.toString();
         }
         else
         {
            (this.§`!H§.getItemByName("LeaguesRatingProgress").mClip.TextField_LeagueProgressValue_Score as TextField).text = "0";
         }
         (this.§`!H§.getItemByName("LeaguesRatingProgress").mClip.TextField_LeagueProgressValue_Goal as TextField).text = param1.toString();
      }
      
      private function §-"$§(param1:Number = 0) : void
      {
         this.§5q§();
         if(this.§6$+§ == this.§"$,§)
         {
            return;
         }
         this.§#"-§ = new this.§;#J§();
         this.§@!i§ = new this.§,$@§();
         this.§="A§ = new this.§,$@§();
         this.§+#H§ = new this.§;#J§();
         if(this.§9C§ > 0 && this.§6$+§ == this.§"1§)
         {
            this.§="A§ = new this.§,$@§();
            if(param1 > 0)
            {
               this.§#"-§ = new this.§3!b§();
               this.§+#H§ = new this.§3!b§();
               this.§@!i§ = new this.§&y§();
               this.§="A§ = new this.§&y§();
            }
         }
         else if(this.§9C§ < 0 && this.§6$+§ == this.§""$§)
         {
            this.§#"-§ = new this.§1"^§();
            this.§+#H§ = new this.§1"^§();
            if(param1 >= 0)
            {
               this.§#"-§ = new this.§="a§();
               this.§+#H§ = new this.§="a§();
            }
         }
         this.§#"-§.name = "LeaguePromotionAnimation";
         this.§#"-§.gotoAndStop(0);
         this.§#"-§.visible = false;
         this.§+#H§.name = "LeaguePromotionAnimationNextLeague";
         this.§+#H§.gotoAndStop(0);
         this.§+#H§.visible = false;
         this.§@!i§.visible = false;
         this.§@!i§.name = "LeaguePromotionAnimationShine";
         this.§@!i§.gotoAndStop(0);
         this.§="A§.visible = false;
         this.§="A§.name = "LeaguePromotionAnimationNextLeagueShine";
         this.§="A§.gotoAndStop(0);
         var _loc2_:DisplayObject = this.§3$#§.getChildByName(this.§#"-§.name);
         if(_loc2_)
         {
            this.§3$#§.removeChild(_loc2_);
         }
         this.§#"-§.addEventListener(Event.ENTER_FRAME,this.§;U§);
         this.§3$#§.addChild(this.§#"-§);
         var _loc3_:Point = new Point(26,20);
         var _loc4_:Number = 1;
         if(this.§#"-§ is this.§="a§ || this.§#"-§ is this.§3!b§)
         {
            _loc3_ = new Point(25,23);
            _loc4_ = 0.5;
         }
         this.§@!i§.x = _loc3_.x;
         this.§@!i§.y = _loc3_.y;
         this.§@!i§.scaleX = this.§@!i§.scaleY = _loc4_;
         this.§#"-§.x = _loc3_.x;
         this.§#"-§.y = _loc3_.y;
         this.§#"-§.scaleX = this.§#"-§.scaleY = _loc4_;
         var _loc5_:DisplayObject;
         if(_loc5_ = this.§3#s§.getChildByName(this.§+#H§.name))
         {
            this.§3#s§.removeChild(_loc5_);
         }
         this.§+#H§.removeEventListener(Event.ENTER_FRAME,this.§4"8§);
         this.§+#H§.addEventListener(Event.ENTER_FRAME,this.§4"8§);
         this.§3#s§.addChild(this.§+#H§);
         if(this.§+#H§ is this.§="a§ || this.§+#H§ is this.§3!b§)
         {
            this.§+#H§.x = 0;
            this.§+#H§.y = 5;
            this.§="A§.scaleX = this.§="A§.scaleY = 0.5;
         }
         else
         {
            this.§+#H§.x = 25;
            this.§+#H§.y = 25;
         }
         this.§+#H§.scaleX = this.§+#H§.scaleY = 0.75;
         this.§="A§.x = this.§+#H§.x;
         this.§="A§.y = this.§+#H§.y;
         var _loc6_:DisplayObject;
         if(_loc6_ = this.§3$#§.getChildByName(this.§@!i§.name))
         {
            this.§3$#§.removeChild(_loc6_);
         }
         var _loc7_:DisplayObject;
         if(_loc7_ = this.§3#s§.getChildByName(this.§="A§.name))
         {
            this.§3#s§.removeChild(_loc7_);
         }
         this.§3$#§.addChild(this.§@!i§);
         this.§3#s§.addChild(this.§="A§);
      }
      
      private function §@!O§() : void
      {
         this.§0"L§[0] = true;
         this.§[!i§.stop();
         this.§[!i§ = null;
         StateTournamentResults.§]Y§ = true;
      }
      
      private function §5!k§() : void
      {
         var _loc8_:Object = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         this.§[!i§.stop();
         this.§[!i§ = null;
         if(this.§#"-§)
         {
            this.§#"-§.visible = true;
            this.§@!i§.visible = true;
            this.§#"-§.gotoAndPlay(0);
            this.§@!i§.gotoAndPlay(0);
            StateTournamentResults.§]Y§ = true;
            if(this.§3$#§.StarPromotionIcon)
            {
               this.§3$#§.setChildIndex(this.§3$#§.StarPromotionIcon,this.§3$#§.numChildren - 1);
            }
            this.§3$#§.setChildIndex(this.§@!i§,0);
         }
         if(this.§+#H§)
         {
            this.§+#H§.visible = true;
            this.§="A§.visible = !(this.§+#H§ is this.§="a§);
            this.§+#H§.gotoAndPlay(0);
            this.§="A§.gotoAndPlay(0);
            if(this.§3#s§.StarPromotionIcon)
            {
               this.§3#s§.setChildIndex(this.§3#s§.StarPromotionIcon,this.§3#s§.numChildren - 1);
            }
            this.§3#s§.setChildIndex(this.§="A§,0);
         }
         this.§1"t§.scaleX = 0;
         var _loc1_:Number = 0;
         if(!this.§9"s§ || !this.§9"s§.l)
         {
            this.§3#s§.visible = true;
            return;
         }
         var _loc2_:Number = !!this.§9"s§.l.pli ? Number(this.§9"s§.l.pli.rt) : Number(0);
         var _loc3_:Number = !!this.§9"s§.l.li ? Number(this.§9"s§.l.li.rt) : Number(_loc2_);
         var _loc4_:Number = !!this.§9"s§.l.nli ? Number(this.§9"s§.l.nli.rt) : Number(0);
         var _loc5_:Number = 1;
         var _loc6_:Number = 0;
         var _loc7_:Number = 0;
         for each(_loc8_ in this.§9"s§.l.p)
         {
            if(_loc8_.u == (AngryBirdsBase.singleton.dataModel.userProgress as §##>§).userID)
            {
               if(_loc8_.lrc)
               {
                  this.§2"f§ = _loc8_.lrc;
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
                     this.§6$+§ = this.§"1§;
                     _loc5_ = (_loc1_ - _loc7_) / (_loc6_ - _loc7_);
                  }
                  if(_loc8_.p == "d")
                  {
                     _loc6_ = _loc2_;
                     _loc7_ = _loc3_;
                     this.§6$+§ = this.§""$§;
                     this.§1"t§.scaleX = §=#Q§.§0"k§((_loc1_ + this.§9C§ * -1 - _loc7_) / (_loc6_ - _loc7_),0,1);
                     _loc5_ = (_loc1_ - _loc7_) / (_loc6_ - _loc7_);
                  }
               }
            }
         }
         this.§]w§(_loc6_,_loc7_);
         _loc9_ = Math.abs(this.§1"t§.scaleX - _loc5_);
         _loc10_ = this.§7"#§(Math.abs(this.§9C§) * _loc9_);
         if(this.§6$+§ == this.§"1§)
         {
            this.§8#L§(true,_loc7_,_loc1_,_loc10_);
         }
         else
         {
            this.§8#L§(true,_loc6_,_loc1_,_loc10_);
         }
         this.§[h§ = null;
         this.§[h§ = §&"H§.§6!§.§6C§(this.§1"t§,{"scaleX":§=#Q§.§0"k§(_loc5_,0,1)},null,_loc10_);
         this.§[h§.onComplete = this.§%k§;
         this.§[h§.play();
      }
      
      private function §%k§() : void
      {
         this.§0"L§[0] = true;
         this.§[h§.stop();
         this.§[h§ = null;
         this.§3#s§.visible = true;
      }
      
      public function §0"0§() : Boolean
      {
         return this.§9$?§;
      }
      
      public function get §1"d§() : Number
      {
         return this.§6"b§;
      }
      
      public function set §1"d§(param1:Number) : void
      {
         this.§6"b§ = param1;
      }
      
      public function set §2"f§(param1:Number) : void
      {
         this.§9C§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:String = this.§9C§ > 0 ? "+" : "";
         (this.§`!H§.getItemByName("LeaguesRatingProgress").mClip.LeagueRating as TextField).text = int(this.mUserRatingCount) + " (" + _loc2_ + this.§9C§.toString() + ")";
         if(this.§0"L§[0] && this.§0"L§[1])
         {
            this.§0"L§ = [false,false];
            dispatchEvent(new § $A§(§ $A§.§4#9§));
         }
      }
      
      public function deActivate() : void
      {
         §!"p§.§5#u§(§!!?§);
         this.§5q§();
      }
      
      private function §5q§() : void
      {
         if(this.§#"-§)
         {
            this.§#"-§.gotoAndStop(0);
            this.§#"-§.removeEventListener(Event.ENTER_FRAME,this.§;U§);
         }
         if(this.§+#H§)
         {
            this.§+#H§.gotoAndStop(0);
            this.§+#H§.removeEventListener(Event.ENTER_FRAME,this.§4"8§);
         }
      }
   }
}
