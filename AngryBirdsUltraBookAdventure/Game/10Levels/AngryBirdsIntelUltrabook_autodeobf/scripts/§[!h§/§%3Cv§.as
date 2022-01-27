package §[!h§
{
   import §#!,§.§0!b§;
   import §#!,§.Sprite;
   import §,!7§.§ H§;
   import §6!!§.LevelObject;
   import §6!!§.LevelObjectManager;
   import §>!8§.b2Vec2;
   import §>!L§.b2World;
   import §?!Y§.§`S§;
   import §]!@§.§ ?§;
   import §]!@§.LevelMain;
   import flash.geom.Point;
   
   public class §<v§ extends LevelObject
   {
       
      
      public var §7R§:Boolean = false;
      
      public var §finally§:Boolean = false;
      
      private var §8!$§:§0!b§;
      
      private var §3O§:Point;
      
      private var §1W§:Number = 0;
      
      public function §<v§(aLevelObjects:LevelObjectManager, aSprite:Sprite, aWorld:b2World, aMain:LevelMain, aId:int, aX:Number, aY:Number, aRotation:Number, scale:Number)
      {
         super(aLevelObjects,aSprite,aWorld,aMain,aId,"POWERUP_BOMB",aX,aY,aRotation,scale);
         this.§`!<§();
      }
      
      private function §`!<§() : void
      {
         var parachutePivotTexture:§ H§ = §`S§.§[o§.animationManager.getAnimation("POWERUP_BOMB_PARACHUTE").getFrame(0);
         this.§8!$§ = new §0!b§(parachutePivotTexture.texture,true);
         this.§3O§ = new Point(parachutePivotTexture.pivotX,parachutePivotTexture.pivotY);
         §`S§.§[o§.objects.§>a§.addChild(this.§8!$§);
      }
      
      public function §-#§(deltaTime:Number) : void
      {
         var reversedPivot:Point = null;
         var fallingVelocity:Number = NaN;
         super.update(deltaTime);
         var windRadians:Number = this.§1W§ / 1000 * Math.PI * § ?§.§@!M§;
         var windDirection:Number = Math.sin(windRadians);
         if(this.§8!$§)
         {
            if(this.§finally§ || !§@!'§())
            {
               this.§8!$§.alpha -= 0.025;
               this.§8!$§.y += 1;
               this.§8!$§.rotation += 0.01;
               if(this.§8!$§.alpha <= 0)
               {
                  this.§8!$§.dispose();
                  this.§8!$§ = null;
               }
            }
            else
            {
               this.§8!$§.rotation = Math.cos(windRadians) * § ?§.§ h§;
               reversedPivot = new Point(-this.§3O§.x,-this.§3O§.y);
               this.§8!$§.x = x + reversedPivot.x * Math.cos(this.§8!$§.rotation) - reversedPivot.y * Math.sin(this.§8!$§.rotation);
               this.§8!$§.y = y + reversedPivot.x * Math.sin(this.§8!$§.rotation) + reversedPivot.y * Math.cos(this.§8!$§.rotation);
               fallingVelocity = §@!'§().GetLinearVelocity().y;
               if(fallingVelocity > § ?§.§4,§)
               {
                  fallingVelocity = § ?§.§4,§;
               }
               §@!'§().SetLinearVelocity(new b2Vec2(windDirection * § ?§.§+>§,fallingVelocity));
            }
         }
         this.§1W§ += deltaTime;
      }
      
      public function get §%!e§() : Boolean
      {
         return !§@!'§() && this.§8!$§ == null;
      }
   }
}
