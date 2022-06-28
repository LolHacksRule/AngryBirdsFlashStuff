package §#r§
{
   import §'N§.Log;
   import §2S§.§<!U§;
   import §<!=§.FriendListItemVO;
   import §<!=§.InviteVO;
   import §<!=§.UserLevelScoreVO;
   import §<!=§.UserTotalScoreVO;
   import flash.display.Loader;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class FriendItemRenderer extends §1M§
   {
      
      public static var sUserId:String;
      
      public static var isShowingLevelScores:Boolean = false;
      
      public static var sPools:Dictionary = new Dictionary();
       
      
      private var §4$§:Loader;
      
      private var §]Z§:BasePlate;
      
      public function FriendItemRenderer()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addEventListener(MouseEvent.CLICK,this.§6!h§);
      }
      
      private function §3=§(type:Class) : BasePlate
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
      
      private function §0!U§(plate:BasePlate) : void
      {
         var type:Class = Object(this.§]Z§).constructor;
         if(!sPools[type])
         {
            sPools[type] = [];
         }
         sPools[type].push(plate);
      }
      
      private function §0N§() : void
      {
         var targetType:Class = null;
         switch(Object(this.friendListItemVO).constructor)
         {
            case UserLevelScoreVO:
               targetType = §8!4§;
               break;
            case InviteVO:
               targetType = §^<§;
               break;
            case UserTotalScoreVO:
               targetType = §"!;§;
         }
         if(!targetType)
         {
            Log.log("WARNING! Unknown score item found!");
            return;
         }
         var currentType:Class = Boolean(this.§]Z§) ? Object(this.§]Z§).constructor : null;
         if(targetType != currentType)
         {
            if(this.§]Z§)
            {
               this.§0!U§(removeChild(this.§]Z§) as BasePlate);
            }
            this.§]Z§ = addChild(this.§3=§(targetType)) as BasePlate;
         }
         this.§]Z§.data = this.friendListItemVO;
      }
      
      private function §6!h§(e:MouseEvent) : void
      {
         if(this.friendListItemVO && this.friendListItemVO is InviteVO)
         {
            §=Y§.scrollerSprite.dispatchEvent(new §<!U§(§<!U§.INVITE_FRIENDS_REQUESTED,data as FriendListItemVO));
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
            this.§0N§();
         }
      }
      
      public function get friendListItemVO() : FriendListItemVO
      {
         return data as FriendListItemVO;
      }
   }
}
