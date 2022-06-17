package §2!u§
{
   import §"!>§.§'!x§;
   import §8"b§.§&!b§;
   import §=#§.§%#y§;
   import §=#§.§1!"§;
   import §]"'§.§`!V§;
   import com.rovio.assets.§2"O§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §"I§ extends §^#h§
   {
       
      
      private var §#"r§:MovieClip;
      
      private var §!"H§:§9_§;
      
      private var §[I§:Timer;
      
      public function §"I§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addChild(this.§#"r§ = new §2"O§.§`>§("com.AngryBirds.friendsbar.InvitePlateAsset")());
         this.§#"r§.txtName.mouseEnabled = false;
         this.§[I§ = null;
         tabChildren = false;
      }
      
      override public function update() : void
      {
         if(!data)
         {
            return;
         }
         updatePhoto();
         §&!b§.§9G§(this.§#"r§.txtName,data.userName || "");
         if(this.§[I§)
         {
            this.§]$§(null);
         }
         else
         {
            this.§#"r§.addEventListener(MouseEvent.CLICK,this.§5#8§,false,0,true);
            if(!this.§!"H§)
            {
               this.§!"H§ = new §9_§();
               addChild(this.§!"H§.mAssetHolder);
               this.§!"H§.§`$7§.addEventListener(MouseEvent.CLICK,this.§5#8§,false,0,true);
            }
            this.§!"H§.§`$7§.visible = true;
         }
         this.§=9§();
      }
      
      override protected function createNewPhoto() : void
      {
         §+!t§ = new §%#y§(data.userId,"",true,§1!"§.§+$=§,data.profileImageURL);
         §+!t§.x = 5;
         §+!t§.y = 5;
      }
      
      private function §5#8§(param1:MouseEvent) : void
      {
         if(!this.§[I§)
         {
            this.§#"r§.removeEventListener(MouseEvent.CLICK,this.§5#8§);
            this.§!"H§.§`$7§.removeEventListener(MouseEvent.CLICK,this.§5#8§);
            this.§[I§ = new Timer(1000);
            this.§[I§.addEventListener(TimerEvent.TIMER,this.§]$§);
            this.§[I§.start();
            dispatchEvent(new §'!x§(§'!x§.§^!F§,this.§=Y§,true));
         }
      }
      
      private function §]$§(param1:TimerEvent) : void
      {
         if(this.§[I§)
         {
            this.§[I§.stop();
            this.§[I§.removeEventListener(TimerEvent.TIMER,this.§]$§);
            this.§[I§ = null;
            this.§#"r§.addEventListener(MouseEvent.CLICK,this.§5#8§,false,0,true);
            this.§!"H§.§`$7§.addEventListener(MouseEvent.CLICK,this.§5#8§);
         }
      }
      
      public function get §=Y§() : §`!V§
      {
         return data as §`!V§;
      }
      
      private function §=9§() : void
      {
         if(this.§!"H§)
         {
            setChildIndex(this.§!"H§.mAssetHolder,numChildren - 1);
         }
      }
   }
}
