package §=N§
{
   import §7""§.§4!z§;
   import §7A§.§4E§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.text.TextField;
   
   public class §&3§ extends EventDispatcher
   {
      
      public static const EVENT_ANIMATION_INTRO_OVER:String = "EVENT_ANIMATION_INTRO_OVER";
      
      public static const EVENT_ANIMATION_ATTACK_OVER:String = "EVENT_ANIMATION_ATTACK_OVER";
      
      public static const EVENT_ANIMATION_RETURN_TO_DEFAULT_POSITION_OVER:String = "EVENT_ANIMATION_RETURN_TO_DEFAULT_POSITION_OVER";
      
      public static const EVENT_ANIMATION_GO_TO_CENTER_OVER:String = "EVENT_ANIMATION_GO_TO_CENTER_OVER";
      
      public static const EVENT_ANIMATION_CENTER_OUTRO_OVER:String = "EVENT_ANIMATION_CENTER_OUTRO_OVER";
      
      public static const EVENT_ANIMATION_ATTACK_INVOKES_GET_ATTACKED:String = "EVENT_ANIMATION_ATTACK_INVOKES_GET_ATTACKED";
      
      public static const EVENT_ANIMATION_GET_ATTACKED_OVER:String = "EVENT_ANIMATION_GET_ATTACKED_OVER";
      
      private static const §`"#§:String = "avatar_container_intro_start";
      
      private static const §>!?§:String = "avatar_container_attack_start";
      
      private static const §;!s§:String = "avatar_container_return_start";
      
      private static const §1!L§:String = "avatar_container_go_to_center_start";
      
      private static const §`U§:String = "avatar_container_get_attacked_start";
      
      private static const §'L§:String = "avatar_container_disappear_start";
      
      private static const §>"<§:String = "avatar_container_reappear_start";
      
      private static const §7C§:String = "avatar_container_center_outro_start";
      
      private static const §?!_§:String = "avatar_container_intro_end";
      
      private static const §2"0§:String = "avatar_container_attack_end";
      
      private static const §7!Z§:String = "avatar_container_return_end";
      
      private static const § !0§:String = "avatar_container_go_to_center_end";
      
      private static const §!I§:String = "avatar_container_get_attacked_end";
      
      private static const §1"p§:String = "avatar_container_disappear_end";
      
      private static const §`!`§:String = "avatar_container_reappear_end";
      
      private static const § V§:String = "avatar_container_center_outro_end";
      
      private static const §;u§:String = "start_get_attacked_animation";
       
      
      private var §>!K§:MovieClip;
      
      private var §-!1§:MovieClip;
      
      private var §-"E§:§4!z§;
      
      private var §87§:Boolean;
      
      private var §="e§:Boolean;
      
      private var §1[§:int;
      
      private var mName:String;
      
      private var §!K§:int;
      
      private var §!!B§:String;
      
      public function §&3§(param1:MovieClip, param2:Boolean = true)
      {
         super();
         this.§>!K§ = param1;
         this.§87§ = param2;
         this.§>!K§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         this.§-!1§ = this.§>!K§["avatar"];
         this.§="e§ = false;
      }
      
      public function §9#7§() : void
      {
         this.§>!K§.gotoAndPlay(§`"#§);
      }
      
      public function §2"#§() : void
      {
         this.§>!K§.gotoAndPlay(§>!?§);
      }
      
      public function §^"y§() : void
      {
         this.§>!K§.gotoAndPlay(§`U§);
      }
      
      public function §2!9§() : void
      {
         this.§>!K§.gotoAndPlay(§;!s§);
      }
      
      public function § t§() : void
      {
         this.§>!K§.gotoAndPlay(§1!L§);
      }
      
      public function §5§() : void
      {
         this.§>!K§.gotoAndPlay(§>"<§);
      }
      
      public function §#!-§() : void
      {
         this.§>!K§.gotoAndPlay(§'L§);
      }
      
      public function §6!2§() : void
      {
         this.§>!K§.gotoAndPlay(§7C§);
      }
      
      public function §2!s§(param1:Object) : void
      {
         this.§!!B§ = param1.u;
         this.§1[§ = param1.r;
         this.mName = param1.n;
         this.§!K§ = param1.p;
         this.§="e§ = true;
         this.§@<§();
      }
      
      public function §0!D§(param1:int) : void
      {
         if(param1 != this.§1[§ && !(param1 > 3 && this.§1[§ > 3))
         {
            this.§1[§ = param1;
            this.§@<§();
         }
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         switch(this.§>!K§.currentFrameLabel)
         {
            case §?!_§:
               dispatchEvent(new Event(EVENT_ANIMATION_INTRO_OVER));
               break;
            case §2"0§:
               dispatchEvent(new Event(EVENT_ANIMATION_ATTACK_OVER));
               break;
            case §7!Z§:
               dispatchEvent(new Event(EVENT_ANIMATION_RETURN_TO_DEFAULT_POSITION_OVER));
               break;
            case § !0§:
               dispatchEvent(new Event(EVENT_ANIMATION_GO_TO_CENTER_OVER));
               break;
            case §;u§:
               dispatchEvent(new Event(EVENT_ANIMATION_ATTACK_INVOKES_GET_ATTACKED));
               break;
            case §!I§:
               dispatchEvent(new Event(EVENT_ANIMATION_GET_ATTACKED_OVER));
         }
      }
      
      private function §@<§() : void
      {
         var _loc1_:MovieClip = null;
         var _loc2_:TextField = null;
         if(this.§="e§)
         {
            this.§0!Y§();
            switch(this.§1[§)
            {
               case 1:
                  _loc1_ = this.§-!1§["frame_gold"] as MovieClip;
                  break;
               case 2:
                  _loc1_ = this.§-!1§["frame_silver"] as MovieClip;
                  break;
               case 3:
                  _loc1_ = this.§-!1§["frame_bronze"] as MovieClip;
                  break;
               default:
                  _loc1_ = this.§-!1§["frame_normal"] as MovieClip;
            }
            _loc1_.visible = true;
            _loc1_.txtName.txt.text = this.mName;
            _loc2_ = _loc1_.txtName.txt;
            §4E§.§0!l§(_loc2_,int(_loc2_.getTextFormat().size),_loc2_.width,_loc2_.height);
            (_loc1_.txtName.txt as TextField).mouseEnabled = false;
            (_loc1_.MovieClip_Scores as MovieClip).visible = this.§87§;
            if(this.§87§)
            {
               _loc1_.MovieClip_Scores.txtScores.txt.text = this.§!K§;
               (_loc1_.MovieClip_Scores.txtScores.txt as TextField).mouseEnabled = false;
            }
            this.§3!6§();
            this.§-"E§ = new §4!z§(this.§!!B§);
            this.§-!1§.profile.addChild(this.§-"E§);
            this.§-"E§.scaleX = this.§-"E§.scaleY = 1.73;
         }
      }
      
      public function dispose() : void
      {
         this.§3!6§();
      }
      
      private function §3!6§() : void
      {
         if(this.§-"E§)
         {
            this.§-"E§.dispose();
            this.§-"E§ = null;
         }
      }
      
      private function §0!Y§() : void
      {
         (this.§-!1§["frame_normal"] as MovieClip).visible = false;
         (this.§-!1§["frame_silver"] as MovieClip).visible = false;
         (this.§-!1§["frame_bronze"] as MovieClip).visible = false;
         (this.§-!1§["frame_gold"] as MovieClip).visible = false;
      }
   }
}
