package §5"$§
{
   import §&#S§.§""Z§;
   import §&#S§.§+,§;
   import flash.display.MovieClip;
   
   public class §`"Z§
   {
      
      public static const §&!U§:int = 0;
      
      public static const §7#G§:int = 1;
      
      public static const §8#h§:int = 2;
      
      public static const §?"z§:int = 3;
      
      public static const §^Y§:int = 4;
      
      public static const §#=§:int = 5;
      
      public static const §5"Z§:int = 6;
      
      public static const §3A§:int = 7;
       
      
      private const §3!N§:int = 5000;
      
      protected var §8",§:int = 0;
      
      private var mClip:MovieClip;
      
      private var §?#u§:§+,§;
      
      private var §6#-§:§+,§;
      
      private var §?$-§:§+,§;
      
      public var mCurrentPosition:Number = 0;
      
      private var §>I§:Number = 5000;
      
      private var §-$,§:Number = 0;
      
      private var §7[§:MovieClip;
      
      protected var §+#]§:Boolean = true;
      
      public function §`"Z§()
      {
         super();
      }
      
      public function activate(param1:MovieClip, param2:Boolean = false) : void
      {
         this.mClip = param1;
         if(param2)
         {
            this.§8",§ = §&!U§;
         }
         this.init();
         if(this.§?$-§)
         {
            this.§?$-§.play();
         }
      }
      
      public function §8!4§() : void
      {
         if(this.§8",§ == §5"Z§)
         {
            this.mClip.Movieclip_Slider.visible = true;
            (this.mClip.Movieclip_Slider.Movieclip_SliderBackground as MovieClip).alpha = 1;
         }
         else if(this.§8",§ == §&!U§)
         {
            this.mClip.Movieclip_Slider.visible = true;
            this.§^Z§();
         }
         else if(this.§8",§ == §7#G§)
         {
            this.§8",§ = §?"z§;
            this.§?#u§ = §""Z§.§3!]§.§5"0§(this,{"mCurrentPosition":0},{"mCurrentPosition":this.mCurrentPosition},1,§""Z§.§8O§);
            this.§?#u§.onComplete = this.§^Z§;
            this.§?#u§.play();
         }
      }
      
      public function §;$-§(param1:Boolean = false) : void
      {
         if(this.§8",§ == §#=§ || this.§8",§ == §3A§)
         {
            return;
         }
         if(param1)
         {
            this.§?#u§ = §""Z§.§3!]§.§5"0§(this,{"mCurrentPosition":0},{"mCurrentPosition":this.mCurrentPosition},0.3,§""Z§.§8O§);
            (this.mClip.Movieclip_Slider.Movieclip_SliderBackground as MovieClip).alpha = 0.6;
            this.§8",§ = §3A§;
            this.§?#u§.onComplete = this.§4!S§;
         }
         else
         {
            this.§?#u§ = §""Z§.§3!]§.§5"0§(this,{"mCurrentPosition":0},{"mCurrentPosition":this.mCurrentPosition},1,§""Z§.§8O§);
            this.§8",§ = §#=§;
            this.§?#u§.onComplete = this.§?!-§;
         }
         this.§?#u§.play();
         this.§?$-§ = null;
      }
      
      private function §?!-§() : void
      {
         this.§8",§ = §&!U§;
      }
      
      private function §4!S§() : void
      {
         this.§8",§ = §5"Z§;
         this.mClip.Movieclip_Slider.visible = false;
      }
      
      private function §^Z§() : void
      {
         this.mClip.Movieclip_Slider.Movieclip_SliderBackground.gotoAndStop("COUNTDOWN");
         this.§8",§ = §?"z§;
         this.§#!#§(this.§[4§);
      }
      
      private function §#!#§(param1:Function) : void
      {
         this.§?#u§ = §""Z§.§3!]§.§5"0§(this,{"mCurrentPosition":1},{"mCurrentPosition":this.mCurrentPosition},1,§""Z§.§0"2§);
         this.§?#u§.onComplete = param1;
         this.§?#u§.play();
      }
      
      private function §3P§() : void
      {
         this.§8",§ = §8#h§;
      }
      
      private function §[4§() : void
      {
         this.§8",§ = §^Y§;
         this.§?$-§ = §""Z§.§3!]§.§[#h§(§""Z§.§3!]§.§5"0§(this.mClip.Movieclip_Slider,{},{},3),§""Z§.§3!]§.§5"0§(this.mClip.Movieclip_Slider,{
            "scaleX":1.1,
            "scaleY":1.1
         },{
            "scaleX":1,
            "scaleY":1
         },0.1,§""Z§.§-0§),§""Z§.§3!]§.§5"0§(this.mClip.Movieclip_Slider,{
            "scaleX":1,
            "scaleY":1
         },{
            "scaleX":1.1,
            "scaleY":1.1
         },0.1,§""Z§.§[$1§));
         this.§?$-§.§^"c§ = false;
         this.§?$-§.play();
      }
      
      private function init() : void
      {
         this.mClip.Movieclip_Slider.visibility = true;
         (this.mClip.Movieclip_Slider.Movieclip_SliderBackground as MovieClip).alpha = 1;
         this.§7[§ = this.mClip.Movieclip_Slider.Movieclip_SliderBackground;
         this.§-$,§ = -this.§7[§.width;
         this.§7[§.x = this.§-$,§;
         if(!this.§+#]§)
         {
            if(this.§8",§ == §^Y§ || this.§8",§ == §?"z§)
            {
               this.§8",§ = §^Y§;
               this.mCurrentPosition = 1;
               this.mClip.Movieclip_Slider.Movieclip_SliderBackground.gotoAndStop("COUNTDOWN");
            }
            else if(this.§8",§ == §8#h§ || this.§8",§ == §7#G§)
            {
               this.§8",§ = §8#h§;
               this.mCurrentPosition = 1;
               this.mClip.Movieclip_Slider.Movieclip_SliderBackground.gotoAndStop("REMINDER");
            }
         }
         this.§+#]§ = false;
      }
      
      public function §;"s§() : void
      {
      }
      
      public function §6R§() : void
      {
         if(this.§?#u§)
         {
            this.§?#u§.play();
         }
      }
      
      public function update(param1:Number) : void
      {
         this.§7[§.x = this.§-$,§ + Math.abs(this.§-$,§ + 15) * this.mCurrentPosition;
         if(this.§8",§ == §8#h§)
         {
            this.§>I§ -= param1;
            if(this.§>I§ <= 0)
            {
               this.§;$-§();
            }
         }
      }
      
      public function disable() : void
      {
         this.§;$-§(true);
      }
      
      public function deActivate() : void
      {
         if(this.§8",§ == §3A§)
         {
            this.§7[§.x = this.§-$,§;
            this.mCurrentPosition = 0;
            this.§8",§ = §5"Z§;
            this.mClip.Movieclip_Slider.visible = false;
         }
         else if(this.§8",§ == §#=§)
         {
            this.§7[§.x = this.§-$,§;
            this.mCurrentPosition = 0;
            this.§8",§ = §&!U§;
         }
         if(this.§?$-§)
         {
            this.§?$-§.stop();
            this.§?$-§ = null;
         }
      }
      
      public function get state() : int
      {
         return this.§8",§;
      }
      
      public function set state(param1:int) : void
      {
         this.§8",§ = param1;
      }
      
      public function §%#&§() : void
      {
         var _loc1_:Number = this.mClip.x - (this.mClip.width >> 2);
         var _loc2_:Number = this.mClip.y + (this.mClip.height >> 1);
         this.§6#-§ = §""Z§.§3!]§.§5"0§(this.mClip,{
            "scaleX":0,
            "scaleY":0,
            "x":_loc1_,
            "y":_loc2_
         },null,0.3,§""Z§.§?!Y§);
         this.§6#-§.play();
         if(this.§?$-§)
         {
            this.§?$-§.stop();
         }
         this.§?$-§ = null;
      }
   }
}
