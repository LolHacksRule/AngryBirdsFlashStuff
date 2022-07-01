package §`J§
{
   import §!q§.§84§;
   import §0!d§.§8!r§;
   import §9!z§.§5"!§;
   import §="$§.Quest;
   import §?^§.§;"6§;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §[!6§ extends Sprite
   {
       
      
      private var §4m§:§;"6§;
      
      private var §<!G§:§;"6§;
      
      private var §%P§:§1!@§;
      
      private var §,p§:§>!w§;
      
      private var §@P§:§>!w§;
      
      private var §4X§:§>!w§;
      
      public function §[!6§(param1:§;"6§, param2:§;"6§)
      {
         super();
         this.§4m§ = param1;
         this.§<!G§ = param2;
         this.§%P§ = new §1!@§(this.§4m§,this.§<!G§);
         this.§,p§ = new §>!w§(this.§4m§);
         addChild(this.§%P§);
         addChild(this.§,p§);
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         mouseEnabled = false;
         mouseChildren = false;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§8!r§ = null;
         _loc2_ = (!§84§.§,l§.§02§.§?m§() || §84§.§,l§.§02§.§#A§().indexOf(this.§4m§.object) == -1) && this.§4m§.visible && §84§.§,l§.§@"0§.§3"§ != Quest.§!!r§ && §84§.§,l§.§@"0§.§3"§ != Quest.§;!Q§;
         this.§%P§.visible = _loc2_;
         this.§,p§.visible = _loc2_;
         if(!_loc2_ && this.§4m§.object is §5"!§)
         {
            if(parent)
            {
               _loc3_ = §84§.§,l§.§<B§.§#Y§().§6!w§().§ k§(this.§4m§.object as §5"!§);
               if(this.§4X§ && this.§4X§.object.object != _loc3_)
               {
                  removeChild(this.§4X§);
                  this.§4X§ = null;
               }
               if(this.§4X§ == null)
               {
                  this.§4X§ = new §>!w§(new §;"6§(_loc3_));
                  addChild(this.§4X§);
               }
               parent.setChildIndex(this,0);
            }
         }
         else if(this.§4X§ && parent)
         {
            removeChild(this.§4X§);
            this.§4X§ = null;
            parent.setChildIndex(this,parent.numChildren - 1);
         }
      }
      
      public function get start() : §;"6§
      {
         return this.§4m§;
      }
      
      public function get end() : §;"6§
      {
         return this.§<!G§;
      }
   }
}
