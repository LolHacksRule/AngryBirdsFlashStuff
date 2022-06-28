package §7!]§
{
   import §-!>§.§4!T§;
   import §1!&§.§&p§;
   import §1!&§.Sprite;
   import §1%§.b2World;
   import §3Y§.LevelObject;
   import §3Y§.LevelObjectManager;
   import §8!?§.§?!B§;
   import §?!&§.b2Vec2;
   import §?A§.§5a§;
   import §?A§.LevelMain;
   import flash.geom.Point;
   
   public class §2O§ extends LevelObject
   {
       
      
      public var §4!`§:Boolean = false;
      
      public var §05§:Boolean = false;
      
      private var §2l§:§&p§;
      
      private var §#=§:Point;
      
      private var §;![§:Number = 0;
      
      public function §2O§(aLevelObjects:LevelObjectManager, aSprite:Sprite, aWorld:b2World, aMain:LevelMain, aId:int, aX:Number, aY:Number, aRotation:Number, scale:Number)
      {
         super(aLevelObjects,aSprite,aWorld,aMain,aId,"POWERUP_BOMB",aX,aY,aRotation,scale);
         this.§1s§();
      }
      
      private function §1s§() : void
      {
         var parachutePivotTexture:§?!B§ = §4!T§.§1t§.animationManager.getAnimation("POWERUP_BOMB_PARACHUTE").getFrame(0);
         this.§2l§ = new §&p§(parachutePivotTexture.texture,true);
         this.§#=§ = new Point(parachutePivotTexture.pivotX,parachutePivotTexture.pivotY);
         §4!T§.§1t§.objects.§!!<§.addChild(this.§2l§);
      }
      
      public function §@'§(deltaTime:Number) : void
      {
         var reversedPivot:Point = null;
         var fallingVelocity:Number = NaN;
         super.update(deltaTime);
         var windRadians:Number = this.§;![§ / 1000 * Math.PI * §5a§.§!!%§;
         var windDirection:Number = Math.sin(windRadians);
         if(this.§2l§)
         {
            if(this.§05§ || !§8!N§())
            {
               this.§2l§.alpha -= 0.025;
               this.§2l§.y += 1;
               this.§2l§.rotation += 0.01;
               if(this.§2l§.alpha <= 0)
               {
                  this.§2l§.dispose();
                  this.§2l§ = null;
               }
            }
            else
            {
               this.§2l§.rotation = Math.cos(windRadians) * §5a§.§3z§;
               reversedPivot = new Point(-this.§#=§.x,-this.§#=§.y);
               this.§2l§.x = x + reversedPivot.x * Math.cos(this.§2l§.rotation) - reversedPivot.y * Math.sin(this.§2l§.rotation);
               this.§2l§.y = y + reversedPivot.x * Math.sin(this.§2l§.rotation) + reversedPivot.y * Math.cos(this.§2l§.rotation);
               fallingVelocity = §8!N§().GetLinearVelocity().y;
               if(fallingVelocity > §5a§.§%A§)
               {
                  fallingVelocity = §5a§.§%A§;
               }
               §8!N§().SetLinearVelocity(new b2Vec2(windDirection * §5a§.§%V§,fallingVelocity));
            }
         }
         this.§;![§ += deltaTime;
      }
      
      public function get §>%§() : Boolean
      {
         return !§8!N§() && this.§2l§ == null;
      }
   }
}
