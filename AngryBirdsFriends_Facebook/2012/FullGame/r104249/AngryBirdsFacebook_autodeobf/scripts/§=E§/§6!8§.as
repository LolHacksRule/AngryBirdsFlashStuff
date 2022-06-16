package §=E§
{
   import com.AngryBirds.friendsbar.InvitePlateAsset;
   
   public class §6!8§ extends §"<§
   {
       
      
      private var §'o§:InvitePlateAsset;
      
      public function §6!8§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addChild(this.§'o§ = new InvitePlateAsset());
         this.§'o§.§'!W§.mouseEnabled = false;
      }
      
      override public function update() : void
      {
         if(!data)
         {
            return;
         }
         §^9§();
         this.§'o§.§'!W§.text = data.userName || "";
      }
   }
}
