package §,"&§
{
   import §&#S§.§""Z§;
   import §&#S§.§+,§;
   import §-"i§.StateTournamentResults;
   import §1!@§.§&#a§;
   import §4q§.§!#Q§;
   import §7g§.§4!q§;
   import §7g§.§`!b§;
   import §8§.§#$+§;
   import §<!O§.§'k§;
   import §<!g§.§0$!§;
   import com.rovio.assets.§@`§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class §2!A§ extends EventDispatcher
   {
      
      private static const §=d§:String = "You are in";
      
      private static const §1$§:String = "You were in";
      
      private static const §1",§:String = "Promoted to";
      
      private static const §+#,§:String = "Demoted to ";
      
      private static const §<$"§:String = "RatingCountLoopCountChannel";
       
      
      private var get:MovieClip;
      
      private var §7#+§:MovieClip;
      
      private var §!S§:§+,§ = null;
      
      private var §[Y§:§+,§ = null;
      
      private var §<"A§:§+,§ = null;
      
      private var §<R§:MovieClip = null;
      
      private var §4!j§:MovieClip = null;
      
      private var §!$§:§'k§;
      
      private var §`!r§:MovieClip;
      
      private var §2!n§:MovieClip;
      
      private var §>#o§:MovieClip;
      
      private var §=!?§:MovieClip;
      
      private var §`"j§:int;
      
      private var §+!>§:Object;
      
      private var §!Z§:Number = -1;
      
      private var §9#_§:Number = 0;
      
      private var §!!L§:Number = 0;
      
      public var mUserRatingCount:Number = 0;
      
      private var §8k§:Class;
      
      private var §5#!§:Class;
      
      private var §3#v§:Class;
      
      private var §^#'§:Class;
      
      private var §@p§:Class;
      
      private var §[# §:Class;
      
      private var §3!X§:Boolean;
      
      private const §2#d§:Number = 0;
      
      private const §`"^§:Number = 1;
      
      private const §%!_§:Number = -1;
      
      private var §]"J§:Number = 0;
      
      private var §9#I§:Number = 0.5;
      
      private var §40§:§+,§;
      
      private var §@#,§:Number = 20;
      
      private var §"#?§:Array;
      
      public function §2!A§(param1:§'k§)
      {
         this.§"#?§ = [false,false];
         super();
         this.§!$§ = param1;
         this.§8k§ = §@`§.§4!i§("PromotionAnimation");
         this.§5#!§ = §@`§.§4!i§("DemotionAnimation");
         this.§3#v§ = §@`§.§4!i§("DemotionAnimationStar");
         this.§^#'§ = §@`§.§4!i§("PromotionAnimationStar");
         this.§@p§ = §@`§.§4!i§("PromotionAnimationShine");
         this.§[# § = §@`§.§4!i§("PromotionAnimationStarShine");
         §#$+§.§9"]§(§<$"§,6,2);
      }
      
      private function §^r§(param1:Event) : void
      {
         if(this.§`!r§.currentFrameLabel == "action_sound_crack")
         {
            §#$+§.playSound(§`!b§.§"!I§(this.§+!>§.l.li.tn).§<!+§,§<$"§);
         }
         if(this.§`!r§.currentFrameLabel == "action_sound_puff")
         {
            §#$+§.playSound(§`!b§.§"!I§(this.§+!>§.l.li.tn).§]!>§,§<$"§);
         }
         if(this.§`!r§.currentFrameLabel == "action_sound_glow")
         {
            §#$+§.playSound(§`!b§.§"!I§(this.§+!>§.l.li.tn).§-#f§,§<$"§);
         }
         if(this.§`!r§.currentFrameLabel == "action_sound_promo_change")
         {
            §#$+§.playSound(§`!b§.§"!I§(this.§+!>§.l.li.tn).§&J§,§<$"§);
         }
         if(this.§`!r§.currentFrameLabel == "action_sound_promo_change_star")
         {
            §#$+§.playSound("LeaguePromotionStar",§<$"§);
         }
         if(this.§`!r§.currentFrameLabel == "action_change")
         {
            this.§ #y§();
         }
         else if(this.§`!r§.currentFrame == this.§`!r§.totalFrames)
         {
            this.§"#?§[1] = true;
            this.§`!r§.stop();
            this.§`!r§.visible = false;
            this.§`!r§.removeEventListener(Event.ENTER_FRAME,this.§^r§);
            if(this.get.contains(this.§`!r§))
            {
               this.get.removeChild(this.§`!r§);
            }
            if(this.§2!n§)
            {
               this.§2!n§.stop();
               this.§2!n§.visible = false;
               if(this.get.contains(this.§2!n§))
               {
                  this.get.removeChild(this.§2!n§);
               }
            }
            this.§3!X§ = false;
         }
         else if(this.§`!r§.currentFrame == 1)
         {
            this.§3!X§ = true;
            if(this.§`!r§.txtStarRating)
            {
               if(this.§ !i§ >= 0 && this.§]"l§ < 0)
               {
                  this.§`!r§.txtStarRating.text = (this.§ !i§ + 1).toString();
               }
            }
            if(this.§`!r§ is this.§5#!§)
            {
               if(this.§2!n§)
               {
                  this.§2!n§.visible = false;
               }
               this.get.setChildIndex(this.§`!r§,this.get.numChildren - 1);
            }
         }
      }
      
      private function § #y§() : void
      {
         if(this.get)
         {
            if(this.§ !i§ >= 0 && this.§]"l§ > 0)
            {
               this.get.gotoAndStop("DIAMOND");
               this.get.StarPromotionIcon.visible = true;
               this.get.StarPromotionIcon.txtStarRating.text = this.§ !i§.toString();
            }
            else if(this.§ !i§ >= 1 && this.§]"l§ < 0)
            {
               this.get.gotoAndStop("DIAMOND");
               this.get.StarPromotionIcon.visible = true;
               this.get.StarPromotionIcon.txtStarRating.text = this.§ !i§.toString();
            }
            else if(this.§+!>§ && this.§+!>§.l)
            {
               this.get.gotoAndStop(§`!b§.§"!I§(this.§+!>§.l.li.tn).id);
               if(this.get.StarPromotionIcon)
               {
                  this.get.StarPromotionIcon.visible = false;
               }
            }
         }
         (this.§!$§.getItemByName("LeaguesRating").mClip.textProgress as TextField).text = this.§]"l§ > 0 ? §1",§ : §+#,§;
         if(this.§ !i§ > 0 || this.§ !i§ == 0 && this.§]"l§ < 0 && §`!b§.§"!I§(this.§+!>§.l.li.tn).id == §`!b§.§-#;§.id)
         {
            (this.§!$§.getItemByName("LeaguesRating").mClip.textProgress as TextField).text = §=d§;
         }
         (this.§!$§.getItemByName("LeaguesRating").mClip.textLeague as TextField).text = §`!b§.§"!I§(this.§+!>§.l.li.tn).name + "!";
      }
      
      private function §%!I§() : Object
      {
         var _loc1_:Object = null;
         for each(_loc1_ in this.§+!>§.l.p)
         {
            if(_loc1_.u == (AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§).userID)
            {
               return _loc1_;
            }
            continue;
         }
         return null;
      }
      
      private function §1!&§(param1:Event) : void
      {
         var _loc2_:Number = NaN;
         if(this.§>#o§.currentFrameLabel == "action_change")
         {
            if(this.§7#+§)
            {
               if(this.§=!?§)
               {
                  this.§7#+§.setChildIndex(this.§>#o§,this.§7#+§.numChildren - 1);
                  this.§=!?§.stop();
                  this.§=!?§.visible = false;
               }
               _loc2_ = this.§]"J§ == this.§`"^§ && this.§`"j§ == StateTournamentResults.§#"8§ ? Number(this.§ !i§ - 1) : (this.§]"J§ == this.§%!_§ && this.§`"j§ == StateTournamentResults.§#"8§ ? Number(this.§ !i§ + 1) : Number(this.§ !i§));
               if(this.§+!>§.l.nli.ls && this.§+!>§.l.nli.ls > 0)
               {
                  this.§7#+§.gotoAndStop("STAR");
                  this.§7#+§.StarPromotionIcon.visible = true;
                  this.§7#+§.StarPromotionIcon.txtStarRating.text = this.§+!>§.l.nli.ls.toString();
               }
               else if(this.§ !i§ >= 0 && this.§]"l§ > 0)
               {
                  this.§7#+§.gotoAndStop("STAR");
                  this.§7#+§.StarPromotionIcon.visible = true;
                  this.§7#+§.StarPromotionIcon.txtStarRating.text = (this.§ !i§ + 1).toString();
               }
               else if(this.§ !i§ > 1 && this.§]"l§ < 0)
               {
                  this.§7#+§.gotoAndStop("STAR");
                  this.§7#+§.StarPromotionIcon.visible = true;
                  this.§7#+§.StarPromotionIcon.txtStarRating.text = _loc2_.toString();
               }
               else if(this.§ !i§ == 0 && this.§]"l§ != 0)
               {
                  this.§7#+§.gotoAndStop("STAR");
                  this.§7#+§.StarPromotionIcon.visible = true;
                  this.§7#+§.StarPromotionIcon.txtStarRating.text = "1";
               }
               else if(this.§ !i§ == -1 && §`!b§.§"!I§(this.§+!>§.l.pli.tn).id == §`!b§.§-#;§.id)
               {
                  this.§7#+§.gotoAndStop("DIAMOND");
                  this.§7#+§.StarPromotionIcon.visible = false;
               }
               else
               {
                  this.§7#+§.gotoAndStop(§`!b§.§"!I§(this.§+!>§.l.nli.tn).id);
               }
            }
         }
         else if(this.§>#o§.currentFrame == this.§>#o§.totalFrames)
         {
            this.§>#o§.stop();
            this.§>#o§.visible = false;
            this.§>#o§.removeEventListener(Event.ENTER_FRAME,this.§^r§);
            if(this.§7#+§.contains(this.§>#o§))
            {
               this.§7#+§.removeChild(this.§>#o§);
            }
            if(this.§=!?§)
            {
               this.§=!?§.stop();
               this.§=!?§.visible = false;
               if(this.§7#+§.contains(this.§=!?§))
               {
                  this.§7#+§.removeChild(this.§=!?§);
               }
            }
            this.§3!X§ = false;
         }
         else if(this.§>#o§.currentFrame == 1)
         {
            this.§3!X§ = true;
            if(this.§7#+§.StarPromotionIcon && this.§7#+§.StarPromotionIcon.txtStarRating)
            {
               _loc2_ = this.§]"J§ == this.§`"^§ && this.§`"j§ == StateTournamentResults.§#"8§ ? Number(this.§ !i§ - 1) : (this.§]"J§ == this.§%!_§ && this.§`"j§ == StateTournamentResults.§#"8§ ? Number(this.§ !i§ + 1) : Number(this.§ !i§));
               if(this.§ !i§ >= 0 && this.§]"l§ > 0)
               {
                  this.§7#+§.StarPromotionIcon.visible = true;
                  this.§7#+§.StarPromotionIcon.txtStarRating.text = this.§ !i§.toString();
               }
               else if(this.§ !i§ >= 0 && this.§]"l§ < 0)
               {
                  _loc2_ = this.§]"J§ == this.§%!_§ ? Number(_loc2_ + 1) : Number(_loc2_);
                  this.§7#+§.StarPromotionIcon.visible = true;
                  this.§7#+§.StarPromotionIcon.txtStarRating.text = _loc2_.toString();
               }
            }
            if(this.§>#o§ is this.§5#!§)
            {
               if(this.§=!?§)
               {
                  this.§=!?§.visible = false;
               }
               this.§7#+§.setChildIndex(this.§>#o§,this.§7#+§.numChildren - 1);
            }
         }
      }
      
      public function §5#X§(param1:Object = null, param2:int = 0, param3:Boolean = false) : void
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
         this.§`"j§ = param2;
         this.§+!>§ = param1;
         this.§]"J§ = this.§2#d§;
         this.§"#?§ = [false,false];
         §#$+§.§%!!§(§<$"§);
         this.§=!2§();
         this.§<R§ = this.§!$§.getItemByName("LeagueProgress").mClip;
         this.§4!j§ = this.§<R§.mcProgress;
         this.§!$§.getItemByName("LeaguesRating").mClip.mcNotInLeague.visible = false;
         this.§!$§.getItemByName("LeaguesRating").mClip.textLeague.visible = true;
         if(param1 && param1.l)
         {
            this.§!$§.getItemByName("LeaguesRatingProgress").setVisibility(true);
            _loc4_ = !!param1.l.pli ? Number(param1.l.pli.rt) : Number(0);
            _loc5_ = !!param1.l.li ? Number(param1.l.li.rt) : Number(_loc4_);
            if((_loc6_ = !!param1.l.nli ? Number(param1.l.nli.rt) : Number(0)) == 0 && §4!q§.§3!]§.§+"s§())
            {
               _loc6_ = §`!b§.§<9§(§4!q§.§3!]§.§+"s§().id).§[!P§;
            }
            else if(_loc6_ == 0 && param1.l.pli)
            {
               _loc6_ = §`!b§.§<9§(§`!b§.§<9§(param1.l.pli.tn).id).§[!P§;
            }
            _loc8_ = (_loc7_ = this.§%!I§()) && _loc7_.lr ? Number(_loc7_.lr) : (!!§4!q§.§3!]§.§5"9§() ? Number(§4!q§.§3!]§.§5"9§().lr) : Number(0));
            this.§4!j§.scaleX = §&#a§.§9#V§((_loc8_ - this.§]"l§ - _loc5_) / (_loc6_ - _loc5_),0,1);
            _loc9_ = 1;
            if(this.§ !i§ == -1 && param1.l.li && param1.l.pli && §`!b§.§"!I§(param1.l.li.tn).id == §`!b§.§-#;§.id && §`!b§.§"!I§(param1.l.pli.tn).id == §`!b§.§-#;§.id)
            {
               this.§ !i§ = 0;
            }
            _loc10_ = _loc6_;
            _loc11_ = _loc5_;
            for each(_loc12_ in param1.l.p)
            {
               if(_loc12_.u == (AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§).userID)
               {
                  if(_loc12_.lr)
                  {
                     _loc8_ = _loc12_.lr;
                  }
                  if(_loc12_.p)
                  {
                     if(_loc12_.p == "u")
                     {
                        _loc10_ = !!this.§+!>§.lastResult ? Number(_loc5_) : Number(_loc10_);
                        _loc11_ = !!this.§+!>§.lastResult ? Number(_loc4_) : Number(_loc11_);
                        this.§]"J§ = this.§`"^§;
                        _loc9_ = 1;
                     }
                     if(_loc12_.p == "d")
                     {
                        _loc10_ = !!this.§+!>§.lastResult ? Number(_loc4_) : Number(_loc10_);
                        _loc11_ = !!this.§+!>§.lastResult ? Number(_loc5_) : Number(_loc11_);
                        if(this.§+!>§.lastResult)
                        {
                           if(this.§ !i§ != 0 || this.§ !i§ == 0 && param1.l.li && param1.l.li.tn == §`!b§.§-#;§.id)
                           {
                              _loc11_ += 100;
                              _loc10_ += 100;
                           }
                        }
                        this.§4!j§.scaleX = §&#a§.§9#V§((_loc8_ + this.§]"l§ - _loc10_) / (_loc10_ - _loc11_),0,1);
                        _loc9_ = 0;
                        this.§]"J§ = this.§%!_§;
                     }
                  }
               }
            }
            this.§!!L§ = this.§]"l§;
            this.§9#_§ = _loc8_;
            this.§-!V§(param1,this.§ !i§);
            if(this.§`"j§ == StateTournamentResults.§#"8§)
            {
               this.§@"#§(this.§]"l§,this.§ !i§);
            }
            this.§^"[§(_loc9_,_loc6_,_loc10_,_loc11_,this.§ !i§,param3);
            this.§,#v§(_loc8_,this.§]"l§,_loc10_,_loc11_,this.§`"j§ == StateTournamentResults.§#"8§);
         }
         else
         {
            this.§&"5§();
         }
      }
      
      private function §&"5§() : void
      {
         this.get.gotoAndStop("NOLEAGUE");
         this.§!$§.getItemByName("LeaguesRating").mClip.textLeague.visible = false;
         this.§!$§.getItemByName("LeaguesRating").mClip.mcNotInLeague.visible = true;
         (this.§!$§.getItemByName("LeaguesRating").mClip.textProgress as TextField).text = "";
         this.§!$§.getItemByName("LeaguesRatingProgress").setVisibility(false);
      }
      
      private function §^"[§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean = false) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         if(this.§`"j§ == StateTournamentResults.§#"8§ && this.§+!>§.lastResult)
         {
            _loc7_ = this.§+!>§.l.pli && this.§+!>§.l.li && (this.§+!>§.l.pli.tn != this.§+!>§.l.li.tn || param5 >= 0);
            _loc8_ = this.§]"J§ == this.§`"^§ ? Number(param5 - 1) : (this.§]"J§ == this.§%!_§ && param5 != -1 ? Number(param5 + 1) : Number(param5));
            if(_loc7_ && this.§]"J§ != this.§2#d§)
            {
               (this.§!$§.getItemByName("LeaguesRating").mClip.textLeague as TextField).text = §`!b§.§"!I§(this.§+!>§.l.pli.tn).name + "!";
               if(this.§!!L§ < 0)
               {
                  if(param5 == 0)
                  {
                     this.get.gotoAndStop("DIAMOND");
                     this.get.StarPromotionIcon.visible = true;
                     this.get.StarPromotionIcon.txtStarRating.text = (param5 + 1).toString();
                     this.§7#+§.gotoAndStop("STAR");
                     this.§7#+§.StarPromotionIcon.visible = true;
                     this.§7#+§.StarPromotionIcon.txtStarRating.text = (param5 + 1).toString();
                  }
                  else if(param5 >= 1)
                  {
                     this.get.gotoAndStop("DIAMOND");
                     this.get.StarPromotionIcon.visible = true;
                     this.get.StarPromotionIcon.txtStarRating.text = _loc8_.toString();
                     this.§7#+§.gotoAndStop("STAR");
                     this.§7#+§.StarPromotionIcon.visible = true;
                     this.§7#+§.StarPromotionIcon.txtStarRating.text = (_loc8_ + 1).toString();
                  }
                  else if(param5 == -1 && §`!b§.§"!I§(this.§+!>§.l.pli.tn).id == §`!b§.§-#;§.id)
                  {
                     this.get.gotoAndStop(§`!b§.§"!I§(this.§+!>§.l.pli.tn).id);
                     this.§7#+§.gotoAndStop("STAR");
                     this.§7#+§.StarPromotionIcon.visible = true;
                     this.§7#+§.StarPromotionIcon.txtStarRating.text = "1";
                  }
                  else
                  {
                     this.get.gotoAndStop(§`!b§.§"!I§(this.§+!>§.l.pli.tn).id);
                     if(this.get.StarPromotionIcon)
                     {
                        this.get.StarPromotionIcon.visible = false;
                     }
                     this.§7#+§.gotoAndStop(§`!b§.§<9§(this.§+!>§.l.pli.tn).id);
                  }
                  if(!param6)
                  {
                     this.mUserRatingCount = this.§9#_§ + Math.abs(this.§!!L§);
                  }
               }
               else
               {
                  _loc8_ = this.§]"J§ == this.§`"^§ ? Number(param5 - 1) : (this.§]"J§ == this.§%!_§ ? Number(param5 + 1) : Number(param5));
                  if(param5 == 1)
                  {
                     this.get.gotoAndStop(§`!b§.§"!I§(this.§+!>§.l.pli.tn).id);
                     if(this.get.StarPromotionIcon)
                     {
                        this.get.StarPromotionIcon.visible = false;
                     }
                     this.§7#+§.gotoAndStop("STAR");
                     this.§7#+§.StarPromotionIcon.visible = true;
                     this.§7#+§.StarPromotionIcon.txtStarRating.text = param5.toString();
                  }
                  else if(param5 > 1)
                  {
                     this.get.gotoAndStop("DIAMOND");
                     this.get.StarPromotionIcon.visible = true;
                     this.get.StarPromotionIcon.txtStarRating.text = _loc8_.toString();
                     this.§7#+§.gotoAndStop("STAR");
                     this.§7#+§.StarPromotionIcon.visible = true;
                     this.§7#+§.StarPromotionIcon.txtStarRating.text = (_loc8_ + 1).toString();
                  }
                  else
                  {
                     this.get.gotoAndStop(§`!b§.§"!I§(this.§+!>§.l.pli.tn).id);
                     this.§7#+§.gotoAndStop(§`!b§.§"!I§(this.§+!>§.l.li.tn).id);
                  }
                  if(!param6)
                  {
                     this.mUserRatingCount = this.§9#_§ - Math.abs(this.§!!L§);
                  }
               }
               _loc9_ = §&#a§.§9#V§((this.§9#_§ - this.§!!L§ - param4) / (param3 - param4),0,1);
               if(this.§!!L§ < 0)
               {
                  _loc9_ = §&#a§.§9#V§((this.§9#_§ + this.§!!L§ * -1 - param4) / (param3 - param4),0,1);
               }
               this.§4!j§.scaleX = _loc9_;
               this.§@!N§(param3,param4);
               if(param6)
               {
                  _loc10_ = Math.abs(_loc9_ - param1);
                  _loc11_ = this.§1!<§(Math.abs(this.§!!L§) * _loc10_);
                  if(this.§]"J§ == this.§`"^§)
                  {
                     this.§^!S§(true,param4,param3,_loc11_);
                  }
                  else
                  {
                     this.§^!S§(true,param3,param4,_loc11_);
                  }
                  this.§!S§ = §""Z§.§3!]§.§5"0§(this.§4!j§,{"scaleX":§&#a§.§9#V§(param1,0,1)},null,_loc11_);
                  this.§!S§.onComplete = this.§2"B§;
                  this.§!S§.play();
               }
            }
            else
            {
               this.§7#+§.visible = true;
               if(this.§9#_§ > 0)
               {
                  this.§4!j§.scaleX = §&#a§.§9#V§((this.§9#_§ - this.§!!L§ - param4) / (param3 - param4),0,1);
               }
               else
               {
                  this.§4!j§.scaleX = §&#a§.§9#V§((this.§9#_§ + this.§!!L§ - param4) / (param3 - param4),0,1);
               }
               _loc12_ = 0;
               _loc13_ = this.§9#_§;
               if(this.§]"l§ > 0)
               {
                  _loc12_ = _loc13_ - this.§]"l§;
               }
               else
               {
                  _loc12_ = _loc13_ + Math.abs(this.§]"l§);
               }
               this.§"#?§[1] = true;
               if(param6)
               {
                  _loc11_ = this.§1!<§(Math.abs(this.§!!L§));
                  this.§^!S§(true,_loc12_,_loc13_,_loc11_);
                  this.§!S§ = §""Z§.§3!]§.§5"0§(this.§4!j§,{"scaleX":§&#a§.§9#V§((this.§9#_§ - param4) / (param3 - param4),0,1)},null,_loc11_);
                  this.§!S§.onComplete = this.§&! §;
                  this.§!S§.play();
               }
               else
               {
                  this.mUserRatingCount = _loc12_;
               }
            }
         }
         else
         {
            this.§7#+§.visible = true;
            this.§4!j§.scaleX = §&#a§.§9#V§(Math.abs(this.§9#_§ - param4) / (param3 - param4),0,1);
            this.§@!N§(param3,param4);
            if(param6)
            {
               _loc11_ = this.§1!<§(this.§!!L§);
               this.§^!S§(false,this.§9#_§,this.§9#_§,_loc11_);
               if(this.§!!L§ != 0)
               {
                  this.§!S§ = §""Z§.§3!]§.§5"0§(this.§4!j§,{"scaleX":§&#a§.§9#V§(Math.abs(this.§9#_§ - param4) / (param3 - param4),0,1)},null,_loc11_);
                  this.§!S§.onComplete = this.§&! §;
                  this.§!S§.play();
               }
            }
            else
            {
               this.mUserRatingCount = this.§9#_§;
            }
         }
      }
      
      private function §1!<§(param1:Number) : Number
      {
         return Math.abs(param1) / this.§@#,§ * this.§9#I§;
      }
      
      private function §^!S§(param1:Boolean, param2:Number, param3:Number, param4:Number) : void
      {
         if(param1)
         {
            if(this.§40§)
            {
               this.§40§.stop();
               this.§40§ = null;
            }
            if(param2 != param3)
            {
               §#$+§.playSound("Hiscore_Count",§<$"§,100);
            }
            this.§40§ = §""Z§.§3!]§.§5"0§(this,{"mUserRatingCount":param3},{"mUserRatingCount":param2},param4);
            this.§40§.onComplete = this.§3!C§;
            this.§40§.play();
         }
         else
         {
            this.mUserRatingCount = param3;
         }
      }
      
      private function §=!2§() : void
      {
         this.get = this.§!$§.getItemByName("CurrentLeagueIcon").mClip;
         this.§7#+§ = this.§!$§.getItemByName("NextLeagueIcon").mClip;
         this.get.gotoAndStop(0);
         this.§7#+§.gotoAndStop(0);
         if(this.get.StarPromotionIcon)
         {
            this.get.StarPromotionIcon.visible = false;
         }
         if(this.§7#+§.StarPromotionIcon)
         {
            this.§7#+§.StarPromotionIcon.visible = false;
         }
      }
      
      private function §-!V§(param1:Object, param2:Number = 0) : void
      {
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc3_:Number = this.§]"J§ == this.§`"^§ && this.§`"j§ == StateTournamentResults.§#"8§ ? Number(param2 - 1) : (this.§]"J§ == this.§%!_§ && this.§`"j§ == StateTournamentResults.§#"8§ ? Number(param2 + 1) : Number(param2));
         if(param2 == 1 && this.§]"J§ == this.§`"^§ && this.§+!>§.lastResult)
         {
            this.get.gotoAndStop(§`!b§.§"!I§(this.§+!>§.l.pli.tn).id);
         }
         else if(param2 > 0)
         {
            this.get.gotoAndStop("DIAMOND");
            this.get.StarPromotionIcon.visible = true;
            this.get.StarPromotionIcon.txtStarRating.text = _loc3_.toString();
         }
         else if(param2 == -1 && this.§]"J§ == this.§%!_§ && §`!b§.§"!I§(param1.l.pli.tn).id == §`!b§.§-#;§.id && param1.lastResult)
         {
            this.get.gotoAndStop("DIAMOND");
            if(this.get.StarPromotionIcon)
            {
               this.get.StarPromotionIcon.visible = false;
            }
         }
         else if(param1.l.li)
         {
            this.get.gotoAndStop(§`!b§.§"!I§(param1.l.li.tn).id);
            if(this.get.StarPromotionIcon)
            {
               this.get.StarPromotionIcon.visible = false;
            }
         }
         else if(param1.l.pli)
         {
            if(!param1.lastResult && this.§]"J§ == this.§`"^§)
            {
               this.get.gotoAndStop(§`!b§.§<9§(param1.l.pli.tn).id);
            }
            else if(!param1.lastResult && this.§]"J§ == this.§%!_§)
            {
               this.get.gotoAndStop(§`!b§.§8"E§(param1.l.pli.tn).id);
            }
            else
            {
               this.get.gotoAndStop(§`!b§.§"!I§(param1.l.pli.tn).id);
            }
         }
         else
         {
            this.get.visble = false;
         }
         if(param2 == 1 && this.§]"J§ == this.§`"^§)
         {
            this.§7#+§.gotoAndStop("STAR");
            this.§7#+§.StarPromotionIcon.visible = true;
            if(this.§+!>§.lastResult)
            {
               this.§7#+§.StarPromotionIcon.txtStarRating.text = param2.toString();
            }
            else
            {
               this.§7#+§.StarPromotionIcon.txtStarRating.text = this.§+!>§.l.nli.ls.toString();
            }
         }
         else if(param2 >= 0)
         {
            this.§7#+§.gotoAndStop("STAR");
            _loc3_ = this.§]"J§ == this.§%!_§ ? Number(_loc3_) : Number(_loc3_ + 1);
            if(!param1.lastResult && param1.l.nli.ls)
            {
               _loc3_ = param1.l.nli.ls;
            }
            this.§7#+§.StarPromotionIcon.visible = true;
            this.§7#+§.StarPromotionIcon.txtStarRating.text = _loc3_.toString();
         }
         else if(param1.lastResult && this.§]"J§ == this.§%!_§ && §`!b§.§"!I§(param1.l.pli.tn).id == §`!b§.§-#;§.id && param2 == -1)
         {
            this.§7#+§.gotoAndStop("STAR");
            this.§7#+§.StarPromotionIcon.visible = true;
            this.§7#+§.StarPromotionIcon.txtStarRating.text = (this.§+!>§.l.pli.ls + 1).toString();
         }
         else if(param1.l.nli)
         {
            this.§7#+§.gotoAndStop(§`!b§.§"!I§(param1.l.nli.tn).id);
            if(param1.l.nli.ls && param1.l.nli.ls >= 1)
            {
               this.§7#+§.gotoAndStop("STAR");
               this.§7#+§.StarPromotionIcon.visible = true;
               this.§7#+§.StarPromotionIcon.txtStarRating.text = this.§+!>§.l.nli.ls.toString();
            }
         }
         else if(param1.l.pli)
         {
            _loc5_ = !!§4!q§.§3!]§.§+"s§() ? §4!q§.§3!]§.§+"s§().id : param1.l.pli.tn;
            if(!param1.lastResult && this.§]"J§ == this.§`"^§)
            {
               if(§4!q§.§3!]§.§+"s§())
               {
                  this.§7#+§.gotoAndStop(§`!b§.§<9§(§4!q§.§3!]§.§+"s§().id).id);
               }
               else if(param1.l.pli)
               {
                  this.§7#+§.gotoAndStop(§`!b§.§<9§(§`!b§.§<9§(param1.l.pli.tn).id).id);
               }
            }
            else if(!param1.lastResult && this.§]"J§ == this.§%!_§)
            {
               this.§7#+§.gotoAndStop(§`!b§.§<9§(_loc5_).id);
            }
            else
            {
               this.§7#+§.gotoAndStop(§`!b§.§"!I§(_loc5_).id);
            }
         }
         else
         {
            this.§7#+§.visble = false;
         }
         var _loc4_:String = "";
         if(!param1.lastResult && this.§]"J§ == this.§`"^§ && param2 <= 0)
         {
            _loc4_ = §1",§;
         }
         else if(!param1.lastResult && this.§]"J§ == this.§%!_§ && param2 <= 0)
         {
            _loc4_ = §+#,§;
         }
         else
         {
            _loc4_ = !!param1.l.li ? §=d§ : §1$§;
         }
         (this.§!$§.getItemByName("LeaguesRating").mClip.textProgress as TextField).text = _loc4_;
         if(param1.l.li || param1.l.pli)
         {
            _loc6_ = !!param1.l.li ? §`!b§.§"!I§(param1.l.li.tn).name + "!" : §`!b§.§"!I§(param1.l.pli.tn).name + "!";
            if(!param1.lastResult && this.§]"J§ == this.§`"^§)
            {
               _loc6_ = !!param1.l.li ? §`!b§.§"!I§(param1.l.li.tn).name + "!" : §`!b§.§<9§(param1.l.pli.tn).name + "!";
            }
            else if(!param1.lastResult && this.§]"J§ == this.§`"^§)
            {
               _loc6_ = !!param1.l.li ? §`!b§.§8"E§(param1.l.li.tn).name + "!" : §`!b§.§8"E§(param1.l.pli.tn).name + "!";
            }
            (this.§!$§.getItemByName("LeaguesRating").mClip.textLeague as TextField).text = _loc6_;
         }
         else
         {
            (this.§!$§.getItemByName("LeaguesRating").mClip.textLeague as TextField).text = "";
         }
      }
      
      private function §,#v§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Boolean = false) : void
      {
         this.§@!N§(param3,param4);
      }
      
      private function §3!C§() : void
      {
         §#$+§.§%!!§(§<$"§);
         if(this.§40§)
         {
            this.§40§.stop();
            this.§40§ = null;
         }
      }
      
      private function §@!N§(param1:Number, param2:Number) : void
      {
         (this.§!$§.getItemByName("LeaguesRatingProgress").mClip.TextField_LeagueProgressValue_Score as TextField).text = param2.toString();
         (this.§!$§.getItemByName("LeaguesRatingProgress").mClip.TextField_LeagueProgressValue_Goal as TextField).text = param1.toString();
      }
      
      private function §@"#§(param1:Number = 0, param2:Number = 0) : void
      {
         if(this.§]"J§ == this.§2#d§)
         {
            return;
         }
         this.§`!r§ = new this.§8k§();
         this.§2!n§ = new this.§@p§();
         this.§=!?§ = new this.§@p§();
         this.§>#o§ = new this.§8k§();
         if(param1 > 0 && this.§]"J§ == this.§`"^§)
         {
            this.§=!?§ = new this.§@p§();
            if(param2 > 0)
            {
               this.§`!r§ = new this.§^#'§();
               this.§>#o§ = new this.§^#'§();
               this.§2!n§ = new this.§[# §();
               this.§=!?§ = new this.§[# §();
            }
         }
         else if(param1 < 0 && this.§]"J§ == this.§%!_§)
         {
            this.§`!r§ = new this.§5#!§();
            this.§>#o§ = new this.§5#!§();
            if(param2 >= 0)
            {
               this.§`!r§ = new this.§3#v§();
               this.§>#o§ = new this.§3#v§();
            }
         }
         this.§`!r§.name = "LeaguePromotionAnimation";
         this.§`!r§.gotoAndStop(0);
         this.§`!r§.visible = false;
         this.§>#o§.name = "LeaguePromotionAnimationNextLeague";
         this.§>#o§.gotoAndStop(0);
         this.§>#o§.visible = false;
         this.§2!n§.visible = false;
         this.§2!n§.name = "LeaguePromotionAnimationShine";
         this.§2!n§.gotoAndStop(0);
         this.§=!?§.visible = false;
         this.§=!?§.name = "LeaguePromotionAnimationNextLeagueShine";
         this.§=!?§.gotoAndStop(0);
         var _loc3_:Point = new Point(26,20);
         var _loc4_:Number = 1;
         if(this.§`!r§ is this.§3#v§ || this.§`!r§ is this.§^#'§)
         {
            _loc3_ = new Point(25,23);
            _loc4_ = 0.5;
         }
         this.§2!n§.x = _loc3_.x;
         this.§2!n§.y = _loc3_.y;
         this.§2!n§.scaleX = this.§2!n§.scaleY = _loc4_;
         this.§`!r§.x = _loc3_.x;
         this.§`!r§.y = _loc3_.y;
         this.§`!r§.scaleX = this.§`!r§.scaleY = _loc4_;
         var _loc5_:DisplayObject;
         if(_loc5_ = this.§7#+§.getChildByName(this.§>#o§.name))
         {
            this.§7#+§.removeChild(_loc5_);
         }
         this.§>#o§.removeEventListener(Event.ENTER_FRAME,this.§1!&§);
         this.§>#o§.addEventListener(Event.ENTER_FRAME,this.§1!&§);
         this.§7#+§.addChild(this.§>#o§);
         if(this.§>#o§ is this.§3#v§ || this.§>#o§ is this.§^#'§)
         {
            this.§>#o§.x = 0;
            this.§>#o§.y = 5;
            this.§=!?§.scaleX = this.§=!?§.scaleY = 0.5;
         }
         else
         {
            this.§>#o§.x = 25;
            this.§>#o§.y = 25;
         }
         this.§>#o§.scaleX = this.§>#o§.scaleY = 0.75;
         this.§=!?§.x = this.§>#o§.x;
         this.§=!?§.y = this.§>#o§.y;
         var _loc6_:DisplayObject;
         if(_loc6_ = this.get.getChildByName(this.§2!n§.name))
         {
            this.get.removeChild(_loc6_);
         }
         var _loc7_:DisplayObject;
         if(_loc7_ = this.§7#+§.getChildByName(this.§=!?§.name))
         {
            this.§7#+§.removeChild(_loc7_);
         }
         this.get.addChild(this.§2!n§);
         this.§7#+§.addChild(this.§=!?§);
      }
      
      private function §&! §() : void
      {
         this.§"#?§[0] = true;
         this.§!S§.stop();
         this.§!S§ = null;
         StateTournamentResults.§7#=§ = true;
      }
      
      private function §2"B§() : void
      {
         var _loc9_:Object = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         this.§!S§.stop();
         this.§!S§ = null;
         if(this.§`!r§)
         {
            this.§ #y§();
            StateTournamentResults.§7#=§ = true;
            if(this.get.StarPromotionIcon)
            {
               this.get.setChildIndex(this.get.StarPromotionIcon,this.get.numChildren - 1);
            }
            this.get.setChildIndex(this.§2!n§,0);
         }
         if(this.§>#o§)
         {
            this.§>#o§.visible = true;
            this.§=!?§.visible = !(this.§>#o§ is this.§3#v§);
            this.§>#o§.gotoAndPlay(0);
            this.§=!?§.gotoAndPlay(0);
            if(this.§7#+§.StarPromotionIcon)
            {
               this.§7#+§.setChildIndex(this.§7#+§.StarPromotionIcon,this.§7#+§.numChildren - 1);
            }
            this.§7#+§.setChildIndex(this.§=!?§,0);
         }
         this.§4!j§.scaleX = 0;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         if(!this.§+!>§ || !this.§+!>§.l)
         {
            this.§7#+§.visible = true;
            return;
         }
         var _loc3_:Number = !!this.§+!>§.l.pli ? Number(this.§+!>§.l.pli.rt) : Number(0);
         var _loc4_:Number = !!this.§+!>§.l.li ? Number(this.§+!>§.l.li.rt) : Number(_loc3_);
         var _loc5_:Number = !!this.§+!>§.l.nli ? Number(this.§+!>§.l.nli.rt) : Number(0);
         var _loc6_:Number = 1;
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         for each(_loc9_ in this.§+!>§.l.p)
         {
            if(_loc9_.u == (AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§).userID)
            {
               if(_loc9_.lrc)
               {
                  _loc2_ = _loc9_.lrc;
               }
               if(_loc9_.lr)
               {
                  _loc1_ = _loc9_.lr;
               }
               if(_loc9_.p)
               {
                  if(_loc9_.p == "u")
                  {
                     _loc7_ = _loc5_;
                     _loc8_ = _loc4_;
                     this.§]"J§ = this.§`"^§;
                     _loc6_ = (_loc1_ - _loc8_) / (_loc7_ - _loc8_);
                  }
                  if(_loc9_.p == "d")
                  {
                     _loc7_ = _loc3_;
                     _loc8_ = _loc4_;
                     this.§]"J§ = this.§%!_§;
                     this.§4!j§.scaleX = §&#a§.§9#V§((_loc1_ + _loc2_ * -1 - _loc8_) / (_loc7_ - _loc8_),0,1);
                     _loc6_ = (_loc1_ - _loc8_) / (_loc7_ - _loc8_);
                  }
               }
            }
         }
         this.§@!N§(_loc7_,_loc8_);
         _loc10_ = Math.abs(this.§4!j§.scaleX - _loc6_);
         _loc11_ = this.§1!<§(Math.abs(this.§!!L§) * _loc10_);
         if(this.§]"J§ == this.§`"^§)
         {
            this.§^!S§(true,_loc8_,_loc1_,_loc11_);
         }
         else
         {
            this.§^!S§(true,_loc7_,_loc1_,_loc11_);
         }
         this.§[Y§ = null;
         this.§[Y§ = §""Z§.§3!]§.§5"0§(this.§4!j§,{"scaleX":§&#a§.§9#V§(_loc6_,0,1)},null,_loc11_);
         this.§[Y§.onComplete = this.§2#6§;
         this.§[Y§.play();
      }
      
      private function §2#6§() : void
      {
         this.§"#?§[0] = true;
         this.§[Y§.stop();
         this.§[Y§ = null;
         this.§7#+§.visible = true;
      }
      
      public function §"#Z§() : Boolean
      {
         return this.§3!X§;
      }
      
      public function get § !i§() : Number
      {
         return this.§!Z§;
      }
      
      public function set § !i§(param1:Number) : void
      {
         this.§!Z§ = param1;
      }
      
      public function get §]"l§() : Number
      {
         return this.§!!L§;
      }
      
      public function set §]"l§(param1:Number) : void
      {
         this.§!!L§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:String = this.§]"l§ > 0 ? "+" : "";
         (this.§!$§.getItemByName("LeaguesRatingProgress").mClip.LeagueRating as TextField).text = int(this.mUserRatingCount) + " (" + _loc2_ + this.§]"l§.toString() + ")";
         if(this.§"#?§[0] && this.§"#?§[1])
         {
            this.§"#?§ = [false,false];
            dispatchEvent(new §0$!§(§0$!§.§!0§));
         }
      }
      
      public function deActivate() : void
      {
         §#$+§.§%!!§(§<$"§);
      }
   }
}
