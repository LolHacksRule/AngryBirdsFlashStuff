package §!!]§
{
   import §!!V§.AvatarCreatorPopup;
   import §3!@§.ServerIdParser;
   import §<_§.§5!2§;
   import §]_§.§%1§;
   import §]_§.§,v§;
   import §]_§.Item;
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
       
      
      public var §1!B§:Object;
      
      private var §;!Y§:MovieClip;
      
      private var §4O§:MovieClip;
      
      private var §6!Q§:MovieClip;
      
      private var §?C§:Number = 0.5;
      
      private var §>C§:§%1§ = null;
      
      public function Avatar(character:§%1§)
      {
         super();
         this.§>C§ = character;
         this.§1!B§ = new Object();
         this.§?C§ = this.§>C§.§#M§;
         var bgCls:Class = AssetCache.§%p§("BackgroundContainer");
         this.§4O§ = new bgCls();
         this.§4O§.stop();
         addChild(this.§4O§);
         var cls:Class = AssetCache.§%p§(character.§7!D§ + "_Animations");
         this.§;!Y§ = new cls();
         this.§;!Y§.stop();
         this.§'!=§();
         this.§;!Y§.scaleX = this.§?C§;
         this.§;!Y§.scaleY = this.§?C§;
         this.addChild(this.§;!Y§);
         var fgCls:Class = AssetCache.§%p§("ForegroundContainer");
         this.§6!Q§ = new fgCls();
         this.§6!Q§.stop();
         addChild(this.§6!Q§);
      }
      
      public function §<U§() : void
      {
         this.§4O§.visible = false;
         this.§6!Q§.visible = false;
      }
      
      public function §4!T§(backgroundId:String) : void
      {
         this.§4O§.gotoAndStop(backgroundId.toLowerCase());
         this.§6!Q§.gotoAndStop(backgroundId.toLowerCase());
         this.§&3§(§5!2§.§]W§().§-`§(backgroundId));
      }
      
      public function §5#§() : void
      {
         var category:§,v§ = null;
         var items:Array = null;
         var random:int = 0;
         for each(category in §5!2§.§]W§().§+@§)
         {
            if(category.name.toUpperCase() != "CATEGORYBIRDS" && category.name.toUpperCase() != "CATEGORYBACKGROUNDS")
            {
               items = §5!2§.§]W§().§#N§(category.name);
               items = this.§^!<§(items);
               random = Math.random() * (items.length + 1);
               if(random >= items.length)
               {
                  this.§0H§(category.name);
               }
               else
               {
                  this.§&3§(items[random]);
               }
            }
         }
      }
      
      private function §^!<§(arrayOfItems:Array) : Array
      {
         var item:Item = null;
         var parsedArray:Array = [];
         for each(item in arrayOfItems)
         {
            if(AvatarCreatorPopup.§ M§(item.§7!D§))
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
         this.§<,§(this.§>[§().§!5§);
         visible = true;
      }
      
      public function hide() : void
      {
         visible = false;
      }
      
      public function §'!=§() : void
      {
         var achor:String = null;
         var mc:MovieClip = null;
         for(var i:Number = 0; i < this.§;!Y§.numChildren; )
         {
            mc = this.§;!Y§.getChildAt(i) as MovieClip;
            if(mc)
            {
               mc.stop();
            }
            i++;
         }
         for each(achor in §5!2§.§]W§().§4!3§)
         {
            this.§]!9§(achor);
         }
      }
      
      public function §]!9§(anchor:String) : void
      {
         var itemsMC:MovieClip = this.§;!Y§.getChildByName("Items_" + anchor) as MovieClip;
         if(itemsMC && anchor.toUpperCase() != "NOHAT")
         {
            itemsMC.stop();
            itemsMC.visible = false;
         }
      }
      
      public function §`!5§() : void
      {
         var categoryName:String = null;
         var item:Item = null;
         var itemsMC:MovieClip = null;
         for(var i:Number = 0; i < §5!2§.§]W§().§+@§.length; i++)
         {
            categoryName = §5!2§.§]W§().§+@§[i].name;
            item = this.§3`§(categoryName);
            if(item != null)
            {
               itemsMC = this.§;!Y§.getChildByName("Items_" + item.§-o§) as MovieClip;
               if(itemsMC)
               {
                  itemsMC.gotoAndStop("Item_" + item.§7!D§);
               }
               else
               {
                  trace("??\'" + "Items_" + item.§-o§ + "\'" + this.§>C§.§7!D§);
               }
            }
         }
      }
      
      public function §`Z§() : void
      {
         var category:§,v§ = null;
         for each(category in §5!2§.§]W§().§+@§)
         {
            if(!(category.name.toUpperCase() == "CATEGORYBIRDS" || category.name.toUpperCase() == "CATEGORYBACKGROUNDS"))
            {
               this.§0H§(category.name);
            }
         }
      }
      
      public function §<,§(scale:Number) : void
      {
         this.§?C§ = scale;
         this.§;!Y§.scaleX = this.§?C§;
         this.§;!Y§.scaleY = this.§?C§;
      }
      
      public function §,!k§(avatar:Avatar) : void
      {
         var backup:Item = null;
         var category:§,v§ = null;
         var categoryId:String = null;
         var hisItem:Item = null;
         for each(category in §5!2§.§]W§().§+@§)
         {
            categoryId = category.name;
            backup = this.§1!B§[categoryId.toUpperCase()];
            hisItem = avatar.§1!B§[categoryId.toUpperCase()];
            if(hisItem)
            {
               this.§&3§(hisItem);
            }
            else
            {
               this.§0H§(categoryId);
            }
            if(backup)
            {
               avatar.§&3§(backup);
            }
            else
            {
               avatar.§0H§(categoryId);
            }
         }
      }
      
      public function §]!R§() : void
      {
         var item:Item = null;
         for each(item in this.§1!B§)
         {
            this.§&3§(item);
         }
      }
      
      public function §&3§(item:Item) : void
      {
         if(item == null)
         {
            return;
         }
         var previousItem:Item = this.§1!B§[item.§[L§.toUpperCase()];
         if(previousItem == item)
         {
            if(REMOVE_IF_SAME_OBJECT_IS_SELECTED)
            {
               this.§0H§(item.§[L§);
            }
            return;
         }
         this.§0H§(item.§[L§);
         this.§1!B§[item.§[L§.toUpperCase()] = item;
         var itemsMC:MovieClip = this.§;!Y§.getChildByName("Items_" + item.§-o§) as MovieClip;
         if(itemsMC)
         {
            itemsMC.visible = true;
            itemsMC.gotoAndStop("Item_" + item.§7!D§);
            if(itemsMC.currentLabel != "Item_" + item.§7!D§)
            {
               §5!2§.§<R§.§0H§(item.§-o§);
            }
            else
            {
               this.§0!F§("Items_" + item.§-o§ + "_Equip");
            }
            if(item.category.toUpperCase() == "CATEGORYTOP")
            {
               this.§1! §();
            }
         }
         else if(item.category.toUpperCase() == "CATEGORYTOP")
         {
            this.§%!F§();
         }
      }
      
      private function §%!F§() : void
      {
         var itemsMC:MovieClip = this.§;!Y§.getChildByName("Items_NoHat") as MovieClip;
         itemsMC.visible = true;
      }
      
      private function §1! §() : void
      {
         var itemsMC:MovieClip = this.§;!Y§.getChildByName("Items_NoHat") as MovieClip;
         itemsMC.visible = false;
      }
      
      public function §3`§(categoryName:String) : Item
      {
         return this.§1!B§[categoryName.toUpperCase()];
      }
      
      public function §0!I§() : Object
      {
         return this.§1!B§;
      }
      
      public function §0H§(category:String) : void
      {
         var itemsMC:MovieClip = null;
         var item:Item = this.§1!B§[category.toUpperCase()];
         if(item)
         {
            itemsMC = this.§;!Y§.getChildByName("Items_" + item.§-o§) as MovieClip;
            if(itemsMC)
            {
               itemsMC.visible = false;
               if(item.category.toUpperCase() == "CATEGORYTOP")
               {
                  this.§%!F§();
               }
            }
         }
         delete this.§1!B§[category.toUpperCase()];
      }
      
      public function §0!F§(frameName:String) : Number
      {
         var frame:FrameLabel = null;
         var foundInFrame:Number = -1;
         for each(frame in this.§;!Y§.currentLabels)
         {
            if(foundInFrame != -1)
            {
               return frame.frame - foundInFrame - 1;
            }
            if(frame.name == frameName)
            {
               this.§;!Y§.gotoAndPlay(frameName);
               foundInFrame = frame.frame;
            }
         }
         if(foundInFrame != -1)
         {
            return this.§;!Y§.framesLoaded - foundInFrame - 1;
         }
         return -1;
      }
      
      public function §1;§(itemId:String) : Boolean
      {
         return true;
      }
      
      public function §>[§() : §%1§
      {
         return this.§>C§;
      }
      
      public function §9"§() : String
      {
         var list:Array = [];
         var jsonObject:Object = {"list":list};
         list = this.§2X§();
         var parsedIds:String = ServerIdParser.§?T§(list);
         trace(parsedIds);
         return parsedIds;
      }
      
      public function §2X§() : Array
      {
         var item:Item = null;
         var list:Array = [];
         for each(item in this.§1!B§)
         {
            list.push({
               "itemId":item.§7!D§,
               "category":item.§[L§,
               "sId":item.sId
            });
         }
         return list;
      }
      
      public function §6!U§() : Number
      {
         return this.§?C§;
      }
      
      public function §=U§() : MovieClip
      {
         return this.§;!Y§;
      }
   }
}
