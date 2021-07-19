package com.angrybirds.shoppopup.serveractions
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.avatarcreator.data.Item;
   import com.angrybirds.avatarcreator.utils.ServerIdParser;
   import com.angrybirds.data.DataModelFriends;
   import com.angrybirds.popups.AvatarCreatorPopup;
   import com.angrybirds.utils.FriendsUtil;
   import com.rovio.server.ABFLoader;
   import com.rovio.server.URLRequestFactory;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class AvatarCreatorItemListing extends EventDispatcher
   {
      
      public static var sAllAvatarItems:Array;
      
      private static var sAchievementItems:Array = [{
         "a":true,
         "id":"B20007",
         "p":0,
         "star":100
      },{
         "a":true,
         "id":"B20008",
         "p":0,
         "star":200
      },{
         "a":true,
         "id":"B20009",
         "p":0,
         "star":400
      },{
         "a":true,
         "id":"B20010",
         "p":0,
         "star":600
      }];
       
      
      private var mItemsLoader:ABFLoader;
      
      private var mIsLoading:Boolean = false;
      
      public function AvatarCreatorItemListing()
      {
         super();
      }
      
      public static function checkUnlockedItems(oldStarCount:int, newStarCount:int) : String
      {
         var achObject:Object = null;
         for each(achObject in sAchievementItems)
         {
            if(newStarCount >= achObject.s && oldStarCount < achObject.s)
            {
               return achObject.id;
            }
         }
         return "";
      }
      
      public function get isLoading() : Boolean
      {
         return this.mIsLoading;
      }
      
      public function loadItems() : void
      {
         if(this.mIsLoading)
         {
            return;
         }
         this.mIsLoading = true;
         var urlReq:URLRequest = URLRequestFactory.getNonCachingURLRequest(AngryBirdsBase.SERVER_ROOT + "/getavatarparts");
         urlReq.method = URLRequestMethod.POST;
         this.mItemsLoader = new ABFLoader();
         this.mItemsLoader.addEventListener(Event.COMPLETE,this.onComplete);
         this.mItemsLoader.load(urlReq);
      }
      
      private function onComplete(e:Event) : void
      {
         this.mIsLoading = false;
         if(e.currentTarget.data.hasOwnProperty("st"))
         {
            delete e.currentTarget.data["st"];
         }
         sAllAvatarItems = e.currentTarget.data as Array;
         this.parseItemsToEditor();
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function processAchievementItem(item:Object, achievements:Array) : void
      {
         var achiev:Object = null;
         for each(achiev in achievements)
         {
            if(item.id == achiev.id)
            {
               item.p = achiev.p;
               item.star = achiev.star;
            }
         }
      }
      
      private function parseItemsToEditor() : void
      {
         var item:Object = null;
         var clientItem:Item = null;
         var parseObject:Object = null;
         var list:Array = [];
         var itemsOnSaleFound:Boolean = false;
         for each(item in sAllAvatarItems)
         {
            this.processAchievementItem(item,sAchievementItems);
            clientItem = ServerIdParser.parseToItem(item.id);
            if(clientItem)
            {
               parseObject = {
                  "itemId":clientItem.mId,
                  "price":item.p,
                  "available":item.a,
                  "starPrice":item.star,
                  "limited":item.l,
                  "sale":item.s,
                  "isNew":this.checkForNewTag(clientItem.mId,item.a,item["as"])
               };
               if(item.s && !item.a)
               {
                  itemsOnSaleFound = true;
               }
               list.push(parseObject);
            }
         }
         DataModelFriends(AngryBirdsBase.singleton.dataModel).hasAvatarShopItemsOnSale = itemsOnSaleFound;
         AvatarCreatorPopup.sItemsAvailable = list;
         if((AngryBirdsEngine.smApp as AngryBirdsFacebook).friendsBar)
         {
            (AngryBirdsEngine.smApp as AngryBirdsFacebook).friendsBar.updateAvatarShopButton(DataModelFriends(AngryBirdsBase.singleton.dataModel).hasAvatarShopNewItems);
         }
      }
      
      private function checkForNewTag(itemId:String, itemIsPurchased:Boolean, availableSince:Number) : Boolean
      {
         var value:Boolean = false;
         if(availableSince && !itemIsPurchased)
         {
            if(DataModelFriends(AngryBirdsBase.singleton.dataModel).clientStorage.hasItemBeenSeen(itemId))
            {
               return false;
            }
            value = FriendsUtil.isItemNewEnoughForHighlight(availableSince);
            if(value && !DataModelFriends(AngryBirdsBase.singleton.dataModel).hasAvatarShopNewItems)
            {
               DataModelFriends(AngryBirdsBase.singleton.dataModel).hasAvatarShopNewItems = true;
            }
            return value;
         }
         return false;
      }
   }
}
