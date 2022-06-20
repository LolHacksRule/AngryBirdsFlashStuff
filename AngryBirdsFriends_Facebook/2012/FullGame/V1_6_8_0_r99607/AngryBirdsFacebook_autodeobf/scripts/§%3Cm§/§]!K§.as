package §<m§
{
   import com.AngryBirds.friendsbar.InvitePlateAsset;
   
   public class §]!K§ extends §"b§
   {
       
      
      private var §7G§:InvitePlateAsset;
      
      public function §]!K§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addChild(this.§7G§ = new InvitePlateAsset());
         this.§7G§.§@!Z§.mouseEnabled = false;
      }
      
      override public function update() : void
      {
         if(!data)
         {
            return;
         }
         §>v§();
         this.§7G§.§@!Z§.text = data.userName || "";
      }
   }
}
