package §5!]§
{
   import §"!i§.FriendListItemVO;
   import §"!i§.InviteVO;
   import §"!i§.UserLevelScoreVO;
   import §"!i§.UserTotalScoreVO;
   import §<u§.Log;
   import §=!i§.§>Z§;
   import flash.display.Loader;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class FriendItemRenderer extends §`4§
   {
      
      public static var sUserId:String;
      
      public static var isShowingLevelScores:Boolean = false;
      
      public static var sPools:Dictionary = new Dictionary();
       
      
      private var §2M§:Loader;
      
      private var §7F§:BasePlate;
      
      public function FriendItemRenderer()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addEventListener(MouseEvent.CLICK,this.§`^§);
      }
      
      private function §3,§(type:Class) : BasePlate
      {
         if(!sPools[type])
         {
            sPools[type] = [];
         }
         var pool:Array = sPools[type];
         if(pool.length == 0)
         {
            return new type();
         }
         return pool.pop();
      }
      
      private function §!F§(plate:BasePlate) : void
      {
         var type:Class = Object(this.§7F§).constructor;
         if(!sPools[type])
         {
            sPools[type] = [];
         }
         sPools[type].push(plate);
      }
      
      private function §<G§() : void
      {
         var targetType:Class = null;
         switch(Object(this.friendListItemVO).constructor)
         {
            case UserLevelScoreVO:
               targetType = §`!b§;
               break;
            case InviteVO:
               targetType = §1H§;
               break;
            case UserTotalScoreVO:
               targetType = §&L§;
         }
         if(!targetType)
         {
            Log.log("WARNING! Unknown score item found!");
            return;
         }
         var currentType:Class = Boolean(this.§7F§) ? Object(this.§7F§).constructor : null;
         if(targetType != currentType)
         {
            if(this.§7F§)
            {
               this.§!F§(removeChild(this.§7F§) as BasePlate);
            }
            this.§7F§ = addChild(this.§3,§(targetType)) as BasePlate;
         }
         this.§7F§.data = this.friendListItemVO;
      }
      
      private function §`^§(e:MouseEvent) : void
      {
         if(this.friendListItemVO && this.friendListItemVO is InviteVO)
         {
            §4!c§.scrollerSprite.dispatchEvent(new §>Z§(§>Z§.INVITE_FRIENDS_REQUESTED,data as FriendListItemVO));
         }
      }
      
      override public function get width() : Number
      {
         return 61;
      }
      
      override public function set data(value:Object) : void
      {
         super.data = value;
         this.update();
      }
      
      private function update() : void
      {
         if(data != null)
         {
            this.§<G§();
         }
      }
      
      public function get friendListItemVO() : FriendListItemVO
      {
         return data as FriendListItemVO;
      }
   }
}
