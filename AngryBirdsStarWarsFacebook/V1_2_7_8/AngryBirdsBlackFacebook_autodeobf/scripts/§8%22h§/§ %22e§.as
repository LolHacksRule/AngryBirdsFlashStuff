package §8"h§
{
   import §""d§.§,m§;
   import §'! §.§4!Q§;
   import §'! §.§41§;
   import §,"v§.§@§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class § "e§ extends EventDispatcher
   {
      
      public static const §3"L§:String = "badge_landed";
      
      protected static const §&!N§:Number = 30;
      
      protected static const §-#1§:String = "EndScreenEffectChannel";
       
      
      protected var §'"A§:§4!Q§;
      
      protected var §8!i§:Number = -1;
      
      protected var §%"e§:Number = 0.0;
      
      protected var §,!z§:Number = 0.0;
      
      protected var §,r§:§,m§;
      
      protected var §4"f§:MovieClip;
      
      public function § "e§(param1:§,m§, param2:MovieClip)
      {
         super();
         this.§,r§ = param1;
         this.§4"f§ = param2;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§4"f§.visible = param1;
      }
      
      public function get visible() : Boolean
      {
         return this.§4"f§.visible;
      }
      
      public function show() : void
      {
         this.§'"A§ = §41§.§-G§.§&#'§(this.§4"f§,{
            "scaleX":1,
            "scaleY":1
         },{
            "scaleX":7,
            "scaleY":7
         },0.1);
         this.§'"A§.onComplete = this.onBadgeLanded;
         this.§'"A§.play();
      }
      
      public function dispose() : void
      {
         if(this.§'"A§)
         {
            this.§'"A§.stop();
            this.§'"A§ = null;
         }
      }
      
      public function update(param1:Number) : void
      {
         if(this.§8!i§ < 0)
         {
            return;
         }
         this.§,r§.x -= this.§%"e§;
         this.§,r§.y -= this.§,!z§;
         if(this.§8!i§ > 0)
         {
            this.§%"e§ = (Math.random() - 0.5) * (this.§8!i§ / §&!N§) * 20;
            this.§,!z§ = (Math.random() - 0.5) * (this.§8!i§ / §&!N§) * 20;
            this.§,r§.x += this.§%"e§;
            this.§,r§.y += this.§,!z§;
         }
         else
         {
            this.§%"e§ = 0;
            this.§,!z§ = 0;
         }
         this.§8!i§ -= param1 / 10;
      }
      
      private function onBadgeLanded() : void
      {
         §@§.§=Y§("Hiscore_Badge",§-#1§);
         this.§!!6§();
         dispatchEvent(new Event(§3"L§));
      }
      
      private function §!!6§() : void
      {
         this.§%"e§ = 0;
         this.§,!z§ = 0;
         this.§8!i§ = §&!N§;
      }
   }
}
