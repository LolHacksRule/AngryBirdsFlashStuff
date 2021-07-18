package §+V§
{
   import §1" §.§#!j§;
   import §7t§.§<^§;
   import §;" §.Quest;
   import §=!7§.§9"8§;
   import §^!k§.§;!T§;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §&!O§ extends Sprite
   {
       
      
      private var § !F§:§<^§;
      
      private var §7!n§:§<^§;
      
      private var §5!L§:§4!z§;
      
      private var §?I§:§1",§;
      
      private var §2Y§:§1",§;
      
      private var §,J§:§1",§;
      
      public function §&!O§(param1:§<^§, param2:§<^§)
      {
         super();
         this.§ !F§ = param1;
         this.§7!n§ = param2;
         this.§5!L§ = new §4!z§(this.§ !F§,this.§7!n§);
         this.§?I§ = new §1",§(this.§ !F§);
         addChild(this.§5!L§);
         addChild(this.§?I§);
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         mouseEnabled = false;
         mouseChildren = false;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§9"8§ = null;
         if(!stage)
         {
            return;
         }
         _loc2_ = (!§#!j§.§[E§.§3d§.§<J§() || §#!j§.§[E§.§3d§.§3!^§().indexOf(this.§ !F§.object) == -1) && this.§ !F§.visible && §#!j§.§[E§.§9L§.§;!1§ != Quest.§`!$§ && §#!j§.§[E§.§9L§.§;!1§ != Quest.§[R§;
         this.§5!L§.visible = _loc2_;
         this.§?I§.visible = _loc2_;
         if(!_loc2_ && this.§ !F§.object is §;!T§)
         {
            if(parent)
            {
               _loc3_ = §#!j§.§[E§.§<!_§.§"p§().§+!m§().§7>§(this.§ !F§.object as §;!T§);
               if(this.§,J§ && this.§,J§.object.object != _loc3_)
               {
                  removeChild(this.§,J§);
                  this.§,J§ = null;
               }
               if(this.§,J§ == null)
               {
                  this.§,J§ = new §1",§(new §<^§(_loc3_));
                  addChild(this.§,J§);
               }
               parent.setChildIndex(this,0);
            }
         }
         else if(this.§,J§ && parent)
         {
            removeChild(this.§,J§);
            this.§,J§ = null;
            parent.setChildIndex(this,parent.numChildren - 1);
         }
      }
      
      public function get start() : §<^§
      {
         return this.§ !F§;
      }
      
      public function get end() : §<^§
      {
         return this.§7!n§;
      }
   }
}
