package §5,§
{
   import §+p§.§&!>§;
   import §6b§.Log;
   import §@!`§.FriendListItemVO;
   import §@!`§.InviteVO;
   import §@!`§.UserLevelScoreVO;
   import §@!`§.UserTotalScoreVO;
   import flash.display.Loader;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class FriendItemRenderer extends §'J§
   {
      
      public static var sUserId:String;
      
      public static var isShowingLevelScores:Boolean = false;
      
      public static var sPools:Dictionary = new Dictionary();
       
      
      private var §^v§:Loader;
      
      private var §!,§:BasePlate;
      
      public function FriendItemRenderer()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addEventListener(MouseEvent.CLICK,this.§6!`§);
      }
      
      private function §36§(type:Class) : BasePlate
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
      
      private function §"&§(plate:BasePlate) : void
      {
         var type:Class = Object(this.§!,§).constructor;
         if(!sPools[type])
         {
            sPools[type] = [];
         }
         sPools[type].push(plate);
      }
      
      private function §-K§() : void
      {
         var targetType:Class = null;
         switch(Object(this.friendListItemVO).constructor)
         {
            case UserLevelScoreVO:
               targetType = § !P§;
               break;
            case InviteVO:
               targetType = §9!<§;
               break;
            case UserTotalScoreVO:
               targetType = §'!G§;
         }
         if(!targetType)
         {
            Log.log("WARNING! Unknown score item found!");
            return;
         }
         var currentType:Class = Boolean(this.§!,§) ? Object(this.§!,§).constructor : null;
         if(targetType != currentType)
         {
            if(this.§!,§)
            {
               this.§"&§(removeChild(this.§!,§) as BasePlate);
            }
            this.§!,§ = addChild(this.§36§(targetType)) as BasePlate;
         }
         this.§!,§.data = this.friendListItemVO;
      }
      
      private function §6!`§(e:MouseEvent) : void
      {
         if(this.friendListItemVO && this.friendListItemVO is InviteVO)
         {
            §>!;§.scrollerSprite.dispatchEvent(new §&!>§(§&!>§.INVITE_FRIENDS_REQUESTED,data as FriendListItemVO));
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
            this.§-K§();
         }
      }
      
      public function get friendListItemVO() : FriendListItemVO
      {
         return data as FriendListItemVO;
      }
   }
}
