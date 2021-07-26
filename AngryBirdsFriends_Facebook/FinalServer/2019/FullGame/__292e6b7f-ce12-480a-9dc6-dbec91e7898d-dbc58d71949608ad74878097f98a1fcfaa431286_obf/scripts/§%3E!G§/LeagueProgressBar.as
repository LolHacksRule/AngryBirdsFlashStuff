package §>!G§
{
   import §!!L§.StateTournamentResults;
   import §!L§.§`#u§;
   import §";§.§%"X§;
   import §'n§.§5#v§;
   import §3"V§.§ b§;
   import §;"5§.§6"W§;
   import §;"5§.§@$-§;
   import §]#'§.§4"s§;
   import §]#'§.§6#P§;
   import §`"t§.§7"U§;
   import com.rovio.assets.§[a§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class LeagueProgressBar extends EventDispatcher
   {
      
      private static const §>"#§:String = "You are in";
      
      private static const §`!?§:String = "You were in";
      
      private static const §-"N§:String = "Promoted to";
      
      private static const §["q§:String = "Demoted to ";
      
      private static const §7$&§:String = "RatingCountLoopCountChannel";
       
      
      public var §1$&§:MovieClip;
      
      private var §@!M§:MovieClip;
      
      private var §^!v§:§@$-§ = null;
      
      private var §+P§:§@$-§ = null;
      
      private var §-#6§:§@$-§ = null;
      
      private var leagueProgressBar:MovieClip = null;
      
      private var leagueProgressFill:MovieClip = null;
      
      private var §;!w§:§%"X§;
      
      private var §'#R§:MovieClip;
      
      private var §!!U§:MovieClip;
      
      private var §3"L§:MovieClip;
      
      private var §@h§:MovieClip;
      
      private var §=$ §:int;
      
      private var §<"D§:Object;
      
      private var §<"d§:Number = -1;
      
      private var §0r§:Number = 0;
      
      private var §]#x§:Number = 0;
      
      public var mUserRatingCount:Number = 0;
      
      private var §2"z§:Class;
      
      private var §;$!§:Class;
      
      private var §!"C§:Class;
      
      private var §0#@§:Class;
      
      private var §`"Y§:Class;
      
      private var §7!]§:Class;
      
      private var §&#]§:Boolean;
      
      private const §^!E§:Number = 0;
      
      private const §3!!§:Number = 1;
      
      private const §[!T§:Number = -1;
      
      private var §"J§:Number = 0;
      
      private var §`"Z§:Number = 0.5;
      
      private var §-#t§:§@$-§;
      
      private var § !v§:Number = 20;
      
      private var §?m§:Array;
      
      public function LeagueProgressBar(param1:§%"X§)
      {
         this.§?m§ = [false,false];
         super();
         this.§;!w§ = param1;
         this.§2"z§ = §[a§.§8#k§("PromotionAnimation");
         this.§;$!§ = §[a§.§8#k§("DemotionAnimation");
         this.§!"C§ = §[a§.§8#k§("DemotionAnimationStar");
         this.§0#@§ = §[a§.§8#k§("PromotionAnimationStar");
         this.§`"Y§ = §[a§.§8#k§("PromotionAnimationShine");
         this.§7!]§ = §[a§.§8#k§("PromotionAnimationStarShine");
         § b§.§%#C§(§7$&§,6,2);
      }
      
      private function § #'§(param1:Event) : void
      {
         if(this.§'#R§.currentFrameLabel == "action_sound_crack")
         {
            § b§.playSound(§6#P§.§4Z§(this.§<"D§.l.li.tn).§!"-§,§7$&§);
         }
         if(this.§'#R§.currentFrameLabel == "action_sound_puff")
         {
            § b§.playSound(§6#P§.§4Z§(this.§<"D§.l.li.tn).§;#q§,§7$&§);
         }
         if(this.§'#R§.currentFrameLabel == "action_sound_glow")
         {
            § b§.playSound(§6#P§.§4Z§(this.§<"D§.l.li.tn).§1!O§,§7$&§);
         }
         if(this.§'#R§.currentFrameLabel == "action_sound_promo_change")
         {
            § b§.playSound(§6#P§.§4Z§(this.§<"D§.l.li.tn).§`w§,§7$&§);
         }
         if(this.§'#R§.currentFrameLabel == "action_sound_promo_change_star")
         {
            § b§.playSound("league_promotion_star",§7$&§);
         }
         if(this.§'#R§.currentFrameLabel == "action_change")
         {
            this.§`"T§();
         }
         else if(this.§'#R§.currentFrame == this.§'#R§.totalFrames)
         {
            this.§?m§[1] = true;
            this.§'#R§.stop();
            this.§'#R§.visible = false;
            this.§'#R§.removeEventListener(Event.ENTER_FRAME,this.§ #'§);
            if(this.§1$&§.contains(this.§'#R§))
            {
               this.§1$&§.removeChild(this.§'#R§);
            }
            if(this.§!!U§)
            {
               this.§!!U§.stop();
               this.§!!U§.visible = false;
               if(this.§1$&§.contains(this.§!!U§))
               {
                  this.§1$&§.removeChild(this.§!!U§);
               }
            }
            this.§&#]§ = false;
         }
         else if(this.§'#R§.currentFrame == 1)
         {
            this.§&#]§ = true;
            if(this.§'#R§.txtStarRating)
            {
               if(this.§,"W§ >= 0 && this.§]#x§ < 0)
               {
                  this.§'#R§.txtStarRating.text = (this.§,"W§ + 1).toString();
               }
            }
            if(this.§'#R§ is this.§;$!§)
            {
               if(this.§!!U§)
               {
                  this.§!!U§.visible = false;
               }
               this.§1$&§.setChildIndex(this.§'#R§,this.§1$&§.numChildren - 1);
            }
         }
      }
      
      private function §`"T§() : void
      {
         if(this.§1$&§)
         {
            if(this.§,"W§ >= 0 && this.§]#x§ > 0 || this.§,"W§ >= 1 && this.§]#x§ < 0)
            {
               this.§1$&§.gotoAndStop("DIAMOND");
               this.§1$&§.StarPromotionIcon.visible = true;
               this.§1$&§.StarPromotionIcon.txtStarRating.text = this.§,"W§.toString();
            }
            else if(this.§<"D§ && this.§<"D§.l)
            {
               this.§1$&§.gotoAndStop(§6#P§.§4Z§(this.§<"D§.l.li.tn).id);
               if(this.§1$&§.StarPromotionIcon)
               {
                  this.§1$&§.StarPromotionIcon.visible = false;
               }
            }
         }
         (this.§;!w§.getItemByName("LeaguesRating").mClip.textProgress as TextField).text = this.§]#x§ > 0 ? §-"N§ : §["q§;
         if(this.§,"W§ > 0 || this.§,"W§ == 0 && this.§]#x§ < 0 && §6#P§.§4Z§(this.§<"D§.l.li.tn).id == §6#P§.§8z§.id)
         {
            (this.§;!w§.getItemByName("LeaguesRating").mClip.textProgress as TextField).text = §>"#§;
         }
         (this.§;!w§.getItemByName("LeaguesRating").mClip.textLeague as TextField).text = §6#P§.§4Z§(this.§<"D§.l.li.tn).name + "!";
      }
      
      private function §#!7§() : Object
      {
         var _loc1_:Object = null;
         for each(_loc1_ in this.§<"D§.l.p)
         {
            if(_loc1_.u == (AngryBirdsBase.singleton.dataModel.userProgress as §`#u§).userID)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function §'!S§(param1:Event) : void
      {
         var _loc2_:Number = NaN;
         if(this.§3"L§.currentFrameLabel == "action_change")
         {
            if(this.§@!M§)
            {
               if(this.§@h§)
               {
                  this.§@!M§.setChildIndex(this.§3"L§,this.§@!M§.numChildren - 1);
                  this.§@h§.stop();
                  this.§@h§.visible = false;
               }
               if(this.§"J§ == this.§3!!§ && this.§=$ § == StateTournamentResults.§9`§)
               {
                  §§push(Number(this.§,"W§ - 1));
               }
               else
               {
                  _loc2_ = this.§"J§ == this.§[!T§ && this.§=$ § == StateTournamentResults.§9`§ ? Number(this.§,"W§ + 1) : Number(this.§,"W§);
                  if(this.§<"D§.l.nli.ls && this.§<"D§.l.nli.ls > 0)
                  {
                     this.§@!M§.gotoAndStop("STAR");
                     this.§@!M§.StarPromotionIcon.visible = true;
                     this.§@!M§.StarPromotionIcon.txtStarRating.text = this.§<"D§.l.nli.ls.toString();
                     addr9:
                     return;
                     addr560:
                  }
                  else
                  {
                     if(this.§,"W§ >= 0 && this.§]#x§ > 0)
                     {
                        this.§@!M§.gotoAndStop("STAR");
                        this.§@!M§.StarPromotionIcon.visible = true;
                        this.§@!M§.StarPromotionIcon.txtStarRating.text = (this.§,"W§ + 1).toString();
                     }
                     else if(this.§,"W§ > 1 && this.§]#x§ < 0)
                     {
                        this.§@!M§.gotoAndStop("STAR");
                        this.§@!M§.StarPromotionIcon.visible = true;
                        this.§@!M§.StarPromotionIcon.txtStarRating.text = _loc2_.toString();
                     }
                     else if(this.§,"W§ == 0 && this.§]#x§ != 0)
                     {
                        this.§@!M§.gotoAndStop("STAR");
                        this.§@!M§.StarPromotionIcon.visible = true;
                        this.§@!M§.StarPromotionIcon.txtStarRating.text = "1";
                     }
                     else if(this.§,"W§ == -1 && §6#P§.§4Z§(this.§<"D§.l.pli.tn).id == §6#P§.§8z§.id)
                     {
                        this.§@!M§.gotoAndStop("DIAMOND");
                        this.§@!M§.StarPromotionIcon.visible = false;
                     }
                     else
                     {
                        this.§@!M§.gotoAndStop(§6#P§.§4Z§(this.§<"D§.l.nli.tn).id);
                     }
                     §§goto(addr560);
                  }
                  §§goto(addr560);
               }
               §§goto(addr854);
            }
            §§goto(addr560);
         }
         else if(this.§3"L§.currentFrame == this.§3"L§.totalFrames)
         {
            this.§3"L§.stop();
            this.§3"L§.visible = false;
            this.§3"L§.removeEventListener(Event.ENTER_FRAME,this.§ #'§);
            if(this.§@!M§.contains(this.§3"L§))
            {
               this.§@!M§.removeChild(this.§3"L§);
            }
            if(this.§@h§)
            {
               this.§@h§.stop();
               this.§@h§.visible = false;
               if(this.§@!M§.contains(this.§@h§))
               {
                  this.§@!M§.removeChild(this.§@h§);
               }
            }
            this.§&#]§ = false;
         }
         else if(this.§3"L§.currentFrame == 1)
         {
            this.§&#]§ = true;
            if(this.§@!M§.StarPromotionIcon && this.§@!M§.StarPromotionIcon.txtStarRating)
            {
               if(this.§"J§ == this.§3!!§ && this.§=$ § == StateTournamentResults.§9`§)
               {
                  §§push(Number(this.§,"W§ - 1));
               }
               else
               {
                  _loc2_ = this.§"J§ == this.§[!T§ && this.§=$ § == StateTournamentResults.§9`§ ? Number(this.§,"W§ + 1) : Number(this.§,"W§);
                  if(this.§,"W§ >= 0 && this.§]#x§ > 0)
                  {
                     this.§@!M§.StarPromotionIcon.visible = true;
                     this.§@!M§.StarPromotionIcon.txtStarRating.text = this.§,"W§.toString();
                     addr26:
                     if(this.§3"L§ is this.§;$!§)
                     {
                        if(this.§@h§)
                        {
                           this.§@h§.visible = false;
                        }
                        this.§@!M§.setChildIndex(this.§3"L§,this.§@!M§.numChildren - 1);
                     }
                     §§goto(addr9);
                  }
                  else
                  {
                     if(this.§,"W§ >= 0 && this.§]#x§ < 0)
                     {
                        _loc2_ = this.§"J§ == this.§[!T§ ? Number(_loc2_ + 1) : Number(_loc2_);
                        this.§@!M§.StarPromotionIcon.visible = true;
                        this.§@!M§.StarPromotionIcon.txtStarRating.text = _loc2_.toString();
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
      
      public function §;!E§(param1:Object = null, param2:int = 0, param3:Boolean = false) : void
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
         this.§=$ § = param2;
         this.§<"D§ = param1;
         this.§"J§ = this.§^!E§;
         this.§?m§ = [false,false];
         § b§.§8!7§(§7$&§);
         this.§2a§();
         this.leagueProgressBar = this.§;!w§.getItemByName("LeagueProgress").mClip;
         this.leagueProgressFill = this.leagueProgressBar.mcProgress;
         this.§;!w§.getItemByName("LeaguesRating").mClip.mcNotInLeague.visible = false;
         this.§;!w§.getItemByName("LeaguesRating").mClip.textLeague.visible = true;
         if(param1 && param1.l)
         {
            this.§;!w§.getItemByName("LeaguesRatingProgress").setVisibility(true);
            _loc4_ = !!param1.l.pli ? Number(param1.l.pli.rt) : Number(0);
            _loc5_ = !!param1.l.li ? Number(param1.l.li.rt) : Number(_loc4_);
            if((_loc6_ = !!param1.l.nli ? Number(param1.l.nli.rt) : Number(0)) == 0 && §4"s§.§+!,§.currentLeague())
            {
               _loc6_ = §6#P§.§"M§(§4"s§.§+!,§.currentLeague().id).§"$A§;
            }
            else if(_loc6_ == 0 && param1.l.pli)
            {
               _loc6_ = §6#P§.§"M§(§6#P§.§"M§(param1.l.pli.tn).id).§"$A§;
            }
            _loc8_ = (_loc7_ = this.§#!7§()) && _loc7_.lr ? Number(_loc7_.lr) : (!!§4"s§.§+!,§.§+S§() ? Number(§4"s§.§+!,§.§+S§().lr) : Number(0));
            this.leagueProgressFill.scaleX = §7"U§.§!!7§((_loc8_ - this.§]#x§ - _loc5_) / (_loc6_ - _loc5_),0,1);
            _loc9_ = 1;
            if(this.§,"W§ == -1 && param1.l.li && param1.l.pli && §6#P§.§4Z§(param1.l.li.tn).id == §6#P§.§8z§.id && §6#P§.§4Z§(param1.l.pli.tn).id == §6#P§.§8z§.id)
            {
               this.§,"W§ = 0;
            }
            _loc10_ = _loc6_;
            _loc11_ = _loc5_;
            for each(_loc12_ in param1.l.p)
            {
               if(_loc12_.u == (AngryBirdsBase.singleton.dataModel.userProgress as §`#u§).userID)
               {
                  if(_loc12_.lr)
                  {
                     _loc8_ = _loc12_.lr;
                  }
                  if(_loc12_.p)
                  {
                     if(_loc12_.p == "u")
                     {
                        _loc10_ = !!this.§<"D§.lastResult ? Number(_loc5_) : Number(_loc10_);
                        _loc11_ = !!this.§<"D§.lastResult ? Number(_loc4_) : Number(_loc11_);
                        this.§"J§ = this.§3!!§;
                        _loc9_ = 1;
                     }
                     if(_loc12_.p == "d")
                     {
                        _loc10_ = !!this.§<"D§.lastResult ? Number(_loc4_) : Number(_loc10_);
                        _loc11_ = !!this.§<"D§.lastResult ? Number(_loc5_) : Number(_loc11_);
                        if(this.§<"D§.lastResult)
                        {
                           if(this.§,"W§ != 0 || this.§,"W§ == 0 && param1.l.li && param1.l.li.tn == §6#P§.§8z§.id)
                           {
                              _loc11_ += 100;
                              _loc10_ += 100;
                           }
                        }
                        this.leagueProgressFill.scaleX = §7"U§.§!!7§((_loc8_ + this.§]#x§ - _loc10_) / (_loc10_ - _loc11_),0,1);
                        _loc9_ = 0;
                        this.§"J§ = this.§[!T§;
                     }
                  }
               }
            }
            this.§0r§ = _loc8_;
            this.§>9§(param1,this.§,"W§);
            if(this.§=$ § == StateTournamentResults.§9`§)
            {
               this.§ ^§(this.§,"W§);
            }
            this.§`"w§(_loc9_,_loc6_,_loc10_,_loc11_,this.§,"W§,param3);
            this.§5"2§(_loc8_,this.§]#x§,_loc10_,_loc11_,this.§=$ § == StateTournamentResults.§9`§);
         }
         else
         {
            this.§-"O§();
         }
      }
      
      private function §-"O§() : void
      {
         this.§1$&§.gotoAndStop("NOLEAGUE");
         this.§;!w§.getItemByName("LeaguesRating").mClip.textLeague.visible = false;
         this.§;!w§.getItemByName("LeaguesRating").mClip.mcNotInLeague.visible = true;
         (this.§;!w§.getItemByName("LeaguesRating").mClip.textProgress as TextField).text = "";
         this.§;!w§.getItemByName("LeaguesRatingProgress").setVisibility(false);
      }
      
      private function §`"w§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean = false) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         if(this.§=$ § == StateTournamentResults.§9`§ && this.§<"D§.lastResult)
         {
            _loc7_ = this.§<"D§.l.pli && this.§<"D§.l.li && (this.§<"D§.l.pli.tn != this.§<"D§.l.li.tn || param5 >= 0);
            if(this.§"J§ == this.§3!!§)
            {
               §§push(Number(param5 - 1));
            }
            else
            {
               _loc8_ = this.§"J§ == this.§[!T§ && param5 != -1 ? Number(param5 + 1) : Number(param5);
               if(_loc7_ && this.§"J§ != this.§^!E§)
               {
                  (this.§;!w§.getItemByName("LeaguesRating").mClip.textLeague as TextField).text = §6#P§.§4Z§(this.§<"D§.l.pli.tn).name + "!";
                  if(this.§]#x§ < 0)
                  {
                     if(param5 == 0)
                     {
                        this.§1$&§.gotoAndStop("DIAMOND");
                        this.§1$&§.StarPromotionIcon.visible = true;
                        this.§1$&§.StarPromotionIcon.txtStarRating.text = (param5 + 1).toString();
                        this.§@!M§.gotoAndStop("STAR");
                        this.§@!M§.StarPromotionIcon.visible = true;
                        this.§@!M§.StarPromotionIcon.txtStarRating.text = (param5 + 1).toString();
                     }
                     else if(param5 >= 1)
                     {
                        this.§1$&§.gotoAndStop("DIAMOND");
                        this.§1$&§.StarPromotionIcon.visible = true;
                        this.§1$&§.StarPromotionIcon.txtStarRating.text = _loc8_.toString();
                        this.§@!M§.gotoAndStop("STAR");
                        this.§@!M§.StarPromotionIcon.visible = true;
                        this.§@!M§.StarPromotionIcon.txtStarRating.text = (_loc8_ + 1).toString();
                     }
                     else if(param5 == -1 && §6#P§.§4Z§(this.§<"D§.l.pli.tn).id == §6#P§.§8z§.id)
                     {
                        this.§1$&§.gotoAndStop(§6#P§.§4Z§(this.§<"D§.l.pli.tn).id);
                        this.§@!M§.gotoAndStop("STAR");
                        this.§@!M§.StarPromotionIcon.visible = true;
                        this.§@!M§.StarPromotionIcon.txtStarRating.text = "1";
                     }
                     else
                     {
                        this.§1$&§.gotoAndStop(§6#P§.§4Z§(this.§<"D§.l.pli.tn).id);
                        if(this.§1$&§.StarPromotionIcon)
                        {
                           this.§1$&§.StarPromotionIcon.visible = false;
                        }
                        this.§@!M§.gotoAndStop(§6#P§.§"M§(this.§<"D§.l.pli.tn).id);
                     }
                     if(!param6)
                     {
                        this.mUserRatingCount = this.§0r§ + Math.abs(this.§]#x§);
                     }
                  }
                  else
                  {
                     _loc8_ = this.§"J§ == this.§3!!§ ? Number(param5 - 1) : (this.§"J§ == this.§[!T§ ? Number(param5 + 1) : Number(param5));
                     if(param5 == 1)
                     {
                        this.§1$&§.gotoAndStop(§6#P§.§4Z§(this.§<"D§.l.pli.tn).id);
                        if(this.§1$&§.StarPromotionIcon)
                        {
                           this.§1$&§.StarPromotionIcon.visible = false;
                        }
                        this.§@!M§.gotoAndStop("STAR");
                        this.§@!M§.StarPromotionIcon.visible = true;
                        this.§@!M§.StarPromotionIcon.txtStarRating.text = param5.toString();
                     }
                     else if(param5 > 1)
                     {
                        this.§1$&§.gotoAndStop("DIAMOND");
                        this.§1$&§.StarPromotionIcon.visible = true;
                        this.§1$&§.StarPromotionIcon.txtStarRating.text = _loc8_.toString();
                        this.§@!M§.gotoAndStop("STAR");
                        this.§@!M§.StarPromotionIcon.visible = true;
                        this.§@!M§.StarPromotionIcon.txtStarRating.text = (_loc8_ + 1).toString();
                     }
                     else
                     {
                        this.§1$&§.gotoAndStop(§6#P§.§4Z§(this.§<"D§.l.pli.tn).id);
                        this.§@!M§.gotoAndStop(§6#P§.§4Z§(this.§<"D§.l.li.tn).id);
                     }
                     if(!param6)
                     {
                        this.mUserRatingCount = this.§0r§ - Math.abs(this.§]#x§);
                     }
                  }
                  _loc9_ = §7"U§.§!!7§((this.§0r§ - this.§]#x§ - param4) / (param3 - param4),0,1);
                  if(this.§]#x§ < 0)
                  {
                     _loc9_ = §7"U§.§!!7§((this.§0r§ + this.§]#x§ * -1 - param4) / (param3 - param4),0,1);
                  }
                  this.leagueProgressFill.scaleX = _loc9_;
                  this.§1!`§(param3,param4);
                  if(param6)
                  {
                     _loc10_ = Math.abs(_loc9_ - param1);
                     _loc11_ = this.§>!;§(Math.abs(this.§]#x§) * _loc10_);
                     if(this.§"J§ == this.§3!!§)
                     {
                        this.§,#x§(true,param4,param3,_loc11_);
                     }
                     else
                     {
                        this.§,#x§(true,param3,param4,_loc11_);
                     }
                     this.§^!v§ = §6"W§.§+!,§.§9!n§(this.leagueProgressFill,{"scaleX":§7"U§.§!!7§(param1,0,1)},null,_loc11_);
                     this.§^!v§.onComplete = this.§?"O§;
                     this.§^!v§.play();
                  }
               }
               else
               {
                  this.§@!M§.visible = true;
                  if(this.§0r§ > 0)
                  {
                     this.leagueProgressFill.scaleX = §7"U§.§!!7§((this.§0r§ - this.§]#x§ - param4) / (param3 - param4),0,1);
                  }
                  else
                  {
                     this.leagueProgressFill.scaleX = §7"U§.§!!7§((this.§0r§ + this.§]#x§ - param4) / (param3 - param4),0,1);
                  }
                  _loc12_ = 0;
                  _loc13_ = this.§0r§;
                  if(this.§]#x§ > 0)
                  {
                     _loc12_ = _loc13_ - this.§]#x§;
                  }
                  else
                  {
                     _loc12_ = _loc13_ + Math.abs(this.§]#x§);
                  }
                  this.§?m§[1] = true;
                  if(param6)
                  {
                     _loc11_ = this.§>!;§(Math.abs(this.§]#x§));
                     this.§,#x§(true,_loc12_,_loc13_,_loc11_);
                     this.§^!v§ = §6"W§.§+!,§.§9!n§(this.leagueProgressFill,{"scaleX":§7"U§.§!!7§((this.§0r§ - param4) / (param3 - param4),0,1)},null,_loc11_);
                     this.§^!v§.onComplete = this.§-#p§;
                     this.§^!v§.play();
                  }
                  else
                  {
                     this.mUserRatingCount = _loc12_;
                     StateTournamentResults.§7$A§ = true;
                  }
               }
               §§goto(addr26);
            }
            §§goto(addr1329);
         }
         else
         {
            this.§@!M§.visible = true;
            this.leagueProgressFill.scaleX = §7"U§.§!!7§(Math.abs(this.§0r§ - param4) / (param3 - param4),0,1);
            this.§1!`§(param3,param4);
            if(param6)
            {
               _loc11_ = this.§>!;§(this.§]#x§);
               this.§,#x§(false,this.§0r§,this.§0r§,_loc11_);
               if(this.§]#x§ != 0)
               {
                  this.§^!v§ = §6"W§.§+!,§.§9!n§(this.leagueProgressFill,{"scaleX":§7"U§.§!!7§(Math.abs(this.§0r§ - param4) / (param3 - param4),0,1)},null,_loc11_);
                  this.§^!v§.onComplete = this.§-#p§;
                  this.§^!v§.play();
               }
            }
            else
            {
               this.mUserRatingCount = this.§0r§;
            }
         }
         addr26:
      }
      
      private function §>!;§(param1:Number) : Number
      {
         var _loc2_:Number = Math.abs(param1) / this.§ !v§ * this.§`"Z§;
         if(_loc2_ < 0.1)
         {
            return 0.1;
         }
         return _loc2_;
      }
      
      private function §,#x§(param1:Boolean, param2:Number, param3:Number, param4:Number) : void
      {
         if(param1)
         {
            if(this.§-#t§)
            {
               this.§-#t§.stop();
               this.§-#t§ = null;
            }
            if(param2 != param3)
            {
               § b§.playSound("gamescorescreen_score_count_loop",§7$&§,100);
            }
            this.§-#t§ = §6"W§.§+!,§.§9!n§(this,{"mUserRatingCount":param3},{"mUserRatingCount":param2},param4);
            this.§-#t§.onComplete = this.§<$"§;
            this.§-#t§.play();
         }
         else
         {
            this.mUserRatingCount = param3;
         }
      }
      
      private function §2a§() : void
      {
         this.§1$&§ = this.§;!w§.getItemByName("CurrentLeagueIcon").mClip;
         this.§@!M§ = this.§;!w§.getItemByName("NextLeagueIcon").mClip;
         this.§1$&§.gotoAndStop(0);
         this.§@!M§.gotoAndStop(0);
         if(this.§1$&§.StarPromotionIcon)
         {
            this.§1$&§.StarPromotionIcon.visible = false;
         }
         if(this.§@!M§.StarPromotionIcon)
         {
            this.§@!M§.StarPromotionIcon.visible = false;
         }
      }
      
      private function §>9§(param1:Object, param2:Number = 0) : void
      {
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc3_:Number = this.§"J§ == this.§3!!§ && this.§=$ § == StateTournamentResults.§9`§ ? Number(param2 - 1) : (this.§"J§ == this.§[!T§ && this.§=$ § == StateTournamentResults.§9`§ ? Number(param2 + 1) : Number(param2));
         if(param2 == 1 && this.§"J§ == this.§3!!§ && this.§<"D§.lastResult)
         {
            this.§1$&§.gotoAndStop(§6#P§.§4Z§(this.§<"D§.l.pli.tn).id);
         }
         else if(param2 > 0)
         {
            this.§1$&§.gotoAndStop("DIAMOND");
            this.§1$&§.StarPromotionIcon.visible = true;
            this.§1$&§.StarPromotionIcon.txtStarRating.text = _loc3_.toString();
         }
         else if(param2 == -1 && this.§"J§ == this.§[!T§ && §6#P§.§4Z§(param1.l.pli.tn).id == §6#P§.§8z§.id && param1.lastResult)
         {
            this.§1$&§.gotoAndStop("DIAMOND");
            if(this.§1$&§.StarPromotionIcon)
            {
               this.§1$&§.StarPromotionIcon.visible = false;
            }
         }
         else if(param1.l.li)
         {
            this.§1$&§.gotoAndStop(§6#P§.§4Z§(param1.l.li.tn).id);
            if(this.§1$&§.StarPromotionIcon)
            {
               this.§1$&§.StarPromotionIcon.visible = false;
            }
         }
         else if(param1.l.pli)
         {
            if(!param1.lastResult && this.§"J§ == this.§3!!§)
            {
               this.§1$&§.gotoAndStop(§6#P§.§"M§(param1.l.pli.tn).id);
            }
            else if(!param1.lastResult && this.§"J§ == this.§[!T§)
            {
               this.§1$&§.gotoAndStop(§6#P§.§7#H§(param1.l.pli.tn).id);
            }
            else
            {
               this.§1$&§.gotoAndStop(§6#P§.§4Z§(param1.l.pli.tn).id);
            }
         }
         else
         {
            this.§1$&§.visble = false;
         }
         if(param2 == 1 && this.§"J§ == this.§3!!§)
         {
            this.§@!M§.gotoAndStop("STAR");
            this.§@!M§.StarPromotionIcon.visible = true;
            if(this.§<"D§.lastResult)
            {
               this.§@!M§.StarPromotionIcon.txtStarRating.text = param2.toString();
            }
            else
            {
               this.§@!M§.StarPromotionIcon.txtStarRating.text = this.§<"D§.l.nli.ls.toString();
            }
         }
         else if(param2 >= 0)
         {
            this.§@!M§.gotoAndStop("STAR");
            _loc3_ = this.§"J§ == this.§[!T§ ? Number(_loc3_) : Number(_loc3_ + 1);
            if(!param1.lastResult && param1.l.nli.ls)
            {
               _loc3_ = param1.l.nli.ls;
            }
            this.§@!M§.StarPromotionIcon.visible = true;
            this.§@!M§.StarPromotionIcon.txtStarRating.text = _loc3_.toString();
         }
         else if(param1.lastResult && this.§"J§ == this.§[!T§ && §6#P§.§4Z§(param1.l.pli.tn).id == §6#P§.§8z§.id && param2 == -1)
         {
            this.§@!M§.gotoAndStop("STAR");
            this.§@!M§.StarPromotionIcon.visible = true;
            this.§@!M§.StarPromotionIcon.txtStarRating.text = (this.§<"D§.l.pli.ls + 1).toString();
         }
         else if(param1.l.nli)
         {
            this.§@!M§.gotoAndStop(§6#P§.§4Z§(param1.l.nli.tn).id);
            if(param1.l.nli.ls && param1.l.nli.ls >= 1)
            {
               this.§@!M§.gotoAndStop("STAR");
               this.§@!M§.StarPromotionIcon.visible = true;
               this.§@!M§.StarPromotionIcon.txtStarRating.text = this.§<"D§.l.nli.ls.toString();
            }
         }
         else if(param1.l.pli)
         {
            _loc5_ = !!§4"s§.§+!,§.currentLeague() ? §4"s§.§+!,§.currentLeague().id : param1.l.pli.tn;
            if(!param1.lastResult && this.§"J§ == this.§3!!§)
            {
               if(§4"s§.§+!,§.currentLeague())
               {
                  this.§@!M§.gotoAndStop(§6#P§.§"M§(§4"s§.§+!,§.currentLeague().id).id);
               }
               else if(param1.l.pli)
               {
                  this.§@!M§.gotoAndStop(§6#P§.§"M§(§6#P§.§"M§(param1.l.pli.tn).id).id);
               }
            }
            else if(!param1.lastResult && this.§"J§ == this.§[!T§)
            {
               this.§@!M§.gotoAndStop(§6#P§.§"M§(_loc5_).id);
            }
            else
            {
               this.§@!M§.gotoAndStop(§6#P§.§4Z§(_loc5_).id);
            }
         }
         else
         {
            this.§@!M§.visble = false;
         }
         var _loc4_:String = "";
         if(!param1.lastResult && this.§"J§ == this.§3!!§ && param2 <= 0)
         {
            _loc4_ = §-"N§;
         }
         else if(!param1.lastResult && this.§"J§ == this.§[!T§ && param2 <= 0)
         {
            _loc4_ = §["q§;
         }
         else
         {
            _loc4_ = !!param1.l.li ? §>"#§ : §`!?§;
         }
         (this.§;!w§.getItemByName("LeaguesRating").mClip.textProgress as TextField).text = _loc4_;
         if(param1.l.li || param1.l.pli)
         {
            _loc6_ = !!param1.l.li ? §6#P§.§4Z§(param1.l.li.tn).name + "!" : §6#P§.§4Z§(param1.l.pli.tn).name + "!";
            if(!param1.lastResult && this.§"J§ == this.§3!!§)
            {
               _loc6_ = !!param1.l.li ? §6#P§.§4Z§(param1.l.li.tn).name + "!" : §6#P§.§"M§(param1.l.pli.tn).name + "!";
            }
            else if(!param1.lastResult && this.§"J§ == this.§3!!§)
            {
               _loc6_ = !!param1.l.li ? §6#P§.§7#H§(param1.l.li.tn).name + "!" : §6#P§.§7#H§(param1.l.pli.tn).name + "!";
            }
            (this.§;!w§.getItemByName("LeaguesRating").mClip.textLeague as TextField).text = _loc6_;
         }
         else
         {
            (this.§;!w§.getItemByName("LeaguesRating").mClip.textLeague as TextField).text = "";
         }
      }
      
      private function §5"2§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Boolean = false) : void
      {
         this.§1!`§(param3,param4);
      }
      
      private function §<$"§() : void
      {
         § b§.§8!7§(§7$&§);
         if(this.§-#t§)
         {
            this.§-#t§.stop();
            this.§-#t§ = null;
         }
      }
      
      private function §1!`§(param1:Number, param2:Number) : void
      {
         if(param2 > -1)
         {
            (this.§;!w§.getItemByName("LeaguesRatingProgress").mClip.TextField_LeagueProgressValue_Score as TextField).text = param2.toString();
         }
         else
         {
            (this.§;!w§.getItemByName("LeaguesRatingProgress").mClip.TextField_LeagueProgressValue_Score as TextField).text = "0";
         }
         (this.§;!w§.getItemByName("LeaguesRatingProgress").mClip.TextField_LeagueProgressValue_Goal as TextField).text = param1.toString();
      }
      
      private function § ^§(param1:Number = 0) : void
      {
         this.§!"F§();
         if(this.§"J§ == this.§^!E§)
         {
            return;
         }
         this.§'#R§ = new this.§2"z§();
         this.§!!U§ = new this.§`"Y§();
         this.§@h§ = new this.§`"Y§();
         this.§3"L§ = new this.§2"z§();
         if(this.§]#x§ > 0 && this.§"J§ == this.§3!!§)
         {
            this.§@h§ = new this.§`"Y§();
            if(param1 > 0)
            {
               this.§'#R§ = new this.§0#@§();
               this.§3"L§ = new this.§0#@§();
               this.§!!U§ = new this.§7!]§();
               this.§@h§ = new this.§7!]§();
            }
         }
         else if(this.§]#x§ < 0 && this.§"J§ == this.§[!T§)
         {
            this.§'#R§ = new this.§;$!§();
            this.§3"L§ = new this.§;$!§();
            if(param1 >= 0)
            {
               this.§'#R§ = new this.§!"C§();
               this.§3"L§ = new this.§!"C§();
            }
         }
         this.§'#R§.name = "LeaguePromotionAnimation";
         this.§'#R§.gotoAndStop(0);
         this.§'#R§.visible = false;
         this.§3"L§.name = "LeaguePromotionAnimationNextLeague";
         this.§3"L§.gotoAndStop(0);
         this.§3"L§.visible = false;
         this.§!!U§.visible = false;
         this.§!!U§.name = "LeaguePromotionAnimationShine";
         this.§!!U§.gotoAndStop(0);
         this.§@h§.visible = false;
         this.§@h§.name = "LeaguePromotionAnimationNextLeagueShine";
         this.§@h§.gotoAndStop(0);
         var _loc2_:DisplayObject = this.§1$&§.getChildByName(this.§'#R§.name);
         if(_loc2_)
         {
            this.§1$&§.removeChild(_loc2_);
         }
         this.§'#R§.addEventListener(Event.ENTER_FRAME,this.§ #'§);
         this.§1$&§.addChild(this.§'#R§);
         var _loc3_:Point = new Point(26,20);
         var _loc4_:Number = 1;
         if(this.§'#R§ is this.§!"C§ || this.§'#R§ is this.§0#@§)
         {
            _loc3_ = new Point(25,23);
            _loc4_ = 0.5;
         }
         this.§!!U§.x = _loc3_.x;
         this.§!!U§.y = _loc3_.y;
         this.§!!U§.scaleX = this.§!!U§.scaleY = _loc4_;
         this.§'#R§.x = _loc3_.x;
         this.§'#R§.y = _loc3_.y;
         this.§'#R§.scaleX = this.§'#R§.scaleY = _loc4_;
         var _loc5_:DisplayObject;
         if(_loc5_ = this.§@!M§.getChildByName(this.§3"L§.name))
         {
            this.§@!M§.removeChild(_loc5_);
         }
         this.§3"L§.removeEventListener(Event.ENTER_FRAME,this.§'!S§);
         this.§3"L§.addEventListener(Event.ENTER_FRAME,this.§'!S§);
         this.§@!M§.addChild(this.§3"L§);
         if(this.§3"L§ is this.§!"C§ || this.§3"L§ is this.§0#@§)
         {
            this.§3"L§.x = 0;
            this.§3"L§.y = 5;
            this.§@h§.scaleX = this.§@h§.scaleY = 0.5;
         }
         else
         {
            this.§3"L§.x = 25;
            this.§3"L§.y = 25;
         }
         this.§3"L§.scaleX = this.§3"L§.scaleY = 0.75;
         this.§@h§.x = this.§3"L§.x;
         this.§@h§.y = this.§3"L§.y;
         var _loc6_:DisplayObject;
         if(_loc6_ = this.§1$&§.getChildByName(this.§!!U§.name))
         {
            this.§1$&§.removeChild(_loc6_);
         }
         var _loc7_:DisplayObject;
         if(_loc7_ = this.§@!M§.getChildByName(this.§@h§.name))
         {
            this.§@!M§.removeChild(_loc7_);
         }
         this.§1$&§.addChild(this.§!!U§);
         this.§@!M§.addChild(this.§@h§);
      }
      
      private function §-#p§() : void
      {
         this.§?m§[0] = true;
         this.§^!v§.stop();
         this.§^!v§ = null;
         StateTournamentResults.§7$A§ = true;
      }
      
      private function §?"O§() : void
      {
         var _loc8_:Object = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         this.§^!v§.stop();
         this.§^!v§ = null;
         if(this.§'#R§)
         {
            this.§'#R§.visible = true;
            this.§!!U§.visible = true;
            this.§'#R§.gotoAndPlay(0);
            this.§!!U§.gotoAndPlay(0);
            StateTournamentResults.§7$A§ = true;
            if(this.§1$&§.StarPromotionIcon)
            {
               this.§1$&§.setChildIndex(this.§1$&§.StarPromotionIcon,this.§1$&§.numChildren - 1);
            }
            this.§1$&§.setChildIndex(this.§!!U§,0);
         }
         if(this.§3"L§)
         {
            this.§3"L§.visible = true;
            this.§@h§.visible = !(this.§3"L§ is this.§!"C§);
            this.§3"L§.gotoAndPlay(0);
            this.§@h§.gotoAndPlay(0);
            if(this.§@!M§.StarPromotionIcon)
            {
               this.§@!M§.setChildIndex(this.§@!M§.StarPromotionIcon,this.§@!M§.numChildren - 1);
            }
            this.§@!M§.setChildIndex(this.§@h§,0);
         }
         this.leagueProgressFill.scaleX = 0;
         var _loc1_:Number = 0;
         if(!this.§<"D§ || !this.§<"D§.l)
         {
            this.§@!M§.visible = true;
            return;
         }
         var _loc2_:Number = !!this.§<"D§.l.pli ? Number(this.§<"D§.l.pli.rt) : Number(0);
         var _loc3_:Number = !!this.§<"D§.l.li ? Number(this.§<"D§.l.li.rt) : Number(_loc2_);
         var _loc4_:Number = !!this.§<"D§.l.nli ? Number(this.§<"D§.l.nli.rt) : Number(0);
         var _loc5_:Number = 1;
         var _loc6_:Number = 0;
         var _loc7_:Number = 0;
         for each(_loc8_ in this.§<"D§.l.p)
         {
            if(_loc8_.u == (AngryBirdsBase.singleton.dataModel.userProgress as §`#u§).userID)
            {
               if(_loc8_.lrc)
               {
                  this.§0!F§ = _loc8_.lrc;
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
                     this.§"J§ = this.§3!!§;
                     _loc5_ = (_loc1_ - _loc7_) / (_loc6_ - _loc7_);
                  }
                  if(_loc8_.p == "d")
                  {
                     _loc6_ = _loc2_;
                     _loc7_ = _loc3_;
                     this.§"J§ = this.§[!T§;
                     this.leagueProgressFill.scaleX = §7"U§.§!!7§((_loc1_ + this.§]#x§ * -1 - _loc7_) / (_loc6_ - _loc7_),0,1);
                     _loc5_ = (_loc1_ - _loc7_) / (_loc6_ - _loc7_);
                  }
               }
            }
         }
         this.§1!`§(_loc6_,_loc7_);
         _loc9_ = Math.abs(this.leagueProgressFill.scaleX - _loc5_);
         _loc10_ = this.§>!;§(Math.abs(this.§]#x§) * _loc9_);
         if(this.§"J§ == this.§3!!§)
         {
            this.§,#x§(true,_loc7_,_loc1_,_loc10_);
         }
         else
         {
            this.§,#x§(true,_loc6_,_loc1_,_loc10_);
         }
         this.§+P§ = null;
         this.§+P§ = §6"W§.§+!,§.§9!n§(this.leagueProgressFill,{"scaleX":§7"U§.§!!7§(_loc5_,0,1)},null,_loc10_);
         this.§+P§.onComplete = this.§ "y§;
         this.§+P§.play();
      }
      
      private function § "y§() : void
      {
         this.§?m§[0] = true;
         this.§+P§.stop();
         this.§+P§ = null;
         this.§@!M§.visible = true;
      }
      
      public function §+#@§() : Boolean
      {
         return this.§&#]§;
      }
      
      public function get §,"W§() : Number
      {
         return this.§<"d§;
      }
      
      public function set §,"W§(param1:Number) : void
      {
         this.§<"d§ = param1;
      }
      
      public function set §0!F§(param1:Number) : void
      {
         this.§]#x§ = param1;
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:String = this.§]#x§ > 0 ? "+" : "";
         (this.§;!w§.getItemByName("LeaguesRatingProgress").mClip.LeagueRating as TextField).text = int(this.mUserRatingCount) + " (" + _loc2_ + this.§]#x§.toString() + ")";
         if(this.§?m§[0] && this.§?m§[1])
         {
            this.§?m§ = [false,false];
            dispatchEvent(new §5#v§(§5#v§.§[!E§));
         }
      }
      
      public function deActivate() : void
      {
         § b§.§8!7§(§7$&§);
         this.§!"F§();
      }
      
      private function §!"F§() : void
      {
         if(this.§'#R§)
         {
            this.§'#R§.gotoAndStop(0);
            this.§'#R§.removeEventListener(Event.ENTER_FRAME,this.§ #'§);
         }
         if(this.§3"L§)
         {
            this.§3"L§.gotoAndStop(0);
            this.§3"L§.removeEventListener(Event.ENTER_FRAME,this.§'!S§);
         }
      }
   }
}
