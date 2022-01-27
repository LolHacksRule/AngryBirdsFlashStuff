package §^!v§
{
   import §+D§.§ #^§;
   import §6"G§.§-#C§;
   import §6"G§.§[#R§;
   import §="2§.§?!r§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §@"A§ extends EventDispatcher
   {
      
      public static const §[!9§:String = "badge_landed";
      
      protected static const §`">§:Number = 30;
      
      protected static const §`O§:String = "EndScreenEffectChannel";
       
      
      protected var §##@§:§[#R§;
      
      protected var §@1§:Number = -1;
      
      protected var §3#S§:Number = 0.0;
      
      protected var §"#Q§:Number = 0.0;
      
      protected var §^c§:§ #^§;
      
      protected var §7"o§:MovieClip;
      
      public function §@"A§(param1:§ #^§, param2:MovieClip)
      {
         super();
         this.§^c§ = param1;
         this.§7"o§ = param2;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§7"o§.visible = param1;
      }
      
      public function get visible() : Boolean
      {
         return this.§7"o§.visible;
      }
      
      public function show() : void
      {
         this.§##@§ = §-#C§.§%!E§.§^!H§(this.§7"o§,{
            "scaleX":1,
            "scaleY":1
         },{
            "scaleX":7,
            "scaleY":7
         },0.1);
         this.§##@§.onComplete = this.onBadgeLanded;
         this.§##@§.play();
      }
      
      public function dispose() : void
      {
         if(this.§##@§)
         {
            this.§##@§.stop();
            this.§##@§ = null;
         }
      }
      
      public function update(param1:Number) : void
      {
         if(this.§@1§ < 0)
         {
            return;
         }
         this.§^c§.x -= this.§3#S§;
         this.§^c§.y -= this.§"#Q§;
         if(this.§@1§ > 0)
         {
            this.§3#S§ = (Math.random() - 0.5) * (this.§@1§ / §`">§) * 20;
            this.§"#Q§ = (Math.random() - 0.5) * (this.§@1§ / §`">§) * 20;
            this.§^c§.x += this.§3#S§;
            this.§^c§.y += this.§"#Q§;
         }
         else
         {
            this.§3#S§ = 0;
            this.§"#Q§ = 0;
         }
         this.§@1§ -= param1 / 10;
      }
      
      private function onBadgeLanded() : void
      {
         §?!r§.§"#_§("Hiscore_Badge",§`O§);
         this.§[!?§();
         dispatchEvent(new Event(§[!9§));
      }
      
      private function §[!?§() : void
      {
         this.§3#S§ = 0;
         this.§"#Q§ = 0;
         this.§@1§ = §`">§;
      }
   }
}
