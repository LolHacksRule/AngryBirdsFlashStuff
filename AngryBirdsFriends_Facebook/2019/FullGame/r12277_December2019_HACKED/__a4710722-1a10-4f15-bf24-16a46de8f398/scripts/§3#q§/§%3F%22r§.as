package §3#q§
{
   import §!!H§.§ $4§;
   import §8#^§.§-B§;
   import §9x§.§ m§;
   import §9x§.§7",§;
   import §>#Y§.§]!H§;
   import com.rovio.assets.§=@§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §?"r§ extends §8#>§
   {
       
      
      private var §'!L§:MovieClip;
      
      private var §]!F§:§7"R§;
      
      private var §&!K§:Timer;
      
      public function §?"r§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addChild(this.§'!L§ = new §=@§.§9!x§("com.AngryBirds.friendsbar.InvitePlateAsset")());
         this.§'!L§.txtName.mouseEnabled = false;
         this.§&!K§ = null;
         tabChildren = false;
      }
      
      override public function update() : void
      {
         if(!data)
         {
            return;
         }
         updatePhoto();
         § $4§.§'#d§(this.§'!L§.txtName,data.userName || "");
         if(this.§&!K§)
         {
            this.§ "A§(null);
         }
         else
         {
            this.§'!L§.addEventListener(MouseEvent.CLICK,this.§%"O§,false,0,true);
            if(!this.§]!F§)
            {
               this.§]!F§ = new §7"R§();
               addChild(this.§]!F§.mAssetHolder);
               this.§]!F§.§'!"§.addEventListener(MouseEvent.CLICK,this.§%"O§,false,0,true);
            }
            this.§]!F§.§'!"§.visible = true;
         }
         this.§<B§();
      }
      
      override protected function createNewPhoto() : void
      {
         §5"j§ = new § m§(data.userId,"",true,§7",§.§1"0§,data.profileImageURL);
         §5"j§.x = 5;
         §5"j§.y = 5;
      }
      
      private function §%"O§(param1:MouseEvent) : void
      {
         if(!this.§&!K§)
         {
            this.§'!L§.removeEventListener(MouseEvent.CLICK,this.§%"O§);
            this.§]!F§.§'!"§.removeEventListener(MouseEvent.CLICK,this.§%"O§);
            this.§&!K§ = new Timer(1000);
            this.§&!K§.addEventListener(TimerEvent.TIMER,this.§ "A§);
            this.§&!K§.start();
            dispatchEvent(new §-B§(§-B§.§+!l§,this.§7"^§,true));
         }
      }
      
      private function § "A§(param1:TimerEvent) : void
      {
         if(this.§&!K§)
         {
            this.§&!K§.stop();
            this.§&!K§.removeEventListener(TimerEvent.TIMER,this.§ "A§);
            this.§&!K§ = null;
            this.§'!L§.addEventListener(MouseEvent.CLICK,this.§%"O§,false,0,true);
            this.§]!F§.§'!"§.addEventListener(MouseEvent.CLICK,this.§%"O§);
         }
      }
      
      public function get §7"^§() : §]!H§
      {
         return data as §]!H§;
      }
      
      private function §<B§() : void
      {
         if(this.§]!F§)
         {
            setChildIndex(this.§]!F§.mAssetHolder,numChildren - 1);
         }
      }
   }
}
