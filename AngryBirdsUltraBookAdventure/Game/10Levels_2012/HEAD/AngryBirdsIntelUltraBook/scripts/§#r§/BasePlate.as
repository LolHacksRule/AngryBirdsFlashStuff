package §#r§
{
   import §+R§.ProfilePicture;
   import §<!=§.FriendListItemVO;
   import flash.display.Sprite;
   
   public class BasePlate extends Sprite
   {
      
      public static var sCachedProfileImages:Object = {};
       
      
      protected var §@! §:FriendListItemVO;
      
      protected var §?!D§:ProfilePicture;
      
      public function BasePlate()
      {
         super();
         rotation = -90;
         y = 180;
      }
      
      public function set data(value:FriendListItemVO) : void
      {
         this.§@! § = value;
         this.update();
      }
      
      public function get data() : FriendListItemVO
      {
         return this.§@! §;
      }
      
      public function update() : void
      {
      }
      
      protected function get §`![§() : Boolean
      {
         return this.data.userId == FriendItemRenderer.sUserId;
      }
      
      protected function §]C§() : void
      {
         if(this.§?!D§ && this.§?!D§.parent == this && this.§?!D§ == sCachedProfileImages[this.data.userId])
         {
            return;
         }
         if(this.§?!D§ && this.§?!D§.parent == this)
         {
            removeChild(this.§?!D§);
            this.§?!D§ = null;
         }
         if(sCachedProfileImages[this.data.userId])
         {
            addChild(this.§?!D§ = sCachedProfileImages[this.data.userId]);
         }
         else
         {
            this.§?!D§ = new ProfilePicture(this.data.userId,this.data.avatarString,false);
            this.§?!D§.x = 5;
            this.§?!D§.y = 5;
            sCachedProfileImages[this.data.userId] = this.§?!D§;
            addChild(this.§?!D§);
         }
      }
   }
}
