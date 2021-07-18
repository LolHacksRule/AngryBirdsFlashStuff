package § "v§
{
   import §+!c§.§5"$§;
   import §1!i§.§6"#§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.text.TextField;
   
   public class §3?§ extends EventDispatcher
   {
      
      public static const EVENT_ANIMATION_INTRO_OVER:String = "EVENT_ANIMATION_INTRO_OVER";
      
      public static const EVENT_ANIMATION_ATTACK_OVER:String = "EVENT_ANIMATION_ATTACK_OVER";
      
      public static const EVENT_ANIMATION_RETURN_TO_DEFAULT_POSITION_OVER:String = "EVENT_ANIMATION_RETURN_TO_DEFAULT_POSITION_OVER";
      
      public static const EVENT_ANIMATION_GO_TO_CENTER_OVER:String = "EVENT_ANIMATION_GO_TO_CENTER_OVER";
      
      public static const EVENT_ANIMATION_CENTER_OUTRO_OVER:String = "EVENT_ANIMATION_CENTER_OUTRO_OVER";
      
      public static const EVENT_ANIMATION_ATTACK_INVOKES_GET_ATTACKED:String = "EVENT_ANIMATION_ATTACK_INVOKES_GET_ATTACKED";
      
      public static const EVENT_ANIMATION_GET_ATTACKED_OVER:String = "EVENT_ANIMATION_GET_ATTACKED_OVER";
      
      private static const §#!W§:String = "avatar_container_intro_start";
      
      private static const § case§:String = "avatar_container_attack_start";
      
      private static const §!#>§:String = "avatar_container_return_start";
      
      private static const §9#!§:String = "avatar_container_go_to_center_start";
      
      private static const §;#D§:String = "avatar_container_get_attacked_start";
      
      private static const §>#'§:String = "avatar_container_disappear_start";
      
      private static const §7"4§:String = "avatar_container_reappear_start";
      
      private static const §!#K§:String = "avatar_container_center_outro_start";
      
      private static const §+"P§:String = "avatar_container_intro_end";
      
      private static const § 9§:String = "avatar_container_attack_end";
      
      private static const §##1§:String = "avatar_container_return_end";
      
      private static const §`!C§:String = "avatar_container_go_to_center_end";
      
      private static const §0"Q§:String = "avatar_container_get_attacked_end";
      
      private static const §5Q§:String = "avatar_container_disappear_end";
      
      private static const §'"`§:String = "avatar_container_reappear_end";
      
      private static const §;6§:String = "avatar_container_center_outro_end";
      
      private static const §`!9§:String = "start_get_attacked_animation";
       
      
      private var §1"0§:MovieClip;
      
      private var §!?§:MovieClip;
      
      private var §?!a§:§5"$§;
      
      private var §0! §:Boolean;
      
      private var §,"8§:Boolean;
      
      private var §8#-§:int;
      
      private var mName:String;
      
      private var §;"m§:int;
      
      private var §>#T§:String;
      
      public function §3?§(param1:MovieClip, param2:Boolean = true)
      {
         super();
         this.§1"0§ = param1;
         this.§0! § = param2;
         this.§1"0§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         this.§!?§ = this.§1"0§["avatar"];
         this.§,"8§ = false;
      }
      
      public function §2"1§() : void
      {
         this.§1"0§.gotoAndPlay(§#!W§);
      }
      
      public function § "f§() : void
      {
         this.§1"0§.gotoAndPlay(§ case§);
      }
      
      public function §["C§() : void
      {
         this.§1"0§.gotoAndPlay(§;#D§);
      }
      
      public function §3"m§() : void
      {
         this.§1"0§.gotoAndPlay(§!#>§);
      }
      
      public function §%u§() : void
      {
         this.§1"0§.gotoAndPlay(§9#!§);
      }
      
      public function §;n§() : void
      {
         this.§1"0§.gotoAndPlay(§7"4§);
      }
      
      public function §2!I§() : void
      {
         this.§1"0§.gotoAndPlay(§>#'§);
      }
      
      public function §+`§() : void
      {
         this.§1"0§.gotoAndPlay(§!#K§);
      }
      
      public function setData(param1:Object) : void
      {
         this.§>#T§ = param1.u;
         this.§8#-§ = param1.r;
         this.mName = param1.n;
         this.§;"m§ = param1.p;
         this.§,"8§ = true;
         this.§;f§();
      }
      
      public function §1!Q§(param1:int) : void
      {
         if(param1 != this.§8#-§ && !(param1 > 3 && this.§8#-§ > 3))
         {
            this.§8#-§ = param1;
            this.§;f§();
         }
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         switch(this.§1"0§.currentFrameLabel)
         {
            case §+"P§:
               dispatchEvent(new Event(EVENT_ANIMATION_INTRO_OVER));
               break;
            case § 9§:
               dispatchEvent(new Event(EVENT_ANIMATION_ATTACK_OVER));
               break;
            case §##1§:
               dispatchEvent(new Event(EVENT_ANIMATION_RETURN_TO_DEFAULT_POSITION_OVER));
               break;
            case §`!C§:
               dispatchEvent(new Event(EVENT_ANIMATION_GO_TO_CENTER_OVER));
               break;
            case §`!9§:
               dispatchEvent(new Event(EVENT_ANIMATION_ATTACK_INVOKES_GET_ATTACKED));
               break;
            case §0"Q§:
               dispatchEvent(new Event(EVENT_ANIMATION_GET_ATTACKED_OVER));
         }
      }
      
      private function §;f§() : void
      {
         var _loc1_:MovieClip = null;
         var _loc2_:TextField = null;
         if(this.§,"8§)
         {
            this.§ #>§();
            switch(this.§8#-§)
            {
               case 1:
                  _loc1_ = this.§!?§["frame_gold"] as MovieClip;
                  break;
               case 2:
                  _loc1_ = this.§!?§["frame_silver"] as MovieClip;
                  break;
               case 3:
                  _loc1_ = this.§!?§["frame_bronze"] as MovieClip;
                  break;
               default:
                  _loc1_ = this.§!?§["frame_normal"] as MovieClip;
            }
            _loc1_.visible = true;
            _loc1_.txtName.txt.text = this.mName;
            _loc2_ = _loc1_.txtName.txt;
            §6"#§.§7s§(_loc2_,int(_loc2_.getTextFormat().size),_loc2_.width,_loc2_.height);
            (_loc1_.txtName.txt as TextField).mouseEnabled = false;
            (_loc1_.MovieClip_Scores as MovieClip).visible = this.§0! §;
            if(this.§0! §)
            {
               _loc1_.MovieClip_Scores.txtScores.txt.text = this.§;"m§;
               (_loc1_.MovieClip_Scores.txtScores.txt as TextField).mouseEnabled = false;
            }
            this.§<!6§();
            this.§?!a§ = new §5"$§(this.§>#T§);
            this.§!?§.profile.addChild(this.§?!a§);
            this.§?!a§.scaleX = this.§?!a§.scaleY = 1.73;
         }
      }
      
      public function dispose() : void
      {
         this.§<!6§();
      }
      
      private function §<!6§() : void
      {
         if(this.§?!a§)
         {
            this.§?!a§.dispose();
            this.§?!a§ = null;
         }
      }
      
      private function § #>§() : void
      {
         (this.§!?§["frame_normal"] as MovieClip).visible = false;
         (this.§!?§["frame_silver"] as MovieClip).visible = false;
         (this.§!?§["frame_bronze"] as MovieClip).visible = false;
         (this.§!?§["frame_gold"] as MovieClip).visible = false;
      }
   }
}
