package §5,§
{
   import §5!'§.ProfilePicture;
   import §@!`§.FriendListItemVO;
   import flash.display.Sprite;
   
   public class BasePlate extends Sprite
   {
      
      public static var sCachedProfileImages:Object = {};
       
      
      protected var §&^§:FriendListItemVO;
      
      protected var §1,§:ProfilePicture;
      
      public function BasePlate()
      {
         super();
         rotation = -90;
         y = 180;
      }
      
      public function set data(value:FriendListItemVO) : void
      {
         this.§&^§ = value;
         this.update();
      }
      
      public function get data() : FriendListItemVO
      {
         return this.§&^§;
      }
      
      public function update() : void
      {
      }
      
      protected function get §`!E§() : Boolean
      {
         return this.data.userId == FriendItemRenderer.sUserId;
      }
      
      protected function §3!P§() : void
      {
         if(this.§1,§ && this.§1,§.parent == this && this.§1,§ == sCachedProfileImages[this.data.userId])
         {
            return;
         }
         if(this.§1,§ && this.§1,§.parent == this)
         {
            removeChild(this.§1,§);
            this.§1,§ = null;
         }
         if(sCachedProfileImages[this.data.userId])
         {
            addChild(this.§1,§ = sCachedProfileImages[this.data.userId]);
         }
         else
         {
            this.§1,§ = new ProfilePicture(this.data.userId,this.data.avatarString,false);
            this.§1,§.x = 5;
            this.§1,§.y = 5;
            sCachedProfileImages[this.data.userId] = this.§1,§;
            addChild(this.§1,§);
         }
      }
   }
}
