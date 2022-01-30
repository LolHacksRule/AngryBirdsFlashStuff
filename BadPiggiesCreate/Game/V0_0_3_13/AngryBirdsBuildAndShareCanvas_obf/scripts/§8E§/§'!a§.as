package §8E§
{
   import § ^§.§0c§;
   import § true§.§8K§;
   import §4!S§.Quest;
   import §;W§.§%!§;
   import §=%§.§0L§;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §'!a§ extends Sprite
   {
       
      
      private var §56§:§0L§;
      
      private var §>7§:§0L§;
      
      private var §5!T§:§#o§;
      
      private var §9"<§:§,!e§;
      
      private var §]z§:§,!e§;
      
      private var §?"2§:§,!e§;
      
      public function §'!a§(param1:§0L§, param2:§0L§)
      {
         super();
         this.§56§ = param1;
         this.§>7§ = param2;
         this.§5!T§ = new §#o§(this.§56§,this.§>7§);
         this.§9"<§ = new §,!e§(this.§56§);
         addChild(this.§5!T§);
         addChild(this.§9"<§);
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         mouseEnabled = false;
         mouseChildren = false;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§8K§ = null;
         if(!stage)
         {
            return;
         }
         _loc2_ = (!§0c§.§7!?§.§8!9§.§5,§() || §0c§.§7!?§.§8!9§.§5!l§().indexOf(this.§56§.object) == -1) && this.§56§.visible && §0c§.§7!?§.§+"9§.§^!I§ != Quest.§,"'§ && §0c§.§7!?§.§+"9§.§^!I§ != Quest.§@<§;
         this.§5!T§.visible = _loc2_;
         this.§9"<§.visible = _loc2_;
         if(!_loc2_ && this.§56§.object is §%!§)
         {
            if(parent)
            {
               _loc3_ = §0c§.§7!?§.§!A§.§2!o§().§[y§().§>e§(this.§56§.object as §%!§);
               if(this.§?"2§ && this.§?"2§.object.object != _loc3_)
               {
                  removeChild(this.§?"2§);
                  this.§?"2§ = null;
               }
               if(this.§?"2§ == null)
               {
                  this.§?"2§ = new §,!e§(new §0L§(_loc3_));
                  addChild(this.§?"2§);
               }
               parent.setChildIndex(this,0);
            }
         }
         else if(this.§?"2§ && parent)
         {
            removeChild(this.§?"2§);
            this.§?"2§ = null;
            parent.setChildIndex(this,parent.numChildren - 1);
         }
      }
      
      public function get start() : §0L§
      {
         return this.§56§;
      }
      
      public function get end() : §0L§
      {
         return this.§>7§;
      }
   }
}
