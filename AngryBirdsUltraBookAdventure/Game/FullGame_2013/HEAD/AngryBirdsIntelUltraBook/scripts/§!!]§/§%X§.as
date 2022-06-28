package §!!]§
{
   import §!!V§.AvatarCreatorPopup;
   import §<_§.§5!2§;
   import §]_§.Item;
   import flash.display.Sprite;
   
   public class §%X§ extends Sprite
   {
       
      
      public var §8r§:Avatar;
      
      public function §%X§()
      {
         super();
      }
      
      public function §3!F§(backgroundId:String) : void
      {
         if(this.§8r§)
         {
            this.§8r§.§4!T§(backgroundId);
         }
      }
      
      public function §#E§(items:Array) : Avatar
      {
         var birdItem:Item = null;
         var bgItem:Item = null;
         var item:Item = null;
         for each(birdItem in items)
         {
            if(birdItem.§[L§.toUpperCase() == "CATEGORYBIRDS")
            {
               this.§=W§(birdItem.§7!D§,birdItem.sId,birdItem.§[L§,AvatarCreatorPopup.sAvatars,110,174);
            }
         }
         for each(bgItem in items)
         {
            if(bgItem.§[L§.toUpperCase() == "CATEGORYBACKGROUNDS")
            {
               this.§3!F§(bgItem.§7!D§);
            }
         }
         for each(item in items)
         {
            this.§8r§.§&3§(item);
         }
         return this.§8r§;
      }
      
      public function §=W§(characterId:String, characterSid:String, characterCategory:String, avatarsArray:Array, showX:int = 110, showY:int = 174, fromRenderer:Boolean = false) : Avatar
      {
         var avatar:Avatar = null;
         for each(avatar in avatarsArray)
         {
            if(avatar.§>[§().§7!D§ == characterId)
            {
               avatar.§>[§().sId = characterSid;
               avatar.§>[§().§[L§ = characterCategory;
               avatar.show(showX,showY);
               if(!fromRenderer)
               {
                  §5!2§.§<R§ = avatar;
               }
               for(this.§8r§ = avatar; this.numChildren > 0; )
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
         return this.§8r§;
      }
   }
}
