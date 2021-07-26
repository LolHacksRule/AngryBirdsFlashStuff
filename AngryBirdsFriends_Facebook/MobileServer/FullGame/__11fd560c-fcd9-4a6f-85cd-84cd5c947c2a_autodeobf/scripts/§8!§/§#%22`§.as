package §8!§
{
   import §+$?§.§4!+§;
   import §+$?§.§=#>§;
   import §2G§.§[" §;
   import §[#[§.§=#Q§;
   import §`!e§.§=Z§;
   import com.rovio.assets.§!"f§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §#"`§ extends §2$-§
   {
       
      
      private var §`!!§:MovieClip;
      
      private var §+"Z§:§9!e§;
      
      private var §0#W§:Timer;
      
      public function §#"`§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addChild(this.§`!!§ = new §!"f§.§##?§("com.AngryBirds.friendsbar.InvitePlateAsset")());
         this.§`!!§.txtName.mouseEnabled = false;
         this.§0#W§ = null;
         tabChildren = false;
      }
      
      override public function update() : void
      {
         if(!data)
         {
            return;
         }
         updatePhoto();
         §=#Q§.§0$,§(this.§`!!§.txtName,data.userName || "");
         if(this.§0#W§)
         {
            this.§6#A§(null);
         }
         else
         {
            this.§`!!§.addEventListener(MouseEvent.CLICK,this.§=O§,false,0,true);
            if(!this.§+"Z§)
            {
               this.§+"Z§ = new §9!e§();
               addChild(this.§+"Z§.mAssetHolder);
               this.§+"Z§.§+#Z§.addEventListener(MouseEvent.CLICK,this.§=O§,false,0,true);
            }
            this.§+"Z§.§+#Z§.visible = true;
         }
         this.§&i§();
      }
      
      override protected function createNewPhoto() : void
      {
         §=!<§ = new §=#>§(data.userId,"",true,§4!+§.§+"N§,data.profileImageURL);
         §=!<§.x = 5;
         §=!<§.y = 5;
      }
      
      private function §=O§(param1:MouseEvent) : void
      {
         if(!this.§0#W§)
         {
            this.§`!!§.removeEventListener(MouseEvent.CLICK,this.§=O§);
            this.§+"Z§.§+#Z§.removeEventListener(MouseEvent.CLICK,this.§=O§);
            this.§0#W§ = new Timer(1000);
            this.§0#W§.addEventListener(TimerEvent.TIMER,this.§6#A§);
            this.§0#W§.start();
            dispatchEvent(new §=Z§(§=Z§.§3#V§,this.§'!<§,true));
         }
      }
      
      private function §6#A§(param1:TimerEvent) : void
      {
         if(this.§0#W§)
         {
            this.§0#W§.stop();
            this.§0#W§.removeEventListener(TimerEvent.TIMER,this.§6#A§);
            this.§0#W§ = null;
            this.§`!!§.addEventListener(MouseEvent.CLICK,this.§=O§,false,0,true);
            this.§+"Z§.§+#Z§.addEventListener(MouseEvent.CLICK,this.§=O§);
         }
      }
      
      public function get §'!<§() : §[" §
      {
         return data as §[" §;
      }
      
      private function §&i§() : void
      {
         if(this.§+"Z§)
         {
            setChildIndex(this.§+"Z§.mAssetHolder,numChildren - 1);
         }
      }
   }
}
