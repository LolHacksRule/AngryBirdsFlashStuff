package §3!j§
{
   import §+d§.§2"I§;
   import §`"]§.§ §;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.text.TextField;
   
   public class §@"b§ extends EventDispatcher
   {
      
      public static const EVENT_ANIMATION_INTRO_OVER:String = "EVENT_ANIMATION_INTRO_OVER";
      
      public static const EVENT_ANIMATION_ATTACK_OVER:String = "EVENT_ANIMATION_ATTACK_OVER";
      
      public static const EVENT_ANIMATION_RETURN_TO_DEFAULT_POSITION_OVER:String = "EVENT_ANIMATION_RETURN_TO_DEFAULT_POSITION_OVER";
      
      public static const EVENT_ANIMATION_GO_TO_CENTER_OVER:String = "EVENT_ANIMATION_GO_TO_CENTER_OVER";
      
      public static const EVENT_ANIMATION_CENTER_OUTRO_OVER:String = "EVENT_ANIMATION_CENTER_OUTRO_OVER";
      
      public static const EVENT_ANIMATION_ATTACK_INVOKES_GET_ATTACKED:String = "EVENT_ANIMATION_ATTACK_INVOKES_GET_ATTACKED";
      
      public static const EVENT_ANIMATION_GET_ATTACKED_OVER:String = "EVENT_ANIMATION_GET_ATTACKED_OVER";
      
      private static const §catch§:String = "avatar_container_intro_start";
      
      private static const §&"f§:String = "avatar_container_attack_start";
      
      private static const §""5§:String = "avatar_container_return_start";
      
      private static const §,!%§:String = "avatar_container_go_to_center_start";
      
      private static const §#"Y§:String = "avatar_container_get_attacked_start";
      
      private static const §9!#§:String = "avatar_container_disappear_start";
      
      private static const §!!V§:String = "avatar_container_reappear_start";
      
      private static const §=L§:String = "avatar_container_center_outro_start";
      
      private static const §3Y§:String = "avatar_container_intro_end";
      
      private static const §>F§:String = "avatar_container_attack_end";
      
      private static const §#y§:String = "avatar_container_return_end";
      
      private static const §2!#§:String = "avatar_container_go_to_center_end";
      
      private static const §%!I§:String = "avatar_container_get_attacked_end";
      
      private static const §+2§:String = "avatar_container_disappear_end";
      
      private static const §<F§:String = "avatar_container_reappear_end";
      
      private static const §=h§:String = "avatar_container_center_outro_end";
      
      private static const §1"F§:String = "start_get_attacked_animation";
       
      
      private var §!!O§:MovieClip;
      
      private var §5!H§:MovieClip;
      
      private var §8!I§:§ #2§;
      
      private var §%"m§:Boolean;
      
      private var §1"v§:Boolean;
      
      private var §%W§:int;
      
      private var mName:String;
      
      private var §["X§:int;
      
      private var §3!u§:String;
      
      public function §@"b§(param1:MovieClip, param2:Boolean = true)
      {
         super();
         this.§!!O§ = param1;
         this.§%"m§ = param2;
         this.§!!O§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         this.§5!H§ = this.§!!O§["avatar"];
         this.§1"v§ = false;
      }
      
      public function §!!5§() : void
      {
         this.§!!O§.gotoAndPlay(§catch§);
      }
      
      public function §for §() : void
      {
         this.§!!O§.gotoAndPlay(§&"f§);
      }
      
      public function §["d§() : void
      {
         this.§!!O§.gotoAndPlay(§#"Y§);
      }
      
      public function § !W§() : void
      {
         this.§!!O§.gotoAndPlay(§""5§);
      }
      
      public function §^"r§() : void
      {
         this.§!!O§.gotoAndPlay(§,!%§);
      }
      
      public function §0B§() : void
      {
         this.§!!O§.gotoAndPlay(§!!V§);
      }
      
      public function §]"P§() : void
      {
         this.§!!O§.gotoAndPlay(§9!#§);
      }
      
      public function §[x§() : void
      {
         this.§!!O§.gotoAndPlay(§=L§);
      }
      
      public function §2x§(param1:Object) : void
      {
         this.§3!u§ = param1.u;
         this.§%W§ = param1.r;
         this.mName = param1.n;
         this.§["X§ = param1.p;
         this.§1"v§ = true;
         this.§7";§();
      }
      
      public function §2"J§(param1:int) : void
      {
         if(param1 != this.§%W§ && !(param1 > 3 && this.§%W§ > 3))
         {
            this.§%W§ = param1;
            this.§7";§();
         }
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         switch(this.§!!O§.currentFrameLabel)
         {
            case §3Y§:
               dispatchEvent(new Event(EVENT_ANIMATION_INTRO_OVER));
               break;
            case §>F§:
               dispatchEvent(new Event(EVENT_ANIMATION_ATTACK_OVER));
               break;
            case §#y§:
               dispatchEvent(new Event(EVENT_ANIMATION_RETURN_TO_DEFAULT_POSITION_OVER));
               break;
            case §2!#§:
               dispatchEvent(new Event(EVENT_ANIMATION_GO_TO_CENTER_OVER));
               break;
            case §1"F§:
               dispatchEvent(new Event(EVENT_ANIMATION_ATTACK_INVOKES_GET_ATTACKED));
               break;
            case §%!I§:
               dispatchEvent(new Event(EVENT_ANIMATION_GET_ATTACKED_OVER));
         }
      }
      
      private function §7";§() : void
      {
         var _loc1_:MovieClip = null;
         var _loc2_:TextField = null;
         if(this.§1"v§)
         {
            this.§4!5§();
            switch(this.§%W§)
            {
               case 1:
                  _loc1_ = this.§5!H§["frame_gold"] as MovieClip;
                  break;
               case 2:
                  _loc1_ = this.§5!H§["frame_silver"] as MovieClip;
                  break;
               case 3:
                  _loc1_ = this.§5!H§["frame_bronze"] as MovieClip;
                  break;
               default:
                  _loc1_ = this.§5!H§["frame_normal"] as MovieClip;
            }
            _loc1_.visible = true;
            _loc1_.txtName.txt.text = this.mName;
            _loc2_ = _loc1_.txtName.txt;
            §2"I§.§;"%§(_loc2_,int(_loc2_.getTextFormat().size),_loc2_.width,_loc2_.height);
            (_loc1_.txtName.txt as TextField).mouseEnabled = false;
            (_loc1_.MovieClip_Scores as MovieClip).visible = this.§%"m§;
            if(this.§%"m§)
            {
               _loc1_.MovieClip_Scores.txtScores.txt.text = this.§["X§;
               (_loc1_.MovieClip_Scores.txtScores.txt as TextField).mouseEnabled = false;
            }
            this.§^'§();
            this.§8!I§ = new § #2§(this.§3!u§);
            this.§5!H§.profile.addChild(this.§8!I§);
            this.§8!I§.scaleX = this.§8!I§.scaleY = 1.73;
         }
      }
      
      public function dispose() : void
      {
         this.§^'§();
      }
      
      private function §^'§() : void
      {
         if(this.§8!I§)
         {
            this.§8!I§.dispose();
            this.§8!I§ = null;
         }
      }
      
      private function §4!5§() : void
      {
         (this.§5!H§["frame_normal"] as MovieClip).visible = false;
         (this.§5!H§["frame_silver"] as MovieClip).visible = false;
         (this.§5!H§["frame_bronze"] as MovieClip).visible = false;
         (this.§5!H§["frame_gold"] as MovieClip).visible = false;
      }
   }
}
