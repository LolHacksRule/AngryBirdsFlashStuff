package §+`§
{
   import §]!b§.§]?§;
   import flash.display.Sprite;
   import flash.events.Event;
   import §var§.Quest;
   
   public class §^!p§ extends Sprite
   {
       
      
      private var §#!z§:§#'§;
      
      private var §>+§:§#'§;
      
      private var §6!q§:§@!n§;
      
      private var §="!§:§ 8§;
      
      private var §5!#§:§ 8§;
      
      public function §^!p§(param1:§#'§, param2:§#'§)
      {
         super();
         this.§#!z§ = param1;
         this.§>+§ = param2;
         this.§6!q§ = new §@!n§(this.§#!z§,this.§>+§);
         this.§="!§ = new § 8§(this.§#!z§);
         addChild(this.§6!q§);
         addChild(this.§="!§);
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         mouseEnabled = false;
         mouseChildren = false;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         _loc2_ = (!§]?§.§9j§.§["§.§ i§() || §]?§.§9j§.§["§.§=p§().indexOf(this.§#!z§.object) == -1) && this.§#!z§.visible && §]?§.§9j§.§>f§.§=H§ != Quest.§?!W§ && §]?§.§9j§.§>f§.§=H§ != Quest.§+"0§;
         this.§6!q§.visible = _loc2_;
         this.§="!§.visible = _loc2_;
      }
      
      public function get start() : §#'§
      {
         return this.§#!z§;
      }
      
      public function get end() : §#'§
      {
         return this.§>+§;
      }
   }
}
