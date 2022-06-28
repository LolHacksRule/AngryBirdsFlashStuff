package §3w§
{
   import §+!1§.AvatarCreatorPopup;
   import §5!'§.§^E§;
   import §[!H§.§6!4§;
   import §[!H§.Avatar;
   import §^B§.Item;
   import §^B§.§[_§;
   import §^`§.ServerIdParser;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   
   public class AvatarRenderer implements §^E§
   {
       
      
      private var §1k§:Array;
      
      private var §'n§:Boolean = false;
      
      public function AvatarRenderer()
      {
         this.§1k§ = [];
         super();
      }
      
      public function §'I§() : void
      {
         var object:Object = null;
         this.§'n§ = true;
         for each(object in this.§1k§)
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
      
      public function §+!<§() : void
      {
         this.§'n§ = true;
      }
      
      public function render(avatarString:String, callBack:Function, imageSize:int = 50, ignoreBackground:Boolean = false) : BitmapData
      {
         var holderSprite:Sprite = null;
         var avCreator:§1!!§ = null;
         var allAvatars:Array = null;
         var character:§[_§ = null;
         var parsedItems:Array = null;
         var avatarContainer:§6!4§ = null;
         var avatar:Avatar = null;
         var item:Item = null;
         var imageSizeMargin:Number = NaN;
         var scale:Number = NaN;
         var bmd:BitmapData = null;
         var av:Avatar = null;
         var item2:Item = null;
         var mat:Matrix = null;
         if(!this.§'n§)
         {
            this.§1k§.push({
               "avatarString":avatarString,
               "callBack":callBack,
               "imageSize":imageSize,
               "ignoreBackground":ignoreBackground
            });
            return null;
         }
         holderSprite = new Sprite();
         avCreator = new §1!!§();
         allAvatars = [];
         for each(character in §1!!§.§=x§().characters)
         {
            av = new Avatar(character);
            allAvatars.push(av);
         }
         parsedItems = ServerIdParser.§@E§(avatarString);
         avatarContainer = new §6!4§();
         holderSprite.addChild(avatarContainer);
         for each(item in parsedItems)
         {
            if(item.§-!@§ == "CategoryBirds")
            {
               avatar = avatarContainer.§!!=§(item.§<!B§,AvatarCreatorPopup.STARTUP_CHARACTER_SID,"CategoryBirds",allAvatars,100,170,true);
            }
         }
         if(ignoreBackground)
         {
            avatar.§%!2§();
         }
         imageSizeMargin = imageSize * 0.4;
         scale = imageSize / 100 / 2;
         bmd = new BitmapData(imageSize + imageSizeMargin,imageSize + imageSizeMargin,true,16777215);
         if(avatar)
         {
            for each(item2 in parsedItems)
            {
               if(item2.§-!@§ != "CategoryBirds" && item2.§-!@§ != "CategoryBackgrounds")
               {
                  avatar.§1$§(item2);
               }
               if(item2.§-!@§ == "CategoryBackgrounds")
               {
                  avatar.§+!U§(item2.§<!B§);
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
