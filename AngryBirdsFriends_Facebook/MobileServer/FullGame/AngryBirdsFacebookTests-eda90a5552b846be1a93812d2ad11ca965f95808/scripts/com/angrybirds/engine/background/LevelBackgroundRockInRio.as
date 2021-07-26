package com.angrybirds.engine.background
{
   import com.angrybirds.data.level.theme.LevelThemeBackground;
   import com.angrybirds.data.level.theme.LevelThemeBackgroundLayer;
   import com.angrybirds.engine.leveleventmanager.LevelEventPublisher;
   import com.rovio.graphics.PivotTexture;
   import com.rovio.graphics.TextureManager;
   import starling.display.Image;
   import starling.display.Sprite;
   
   public class LevelBackgroundRockInRio extends LevelBackground
   {
       
      
      private var mLifeTime:Number = 0;
      
      private var leftLight:Sprite;
      
      private var rightLight:Sprite;
      
      public function LevelBackgroundRockInRio(levelEventPublisher:LevelEventPublisher, background:LevelThemeBackground, groundLevel:Number, textureManager:TextureManager, minimumScale:Number, highQuality:Boolean = true)
      {
         super(levelEventPublisher,background,groundLevel,textureManager,minimumScale,highQuality);
      }
      
      override protected function createLayer(data:LevelThemeBackgroundLayer, sprite:Sprite, textureManager:TextureManager, minimumScale:Number) : LevelBackgroundLayer
      {
         var lightTexture:PivotTexture = null;
         var img:Image = null;
         var ret:LevelBackgroundLayer = super.createLayer(data,sprite,textureManager,minimumScale);
         if(data.spriteName == "THEME_FB_ROCKINRIO_MG_2")
         {
            lightTexture = textureManager.getTexture("THEME_FB_ROCINRIO_LIGHTS");
            img = new Image(lightTexture.texture);
            this.leftLight = new Sprite();
            this.leftLight.addChild(img);
            img.x = -lightTexture.pivotX;
            img.y = -lightTexture.pivotY;
            img = new Image(lightTexture.texture);
            this.rightLight = new Sprite();
            this.rightLight.addChild(img);
            img.x = -lightTexture.pivotX;
            img.y = -lightTexture.pivotY;
            sprite.addChild(this.leftLight);
            sprite.addChild(this.rightLight);
            this.leftLight.y = 411;
            this.leftLight.x = 200;
            this.rightLight.y = 411;
            this.rightLight.x = 528;
         }
         return ret;
      }
      
      override public function update(deltaTimeMilliSeconds:Number) : void
      {
         super.update(deltaTimeMilliSeconds);
         this.mLifeTime += deltaTimeMilliSeconds;
         this.leftLight.rotation = -0.7 + Math.sin(this.mLifeTime / 2500) * 0.4;
         this.rightLight.rotation = 0.7 + Math.sin(this.mLifeTime * 1.1 / 2500) * 0.4;
      }
   }
}
