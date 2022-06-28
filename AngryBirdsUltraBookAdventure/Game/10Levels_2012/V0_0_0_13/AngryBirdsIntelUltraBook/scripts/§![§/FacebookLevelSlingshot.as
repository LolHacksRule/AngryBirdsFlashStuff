package §![§
{
   import §"L§.LevelModel;
   import §,!_§.Animation;
   import §2!H§.§&!U§;
   import §2!H§.LevelMain;
   import §2!H§.LevelSlingshot;
   import §2!H§.LevelSlingshotObject;
   import §6!7§.§-m§;
   import §6!7§.§3x§;
   import §6!7§.DisplayObject;
   import §6!7§.Sprite;
   import §7i§.Texture;
   import §=?§.SoundEngine;
   import com.rovio.assets.AssetCache;
   import com.rovio.ui.setTint;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   
   public class FacebookLevelSlingshot extends LevelSlingshot
   {
      
      protected static const SUPER_ROPE_COLOR:uint = 7602176;
      
      protected static var sSuperHolsterTexture:Texture;
       
      
      protected var §'E§:§-m§;
      
      protected var §>!Y§:§-m§;
      
      protected var §82§:Boolean = false;
      
      public function FacebookLevelSlingshot(newLevelMain:LevelMain, level:LevelModel, aSprite:§6!7§.Sprite)
      {
         super(newLevelMain,level,aSprite);
      }
      
      public function §-!R§() : void
      {
         this.§8!@§(false);
      }
      
      public function §;m§() : void
      {
         if(this.§'E§ || this.§>!Y§)
         {
            this.§8!@§(true);
            return;
         }
         var slingshotAnimation:Animation = §"!>§.animationManager.getAnimation("SUPER_SLINGSHOT");
         var backTexture:Texture = slingshotAnimation.getFrame(0).texture;
         var frontTexture:Texture = slingshotAnimation.getFrame(1).texture;
         this.§'E§ = new §-m§(backTexture);
         this.§>!Y§ = new §-m§(frontTexture);
         this.§8!@§(true);
         this.§]r§(§&!U§.§2n§);
      }
      
      public function §]r§(value:Number) : void
      {
         var bird:LevelSlingshotObject = null;
         for each(bird in §#P§)
         {
            bird.§9S§ = value;
         }
      }
      
      override protected function getSlingshotAnimation() : Animation
      {
         return §"!>§.animationManager.getAnimation("INTEL_SLINGSHOT");
      }
      
      protected function §8!@§(isSuper:Boolean = false) : void
      {
         if(this.§82§ == isSuper)
         {
            return;
         }
         if(isSuper)
         {
            this.§extends§();
         }
         else
         {
            §@!"§();
         }
         §+8§ = !!isSuper ? Number(§&!U§.§9i§) : Number(§&!U§.§>U§);
         for(this.§82§ = isSuper; §'6§.numChildren > 0; )
         {
            §'6§.removeChildAt(0);
         }
         §'6§.addChild(!!isSuper ? this.§'E§ : §@!$§);
         §'6§.addChild(§?0§);
         §'6§.addChild(§^x§);
         §'6§.addChild(§^H§);
         §'6§.addChild(§+v§);
         §'6§.addChild(!!isSuper ? this.§>!Y§ : §4!$§);
         §=P§ = true;
      }
      
      override public function updateAnimations(deltaTime:Number) : void
      {
         super.updateAnimations(deltaTime);
         if(this.§82§)
         {
            this.§'E§.x = §`!%§ / LevelMain.§8N§ - 8 - 8;
            this.§'E§.y = §else§ / LevelMain.§8N§ - 30 - 10;
            this.§>!Y§.x = §`!%§ / LevelMain.§8N§ - 38 - 4;
            this.§>!Y§.y = §else§ / LevelMain.§8N§ - 37 - 6;
         }
      }
      
      override protected function playBirdShotSound() : void
      {
         if(this.§82§)
         {
            SoundEngine.§9!X§("Powerup_Speed");
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
         bird = §#P§[§@A§];
         var power:Number = §'H§ / §+8§;
         if(bird != null)
         {
            speed = bird.name.toUpperCase() == "BIRD_GREEN" ? Number(LevelSlingshot.BIRD_LAUNCH_FORCE_GREEN) : Number(LevelSlingshot.BIRD_LAUNCH_FORCE);
            if(bird != null && bird.§9S§ > 0)
            {
               return bird.§9S§ * power;
            }
         }
         return speed * power;
      }
      
      public function §4!@§(value:Number) : LevelSlingshotObject
      {
         var bird:LevelSlingshotObject = null;
         bird = §#P§[§@A§];
         if(bird.§?!h§ < 1)
         {
            bird.§?!h§ = 1;
         }
         bird.scale = value;
         bird.sprite.scaleX = bird.scale;
         bird.sprite.scaleY = bird.scale;
         return bird;
      }
      
      protected function §extends§() : void
      {
         var slingClip:flash.display.Sprite = null;
         var bitmapData:BitmapData = null;
         if(!sSuperHolsterTexture)
         {
            slingClip = new AssetCache.§-9§("MovieClip_SlingHolder")();
            setTint(slingClip,SUPER_ROPE_COLOR,1);
            bitmapData = new BitmapData(slingClip.width,slingClip.height,true,0);
            bitmapData.draw(slingClip,null,slingClip.transform.colorTransform);
            sSuperHolsterTexture = §"!>§.textureManager.getTextureFromBitmapData(bitmapData);
         }
         §^H§ = new §6!7§.Sprite();
         var holsterImage:§-m§ = new §-m§(sSuperHolsterTexture);
         holsterImage.rotation = Math.PI;
         holsterImage.x = holsterImage.width / 2;
         holsterImage.y = holsterImage.height / 2;
         §^H§.addChild(holsterImage);
         §?0§ = new §6!7§.Sprite();
         §[2§ = new §3x§(2,2,SUPER_ROPE_COLOR);
         §?0§.addChild(§[2§);
         §+v§ = new §6!7§.Sprite();
         §,!i§ = new §3x§(2,2,SUPER_ROPE_COLOR);
         §+v§.addChild(§,!i§);
      }
   }
}
