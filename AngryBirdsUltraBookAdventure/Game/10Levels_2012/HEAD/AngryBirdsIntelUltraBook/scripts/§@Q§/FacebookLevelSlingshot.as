package §@Q§
{
   import §#!X§.LevelModel;
   import §'_§.Texture;
   import §1!&§.§!!9§;
   import §1!&§.§&p§;
   import §1!&§.DisplayObject;
   import §1!&§.Sprite;
   import §3!j§.SoundEngine;
   import §8!?§.Animation;
   import §?A§.§5a§;
   import §?A§.LevelMain;
   import §?A§.LevelSlingshot;
   import §?A§.LevelSlingshotObject;
   import com.rovio.assets.AssetCache;
   import com.rovio.ui.setTint;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   
   public class FacebookLevelSlingshot extends LevelSlingshot
   {
      
      protected static const SUPER_ROPE_COLOR:uint = 7602176;
      
      protected static var sSuperHolsterTexture:Texture;
       
      
      protected var §;5§:§&p§;
      
      protected var §,!K§:§&p§;
      
      protected var §+q§:Boolean = false;
      
      public function FacebookLevelSlingshot(newLevelMain:LevelMain, level:LevelModel, aSprite:§1!&§.Sprite)
      {
         super(newLevelMain,level,aSprite);
      }
      
      public function §&h§() : void
      {
         this.§0!N§(false);
      }
      
      public function §`X§() : void
      {
         if(this.§;5§ || this.§,!K§)
         {
            this.§0!N§(true);
            return;
         }
         var slingshotAnimation:Animation = §6f§.animationManager.getAnimation("SUPER_SLINGSHOT");
         var backTexture:Texture = slingshotAnimation.getFrame(0).texture;
         var frontTexture:Texture = slingshotAnimation.getFrame(1).texture;
         this.§;5§ = new §&p§(backTexture);
         this.§,!K§ = new §&p§(frontTexture);
         this.§0!N§(true);
         this.§>3§(§5a§.§0!h§);
      }
      
      public function §>3§(value:Number) : void
      {
         var bird:LevelSlingshotObject = null;
         for each(bird in §+I§)
         {
            bird.§!i§ = value;
         }
      }
      
      override protected function getSlingshotAnimation() : Animation
      {
         return §6f§.animationManager.getAnimation("INTEL_SLINGSHOT");
      }
      
      protected function §0!N§(isSuper:Boolean = false) : void
      {
         if(this.§+q§ == isSuper)
         {
            return;
         }
         if(isSuper)
         {
            this.§9!,§();
         }
         else
         {
            §if §();
         }
         §[!K§ = !!isSuper ? Number(§5a§.§9S§) : Number(§5a§.§]!V§);
         for(this.§+q§ = isSuper; §1!J§.numChildren > 0; )
         {
            §1!J§.removeChildAt(0);
         }
         §1!J§.addChild(!!isSuper ? this.§;5§ : §!!i§);
         §1!J§.addChild(§!'§);
         §1!J§.addChild(§,!d§);
         §1!J§.addChild(§<7§);
         §1!J§.addChild(§0!S§);
         §1!J§.addChild(!!isSuper ? this.§,!K§ : §+!;§);
         §@d§ = true;
      }
      
      override public function updateAnimations(deltaTime:Number) : void
      {
         super.updateAnimations(deltaTime);
         if(this.§+q§)
         {
            this.§;5§.x = §`!Z§ / LevelMain.§!5§ - 8 - 8;
            this.§;5§.y = §[§ / LevelMain.§!5§ - 30 - 10;
            this.§,!K§.x = §`!Z§ / LevelMain.§!5§ - 38 - 4;
            this.§,!K§.y = §[§ / LevelMain.§!5§ - 37 - 6;
         }
      }
      
      override protected function playBirdShotSound() : void
      {
         if(this.§+q§)
         {
            SoundEngine.§`B§("Powerup_Speed");
         }
         else
         {
            super.playBirdShotSound();
         }
      }
      
      override public function getLaunchSpeed() : Number
      {
         var speed:Number = 0;
         var bird:LevelSlingshotObject = null;
         bird = §+I§[§=y§];
         var power:Number = §]!5§ / §[!K§;
         if(bird != null)
         {
            speed = bird.name.toUpperCase() == "BIRD_GREEN" ? Number(LevelSlingshot.BIRD_LAUNCH_FORCE_GREEN) : Number(LevelSlingshot.BIRD_LAUNCH_FORCE);
            if(bird != null && bird.§!i§ > 0)
            {
               return bird.§!i§ * power;
            }
         }
         return speed * power;
      }
      
      public function §+7§(value:Number) : LevelSlingshotObject
      {
         var bird:LevelSlingshotObject = null;
         bird = §+I§[§=y§];
         if(bird.§-!9§ < 1)
         {
            bird.§-!9§ = 1;
         }
         bird.scale = value;
         bird.sprite.scaleX = bird.scale;
         bird.sprite.scaleY = bird.scale;
         return bird;
      }
      
      protected function §9!,§() : void
      {
         var slingClip:flash.display.Sprite = null;
         var bitmapData:BitmapData = null;
         if(!sSuperHolsterTexture)
         {
            slingClip = new AssetCache.§,!k§("MovieClip_SlingHolder")();
            setTint(slingClip,SUPER_ROPE_COLOR,1);
            bitmapData = new BitmapData(slingClip.width,slingClip.height,true,0);
            bitmapData.draw(slingClip,null,slingClip.transform.colorTransform);
            sSuperHolsterTexture = §6f§.textureManager.getTextureFromBitmapData(bitmapData);
         }
         §<7§ = new §1!&§.Sprite();
         var holsterImage:§&p§ = new §&p§(sSuperHolsterTexture);
         holsterImage.rotation = Math.PI;
         holsterImage.x = holsterImage.width / 2;
         holsterImage.y = holsterImage.height / 2;
         §<7§.addChild(holsterImage);
         §!'§ = new §1!&§.Sprite();
         §>Q§ = new §!!9§(2,2,SUPER_ROPE_COLOR);
         §!'§.addChild(§>Q§);
         §0!S§ = new §1!&§.Sprite();
         §+S§ = new §!!9§(2,2,SUPER_ROPE_COLOR);
         §0!S§.addChild(§+S§);
      }
   }
}
