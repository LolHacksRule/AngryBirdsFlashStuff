package §"#§
{
   import §0"g§.§%b§;
   import §0"g§.§5!%§;
   import §=Z§.§@!8§;
   import §`"1§.§=Q§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §+#6§ extends EventDispatcher
   {
      
      public static const §"k§:String = "badge_landed";
      
      protected static const §[!'§:Number = 30;
      
      protected static const §2"n§:String = "EndScreenEffectChannel";
       
      
      protected var §-Q§:§%b§;
      
      protected var §3"I§:Number = -1;
      
      protected var §!!Y§:Number = 0.0;
      
      protected var §=1§:Number = 0.0;
      
      protected var §[#,§:§@!8§;
      
      protected var §+"8§:MovieClip;
      
      public function §+#6§(param1:§@!8§, param2:MovieClip)
      {
         super();
         this.§[#,§ = param1;
         this.§+"8§ = param2;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§+"8§.visible = param1;
      }
      
      public function get visible() : Boolean
      {
         return this.§+"8§.visible;
      }
      
      public function show() : void
      {
         this.§-Q§ = §5!%§.§!6§.§4!M§(this.§+"8§,{
            "scaleX":1,
            "scaleY":1
         },{
            "scaleX":7,
            "scaleY":7
         },0.1);
         this.§-Q§.onComplete = this.onBadgeLanded;
         this.§-Q§.play();
      }
      
      public function dispose() : void
      {
         if(this.§-Q§)
         {
            this.§-Q§.stop();
            this.§-Q§ = null;
         }
      }
      
      public function update(param1:Number) : void
      {
         if(this.§3"I§ < 0)
         {
            return;
         }
         this.§[#,§.x -= this.§!!Y§;
         this.§[#,§.y -= this.§=1§;
         if(this.§3"I§ > 0)
         {
            this.§!!Y§ = (Math.random() - 0.5) * (this.§3"I§ / §[!'§) * 20;
            this.§=1§ = (Math.random() - 0.5) * (this.§3"I§ / §[!'§) * 20;
            this.§[#,§.x += this.§!!Y§;
            this.§[#,§.y += this.§=1§;
         }
         else
         {
            this.§!!Y§ = 0;
            this.§=1§ = 0;
         }
         this.§3"I§ -= param1 / 10;
      }
      
      private function onBadgeLanded() : void
      {
         §=Q§.§`!A§("Hiscore_Badge",§2"n§);
         this.§%#$§();
         dispatchEvent(new Event(§"k§));
      }
      
      private function §%#$§() : void
      {
         this.§!!Y§ = 0;
         this.§=1§ = 0;
         this.§3"I§ = §[!'§;
      }
   }
}
