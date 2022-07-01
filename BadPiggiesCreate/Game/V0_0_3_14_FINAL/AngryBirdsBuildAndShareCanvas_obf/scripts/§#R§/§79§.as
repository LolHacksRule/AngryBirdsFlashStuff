package §#R§
{
   import §'i§.§'!;§;
   import §'p§.§="#§;
   import §7r§.§,!<§;
   import §8" §.Quest;
   import §^[§.§!$§;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §79§ extends Sprite
   {
       
      
      private var §!!<§:§,!<§;
      
      private var §<!K§:§,!<§;
      
      private var §="=§:§1"%§;
      
      private var §>!i§:§[@§;
      
      private var §]!$§:§[@§;
      
      private var §,X§:§[@§;
      
      public function §79§(param1:§,!<§, param2:§,!<§)
      {
         super();
         this.§!!<§ = param1;
         this.§<!K§ = param2;
         this.§="=§ = new §1"%§(this.§!!<§,this.§<!K§);
         this.§>!i§ = new §[@§(this.§!!<§);
         addChild(this.§="=§);
         addChild(this.§>!i§);
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         mouseEnabled = false;
         mouseChildren = false;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§="#§ = null;
         if(!stage)
         {
            return;
         }
         _loc2_ = (!§'!;§.§2=§.§`!]§.§#%§() || §'!;§.§2=§.§`!]§.§#_§().indexOf(this.§!!<§.object) == -1) && this.§!!<§.visible && §'!;§.§2=§.§4!4§.§-!$§ != Quest.§;!y§ && §'!;§.§2=§.§4!4§.§-!$§ != Quest.§@!?§;
         this.§="=§.visible = _loc2_;
         this.§>!i§.visible = _loc2_;
         if(!_loc2_ && this.§!!<§.object is §!$§)
         {
            if(parent)
            {
               _loc3_ = §'!;§.§2=§.§+"2§.§9B§().§'!Q§().§7!r§(this.§!!<§.object as §!$§);
               if(this.§,X§ && this.§,X§.object.object != _loc3_)
               {
                  removeChild(this.§,X§);
                  this.§,X§ = null;
               }
               if(this.§,X§ == null)
               {
                  this.§,X§ = new §[@§(new §,!<§(_loc3_));
                  addChild(this.§,X§);
               }
               parent.setChildIndex(this,0);
            }
         }
         else if(this.§,X§ && parent)
         {
            removeChild(this.§,X§);
            this.§,X§ = null;
            parent.setChildIndex(this,parent.numChildren - 1);
         }
      }
      
      public function get start() : §,!<§
      {
         return this.§!!<§;
      }
      
      public function get end() : §,!<§
      {
         return this.§<!K§;
      }
   }
}
