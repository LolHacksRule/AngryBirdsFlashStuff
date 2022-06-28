package §03§
{
   import §1!=§.AvatarCreatorPopup;
   import §;0§.§,!P§;
   import §;0§.Item;
   import §;0§.§`!6§;
   import §[c§.§5!?§;
   import §`!0§.ServerIdParser;
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
       
      
      public var §3j§:Object;
      
      private var §>I§:MovieClip;
      
      private var §?0§:MovieClip;
      
      private var §<!5§:MovieClip;
      
      private var §[+§:Number = 0.5;
      
      private var §=J§:§`!6§ = null;
      
      public function Avatar(character:§`!6§)
      {
         super();
         this.§=J§ = character;
         this.§3j§ = new Object();
         this.§[+§ = this.§=J§.§'!X§;
         var bgCls:Class = AssetCache.§,!k§("BackgroundContainer");
         this.§?0§ = new bgCls();
         this.§?0§.stop();
         addChild(this.§?0§);
         var cls:Class = AssetCache.§,!k§(character.§^!,§ + "_Animations");
         this.§>I§ = new cls();
         this.§>I§.stop();
         this.§3k§();
         this.§>I§.scaleX = this.§[+§;
         this.§>I§.scaleY = this.§[+§;
         this.addChild(this.§>I§);
         var fgCls:Class = AssetCache.§,!k§("ForegroundContainer");
         this.§<!5§ = new fgCls();
         this.§<!5§.stop();
         addChild(this.§<!5§);
      }
      
      public function §6#§() : void
      {
         this.§?0§.visible = false;
         this.§<!5§.visible = false;
      }
      
      public function §+>§(backgroundId:String) : void
      {
         this.§?0§.gotoAndStop(backgroundId.toLowerCase());
         this.§<!5§.gotoAndStop(backgroundId.toLowerCase());
         this.§[F§(§5!?§.§'%§().§><§(backgroundId));
      }
      
      public function §%Z§() : void
      {
         var category:§,!P§ = null;
         var items:Array = null;
         var random:int = 0;
         for each(category in §5!?§.§'%§().§if§)
         {
            if(category.name.toUpperCase() != "CATEGORYBIRDS" && category.name.toUpperCase() != "CATEGORYBACKGROUNDS")
            {
               items = §5!?§.§'%§().§4a§(category.name);
               items = this.§88§(items);
               random = Math.random() * (items.length + 1);
               if(random >= items.length)
               {
                  this.§;J§(category.name);
               }
               else
               {
                  this.§[F§(items[random]);
               }
            }
         }
      }
      
      private function §88§(arrayOfItems:Array) : Array
      {
         var item:Item = null;
         var parsedArray:Array = [];
         for each(item in arrayOfItems)
         {
            if(AvatarCreatorPopup.§for§(item.§^!,§))
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
         this.§6v§(this.§9!b§().§!!L§);
         visible = true;
      }
      
      public function hide() : void
      {
         visible = false;
      }
      
      public function §3k§() : void
      {
         var achor:String = null;
         var mc:MovieClip = null;
         for(var i:Number = 0; i < this.§>I§.numChildren; )
         {
            mc = this.§>I§.getChildAt(i) as MovieClip;
            if(mc)
            {
               mc.stop();
            }
            i++;
         }
         for each(achor in §5!?§.§'%§().§]K§)
         {
            this.§3U§(achor);
         }
      }
      
      public function §3U§(anchor:String) : void
      {
         var itemsMC:MovieClip = this.§>I§.getChildByName("Items_" + anchor) as MovieClip;
         if(itemsMC && anchor.toUpperCase() != "NOHAT")
         {
            itemsMC.stop();
            itemsMC.visible = false;
         }
      }
      
      public function §^F§() : void
      {
         var categoryName:String = null;
         var item:Item = null;
         var itemsMC:MovieClip = null;
         for(var i:Number = 0; i < §5!?§.§'%§().§if§.length; i++)
         {
            categoryName = §5!?§.§'%§().§if§[i].name;
            item = this.§?!?§(categoryName);
            if(item != null)
            {
               itemsMC = this.§>I§.getChildByName("Items_" + item.§61§) as MovieClip;
               if(itemsMC)
               {
                  itemsMC.gotoAndStop("Item_" + item.§^!,§);
               }
               else
               {
                  trace("??\'" + "Items_" + item.§61§ + "\'" + this.§=J§.§^!,§);
               }
            }
         }
      }
      
      public function §+!A§() : void
      {
         var category:§,!P§ = null;
         for each(category in §5!?§.§'%§().§if§)
         {
            if(!(category.name.toUpperCase() == "CATEGORYBIRDS" || category.name.toUpperCase() == "CATEGORYBACKGROUNDS"))
            {
               this.§;J§(category.name);
            }
         }
      }
      
      public function §6v§(scale:Number) : void
      {
         this.§[+§ = scale;
         this.§>I§.scaleX = this.§[+§;
         this.§>I§.scaleY = this.§[+§;
      }
      
      public function §9!J§(avatar:Avatar) : void
      {
         var backup:Item = null;
         var category:§,!P§ = null;
         var categoryId:String = null;
         var hisItem:Item = null;
         for each(category in §5!?§.§'%§().§if§)
         {
            categoryId = category.name;
            backup = this.§3j§[categoryId.toUpperCase()];
            hisItem = avatar.§3j§[categoryId.toUpperCase()];
            if(hisItem)
            {
               this.§[F§(hisItem);
            }
            else
            {
               this.§;J§(categoryId);
            }
            if(backup)
            {
               avatar.§[F§(backup);
            }
            else
            {
               avatar.§;J§(categoryId);
            }
         }
      }
      
      public function §;O§() : void
      {
         var item:Item = null;
         for each(item in this.§3j§)
         {
            this.§[F§(item);
         }
      }
      
      public function §[F§(item:Item) : void
      {
         if(item == null)
         {
            return;
         }
         var previousItem:Item = this.§3j§[item.§`5§.toUpperCase()];
         if(previousItem == item)
         {
            if(REMOVE_IF_SAME_OBJECT_IS_SELECTED)
            {
               this.§;J§(item.§`5§);
            }
            return;
         }
         this.§;J§(item.§`5§);
         this.§3j§[item.§`5§.toUpperCase()] = item;
         var itemsMC:MovieClip = this.§>I§.getChildByName("Items_" + item.§61§) as MovieClip;
         if(itemsMC)
         {
            itemsMC.visible = true;
            itemsMC.gotoAndStop("Item_" + item.§^!,§);
            if(itemsMC.currentLabel != "Item_" + item.§^!,§)
            {
               §5!?§.§'d§.§;J§(item.§61§);
            }
            else
            {
               this.§'T§("Items_" + item.§61§ + "_Equip");
            }
            if(item.category.toUpperCase() == "CATEGORYTOP")
            {
               this.§ [§();
            }
         }
         else if(item.category.toUpperCase() == "CATEGORYTOP")
         {
            this.§#!>§();
         }
      }
      
      private function §#!>§() : void
      {
         var itemsMC:MovieClip = this.§>I§.getChildByName("Items_NoHat") as MovieClip;
         itemsMC.visible = true;
      }
      
      private function § [§() : void
      {
         var itemsMC:MovieClip = this.§>I§.getChildByName("Items_NoHat") as MovieClip;
         itemsMC.visible = false;
      }
      
      public function §?!?§(categoryName:String) : Item
      {
         return this.§3j§[categoryName.toUpperCase()];
      }
      
      public function §,!'§() : Object
      {
         return this.§3j§;
      }
      
      public function §;J§(category:String) : void
      {
         var itemsMC:MovieClip = null;
         var item:Item = this.§3j§[category.toUpperCase()];
         if(item)
         {
            itemsMC = this.§>I§.getChildByName("Items_" + item.§61§) as MovieClip;
            if(itemsMC)
            {
               itemsMC.visible = false;
               if(item.category.toUpperCase() == "CATEGORYTOP")
               {
                  this.§#!>§();
               }
            }
         }
         delete this.§3j§[category.toUpperCase()];
      }
      
      public function §'T§(frameName:String) : Number
      {
         var frame:FrameLabel = null;
         var foundInFrame:Number = -1;
         for each(frame in this.§>I§.currentLabels)
         {
            if(foundInFrame != -1)
            {
               return frame.frame - foundInFrame - 1;
            }
            if(frame.name == frameName)
            {
               this.§>I§.gotoAndPlay(frameName);
               foundInFrame = frame.frame;
            }
         }
         if(foundInFrame != -1)
         {
            return this.§>I§.framesLoaded - foundInFrame - 1;
         }
         return -1;
      }
      
      public function §7!D§(itemId:String) : Boolean
      {
         return true;
      }
      
      public function §9!b§() : §`!6§
      {
         return this.§=J§;
      }
      
      public function §]U§() : String
      {
         var list:Array = [];
         var jsonObject:Object = {"list":list};
         list = this.§[7§();
         var parsedIds:String = ServerIdParser.§'! §(list);
         trace(parsedIds);
         return parsedIds;
      }
      
      public function §[7§() : Array
      {
         var item:Item = null;
         var list:Array = [];
         for each(item in this.§3j§)
         {
            list.push({
               "itemId":item.§^!,§,
               "category":item.§`5§,
               "sId":item.sId
            });
         }
         return list;
      }
      
      public function §`!§() : Number
      {
         return this.§[+§;
      }
      
      public function §7!g§() : MovieClip
      {
         return this.§>I§;
      }
   }
}
