package §;+§
{
   import §!!0§.SoundEngine;
   import §#!,§.§0!b§;
   import §#!,§.§6!Y§;
   import §#!,§.DisplayObject;
   import §#!,§.Sprite;
   import §,!7§.Animation;
   import §6!J§.Texture;
   import §>!_§.LevelModel;
   import §]!@§.§ ?§;
   import §]!@§.LevelMain;
   import §]!@§.LevelSlingshot;
   import §]!@§.LevelSlingshotObject;
   import com.rovio.assets.AssetCache;
   import com.rovio.ui.setTint;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   
   public class FacebookLevelSlingshot extends LevelSlingshot
   {
      
      protected static const SUPER_ROPE_COLOR:uint = 7602176;
      
      protected static var sSuperHolsterTexture:Texture;
       
      
      protected var §'1§:§0!b§;
      
      protected var §5!@§:§0!b§;
      
      protected var §%!_§:Boolean = false;
      
      public function FacebookLevelSlingshot(newLevelMain:LevelMain, level:LevelModel, aSprite:§#!,§.Sprite)
      {
         super(newLevelMain,level,aSprite);
      }
      
      public function §6;§() : void
      {
         this.§3#§(false);
      }
      
      public function §[A§() : void
      {
         if(this.§'1§ || this.§5!@§)
         {
            this.§3#§(true);
            return;
         }
         var slingshotAnimation:Animation = §`s§.animationManager.getAnimation("SUPER_SLINGSHOT");
         var backTexture:Texture = slingshotAnimation.getFrame(0).texture;
         var frontTexture:Texture = slingshotAnimation.getFrame(1).texture;
         this.§'1§ = new §0!b§(backTexture);
         this.§5!@§ = new §0!b§(frontTexture);
         this.§3#§(true);
         this.§3!b§(§ ?§.§;S§);
      }
      
      public function §3!b§(value:Number) : void
      {
         var bird:LevelSlingshotObject = null;
         for each(bird in §2!X§)
         {
            bird.§>#§ = value;
         }
      }
      
      override protected function getSlingshotAnimation() : Animation
      {
         return §`s§.animationManager.getAnimation("INTEL_SLINGSHOT");
      }
      
      protected function §3#§(isSuper:Boolean = false) : void
      {
         if(this.§%!_§ == isSuper)
         {
            return;
         }
         if(isSuper)
         {
            this.§8!f§();
         }
         else
         {
            §`R§();
         }
         §9!D§ = !!isSuper ? Number(§ ?§.§-!Y§) : Number(§ ?§.§=M§);
         for(this.§%!_§ = isSuper; §"!,§.numChildren > 0; )
         {
            §"!,§.removeChildAt(0);
         }
         §"!,§.addChild(!!isSuper ? this.§'1§ : §7!N§);
         §"!,§.addChild(§^H§);
         §"!,§.addChild(§%R§);
         §"!,§.addChild(§^§);
         §"!,§.addChild(§^!S§);
         §"!,§.addChild(!!isSuper ? this.§5!@§ : §%T§);
         §9!U§ = true;
      }
      
      override public function updateAnimations(deltaTime:Number) : void
      {
         super.updateAnimations(deltaTime);
         if(this.§%!_§)
         {
            this.§'1§.x = §1X§ / LevelMain.§@!d§ - 8 - 8;
            this.§'1§.y = §`J§ / LevelMain.§@!d§ - 30 - 10;
            this.§5!@§.x = §1X§ / LevelMain.§@!d§ - 38 - 4;
            this.§5!@§.y = §`J§ / LevelMain.§@!d§ - 37 - 6;
         }
      }
      
      override protected function playBirdShotSound() : void
      {
         if(this.§%!_§)
         {
            SoundEngine.§-!h§("Powerup_Speed");
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
         bird = §2!X§[§1!9§];
         var power:Number = §`!K§ / §9!D§;
         if(bird != null)
         {
            speed = bird.name.toUpperCase() == "BIRD_GREEN" ? Number(LevelSlingshot.BIRD_LAUNCH_FORCE_GREEN) : Number(LevelSlingshot.BIRD_LAUNCH_FORCE);
            if(bird != null && bird.§>#§ > 0)
            {
               return bird.§>#§ * power;
            }
         }
         return speed * power;
      }
      
      public function §22§(value:Number) : LevelSlingshotObject
      {
         var bird:LevelSlingshotObject = null;
         bird = §2!X§[§1!9§];
         if(bird.§1F§ < 1)
         {
            bird.§1F§ = 1;
         }
         bird.scale = value;
         bird.sprite.scaleX = bird.scale;
         bird.sprite.scaleY = bird.scale;
         return bird;
      }
      
      protected function §8!f§() : void
      {
         var slingClip:flash.display.Sprite = null;
         var bitmapData:BitmapData = null;
         if(!sSuperHolsterTexture)
         {
            slingClip = new AssetCache.§%p§("MovieClip_SlingHolder")();
            setTint(slingClip,SUPER_ROPE_COLOR,1);
            bitmapData = new BitmapData(slingClip.width,slingClip.height,true,0);
            bitmapData.draw(slingClip,null,slingClip.transform.colorTransform);
            sSuperHolsterTexture = §`s§.textureManager.getTextureFromBitmapData(bitmapData);
         }
         §^§ = new §#!,§.Sprite();
         var holsterImage:§0!b§ = new §0!b§(sSuperHolsterTexture);
         holsterImage.rotation = Math.PI;
         holsterImage.x = holsterImage.width / 2;
         holsterImage.y = holsterImage.height / 2;
         §^§.addChild(holsterImage);
         §^H§ = new §#!,§.Sprite();
         §;!X§ = new §6!Y§(2,2,SUPER_ROPE_COLOR);
         §^H§.addChild(§;!X§);
         §^!S§ = new §#!,§.Sprite();
         §+P§ = new §6!Y§(2,2,SUPER_ROPE_COLOR);
         §^!S§.addChild(§+P§);
      }
   }
}
