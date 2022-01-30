package §]!]§
{
   import §%%§.§<!z§;
   import §&"8§.Quest;
   import §7"2§.§;!5§;
   import §8!7§.§'9§;
   import §<!I§.§="5§;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §4!Z§ extends Sprite
   {
       
      
      private var §3P§:§<!z§;
      
      private var §2!E§:§<!z§;
      
      private var §2!H§:§9J§;
      
      private var §5!%§:§`!#§;
      
      private var §["#§:§`!#§;
      
      private var §=I§:§`!#§;
      
      public function §4!Z§(param1:§<!z§, param2:§<!z§)
      {
         super();
         this.§3P§ = param1;
         this.§2!E§ = param2;
         this.§2!H§ = new §9J§(this.§3P§,this.§2!E§);
         this.§5!%§ = new §`!#§(this.§3P§);
         addChild(this.§2!H§);
         addChild(this.§5!%§);
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         mouseEnabled = false;
         mouseChildren = false;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§="5§ = null;
         _loc2_ = (!§;!5§.§'!o§.§,!%§.§9!d§() || §;!5§.§'!o§.§,!%§.§;!?§().indexOf(this.§3P§.object) == -1) && this.§3P§.visible && §;!5§.§'!o§.§<!B§.§"K§ != Quest.§,h§ && §;!5§.§'!o§.§<!B§.§"K§ != Quest.§return§;
         this.§2!H§.visible = _loc2_;
         this.§5!%§.visible = _loc2_;
         if(!_loc2_ && this.§3P§.object is §'9§)
         {
            if(parent)
            {
               _loc3_ = §;!5§.§'!o§.§[U§.§^A§().§[S§().§,W§(this.§3P§.object as §'9§);
               if(this.§=I§ && this.§=I§.object.object != _loc3_)
               {
                  removeChild(this.§=I§);
                  this.§=I§ = null;
               }
               if(this.§=I§ == null)
               {
                  this.§=I§ = new §`!#§(new §<!z§(_loc3_));
                  addChild(this.§=I§);
               }
               parent.setChildIndex(this,0);
            }
         }
         else if(this.§=I§ && parent)
         {
            removeChild(this.§=I§);
            this.§=I§ = null;
            parent.setChildIndex(this,parent.numChildren - 1);
         }
      }
      
      public function get start() : §<!z§
      {
         return this.§3P§;
      }
      
      public function get end() : §<!z§
      {
         return this.§2!E§;
      }
   }
}
