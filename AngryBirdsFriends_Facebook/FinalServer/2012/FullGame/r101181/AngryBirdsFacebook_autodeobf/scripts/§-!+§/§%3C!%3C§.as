package §-!+§
{
   import com.AngryBirds.friendsbar.InvitePlateAsset;
   
   public class §<!<§ extends §=G§
   {
       
      
      private var §,@§:InvitePlateAsset;
      
      public function §<!<§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addChild(this.§,@§ = new InvitePlateAsset());
         this.§,@§.§'J§.mouseEnabled = false;
      }
      
      override public function update() : void
      {
         if(!data)
         {
            return;
         }
         §8""§();
         this.§,@§.§'J§.text = data.userName || "";
      }
   }
}
