package §?!a§
{
   import §=§.§5$9§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §>#,§ extends §-=§
   {
       
      
      private var §?!s§:MovieClip;
      
      private var §3!@§:Boolean;
      
      public function §>#,§(param1:String, param2:String, param3:MovieClip, param4:Boolean = false, param5:String = null)
      {
         this.§?!s§ = param3;
         super(param1,param2,param4,param5);
      }
      
      public function set §9[§(param1:MovieClip) : void
      {
         this.§?!s§ = param1;
      }
      
      public function get §9[§() : MovieClip
      {
         return this.§?!s§;
      }
      
      public function get §+!S§() : Boolean
      {
         return this.§3!@§;
      }
      
      override protected function initProfile(param1:String, param2:String, param3:String = null, param4:String = "") : void
      {
         §3$1§ = param3 = param3 || §6#b§.§?^§;
         §1#h§ = param1;
         §?K§ = param4;
         §,##§ = §5$9§.§3"P§ == param1;
         §%a§(param2);
         if(§,##§)
         {
            §="3§.push(this);
            addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
            addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         }
      }
      
      override protected function createAvatar(param1:String) : void
      {
         if(§<!]§)
         {
            if(§<!]§ is §'!i§)
            {
               §'!i§(§<!]§).dispose();
            }
         }
         §-$>§ = true;
         §<!]§ = new §'!i§(param1,§3$1§,true);
         this.§?!s§.visible = false;
         this.§3!@§ = true;
         §<!]§.visible = true;
         if(§<!]§)
         {
            addChild(§<!]§);
         }
         §'!i§(§<!]§).§["t§();
      }
      
      override protected function onAddedToStage(param1:Event) : void
      {
         if(§<!]§)
         {
            §'!i§(§<!]§).§["t§();
         }
      }
      
      override protected function onRemovedFromStage(param1:Event) : void
      {
         if(§<!]§)
         {
            §'!i§(§<!]§).dispose();
         }
      }
      
      override protected function createFacebookProfile(param1:Boolean = false) : void
      {
         this.§3!@§ = false;
         this.§?!s§.visible = true;
         if(§<!]§)
         {
            §<!]§.visible = false;
         }
      }
   }
}
