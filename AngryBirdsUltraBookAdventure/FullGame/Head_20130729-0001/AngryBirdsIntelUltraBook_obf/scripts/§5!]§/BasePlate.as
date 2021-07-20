package §5!]§
{
   import §"!i§.FriendListItemVO;
   import §6v§.ProfilePicture;
   import flash.display.Sprite;
   
   public class BasePlate extends Sprite
   {
      
      public static var sCachedProfileImages:Object = {};
       
      
      protected var §+p§:FriendListItemVO;
      
      protected var §[!]§:ProfilePicture;
      
      public function BasePlate()
      {
         super();
         rotation = -90;
         y = 180;
      }
      
      public function set data(value:FriendListItemVO) : void
      {
         this.§+p§ = value;
         this.update();
      }
      
      public function get data() : FriendListItemVO
      {
         return this.§+p§;
      }
      
      public function update() : void
      {
      }
      
      protected function get §6!D§() : Boolean
      {
         return this.data.userId == FriendItemRenderer.sUserId;
      }
      
      protected function §-2§() : void
      {
         if(this.§[!]§ && this.§[!]§.parent == this && this.§[!]§ == sCachedProfileImages[this.data.userId])
         {
            return;
         }
         if(this.§[!]§ && this.§[!]§.parent == this)
         {
            removeChild(this.§[!]§);
            this.§[!]§ = null;
         }
         if(sCachedProfileImages[this.data.userId])
         {
            addChild(this.§[!]§ = sCachedProfileImages[this.data.userId]);
         }
         else
         {
            this.§[!]§ = new ProfilePicture(this.data.userId,this.data.avatarString,false);
            this.§[!]§.x = 5;
            this.§[!]§.y = 5;
            sCachedProfileImages[this.data.userId] = this.§[!]§;
            addChild(this.§[!]§);
         }
      }
   }
}
