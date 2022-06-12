package §2!o§
{
   import §5!Y§.§9"6§;
   import com.angrybirds.friendsbar.ButtonBirdbotInfo;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §4n§
   {
       
      
      public var §<!6§:Sprite;
      
      private var §^Y§:ButtonBirdbotInfo;
      
      public function §4n§()
      {
         super();
         this.§<!6§ = new Sprite();
         this.§^Y§ = new ButtonBirdbotInfo();
         this.§<!6§.addChild(this.§^Y§);
         this.§<!6§.addEventListener(MouseEvent.CLICK,this.§[!o§,false,0,true);
      }
      
      private function §[!o§(param1:MouseEvent) : void
      {
         §9"6§.§4"4§();
      }
      
      public function get §`"P§() : ButtonBirdbotInfo
      {
         return this.§^Y§;
      }
   }
}
