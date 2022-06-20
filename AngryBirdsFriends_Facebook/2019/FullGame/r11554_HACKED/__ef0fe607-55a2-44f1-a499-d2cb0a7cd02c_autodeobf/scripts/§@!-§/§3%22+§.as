package §@!-§
{
   import §!!t§.StateTournamentResults;
   import §#!E§.§2#Q§;
   import §%#v§.§?!F§;
   import §6!'§.§@#c§;
   import §6!'§.§[!k§;
   import §6§.§'#n§;
   import §6§.§]%§;
   import §8"b§.§&!b§;
   import §>"9§.§[#%§;
   import §>"h§.§,_§;
   import com.rovio.assets.§2"O§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class §3"+§ extends EventDispatcher
   {
      
      private static const §'"S§:String = "You are in";
      
      private static const §%"?§:String = "You were in";
      
      private static const §%"$§:String = "Promoted to";
      
      private static const §8#A§:String = "Demoted to ";
      
      private static const §-w§:String = "RatingCountLoopCountChannel";
       
      
      public var §@!=§:MovieClip;
      
      private var §4$&§:MovieClip;
      
      private var §8#R§:§]%§ = null;
      
      private var §4#m§:§]%§ = null;
      
      private var §%!w§:§]%§ = null;
      
      private var §2!@§:MovieClip = null;
      
      private var §9#k§:MovieClip = null;
      
      private var §<"`§:§?!F§;
      
      private var §]!e§:MovieClip;
      
      private var §-!N§:MovieClip;
      
      private var §-"W§:MovieClip;
      
      private var §`#_§:MovieClip;
      
      private var §7$7§:int;
      
      private var §=I§:Object;
      
      private var §[!x§:Number = -1;
      
      private var §'"F§:Number = 0;
      
      private var §;#3§:Number = 0;
      
      public var mUserRatingCount:Number = 0;
      
      private var §%$B§:Class;
      
      private var §`"t§:Class;
      
      private var §`"5§:Class;
      
      private var §1$A§:Class;
      
      private var §"!C§:Class;
      
      private var §;"i§:Class;
      
      private var § #Y§:Boolean;
      
      private const §]J§:Number = 0;
      
      private const §<",§:Number = 1;
      
      private const §'!C§:Number = -1;
      
      private var §3!L§:Number = 0;
      
      private var §?![§:Number = 0.5;
      
      private var §^"n§:§]%§;
      
      private var §<f§:Number = 20;
      
      private var §]!U§:Array;
      
      public function §3"+§(param1:§?!F§)
      {
         this.§]!U§ = [false,false];
         super();
         this.§<"`§ = param1;
         this.§%$B§ = §2"O§.§`>§("PromotionAnimation");
         this.§`"t§ = §2"O§.§`>§("DemotionAnimation");
         this.§`"5§ = §2"O§.§`>§("DemotionAnimationStar");
         this.§1$A§ = §2"O§.§`>§("PromotionAnimationStar");
         this.§"!C§ = §2"O§.§`>§("PromotionAnimationShine");
         this.§;"i§ = §2"O§.§`>§("PromotionAnimationStarShine");
         §[#%§.§8!3§(§-w§,6,2);
      }
      
      private function §]$D§(param1:Event) : void
      {
         if(this.§]!e§.currentFrameLabel == "action_sound_crack")
         {
            §[#%§.playSound(§[!k§.§=""§(this.§=I§.l.li.tn).§"#$§,§-w§);
         }
         if(this.§]!e§.currentFrameLabel == "action_sound_puff")
         {
            §[#%§.playSound(§[!k§.§=""§(this.§=I§.l.li.tn).§-!]§,§-w§);
         }
         if(this.§]!e§.currentFrameLabel == "action_sound_glow")
         {
            §[#%§.playSound(§[!k§.§=""§(this.§=I§.l.li.tn).§;J§,§-w§);
         }
         if(this.§]!e§.currentFrameLabel == "action_sound_promo_change")
         {
            §[#%§.playSound(§[!k§.§=""§(this.§=I§.l.li.tn).§""O§,§-w§);
         }
         if(this.§]!e§.currentFrameLabel == "action_sound_promo_change_star")
         {
            §[#%§.playSound("league_promotion_star",§-w§);
         }
         if(this.§]!e§.currentFrameLabel == "action_change")
         {
            this.§>$=§();
         }
         else if(this.§]!e§.currentFrame == this.§]!e§.totalFrames)
         {
            this.§]!U§[1] = true;
            this.§]!e§.stop();
            this.§]!e§.visible = false;
            this.§]!e§.removeEventListener(Event.ENTER_FRAME,this.§]$D§);
            if(this.§@!=§.contains(this.§]!e§))
            {
               this.§@!=§.removeChild(this.§]!e§);
            }
            if(this.§-!N§)
            {
               this.§-!N§.stop();
               this.§-!N§.visible = false;
               if(this.§@!=§.contains(this.§-!N§))
               {
                  this.§@!=§.removeChild(this.§-!N§);
               }
            }
            this.§ #Y§ = false;
         }
         else if(this.§]!e§.currentFrame == 1)
         {
            this.§ #Y§ = true;
            if(this.§]!e§.txtStarRating)
            {
               if(this.§,#%§ >= 0 && this.§;#3§ < 0)
               {
                  this.§]!e§.txtStarRating.text = (this.§,#%§ + 1).toString();
               }
            }
            if(this.§]!e§ is this.§`"t§)
            {
               if(this.§-!N§)
               {
                  this.§-!N§.visible = false;
               }
               this.§@!=§.setChildIndex(this.§]!e§,this.§@!=§.numChildren - 1);
            }
         }
      }
      
      private function §>$=§() : void
      {
         if(this.§@!=§)
         {
            if(this.§,#%§ >= 0 && this.§;#3§ > 0 || this.§,#%§ >= 1 && this.§;#3§ < 0)
            {
               this.§@!=§.gotoAndStop("DIAMOND");
               this.§@!=§.StarPromotionIcon.visible = true;
               this.§@!=§.StarPromotionIcon.txtStarRating.text = this.§,#%§.toString();
            }
            else if(this.§=I§ && this.§=I§.l)
            {
               this.§@!=§.gotoAndStop(§[!k§.§=""§(this.§=I§.l.li.tn).id);
               if(this.§@!=§.StarPromotionIcon)
               {
                  this.§@!=§.StarPromotionIcon.visible = false;
               }
            }
         }
         (this.§<"`§.getItemByName("LeaguesRating").mClip.textProgress as TextField).text = this.§;#3§ > 0 ? §%"$§ : §8#A§;
         if(this.§,#%§ > 0 || this.§,#%§ == 0 && this.§;#3§ < 0 && §[!k§.§=""§(this.§=I§.l.li.tn).id == §[!k§.§[m§.id)
         {
            (this.§<"`§.getItemByName("LeaguesRating").mClip.textProgress as TextField).text = §'"S§;
         }
         (this.§<"`§.getItemByName("LeaguesRating").mClip.textLeague as TextField).text = §[!k§.§=""§(this.§=I§.l.li.tn).name + "!";
      }
      
      private function §["%§() : Object
      {
         var _loc1_:Object = null;
         for each(_loc1_ in this.§=I§.l.p)
         {
            if(_loc1_.u == (AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§).userID)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function §@#§(param1:Event) : void
      {
         var _loc2_:Number = NaN;
         if(this.§-"W§.currentFrameLabel == "action_change")
         {
            if(this.§4$&§)
            {
               if(this.§`#_§)
               {
                  this.§4$&§.setChildIndex(this.§-"W§,this.§4$&§.numChildren - 1);
                  this.§`#_§.stop();
                  this.§`#_§.visible = false;
               }
               _loc2_ = this.§3!L§ == this.§<",§ && this.§7$7§ == StateTournamentResults.§+$E§ ? Number(this.§,#%§ - 1) : (this.§3!L§ == this.§'!C§ && this.§7$7§ == StateTournamentResults.§+$E§ ? Number(this.§,#%§ + 1) : Number(this.§,#%§));
               if(this.§=I§.l.nli.ls && this.§=I§.l.nli.ls > 0)
               {
                  this.§4$&§.gotoAndStop("STAR");
                  this.§4$&§.StarPromotionIcon.visible = true;
                  this.§4$&§.StarPromotionIcon.txtStarRating.text = this.§=I§.l.nli.ls.toString();
               }
               else if(this.§,#%§ >= 0 && this.§;#3§ > 0)
               {
                  this.§4$&§.gotoAndStop("STAR");
                  this.§4$&§.StarPromotionIcon.visible = true;
                  this.§4$&§.StarPromotionIcon.txtStarRating.text = (this.§,#%§ + 1).toString();
               }
               else if(this.§,#%§ > 1 && this.§;#3§ < 0)
               {
                  this.§4$&§.gotoAndStop("STAR");
                  this.§4$&§.StarPromotionIcon.visible = true;
                  this.§4$&§.StarPromotionIcon.txtStarRating.text = _loc2_.toString();
               }
               else if(this.§,#%§ == 0 && this.§;#3§ != 0)
               {
                  this.§4$&§.gotoAndStop("STAR");
                  this.§4$&§.StarPromotionIcon.visible = true;
                  this.§4$&§.StarPromotionIcon.txtStarRating.text = "1";
               }
               else if(this.§,#%§ == -1 && §[!k§.§=""§(this.§=I§.l.pli.tn).id == §[!k§.§[m§.id)
               {
                  this.§4$&§.gotoAndStop("DIAMOND");
                  this.§4$&§.StarPromotionIcon.visible = false;
               }
               else
               {
                  this.§4$&§.gotoAndStop(§[!k§.§=""§(this.§=I§.l.nli.tn).id);
               }
            }
         }
         else if(this.§-"W§.currentFrame == this.§-"W§.totalFrames)
         {
            this.§-"W§.stop();
            this.§-"W§.visible = false;
            this.§-"W§.removeEventListener(Event.ENTER_FRAME,this.§]$D§);
            if(this.§4$&§.contains(this.§-"W§))
            {
               this.§4$&§.removeChild(this.§-"W§);
            }
            if(this.§`#_§)
            {
               this.§`#_§.stop();
               this.§`#_§.visible = false;
               if(this.§4$&§.contains(this.§`#_§))
               {
                  this.§4$&§.removeChild(this.§`#_§);
               }
            }
            this.§ #Y§ = false;
         }
         else if(this.§-"W§.currentFrame == 1)
         {
            this.§ #Y§ = true;
            if(this.§4$&§.StarPromotionIcon && this.§4$&§.StarPromotionIcon.txtStarRating)
            {
               _loc2_ = this.§3!L§ == this.§<",§ && this.§7$7§ == StateTournamentResults.§+$E§ ? Number(this.§,#%§ - 1) : (this.§3!L§ == this.§'!C§ && this.§7$7§ == StateTournamentResults.§+$E§ ? Number(this.§,#%§ + 1) : Number(this.§,#%§));
               if(this.§,#%§ >= 0 && this.§;#3§ > 0)
               {
                  this.§4$&§.StarPromotionIcon.visible = true;
                  this.§4$&§.StarPromotionIcon.txtStarRating.text = this.§,#%§.toString();
               }
               else if(this.§,#%§ >= 0 && this.§;#3§ < 0)
               {
                  _loc2_ = this.§3!L§ == this.§'!C§ ? Number(_loc2_ + 1) : Number(_loc2_);
                  this.§4$&§.StarPromotionIcon.visible = true;
                  this.§4$&§.StarPromotionIcon.txtStarRating.text = _loc2_.toString();
               }
            }
            if(this.§-"W§ is this.§`"t§)
            {
               if(this.§`#_§)
               {
                  this.§`#_§.visible = false;
               }
               this.§4$&§.setChildIndex(this.§-"W§,this.§4$&§.numChildren - 1);
            }
         }
      }
      
      public function §%#x§(param1:Object = null, param2:int = 0, param3:Boolean = false) : void
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
         this.§7$7§ = param2;
         this.§=I§ = param1;
         this.§3!L§ = this.§]J§;
         this.§]!U§ = [false,false];
         §[#%§.§3$A§(§-w§);
         this.§5#S§();
         this.§2!@§ = this.§<"`§.getItemByName("LeagueProgress").mClip;
         this.§9#k§ = this.§2!@§.mcProgress;
         this.§<"`§.getItemByName("LeaguesRating").mClip.mcNotInLeague.visible = false;
         this.§<"`§.getItemByName("LeaguesRating").mClip.textLeague.visible = true;
         if(param1 && param1.l)
         {
            this.§<"`§.getItemByName("LeaguesRatingProgress").setVisibility(true);
            _loc4_ = !!param1.l.pli ? Number(param1.l.pli.rt) : Number(0);
            _loc5_ = !!param1.l.li ? Number(param1.l.li.rt) : Number(_loc4_);
            if((_loc6_ = !!param1.l.nli ? Number(param1.l.nli.rt) : Number(0)) == 0 && §@#c§.§?q§.currentLeague())
            {
               _loc6_ = §[!k§.§'&§(§@#c§.§?q§.currentLeague().id).§8#N§;
            }
            else if(_loc6_ == 0 && param1.l.pli)
            {
               _loc6_ = §[!k§.§'&§(§[!k§.§'&§(param1.l.pli.tn).id).§8#N§;
            }
            _loc8_ = (_loc7_ = this.§["%§()) && _loc7_.lr ? Number(_loc7_.lr) : (!!§@#c§.§?q§.§5k§() ? Number(§@#c§.§?q§.§5k§().lr) : Number(0));
            this.§9#k§.scaleX = §&!b§.§%!"§((_loc8_ - this.§;#3§ - _loc5_) / (_loc6_ - _loc5_),0,1);
            _loc9_ = 1;
            if(this.§,#%§ == -1 && param1.l.li && param1.l.pli && §[!k§.§=""§(param1.l.li.tn).id == §[!k§.§[m§.id && §[!k§.§=""§(param1.l.pli.tn).id == §[!k§.§[m§.id)
            {
               this.§,#%§ = 0;
            }
            _loc10_ = _loc6_;
            _loc11_ = _loc5_;
            for each(_loc12_ in param1.l.p)
            {
               if(_loc12_.u == (AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§).userID)
               {
                  if(_loc12_.lr)
                  {
                     _loc8_ = _loc12_.lr;
                  }
                  if(_loc12_.p)
                  {
                     if(_loc12_.p == "u")
                     {
                        _loc10_ = !!this.§=I§.lastResult ? Number(_loc5_) : Number(_loc10_);
                        _loc11_ = !!this.§=I§.lastResult ? Number(_loc4_) : Number(_loc11_);
                        this.§3!L§ = this.§<",§;
                        _loc9_ = 1;
                     }
                     if(_loc12_.p == "d")
                     {
                        _loc10_ = !!this.§=I§.lastResult ? Number(_loc4_) : Number(_loc10_);
                        _loc11_ = !!this.§=I§.lastResult ? Number(_loc5_) : Number(_loc11_);
                        if(this.§=I§.lastResult)
                        {
                           if(this.§,#%§ != 0 || this.§,#%§ == 0 && param1.l.li && param1.l.li.tn == §[!k§.§[m§.id)
                           {
                              _loc11_ += 100;
                              _loc10_ += 100;
                           }
                        }
                        this.§9#k§.scaleX = §&!b§.§%!"§((_loc8_ + this.§;#3§ - _loc10_) / (_loc10_ - _loc11_),0,1);
                        _loc9_ = 0;
                        this.§3!L§ = this.§'!C§;
                     }
                  }
               }
            }
            this.§'"F§ = _loc8_;
            this.§2"7§(param1,this.§,#%§);
            if(this.§7$7§ == StateTournamentResults.§+$E§)
            {
               this.§!"x§(this.§,#%§);
            }
            this.§9#!§(_loc9_,_loc6_,_loc10_,_loc11_,this.§,#%§,param3);
            this.§+"K§(_loc8_,this.§;#3§,_loc10_,_loc11_,this.§7$7§ == StateTournamentResults.§+$E§);
         }
         else
         {
            this.§-"1§();
         }
      }
      
      private function §-"1§() : void
      {
         this.§@!=§.gotoAndStop("NOLEAGUE");
         this.§<"`§.getItemByName("LeaguesRating").mClip.textLeague.visible = false;
         this.§<"`§.getItemByName("LeaguesRating").mClip.mcNotInLeague.visible = true;
         (this.§<"`§.getItemByName("LeaguesRating").mClip.textProgress as TextField).text = "";
         this.§<"`§.getItemByName("LeaguesRatingProgress").setVisibility(false);
      }
      
      private function §9#!§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean = false) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         if(this.§7$7§ == StateTournamentResults.§+$E§ && this.§=I§.lastResult)
         {
            _loc7_ = this.§=I§.l.pli && this.§=I§.l.li && (this.§=I§.l.pli.tn != this.§=I§.l.li.tn || param5 >= 0);
            _loc8_ = this.§3!L§ == this.§<",§ ? Number(param5 - 1) : (this.§3!L§ == this.§'!C§ && param5 != -1 ? Number(param5 + 1) : Number(param5));
            if(_loc7_ && this.§3!L§ != this.§]J§)
            {
               (this.§<"`§.getItemByName("LeaguesRating").mClip.textLeague as TextField).text = §[!k§.§=""§(this.§=I§.l.pli.tn).name + "!";
               if(this.§;#3§ < 0)
               {
                  if(param5 == 0)
                  {
                     this.§@!=§.gotoAndStop("DIAMOND");
                     this.§@!=§.StarPromotionIcon.visible = true;
                     this.§@!=§.StarPromotionIcon.txtStarRating.text = (param5 + 1).toString();
                     this.§4$&§.gotoAndStop("STAR");
                     this.§4$&§.StarPromotionIcon.visible = true;
                     this.§4$&§.StarPromotionIcon.txtStarRating.text = (param5 + 1).toString();
                  }
                  else if(param5 >= 1)
                  {
                     this.§@!=§.gotoAndStop("DIAMOND");
                     this.§@!=§.StarPromotionIcon.visible = true;
                     this.§@!=§.StarPromotionIcon.txtStarRating.text = _loc8_.toString();
                     this.§4$&§.gotoAndStop("STAR");
                     this.§4$&§.StarPromotionIcon.visible = true;
                     this.§4$&§.StarPromotionIcon.txtStarRating.text = (_loc8_ + 1).toString();
                  }
                  else if(param5 == -1 && §[!k§.§=""§(this.§=I§.l.pli.tn).id == §[!k§.§[m§.id)
                  {
                     this.§@!=§.gotoAndStop(§[!k§.§=""§(this.§=I§.l.pli.tn).id);
                     this.§4$&§.gotoAndStop("STAR");
                     this.§4$&§.StarPromotionIcon.visible = true;
                     this.§4$&§.StarPromotionIcon.txtStarRating.text = "1";
                  }
                  else
                  {
                     this.§@!=§.gotoAndStop(§[!k§.§=""§(this.§=I§.l.pli.tn).id);
                     if(this.§@!=§.StarPromotionIcon)
                     {
                        this.§@!=§.StarPromotionIcon.visible = false;
                     }
                     this.§4$&§.gotoAndStop(§[!k§.§'&§(this.§=I§.l.pli.tn).id);
                  }
                  if(!param6)
                  {
                     this.mUserRatingCount = this.§'"F§ + Math.abs(this.§;#3§);
                  }
               }
               else
               {
                  _loc8_ = this.§3!L§ == this.§<",§ ? Number(param5 - 1) : (this.§3!L§ == this.§'!C§ ? Number(param5 + 1) : Number(param5));
                  if(param5 == 1)
                  {
                     this.§@!=§.gotoAndStop(§[!k§.§=""§(this.§=I§.l.pli.tn).id);
                     if(this.§@!=§.StarPromotionIcon)
                     {
                        this.§@!=§.StarPromotionIcon.visible = false;
                     }
                     this.§4$&§.gotoAndStop("STAR");
                     this.§4$&§.StarPromotionIcon.visible = true;
                     this.§4$&§.StarPromotionIcon.txtStarRating.text = param5.toString();
                  }
                  else if(param5 > 1)
                  {
                     this.§@!=§.gotoAndStop("DIAMOND");
                     this.§@!=§.StarPromotionIcon.visible = true;
                     this.§@!=§.StarPromotionIcon.txtStarRating.text = _loc8_.toString();
                     this.§4$&§.gotoAndStop("STAR");
                     this.§4$&§.StarPromotionIcon.visible = true;
                     this.§4$&§.StarPromotionIcon.txtStarRating.text = (_loc8_ + 1).toString();
                  }
                  else
                  {
                     this.§@!=§.gotoAndStop(§[!k§.§=""§(this.§=I§.l.pli.tn).id);
                     this.§4$&§.gotoAndStop(§[!k§.§=""§(this.§=I§.l.li.tn).id);
                  }
                  if(!param6)
                  {
                     this.mUserRatingCount = this.§'"F§ - Math.abs(this.§;#3§);
                  }
               }
               _loc9_ = §&!b§.§%!"§((this.§'"F§ - this.§;#3§ - param4) / (param3 - param4),0,1);
               if(this.§;#3§ < 0)
               {
                  _loc9_ = §&!b§.§%!"§((this.§'"F§ + this.§;#3§ * -1 - param4) / (param3 - param4),0,1);
               }
               this.§9#k§.scaleX = _loc9_;
               this.§4i§(param3,param4);
               if(param6)
               {
                  _loc10_ = Math.abs(_loc9_ - param1);
                  _loc11_ = this.§,",§(Math.abs(this.§;#3§) * _loc10_);
                  if(this.§3!L§ == this.§<",§)
                  {
                     this.§##%§(true,param4,param3,_loc11_);
                  }
                  else
                  {
                     this.§##%§(true,param3,param4,_loc11_);
                  }
                  this.§8#R§ = §'#n§.§?q§.§9!N§(this.§9#k§,{"scaleX":§&!b§.§%!"§(param1,0,1)},null,_loc11_);
                  this.§8#R§.onComplete = this.§]"4§;
                  this.§8#R§.play();
               }
            }
            else
            {
               this.§4$&§.visible = true;
               if(this.§'"F§ > 0)
               {
                  this.§9#k§.scaleX = §&!b§.§%!"§((this.§'"F§ - this.§;#3§ - param4) / (param3 - param4),0,1);
               }
               else
               {
                  this.§9#k§.scaleX = §&!b§.§%!"§((this.§'"F§ + this.§;#3§ - param4) / (param3 - param4),0,1);
               }
               _loc12_ = 0;
               _loc13_ = this.§'"F§;
               if(this.§;#3§ > 0)
               {
                  _loc12_ = _loc13_ - this.§;#3§;
               }
               else
               {
                  _loc12_ = _loc13_ + Math.abs(this.§;#3§);
               }
               this.§]!U§[1] = true;
               if(param6)
               {
                  _loc11_ = this.§,",§(Math.abs(this.§;#3§));
                  this.§##%§(true,_loc12_,_loc13_,_loc11_);
                  this.§8#R§ = §'#n§.§?q§.§9!N§(this.§9#k§,{"scaleX":§&!b§.§%!"§((this.§'"F§ - param4) / (param3 - param4),0,1)},null,_loc11_);
                  this.§8#R§.onComplete = this.§7#;§;
                  this.§8#R§.play();
               }
               else
               {
                  this.mUserRatingCount = _loc12_;
                  StateTournamentResults.§3"!§ = true;
               }
            }
         }
         else
         {
            this.§4$&§.visible = true;
            this.§9#k§.scaleX = §&!b§.§%!"§(Math.abs(this.§'"F§ - param4) / (param3 - param4),0,1);
            this.§4i§(param3,param4);
            if(param6)
            {
               _loc11_ = this.§,",§(this.§;#3§);
               this.§##%§(false,this.§'"F§,this.§'"F§,_loc11_);
               if(this.§;#3§ != 0)
               {
                  this.§8#R§ = §'#n§.§?q§.§9!N§(this.§9#k§,{"scaleX":§&!b§.§%!"§(Math.abs(this.§'"F§ - param4) / (param3 - param4),0,1)},null,_loc11_);
                  this.§8#R§.onComplete = this.§7#;§;
                  this.§8#R§.play();
               }
            }
            else
            {
               this.mUserRatingCount = this.§'"F§;
            }
         }
      }
      
      private function §,",§(param1:Number) : Number
      {
         var _loc2_:Number = Math.abs(param1) / this.§<f§ * this.§?![§;
         if(_loc2_ < 0.1)
         {
            return 0.1;
         }
         return _loc2_;
      }
      
      private function §##%§(param1:Boolean, param2:Number, param3:Number, param4:Number) : void
      {
         if(param1)
         {
            if(this.§^"n§)
            {
               this.§^"n§.stop();
               this.§^"n§ = null;
            }
            if(param2 != param3)
            {
               §[#%§.playSound("gamescorescreen_score_count_loop",§-w§,100);
            }
            this.§^"n§ = §'#n§.§?q§.§9!N§(this,{"mUserRatingCount":param3},{"mUserRatingCount":param2},param4);
            this.§^"n§.onComplete = this.§!!U§;
            this.§^"n§.play();
         }
         else
         {
            this.mUserRatingCount = param3;
         }
      }
      
      private function §5#S§() : void
      {
         this.§@!=§ = this.§<"`§.getItemByName("CurrentLeagueIcon").mClip;
         this.§4$&§ = this.§<"`§.getItemByName("NextLeagueIcon").mClip;
         this.§@!=§.gotoAndStop(0);
         this.§4$&§.gotoAndStop(0);
         if(this.§@!=§.StarPromotionIcon)
         {
            this.§@!=§.StarPromotionIcon.visible = false;
         }
         if(this.§4$&§.StarPromotionIcon)
         {
            this.§4$&§.StarPromotionIcon.visible = false;
         }
      }
      
      private function §2"7§(param1:Object, param2:Number = 0) : void
      {
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc3_:Number = this.§3!L§ == this.§<",§ && this.§7$7§ == StateTournamentResults.§+$E§ ? Number(param2 - 1) : (this.§3!L§ == this.§'!C§ && this.§7$7§ == StateTournamentResults.§+$E§ ? Number(param2 + 1) : Number(param2));
         if(param2 == 1 && this.§3!L§ == this.§<",§ && this.§=I§.lastResult)
         {
            this.§@!=§.gotoAndStop(§[!k§.§=""§(this.§=I§.l.pli.tn).id);
         }
         else if(param2 > 0)
         {
            this.§@!=§.gotoAndStop("DIAMOND");
            this.§@!=§.StarPromotionIcon.visible = true;
            this.§@!=§.StarPromotionIcon.txtStarRating.text = _loc3_.toString();
         }
         else if(param2 == -1 && this.§3!L§ == this.§'!C§ && §[!k§.§=""§(param1.l.pli.tn).id == §[!k§.§[m§.id && param1.lastResult)
         {
            this.§@!=§.gotoAndStop("DIAMOND");
            if(this.§@!=§.StarPromotionIcon)
            {
               this.§@!=§.StarPromotionIcon.visible = false;
            }
         }
         else if(param1.l.li)
         {
            this.§@!=§.gotoAndStop(§[!k§.§=""§(param1.l.li.tn).id);
            if(this.§@!=§.StarPromotionIcon)
            {
               this.§@!=§.StarPromotionIcon.visible = false;
            }
         }
         else if(param1.l.pli)
         {
            if(!param1.lastResult && this.§3!L§ == this.§<",§)
            {
               this.§@!=§.gotoAndStop(§[!k§.§'&§(param1.l.pli.tn).id);
            }
            else if(!param1.lastResult && this.§3!L§ == this.§'!C§)
            {
               this.§@!=§.gotoAndStop(§[!k§.§6"?§(param1.l.pli.tn).id);
            }
            else
            {
               this.§@!=§.gotoAndStop(§[!k§.§=""§(param1.l.pli.tn).id);
            }
         }
         else
         {
            this.§@!=§.visble = false;
         }
         if(param2 == 1 && this.§3!L§ == this.§<",§)
         {
            this.§4$&§.gotoAndStop("STAR");
            this.§4$&§.StarPromotionIcon.visible = true;
            if(this.§=I§.lastResult)
            {
               this.§4$&§.StarPromotionIcon.txtStarRating.text = param2.toString();
            }
            else
            {
               this.§4$&§.StarPromotionIcon.txtStarRating.text = this.§=I§.l.nli.ls.toString();
            }
         }
         else if(param2 >= 0)
         {
            this.§4$&§.gotoAndStop("STAR");
            _loc3_ = this.§3!L§ == this.§'!C§ ? Number(_loc3_) : Number(_loc3_ + 1);
            if(!param1.lastResult && param1.l.nli.ls)
            {
               _loc3_ = param1.l.nli.ls;
            }
            this.§4$&§.StarPromotionIcon.visible = true;
            this.§4$&§.StarPromotionIcon.txtStarRating.text = _loc3_.toString();
         }
         else if(param1.lastResult && this.§3!L§ == this.§'!C§ && §[!k§.§=""§(param1.l.pli.tn).id == §[!k§.§[m§.id && param2 == -1)
         {
            this.§4$&§.gotoAndStop("STAR");
            this.§4$&§.StarPromotionIcon.visible = true;
            this.§4$&§.StarPromotionIcon.txtStarRating.text = (this.§=I§.l.pli.ls + 1).toString();
         }
         else if(param1.l.nli)
         {
            this.§4$&§.gotoAndStop(§[!k§.§=""§(param1.l.nli.tn).id);
            if(param1.l.nli.ls && param1.l.nli.ls >= 1)
            {
               this.§4$&§.gotoAndStop("STAR");
               this.§4$&§.StarPromotionIcon.visible = true;
               this.§4$&§.StarPromotionIcon.txtStarRating.text = this.§=I§.l.nli.ls.toString();
            }
         }
         else if(param1.l.pli)
         {
            _loc5_ = !!§@#c§.§?q§.currentLeague() ? §@#c§.§?q§.currentLeague().id : param1.l.pli.tn;
            if(!param1.lastResult && this.§3!L§ == this.§<",§)
            {
               if(§@#c§.§?q§.currentLeague())
               {
                  this.§4$&§.gotoAndStop(§[!k§.§'&§(§@#c§.§?q§.currentLeague().id).id);
               }
               else if(param1.l.pli)
               {
                  this.§4$&§.gotoAndStop(§[!k§.§'&§(§[!k§.§'&§(param1.l.pli.tn).id).id);
               }
            }
            else if(!param1.lastResult && this.§3!L§ == this.§'!C§)
            {
               this.§4$&§.gotoAndStop(§[!k§.§'&§(_loc5_).id);
            }
            else
            {
               this.§4$&§.gotoAndStop(§[!k§.§=""§(_loc5_).id);
            }
         }
         else
         {
            this.§4$&§.visble = false;
         }
         var _loc4_:String = "";
         if(!param1.lastResult && this.§3!L§ == this.§<",§ && param2 <= 0)
         {
            _loc4_ = §%"$§;
         }
         else if(!param1.lastResult && this.§3!L§ == this.§'!C§ && param2 <= 0)
         {
            _loc4_ = §8#A§;
         }
         else
         {
            _loc4_ = !!param1.l.li ? §'"S§ : §%"?§;
         }
         (this.§<"`§.getItemByName("LeaguesRating").mClip.textProgress as TextField).text = _loc4_;
         if(param1.l.li || param1.l.pli)
         {
            _loc6_ = !!param1.l.li ? §[!k§.§=""§(param1.l.li.tn).name + "!" : §[!k§.§=""§(param1.l.pli.tn).name + "!";
            if(!param1.lastResult && this.§3!L§ == this.§<",§)
            {
               _loc6_ = !!param1.l.li ? §[!k§.§=""§(param1.l.li.tn).name + "!" : §[!k§.§'&§(param1.l.pli.tn).name + "!";
            }
            else if(!param1.lastResult && this.§3!L§ == this.§<",§)
            {
               _loc6_ = !!param1.l.li ? §[!k§.§6"?§(param1.l.li.tn).name + "!" : §[!k§.§6"?§(param1.l.pli.tn).name + "!";
            }
            (this.§<"`§.getItemByName("LeaguesRating").mClip.textLeague as TextField).text = _loc6_;
         }
         else
         {
            (this.§<"`§.getItemByName("LeaguesRating").mClip.textLeague as TextField).text = "";
         }
      }
      
      private function §+"K§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Boolean = false) : void
      {
         this.§4i§(param3,param4);
      }
      
      private function §!!U§() : void
      {
         §[#%§.§3$A§(§-w§);
         if(this.§^"n§)
         {
            this.§^"n§.stop();
            this.§^"n§ = null;
         }
      }
      
      private function §4i§(param1:Number, param2:Number) : void
      {
         if(param2 > -1)
         {
            (this.§<"`§.getItemByName("LeaguesRatingProgress").mClip.TextField_LeagueProgressValue_Score as TextField).text = param2.toString();
         }
         else
         {
            (this.§<"`§.getItemByName("LeaguesRatingProgress").mClip.TextField_LeagueProgressValue_Score as TextField).text = "0";
         }
         (this.§<"`§.getItemByName("LeaguesRatingProgress").mClip.TextField_LeagueProgressValue_Goal as TextField).text = param1.toString();
      }
      
      private function §!"x§(param1:Number = 0) : void
      {
         this.§2"d§();
         if(this.§3!L§ == this.§]J§)
         {
            return;
         }
         this.§]!e§ = new this.§%$B§();
         this.§-!N§ = new this.§"!C§();
         this.§`#_§ = new this.§"!C§();
         this.§-"W§ = new this.§%$B§();
         if(this.§;#3§ > 0 && this.§3!L§ == this.§<",§)
         {
            this.§`#_§ = new this.§"!C§();
            if(param1 > 0)
            {
               this.§]!e§ = new this.§1$A§();
               this.§-"W§ = new this.§1$A§();
               this.§-!N§ = new this.§;"i§();
               this.§`#_§ = new this.§;"i§();
            }
         }
         else if(this.§;#3§ < 0 && this.§3!L§ == this.§'!C§)
         {
            this.§]!e§ = new this.§`"t§();
            this.§-"W§ = new this.§`"t§();
            if(param1 >= 0)
            {
               this.§]!e§ = new this.§`"5§();
               this.§-"W§ = new this.§`"5§();
            }
         }
         this.§]!e§.name = "LeaguePromotionAnimation";
         this.§]!e§.gotoAndStop(0);
         this.§]!e§.visible = false;
         this.§-"W§.name = "LeaguePromotionAnimationNextLeague";
         this.§-"W§.gotoAndStop(0);
         this.§-"W§.visible = false;
         this.§-!N§.visible = false;
         this.§-!N§.name = "LeaguePromotionAnimationShine";
         this.§-!N§.gotoAndStop(0);
         this.§`#_§.visible = false;
         this.§`#_§.name = "LeaguePromotionAnimationNextLeagueShine";
         this.§`#_§.gotoAndStop(0);
         var _loc2_:DisplayObject = this.§@!=§.getChildByName(this.§]!e§.name);
         if(_loc2_)
         {
            this.§@!=§.removeChild(_loc2_);
         }
         this.§]!e§.addEventListener(Event.ENTER_FRAME,this.§]$D§);
         this.§@!=§.addChild(this.§]!e§);
         var _loc3_:Point = new Point(26,20);
         var _loc4_:Number = 1;
         if(this.§]!e§ is this.§`"5§ || this.§]!e§ is this.§1$A§)
         {
            _loc3_ = new Point(25,23);
            _loc4_ = 0.5;
         }
         this.§-!N§.x = _loc3_.x;
         this.§-!N§.y = _loc3_.y;
         this.§-!N§.scaleX = this.§-!N§.scaleY = _loc4_;
         this.§]!e§.x = _loc3_.x;
         this.§]!e§.y = _loc3_.y;
         this.§]!e§.scaleX = this.§]!e§.scaleY = _loc4_;
         var _loc5_:DisplayObject;
         if(_loc5_ = this.§4$&§.getChildByName(this.§-"W§.name))
         {
            this.§4$&§.removeChild(_loc5_);
         }
         this.§-"W§.removeEventListener(Event.ENTER_FRAME,this.§@#§);
         this.§-"W§.addEventListener(Event.ENTER_FRAME,this.§@#§);
         this.§4$&§.addChild(this.§-"W§);
         if(this.§-"W§ is this.§`"5§ || this.§-"W§ is this.§1$A§)
         {
            this.§-"W§.x = 0;
            this.§-"W§.y = 5;
            this.§`#_§.scaleX = this.§`#_§.scaleY = 0.5;
         }
         else
         {
            this.§-"W§.x = 25;
            this.§-"W§.y = 25;
         }
         this.§-"W§.scaleX = this.§-"W§.scaleY = 0.75;
         this.§`#_§.x = this.§-"W§.x;
         this.§`#_§.y = this.§-"W§.y;
         var _loc6_:DisplayObject;
         if(_loc6_ = this.§@!=§.getChildByName(this.§-!N§.name))
         {
            this.§@!=§.removeChild(_loc6_);
         }
         var _loc7_:DisplayObject;
         if(_loc7_ = this.§4$&§.getChildByName(this.§`#_§.name))
         {
            this.§4$&§.removeChild(_loc7_);
         }
         this.§@!=§.addChild(this.§-!N§);
         this.§4$&§.addChild(this.§`#_§);
      }
      
      private function §7#;§() : void
      {
         this.§]!U§[0] = true;
         this.§8#R§.stop();
         this.§8#R§ = null;
         StateTournamentResults.§3"!§ = true;
      }
      
      private function §]"4§() : void
      {
         var _loc8_:Object = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         this.§8#R§.stop();
         this.§8#R§ = null;
         if(this.§]!e§)
         {
            this.§]!e§.visible = true;
            this.§-!N§.visible = true;
            this.§]!e§.gotoAndPlay(0);
            this.§-!N§.gotoAndPlay(0);
            StateTournamentResults.§3"!§ = true;
            if(this.§@!=§.StarPromotionIcon)
            {
               this.§@!=§.setChildIndex(this.§@!=§.StarPromotionIcon,this.§@!=§.numChildren - 1);
            }
            this.§@!=§.setChildIndex(this.§-!N§,0);
         }
         if(this.§-"W§)
         {
            this.§-"W§.visible = true;
            this.§`#_§.visible = !(this.§-"W§ is this.§`"5§);
            this.§-"W§.gotoAndPlay(0);
            this.§`#_§.gotoAndPlay(0);
            if(this.§4$&§.StarPromotionIcon)
            {
               this.§4$&§.setChildIndex(this.§4$&§.StarPromotionIcon,this.§4$&§.numChildren - 1);
            }
            this.§4$&§.setChildIndex(this.§`#_§,0);
         }
         this.§9#k§.scaleX = 0;
         var _loc1_:Number = 0;
         if(!this.§=I§ || !this.§=I§.l)
         {
            this.§4$&§.visible = true;
            return;
         }
         var _loc2_:Number = !!this.§=I§.l.pli ? Number(this.§=I§.l.pli.rt) : Number(0);
         var _loc3_:Number = !!this.§=I§.l.li ? Number(this.§=I§.l.li.rt) : Number(_loc2_);
         var _loc4_:Number = !!this.§=I§.l.nli ? Number(this.§=I§.l.nli.rt) : Number(0);
         var _loc5_:Number = 1;
         var _loc6_:Number = 0;
         var _loc7_:Number = 0;
         for each(_loc8_ in this.§=I§.l.p)
         {
            if(_loc8_.u == (AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§).userID)
            {
               if(_loc8_.lrc)
               {
                  this.§1!w§ = _loc8_.lrc;
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
                     this.§3!L§ = this.§<",§;
                     _loc5_ = (_loc1_ - _loc7_) / (_loc6_ - _loc7_);
                  }
                  if(_loc8_.p == "d")
                  {
                     _loc6_ = _loc2_;
                     _loc7_ = _loc3_;
                     this.§3!L§ = this.§'!C§;
                     this.§9#k§.scaleX = §&!b§.§%!"§((_loc1_ + this.§;#3§ * -1 - _loc7_) / (_loc6_ - _loc7_),0,1);
                     _loc5_ = (_loc1_ - _loc7_) / (_loc6_ - _loc7_);
                  }
               }
            }
         }
         this.§4i§(_loc6_,_loc7_);
         _loc9_ = Math.abs(this.§9#k§.scaleX - _loc5_);
         _loc10_ = this.§,",§(Math.abs(this.§;#3§) * _loc9_);
         if(this.§3!L§ == this.§<",§)
         {
            this.§##%§(true,_loc7_,_loc1_,_loc10_);
         }
         else
         {
            this.§##%§(true,_loc6_,_loc1_,_loc10_);
         }
         this.§4#m§ = null;
         this.§4#m§ = §'#n§.§?q§.§9!N§(this.§9#k§,{"scaleX":§&!b§.§%!"§(_loc5_,0,1)},null,_loc10_);
         this.§4#m§.onComplete = this.§3!E§;
         this.§4#m§.play();
      }
      
      private function §3!E§() : void
      {
         this.§]!U§[0] = true;
         this.§4#m§.stop();
         this.§4#m§ = null;
         this.§4$&§.visible = true;
      }
      
      public function §[!@§() : Boolean
      {
         return this.§ #Y§;
      }
      
      public function get §,#%§() : Number
      {
         return this.§[!x§;
      }
      
      public function set §,#%§(param1:Number) : void
      {
         this.§[!x§ = param1;
      }
      
      public function set §1!w§(param1:Number) : void
      {
         this.§;#3§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:String = this.§;#3§ > 0 ? "+" : "";
         (this.§<"`§.getItemByName("LeaguesRatingProgress").mClip.LeagueRating as TextField).text = int(this.mUserRatingCount) + " (" + _loc2_ + this.§;#3§.toString() + ")";
         if(this.§]!U§[0] && this.§]!U§[1])
         {
            this.§]!U§ = [false,false];
            dispatchEvent(new §,_§(§,_§.§!$<§));
         }
      }
      
      public function deActivate() : void
      {
         §[#%§.§3$A§(§-w§);
         this.§2"d§();
      }
      
      private function §2"d§() : void
      {
         if(this.§]!e§)
         {
            this.§]!e§.gotoAndStop(0);
            this.§]!e§.removeEventListener(Event.ENTER_FRAME,this.§]$D§);
         }
         if(this.§-"W§)
         {
            this.§-"W§.gotoAndStop(0);
            this.§-"W§.removeEventListener(Event.ENTER_FRAME,this.§@#§);
         }
      }
   }
}
