package §-5§
{
   import com.AngryBirds.friendsbar.InvitePlateAsset;
   import flash.events.MouseEvent;
   
   public class §#j§ extends § !<§
   {
       
      
      private var §=1§:InvitePlateAsset;
      
      public function §#j§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addChild(this.§=1§ = new InvitePlateAsset());
         this.§=1§.§>!x§.mouseEnabled = false;
         this.§=1§.addEventListener(MouseEvent.MOUSE_OVER,this.§ G§);
         this.§=1§.addEventListener(MouseEvent.MOUSE_OUT,this.§"v§);
         this.§=1§.§8%§.gotoAndStop(1);
      }
      
      override public function update() : void
      {
         if(!data)
         {
            return;
         }
         §&!^§();
         this.§=1§.§>!x§.text = data.userName || "";
      }
      
      private function §"v§(param1:MouseEvent) : void
      {
         this.§=1§.§8%§.gotoAndStop(1);
      }
      
      private function § G§(param1:MouseEvent) : void
      {
         this.§=1§.§8%§.gotoAndStop(2);
      }
   }
}
