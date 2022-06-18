package §1#=§
{
   import com.rovio.assets.§+$#§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §`#A§ extends §%#K§
   {
       
      
      private var §#$ §:MovieClip;
      
      private var §3!u§:Timer;
      
      public function §`#A§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addChild(this.§#$ § = new §+$#§.§["`§("AddFriendsPlate")());
         this.§#$ §.btnAddFriends.addEventListener(MouseEvent.CLICK,this.§]#,§);
      }
      
      private function §]#,§(param1:Event) : void
      {
         if(!this.§3!u§)
         {
            this.§3!u§ = new Timer(1000);
            this.§3!u§.addEventListener(TimerEvent.TIMER,this.§;!A§);
            this.§3!u§.start();
            §-#+§(§-#+§.§;!$§).§+T§("SIDEBAR");
         }
      }
      
      private function §;!A§(param1:TimerEvent) : void
      {
         if(this.§3!u§)
         {
            this.§3!u§.stop();
            this.§3!u§.removeEventListener(TimerEvent.TIMER,this.§;!A§);
            this.§3!u§ = null;
         }
      }
   }
}
