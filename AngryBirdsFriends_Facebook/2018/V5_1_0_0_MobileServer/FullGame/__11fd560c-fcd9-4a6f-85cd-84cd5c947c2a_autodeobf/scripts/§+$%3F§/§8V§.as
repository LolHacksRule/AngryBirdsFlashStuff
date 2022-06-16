package §+$?§
{
   import §8!§.§2"s§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §8V§ extends §=#>§
   {
       
      
      private var §4#R§:MovieClip;
      
      private var §4!n§:Boolean;
      
      public function §8V§(param1:String, param2:String, param3:MovieClip, param4:Boolean = false, param5:String = null)
      {
         this.§4#R§ = param3;
         super(param1,param2,param4,param5);
      }
      
      public function set §-$#§(param1:MovieClip) : void
      {
         this.§4#R§ = param1;
      }
      
      public function get §-$#§() : MovieClip
      {
         return this.§4#R§;
      }
      
      public function get §"$4§() : Boolean
      {
         return this.§4!n§;
      }
      
      override protected function initProfile(param1:String, param2:String, param3:String = null, param4:String = "") : void
      {
         §;!L§ = param3 = param3 || §4!+§.§+"N§;
         §["L§ = param1;
         §90§ = param4;
         §@"U§ = §2"s§.§;"8§ == param1;
         §[$<§(param2);
         if(§@"U§)
         {
            §const§.push(this);
            addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
            addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         }
      }
      
      override protected function createAvatar(param1:String) : void
      {
         if(§'!,§)
         {
            if(§'!,§ is §8#9§)
            {
               §8#9§(§'!,§).dispose();
            }
         }
         §=!v§ = true;
         §'!,§ = new §8#9§(param1,§;!L§,true);
         this.§4#R§.visible = false;
         this.§4!n§ = true;
         §'!,§.visible = true;
         if(§'!,§)
         {
            addChild(§'!,§);
         }
         §8#9§(§'!,§).§7f§();
      }
      
      override protected function onAddedToStage(param1:Event) : void
      {
         if(§'!,§)
         {
            §8#9§(§'!,§).§7f§();
         }
      }
      
      override protected function onRemovedFromStage(param1:Event) : void
      {
         if(§'!,§)
         {
            §8#9§(§'!,§).dispose();
         }
      }
      
      override protected function createFacebookProfile(param1:Boolean = false) : void
      {
         this.§4!n§ = false;
         this.§4#R§.visible = true;
         if(§'!,§)
         {
            §'!,§.visible = false;
         }
      }
   }
}
