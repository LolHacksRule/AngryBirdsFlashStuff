package §7H§
{
   import § D§.§]!B§;
   import §&L§.b2Vec2;
   import §,!_§.§;K§;
   import §2!H§.§&!U§;
   import §2!H§.LevelMain;
   import §3p§.LevelObject;
   import §3p§.LevelObjectManager;
   import §6!7§.§-m§;
   import §6!7§.Sprite;
   import §]=§.b2World;
   import flash.geom.Point;
   
   public class §%d§ extends LevelObject
   {
       
      
      public var §]!C§:Boolean = false;
      
      public var §'D§:Boolean = false;
      
      private var §]![§:§-m§;
      
      private var §@y§:Point;
      
      private var §5!i§:Number = 0;
      
      public function §%d§(aLevelObjects:LevelObjectManager, aSprite:Sprite, aWorld:b2World, aMain:LevelMain, aId:int, aX:Number, aY:Number, aRotation:Number, scale:Number)
      {
         super(aLevelObjects,aSprite,aWorld,aMain,aId,"POWERUP_BOMB",aX,aY,aRotation,scale);
         this.§+!L§();
      }
      
      private function §+!L§() : void
      {
         var parachutePivotTexture:§;K§ = §]!B§.§>F§.animationManager.getAnimation("POWERUP_BOMB_PARACHUTE").getFrame(0);
         this.§]![§ = new §-m§(parachutePivotTexture.texture,true);
         this.§@y§ = new Point(parachutePivotTexture.pivotX,parachutePivotTexture.pivotY);
         §]!B§.§>F§.objects.§5!K§.addChild(this.§]![§);
      }
      
      public function §5!j§(deltaTime:Number) : void
      {
         var reversedPivot:Point = null;
         var fallingVelocity:Number = NaN;
         super.update(deltaTime);
         var windRadians:Number = this.§5!i§ / 1000 * Math.PI * §&!U§.§2R§;
         var windDirection:Number = Math.sin(windRadians);
         if(this.§]![§)
         {
            if(this.§'D§ || !§9f§())
            {
               this.§]![§.alpha -= 0.025;
               this.§]![§.y += 1;
               this.§]![§.rotation += 0.01;
               if(this.§]![§.alpha <= 0)
               {
                  this.§]![§.dispose();
                  this.§]![§ = null;
               }
            }
            else
            {
               this.§]![§.rotation = Math.cos(windRadians) * §&!U§.§#!W§;
               reversedPivot = new Point(-this.§@y§.x,-this.§@y§.y);
               this.§]![§.x = x + reversedPivot.x * Math.cos(this.§]![§.rotation) - reversedPivot.y * Math.sin(this.§]![§.rotation);
               this.§]![§.y = y + reversedPivot.x * Math.sin(this.§]![§.rotation) + reversedPivot.y * Math.cos(this.§]![§.rotation);
               fallingVelocity = §9f§().GetLinearVelocity().y;
               if(fallingVelocity > §&!U§.§3!X§)
               {
                  fallingVelocity = §&!U§.§3!X§;
               }
               §9f§().SetLinearVelocity(new b2Vec2(windDirection * §&!U§.§>L§,fallingVelocity));
            }
         }
         this.§5!i§ += deltaTime;
      }
      
      public function get §9,§() : Boolean
      {
         return !§9f§() && this.§]![§ == null;
      }
   }
}
