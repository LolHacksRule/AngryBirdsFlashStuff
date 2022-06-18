package §+#t§
{
   import §1#=§.§'b§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §+-§ extends §-"3§
   {
       
      
      private var §'"s§:MovieClip;
      
      private var §for §:Boolean;
      
      public function §+-§(param1:String, param2:String, param3:MovieClip, param4:Boolean = false, param5:String = null)
      {
         this.§'"s§ = param3;
         super(param1,param2,param4,param5);
      }
      
      public function set §%$§(param1:MovieClip) : void
      {
         this.§'"s§ = param1;
      }
      
      public function get §%$§() : MovieClip
      {
         return this.§'"s§;
      }
      
      public function get §0"p§() : Boolean
      {
         return this.§for §;
      }
      
      override protected function initProfile(param1:String, param2:String, param3:String = null, param4:String = "") : void
      {
         §8#=§ = param3 = param3 || §5V§.§1$$§;
         §[#n§ = param1;
         §%!3§ = param4;
         §<!G§ = §'b§.§4#;§ == param1;
         §1!v§(param2);
         if(§<!G§)
         {
            §5!w§.push(this);
            addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
            addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         }
      }
      
      override protected function createAvatar(param1:String) : void
      {
         if(§8!m§)
         {
            if(§8!m§ is §="F§)
            {
               §="F§(§8!m§).dispose();
            }
         }
         §8#8§ = true;
         §8!m§ = new §="F§(param1,§8#=§,true);
         this.§'"s§.visible = false;
         this.§for § = true;
         §8!m§.visible = true;
         if(§8!m§)
         {
            addChild(§8!m§);
         }
         §="F§(§8!m§).§%g§();
      }
      
      override protected function onAddedToStage(param1:Event) : void
      {
         if(§8!m§)
         {
            §="F§(§8!m§).§%g§();
         }
      }
      
      override protected function onRemovedFromStage(param1:Event) : void
      {
         if(§8!m§)
         {
            §="F§(§8!m§).dispose();
         }
      }
      
      override protected function createFacebookProfile(param1:Boolean = false) : void
      {
         this.§for § = false;
         this.§'"s§.visible = true;
         if(§8!m§)
         {
            §8!m§.visible = false;
         }
      }
   }
}
