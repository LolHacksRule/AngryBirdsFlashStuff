package §<_§
{
   import §!!V§.AvatarCreatorPopup;
   import §!!]§.§%X§;
   import §!!]§.Avatar;
   import §3!@§.ServerIdParser;
   import §6v§.§ ![§;
   import §]_§.§%1§;
   import §]_§.Item;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   
   public class AvatarRenderer implements § ![§
   {
       
      
      private var §9D§:Array;
      
      private var §&!C§:Boolean = false;
      
      public function AvatarRenderer()
      {
         this.§9D§ = [];
         super();
      }
      
      public function §!Q§() : void
      {
         var object:Object = null;
         this.§&!C§ = true;
         for each(object in this.§9D§)
         {
            try
            {
               this.render(object.avatarString,object.callBack,object.imageSize,object.ignoreBackground);
            }
            catch(e:Error)
            {
               trace("couldnt render avatar!");
            }
         }
      }
      
      public function §4<§() : void
      {
         this.§&!C§ = true;
      }
      
      public function render(avatarString:String, callBack:Function, imageSize:int = 50, ignoreBackground:Boolean = false) : BitmapData
      {
         var holderSprite:Sprite = null;
         var avCreator:§5!2§ = null;
         var allAvatars:Array = null;
         var character:§%1§ = null;
         var parsedItems:Array = null;
         var avatarContainer:§%X§ = null;
         var avatar:Avatar = null;
         var item:Item = null;
         var imageSizeMargin:Number = NaN;
         var scale:Number = NaN;
         var bmd:BitmapData = null;
         var av:Avatar = null;
         var item2:Item = null;
         var mat:Matrix = null;
         if(!this.§&!C§)
         {
            this.§9D§.push({
               "avatarString":avatarString,
               "callBack":callBack,
               "imageSize":imageSize,
               "ignoreBackground":ignoreBackground
            });
            return null;
         }
         holderSprite = new Sprite();
         avCreator = new §5!2§();
         allAvatars = [];
         for each(character in §5!2§.§<o§().characters)
         {
            av = new Avatar(character);
            allAvatars.push(av);
         }
         parsedItems = ServerIdParser.§,1§(avatarString);
         avatarContainer = new §%X§();
         holderSprite.addChild(avatarContainer);
         for each(item in parsedItems)
         {
            if(item.§[L§ == "CategoryBirds")
            {
               avatar = avatarContainer.§=W§(item.§7!D§,AvatarCreatorPopup.STARTUP_CHARACTER_SID,"CategoryBirds",allAvatars,100,170,true);
            }
         }
         if(ignoreBackground)
         {
            avatar.§<U§();
         }
         imageSizeMargin = imageSize * 0.4;
         scale = imageSize / 100 / 2;
         bmd = new BitmapData(imageSize + imageSizeMargin,imageSize + imageSizeMargin,true,16777215);
         if(avatar)
         {
            for each(item2 in parsedItems)
            {
               if(item2.§[L§ != "CategoryBirds" && item2.§[L§ != "CategoryBackgrounds")
               {
                  avatar.§&3§(item2);
               }
               if(item2.§[L§ == "CategoryBackgrounds")
               {
                  avatar.§4!T§(item2.§7!D§);
               }
            }
            mat = new Matrix();
            mat.scale(scale,scale);
            mat.translate(imageSizeMargin / 2,imageSizeMargin / 2);
            bmd.draw(avatarContainer,mat,null,null,null,true);
         }
         if(callBack != null)
         {
            callBack(bmd);
         }
         return bmd;
      }
   }
}
