package §!o§
{
   import §,!x§.§]S§;
   import §1!N§.§!!`§;
   import §2!w§.Quest;
   import §5!8§.§;!Z§;
   import §^H§.§"!i§;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §[G§ extends Sprite
   {
       
      
      private var §5!>§:§!!`§;
      
      private var §@q§:§!!`§;
      
      private var §@"'§:§%",§;
      
      private var §1y§:§8=§;
      
      private var §""7§:§8=§;
      
      private var §<!u§:§8=§;
      
      public function §[G§(param1:§!!`§, param2:§!!`§)
      {
         super();
         this.§5!>§ = param1;
         this.§@q§ = param2;
         this.§@"'§ = new §%",§(this.§5!>§,this.§@q§);
         this.§1y§ = new §8=§(this.§5!>§);
         addChild(this.§@"'§);
         addChild(this.§1y§);
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         mouseEnabled = false;
         mouseChildren = false;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§;!Z§ = null;
         if(!stage)
         {
            return;
         }
         _loc2_ = (!§]S§.§ "!§.§<!z§.§^!J§() || §]S§.§ "!§.§<!z§.§?"$§().indexOf(this.§5!>§.object) == -1) && this.§5!>§.visible && §]S§.§ "!§.§3!V§.§=t§ != Quest.§,"9§ && §]S§.§ "!§.§3!V§.§=t§ != Quest.§>h§;
         this.§@"'§.visible = _loc2_;
         this.§1y§.visible = _loc2_;
         if(!_loc2_ && this.§5!>§.object is §"!i§)
         {
            if(parent)
            {
               _loc3_ = §]S§.§ "!§.§]!c§.§!!=§().§8!`§().§%!o§(this.§5!>§.object as §"!i§);
               if(this.§<!u§ && this.§<!u§.object.object != _loc3_)
               {
                  removeChild(this.§<!u§);
                  this.§<!u§ = null;
               }
               if(this.§<!u§ == null)
               {
                  this.§<!u§ = new §8=§(new §!!`§(_loc3_));
                  addChild(this.§<!u§);
               }
               parent.setChildIndex(this,0);
            }
         }
         else if(this.§<!u§ && parent)
         {
            removeChild(this.§<!u§);
            this.§<!u§ = null;
            parent.setChildIndex(this,parent.numChildren - 1);
         }
      }
      
      public function get start() : §!!`§
      {
         return this.§5!>§;
      }
      
      public function get end() : §!!`§
      {
         return this.§@q§;
      }
   }
}
