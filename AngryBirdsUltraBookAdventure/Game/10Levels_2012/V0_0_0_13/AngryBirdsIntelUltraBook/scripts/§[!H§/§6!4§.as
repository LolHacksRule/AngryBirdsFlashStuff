package §[!H§
{
   import §+!1§.AvatarCreatorPopup;
   import §3w§.§1!!§;
   import §^B§.Item;
   import flash.display.Sprite;
   
   public class §6!4§ extends Sprite
   {
       
      
      public var §4&§:Avatar;
      
      public function §6!4§()
      {
         super();
      }
      
      public function §]!;§(backgroundId:String) : void
      {
         if(this.§4&§)
         {
            this.§4&§.§+!U§(backgroundId);
         }
      }
      
      public function §4q§(items:Array) : Avatar
      {
         var birdItem:Item = null;
         var bgItem:Item = null;
         var item:Item = null;
         for each(birdItem in items)
         {
            if(birdItem.§-!@§.toUpperCase() == "CATEGORYBIRDS")
            {
               this.§!!=§(birdItem.§<!B§,birdItem.sId,birdItem.§-!@§,AvatarCreatorPopup.sAvatars,110,174);
            }
         }
         for each(bgItem in items)
         {
            if(bgItem.§-!@§.toUpperCase() == "CATEGORYBACKGROUNDS")
            {
               this.§]!;§(bgItem.§<!B§);
            }
         }
         for each(item in items)
         {
            this.§4&§.§1$§(item);
         }
         return this.§4&§;
      }
      
      public function §!!=§(characterId:String, characterSid:String, characterCategory:String, avatarsArray:Array, showX:int = 110, showY:int = 174, fromRenderer:Boolean = false) : Avatar
      {
         var avatar:Avatar = null;
         for each(avatar in avatarsArray)
         {
            if(avatar.§?D§().§<!B§ == characterId)
            {
               avatar.§?D§().sId = characterSid;
               avatar.§?D§().§-!@§ = characterCategory;
               avatar.show(showX,showY);
               if(!fromRenderer)
               {
                  §1!!§.§1!S§ = avatar;
               }
               for(this.§4&§ = avatar; this.numChildren > 0; )
               {
                  removeChildAt(0);
               }
               this.addChild(avatar);
            }
            else
            {
               avatar.hide();
            }
         }
         return this.§4&§;
      }
   }
}
