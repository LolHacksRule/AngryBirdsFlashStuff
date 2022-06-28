package §[!H§
{
   import §+!1§.AvatarCreatorPopup;
   import §3w§.§1!!§;
   import §^B§.§1!b§;
   import §^B§.Item;
   import §^B§.§[_§;
   import §^`§.ServerIdParser;
   import com.rovio.assets.AssetCache;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class Avatar extends Sprite
   {
      
      public static const DEFAULT_INACTIVE_SPOT_SCALE:Number = 0.5;
      
      public static const REMOVE_IF_SAME_OBJECT_IS_SELECTED:Boolean = false;
      
      public static const ITEM_TYPE_AVATAR_EQUIPMENT:String = "avatar_equip";
      
      public static const ITEM_TYPE_AVATAR_CHARACTER:String = "avatar_character";
       
      
      public var §<!$§:Object;
      
      private var §7Z§:MovieClip;
      
      private var §3!N§:MovieClip;
      
      private var §&!X§:MovieClip;
      
      private var §7!H§:Number = 0.5;
      
      private var §@"§:§[_§ = null;
      
      public function Avatar(character:§[_§)
      {
         super();
         this.§@"§ = character;
         this.§<!$§ = new Object();
         this.§7!H§ = this.§@"§.§1!=§;
         var bgCls:Class = AssetCache.§-9§("BackgroundContainer");
         this.§3!N§ = new bgCls();
         this.§3!N§.stop();
         addChild(this.§3!N§);
         var cls:Class = AssetCache.§-9§(character.§<!B§ + "_Animations");
         this.§7Z§ = new cls();
         this.§7Z§.stop();
         this.§[h§();
         this.§7Z§.scaleX = this.§7!H§;
         this.§7Z§.scaleY = this.§7!H§;
         this.addChild(this.§7Z§);
         var fgCls:Class = AssetCache.§-9§("ForegroundContainer");
         this.§&!X§ = new fgCls();
         this.§&!X§.stop();
         addChild(this.§&!X§);
      }
      
      public function §%!2§() : void
      {
         this.§3!N§.visible = false;
         this.§&!X§.visible = false;
      }
      
      public function §+!U§(backgroundId:String) : void
      {
         this.§3!N§.gotoAndStop(backgroundId.toLowerCase());
         this.§&!X§.gotoAndStop(backgroundId.toLowerCase());
         this.§1$§(§1!!§.§[!Y§().§&!i§(backgroundId));
      }
      
      public function §!!Q§() : void
      {
         var category:§1!b§ = null;
         var items:Array = null;
         var random:int = 0;
         for each(category in §1!!§.§[!Y§().§,!#§)
         {
            if(category.name.toUpperCase() != "CATEGORYBIRDS" && category.name.toUpperCase() != "CATEGORYBACKGROUNDS")
            {
               items = §1!!§.§[!Y§().§-t§(category.name);
               items = this.§?!9§(items);
               random = Math.random() * (items.length + 1);
               if(random >= items.length)
               {
                  this.§ m§(category.name);
               }
               else
               {
                  this.§1$§(items[random]);
               }
            }
         }
      }
      
      private function §?!9§(arrayOfItems:Array) : Array
      {
         var item:Item = null;
         var parsedArray:Array = [];
         for each(item in arrayOfItems)
         {
            if(AvatarCreatorPopup.§@i§(item.§<!B§))
            {
               parsedArray.push(item);
            }
         }
         return parsedArray;
      }
      
      public function show(showX:int, showY:int) : void
      {
         this.x = showX;
         this.y = showY;
         this.§+!=§(this.§?D§().§1I§);
         visible = true;
      }
      
      public function hide() : void
      {
         visible = false;
      }
      
      public function §[h§() : void
      {
         var achor:String = null;
         var mc:MovieClip = null;
         for(var i:Number = 0; i < this.§7Z§.numChildren; )
         {
            mc = this.§7Z§.getChildAt(i) as MovieClip;
            if(mc)
            {
               mc.stop();
            }
            i++;
         }
         for each(achor in §1!!§.§[!Y§().§#!h§)
         {
            this.each(achor);
         }
      }
      
      public function each(anchor:String) : void
      {
         var itemsMC:MovieClip = this.§7Z§.getChildByName("Items_" + anchor) as MovieClip;
         if(itemsMC && anchor.toUpperCase() != "NOHAT")
         {
            itemsMC.stop();
            itemsMC.visible = false;
         }
      }
      
      public function §49§() : void
      {
         var categoryName:String = null;
         var item:Item = null;
         var itemsMC:MovieClip = null;
         for(var i:Number = 0; i < §1!!§.§[!Y§().§,!#§.length; i++)
         {
            categoryName = §1!!§.§[!Y§().§,!#§[i].name;
            item = this.§]y§(categoryName);
            if(item != null)
            {
               itemsMC = this.§7Z§.getChildByName("Items_" + item.§%!C§) as MovieClip;
               if(itemsMC)
               {
                  itemsMC.gotoAndStop("Item_" + item.§<!B§);
               }
               else
               {
                  trace("??\'" + "Items_" + item.§%!C§ + "\'" + this.§@"§.§<!B§);
               }
            }
         }
      }
      
      public function §=p§() : void
      {
         var category:§1!b§ = null;
         for each(category in §1!!§.§[!Y§().§,!#§)
         {
            if(!(category.name.toUpperCase() == "CATEGORYBIRDS" || category.name.toUpperCase() == "CATEGORYBACKGROUNDS"))
            {
               this.§ m§(category.name);
            }
         }
      }
      
      public function §+!=§(scale:Number) : void
      {
         this.§7!H§ = scale;
         this.§7Z§.scaleX = this.§7!H§;
         this.§7Z§.scaleY = this.§7!H§;
      }
      
      public function §+Y§(avatar:Avatar) : void
      {
         var backup:Item = null;
         var category:§1!b§ = null;
         var categoryId:String = null;
         var hisItem:Item = null;
         for each(category in §1!!§.§[!Y§().§,!#§)
         {
            categoryId = category.name;
            backup = this.§<!$§[categoryId.toUpperCase()];
            hisItem = avatar.§<!$§[categoryId.toUpperCase()];
            if(hisItem)
            {
               this.§1$§(hisItem);
            }
            else
            {
               this.§ m§(categoryId);
            }
            if(backup)
            {
               avatar.§1$§(backup);
            }
            else
            {
               avatar.§ m§(categoryId);
            }
         }
      }
      
      public function §1-§() : void
      {
         var item:Item = null;
         for each(item in this.§<!$§)
         {
            this.§1$§(item);
         }
      }
      
      public function §1$§(item:Item) : void
      {
         if(item == null)
         {
            return;
         }
         var previousItem:Item = this.§<!$§[item.§-!@§.toUpperCase()];
         if(previousItem == item)
         {
            if(REMOVE_IF_SAME_OBJECT_IS_SELECTED)
            {
               this.§ m§(item.§-!@§);
            }
            return;
         }
         this.§ m§(item.§-!@§);
         this.§<!$§[item.§-!@§.toUpperCase()] = item;
         var itemsMC:MovieClip = this.§7Z§.getChildByName("Items_" + item.§%!C§) as MovieClip;
         if(itemsMC)
         {
            itemsMC.visible = true;
            itemsMC.gotoAndStop("Item_" + item.§<!B§);
            if(itemsMC.currentLabel != "Item_" + item.§<!B§)
            {
               §1!!§.§1!S§.§ m§(item.§%!C§);
            }
            else
            {
               this.§ g§("Items_" + item.§%!C§ + "_Equip");
            }
            if(item.category.toUpperCase() == "CATEGORYTOP")
            {
               this.§0`§();
            }
         }
         else if(item.category.toUpperCase() == "CATEGORYTOP")
         {
            this.§1'§();
         }
      }
      
      private function §1'§() : void
      {
         var itemsMC:MovieClip = this.§7Z§.getChildByName("Items_NoHat") as MovieClip;
         itemsMC.visible = true;
      }
      
      private function §0`§() : void
      {
         var itemsMC:MovieClip = this.§7Z§.getChildByName("Items_NoHat") as MovieClip;
         itemsMC.visible = false;
      }
      
      public function §]y§(categoryName:String) : Item
      {
         return this.§<!$§[categoryName.toUpperCase()];
      }
      
      public function §>K§() : Object
      {
         return this.§<!$§;
      }
      
      public function § m§(category:String) : void
      {
         var itemsMC:MovieClip = null;
         var item:Item = this.§<!$§[category.toUpperCase()];
         if(item)
         {
            itemsMC = this.§7Z§.getChildByName("Items_" + item.§%!C§) as MovieClip;
            if(itemsMC)
            {
               itemsMC.visible = false;
               if(item.category.toUpperCase() == "CATEGORYTOP")
               {
                  this.§1'§();
               }
            }
         }
         delete this.§<!$§[category.toUpperCase()];
      }
      
      public function § g§(frameName:String) : Number
      {
         var frame:FrameLabel = null;
         var foundInFrame:Number = -1;
         for each(frame in this.§7Z§.currentLabels)
         {
            if(foundInFrame != -1)
            {
               return frame.frame - foundInFrame - 1;
            }
            if(frame.name == frameName)
            {
               this.§7Z§.gotoAndPlay(frameName);
               foundInFrame = frame.frame;
            }
         }
         if(foundInFrame != -1)
         {
            return this.§7Z§.framesLoaded - foundInFrame - 1;
         }
         return -1;
      }
      
      public function §66§(itemId:String) : Boolean
      {
         return true;
      }
      
      public function §?D§() : §[_§
      {
         return this.§@"§;
      }
      
      public function §5&§() : String
      {
         var list:Array = [];
         var jsonObject:Object = {"list":list};
         list = this.§&n§();
         var parsedIds:String = ServerIdParser.§@!-§(list);
         trace(parsedIds);
         return parsedIds;
      }
      
      public function §&n§() : Array
      {
         var item:Item = null;
         var list:Array = [];
         for each(item in this.§<!$§)
         {
            list.push({
               "itemId":item.§<!B§,
               "category":item.§-!@§,
               "sId":item.sId
            });
         }
         return list;
      }
      
      public function §&!C§() : Number
      {
         return this.§7!H§;
      }
      
      public function §!d§() : MovieClip
      {
         return this.§7Z§;
      }
   }
}
