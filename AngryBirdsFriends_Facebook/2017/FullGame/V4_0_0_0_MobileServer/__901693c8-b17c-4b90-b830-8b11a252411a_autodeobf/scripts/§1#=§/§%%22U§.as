package §1#=§
{
   import §&"J§.§7>§;
   import §+#t§.§-"3§;
   import §+#t§.§5V§;
   import §@!n§.§`$<§;
   import §^#]§.§@!g§;
   import com.rovio.assets.§+$#§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §%"U§ extends §%#K§
   {
       
      
      private var §#$ §:MovieClip;
      
      private var §'"8§:§?1§;
      
      private var §^#A§:Timer;
      
      public function §%"U§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addChild(this.§#$ § = new §+$#§.§["`§("com.AngryBirds.friendsbar.InvitePlateAsset")());
         this.§#$ §.txtName.mouseEnabled = false;
         this.§^#A§ = null;
         tabChildren = false;
      }
      
      override public function update() : void
      {
         if(!data)
         {
            return;
         }
         updatePhoto();
         §@!g§.§["1§(this.§#$ §.txtName,data.userName || "");
         if(this.§^#A§)
         {
            this.§?#^§(null);
         }
         else
         {
            this.§#$ §.addEventListener(MouseEvent.CLICK,this.§;!#§,false,0,true);
            if(!this.§'"8§)
            {
               this.§'"8§ = new §?1§();
               addChild(this.§'"8§.mAssetHolder);
               this.§'"8§.§>"4§.addEventListener(MouseEvent.CLICK,this.§;!#§,false,0,true);
            }
            this.§'"8§.§>"4§.visible = true;
         }
         this.§'K§();
      }
      
      override protected function createNewPhoto() : void
      {
         §-!N§ = new §-"3§(data.userId,"",true,§5V§.§1$$§,data.profileImageURL);
         §-!N§.x = 5;
         §-!N§.y = 5;
      }
      
      private function §;!#§(param1:MouseEvent) : void
      {
         if(!this.§^#A§)
         {
            this.§#$ §.removeEventListener(MouseEvent.CLICK,this.§;!#§);
            this.§'"8§.§>"4§.removeEventListener(MouseEvent.CLICK,this.§;!#§);
            this.§^#A§ = new Timer(1000);
            this.§^#A§.addEventListener(TimerEvent.TIMER,this.§?#^§);
            this.§^#A§.start();
            dispatchEvent(new §`$<§(§`$<§.§?$>§,this.§@#M§,true));
         }
      }
      
      private function §?#^§(param1:TimerEvent) : void
      {
         if(this.§^#A§)
         {
            this.§^#A§.stop();
            this.§^#A§.removeEventListener(TimerEvent.TIMER,this.§?#^§);
            this.§^#A§ = null;
            this.§#$ §.addEventListener(MouseEvent.CLICK,this.§;!#§,false,0,true);
            this.§'"8§.§>"4§.addEventListener(MouseEvent.CLICK,this.§;!#§);
         }
      }
      
      public function get §@#M§() : §7>§
      {
         return data as §7>§;
      }
      
      private function §'K§() : void
      {
         if(this.§'"8§)
         {
            setChildIndex(this.§'"8§.mAssetHolder,numChildren - 1);
         }
      }
   }
}
