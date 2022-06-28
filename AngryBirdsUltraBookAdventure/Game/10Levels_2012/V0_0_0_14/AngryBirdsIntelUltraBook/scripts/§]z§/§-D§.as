package §]z§
{
   import com.AngryBirds.friendsbar.InvitePlateAsset;
   import flash.events.MouseEvent;
   
   public class §-D§ extends §1!?§
   {
       
      
      private var §]!Q§:InvitePlateAsset;
      
      public function §-D§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addChild(this.§]!Q§ = new InvitePlateAsset());
         this.§]!Q§.§3"§.mouseEnabled = false;
         this.§]!Q§.addEventListener(MouseEvent.MOUSE_OVER,this.§<o§);
         this.§]!Q§.addEventListener(MouseEvent.MOUSE_OUT,this.§,!D§);
         this.§]!Q§.§'%§.gotoAndStop(1);
      }
      
      override public function update() : void
      {
         if(!data)
         {
            return;
         }
         §3!F§();
         this.§]!Q§.§3"§.text = data.userName || "";
      }
      
      private function §,!D§(param1:MouseEvent) : void
      {
         this.§]!Q§.§'%§.gotoAndStop(1);
      }
      
      private function §<o§(param1:MouseEvent) : void
      {
         this.§]!Q§.§'%§.gotoAndStop(2);
      }
   }
}
