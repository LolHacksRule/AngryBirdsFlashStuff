package §2!o§
{
   import com.AngryBirds.friendsbar.InvitePlateAsset;
   
   public class §6!6§ extends §`2§
   {
       
      
      private var § ;§:InvitePlateAsset;
      
      public function §6!6§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addChild(this.§ ;§ = new InvitePlateAsset());
         this.§ ;§.§[m§.mouseEnabled = false;
      }
      
      override public function update() : void
      {
         if(!data)
         {
            return;
         }
         §2!l§();
         this.§ ;§.§[m§.text = data.userName || "";
      }
   }
}
