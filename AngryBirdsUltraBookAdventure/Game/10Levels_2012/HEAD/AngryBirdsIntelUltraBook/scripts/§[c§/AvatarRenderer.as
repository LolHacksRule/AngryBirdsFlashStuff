package §[c§
{
   import §+R§.§ !a§;
   import §03§.§-s§;
   import §03§.Avatar;
   import §1!=§.AvatarCreatorPopup;
   import §;0§.Item;
   import §;0§.§`!6§;
   import §`!0§.ServerIdParser;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   
   public class AvatarRenderer implements § !a§
   {
       
      
      private var §]J§:Array;
      
      private var §"=§:Boolean = false;
      
      public function AvatarRenderer()
      {
         this.§]J§ = [];
         super();
      }
      
      public function § else§() : void
      {
         var object:Object = null;
         this.§"=§ = true;
         for each(object in this.§]J§)
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
      
      public function § +§() : void
      {
         this.§"=§ = true;
      }
      
      public function render(avatarString:String, callBack:Function, imageSize:int = 50, ignoreBackground:Boolean = false) : BitmapData
      {
         var holderSprite:Sprite = null;
         var avCreator:§5!?§ = null;
         var allAvatars:Array = null;
         var character:§`!6§ = null;
         var parsedItems:Array = null;
         var avatarContainer:§-s§ = null;
         var avatar:Avatar = null;
         var item:Item = null;
         var imageSizeMargin:Number = NaN;
         var scale:Number = NaN;
         var bmd:BitmapData = null;
         var av:Avatar = null;
         var item2:Item = null;
         var mat:Matrix = null;
         if(!this.§"=§)
         {
            this.§]J§.push({
               "avatarString":avatarString,
               "callBack":callBack,
               "imageSize":imageSize,
               "ignoreBackground":ignoreBackground
            });
            return null;
         }
         holderSprite = new Sprite();
         avCreator = new §5!?§();
         allAvatars = [];
         for each(character in §5!?§.§5+§().characters)
         {
            av = new Avatar(character);
            allAvatars.push(av);
         }
         parsedItems = ServerIdParser.§9!&§(avatarString);
         avatarContainer = new §-s§();
         holderSprite.addChild(avatarContainer);
         for each(item in parsedItems)
         {
            if(item.§`5§ == "CategoryBirds")
            {
               avatar = avatarContainer.§5E§(item.§^!,§,AvatarCreatorPopup.STARTUP_CHARACTER_SID,"CategoryBirds",allAvatars,100,170,true);
            }
         }
         if(ignoreBackground)
         {
            avatar.§6#§();
         }
         imageSizeMargin = imageSize * 0.4;
         scale = imageSize / 100 / 2;
         bmd = new BitmapData(imageSize + imageSizeMargin,imageSize + imageSizeMargin,true,16777215);
         if(avatar)
         {
            for each(item2 in parsedItems)
            {
               if(item2.§`5§ != "CategoryBirds" && item2.§`5§ != "CategoryBackgrounds")
               {
                  avatar.§[F§(item2);
               }
               if(item2.§`5§ == "CategoryBackgrounds")
               {
                  avatar.§+>§(item2.§^!,§);
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
