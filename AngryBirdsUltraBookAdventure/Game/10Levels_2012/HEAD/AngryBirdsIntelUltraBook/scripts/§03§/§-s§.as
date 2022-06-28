package §03§
{
   import §1!=§.AvatarCreatorPopup;
   import §;0§.Item;
   import §[c§.§5!?§;
   import flash.display.Sprite;
   
   public class §-s§ extends Sprite
   {
       
      
      public var § !g§:Avatar;
      
      public function §-s§()
      {
         super();
      }
      
      public function §2!T§(backgroundId:String) : void
      {
         if(this.§ !g§)
         {
            this.§ !g§.§+>§(backgroundId);
         }
      }
      
      public function §!r§(items:Array) : Avatar
      {
         var birdItem:Item = null;
         var bgItem:Item = null;
         var item:Item = null;
         for each(birdItem in items)
         {
            if(birdItem.§`5§.toUpperCase() == "CATEGORYBIRDS")
            {
               this.§5E§(birdItem.§^!,§,birdItem.sId,birdItem.§`5§,AvatarCreatorPopup.sAvatars,110,174);
            }
         }
         for each(bgItem in items)
         {
            if(bgItem.§`5§.toUpperCase() == "CATEGORYBACKGROUNDS")
            {
               this.§2!T§(bgItem.§^!,§);
            }
         }
         for each(item in items)
         {
            this.§ !g§.§[F§(item);
         }
         return this.§ !g§;
      }
      
      public function §5E§(characterId:String, characterSid:String, characterCategory:String, avatarsArray:Array, showX:int = 110, showY:int = 174, fromRenderer:Boolean = false) : Avatar
      {
         var avatar:Avatar = null;
         for each(avatar in avatarsArray)
         {
            if(avatar.§9!b§().§^!,§ == characterId)
            {
               avatar.§9!b§().sId = characterSid;
               avatar.§9!b§().§`5§ = characterCategory;
               avatar.show(showX,showY);
               if(!fromRenderer)
               {
                  §5!?§.§'d§ = avatar;
               }
               for(this.§ !g§ = avatar; this.numChildren > 0; )
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
         return this.§ !g§;
      }
   }
}
