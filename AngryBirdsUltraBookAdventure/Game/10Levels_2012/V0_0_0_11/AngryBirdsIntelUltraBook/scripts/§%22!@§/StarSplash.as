package §"!@§
{
   import § D§.§]!B§;
   import §2=§.TweenManager;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class StarSplash extends Sprite
   {
      
      public static const STARSPLASH_LEFT:int = 0;
      
      public static const STARSPLASH_CENTER:int = 1;
      
      public static const STARSPLASH_RIGHT:int = 2;
      
      public static const STARSPLASH_BADGE:int = 3;
       
      
      private const §return§:uint = 40;
      
      private const §?!S§:Number = 0.3;
      
      private const §=0§:Number = 25;
      
      private const §?R§:Number = 10;
      
      private const §?n§:Number = 9;
      
      private var §,M§:int;
      
      private var §6!M§:int;
      
      private var §-!I§:Array;
      
      private var §<!O§:Array;
      
      private var §1!L§:Point;
      
      private var §3L§:int;
      
      public function StarSplash(stageWidth:int, stageHeight:int, posX:Number, posY:Number, starPos:int, starCount:int = 40)
      {
         var star:§5q§ = null;
         var absX:Number = NaN;
         var absY:Number = NaN;
         super();
         this.§,M§ = stageWidth;
         this.§6!M§ = stageHeight;
         var scaleMin:Number = Math.min(§]!B§.§9$§,§]!B§.§^F§);
         var scaleMax:Number = Math.max(§]!B§.§9$§,§]!B§.§^F§);
         posX /= §]!B§.§^F§;
         posY /= §]!B§.§9$§;
         this.§3L§ = starPos;
         this.§1!L§ = new Point(posX,posY);
         this.§-!I§ = [];
         this.§<!O§ = [];
         for(var i:int = 0; i < starCount; i++)
         {
            star = new §5q§(Math.random() * 40 + 10);
            star.x = -2000;
            star.y = -2000;
            this.addChild(star);
            this.§-!I§[i] = star;
         }
         this.scaleX = scaleMax;
         this.scaleY = scaleMax;
      }
      
      public function clean() : void
      {
         for(var cleanThisStar:§5q§ = null; this.§-!I§.length > 0; )
         {
            cleanThisStar = this.§-!I§.shift();
            cleanThisStar.clean();
         }
         while(this.§<!O§.length > 0)
         {
            cleanThisStar = this.§<!O§.shift();
            cleanThisStar.clean();
         }
         this.§-!I§ = [];
         this.§<!O§ = [];
      }
      
      public function update(deltaTime:Number) : void
      {
         var deleteFlag:Boolean = false;
         var star:§5q§ = null;
         var randomVelocity:Number = NaN;
         var randomRadian:Number = NaN;
         var randomVx:Number = NaN;
         var randomVy:Number = NaN;
         var scaleStart:Number = NaN;
         var scaleEnd:Number = NaN;
         var velocityMin:Number = NaN;
         var velocityMax:Number = NaN;
         var splicedStar:Object = null;
         for(deltaTime /= 20; this.§-!I§.length > 0; )
         {
            star = this.§-!I§.shift();
            randomVelocity = Math.random() * (this.§=0§ - this.§?R§) + this.§?R§;
            if(this.§3L§ == STARSPLASH_LEFT)
            {
               randomRadian = -(Math.PI / 2) * Math.random();
               randomVx = Math.sin(randomRadian - Math.PI / 2);
               randomVy = Math.cos(randomRadian - Math.PI / 2);
            }
            else if(this.§3L§ == STARSPLASH_CENTER)
            {
               randomRadian = Math.PI * (Math.random() - 0.5) * 0.5;
               randomVx = Math.sin(randomRadian + Math.PI);
               randomVy = Math.cos(randomRadian + Math.PI);
            }
            else if(this.§3L§ == STARSPLASH_RIGHT)
            {
               randomRadian = Math.PI / 2 * Math.random();
               randomVx = Math.sin(randomRadian + Math.PI / 2);
               randomVy = Math.cos(randomRadian + Math.PI / 2);
            }
            else if(this.§3L§ == STARSPLASH_BADGE)
            {
               randomRadian = Math.PI * (Math.random() - 0.5) * 0.5;
               randomVx = Math.sin(randomRadian + Math.PI);
               randomVy = Math.cos(randomRadian + Math.PI);
               velocityMin = this.§?R§ / 2;
               velocityMax = this.§=0§ / 2;
               randomVelocity = Math.random() * (velocityMax - velocityMin) + velocityMin;
            }
            star.§<t§ = randomVx * randomVelocity;
            star.§<!D§ = randomVy * randomVelocity;
            star.x = this.§1!L§.x;
            star.y = this.§1!L§.y;
            this.§<!O§.push(star);
            scaleStart = 0.5 + Math.random() * 1.5;
            scaleEnd = 0.2;
            star.§=!1§ = TweenManager.§8!X§.§8m§(star,{
               "scaleX":scaleEnd,
               "scaleY":scaleEnd
            },{
               "scaleX":scaleStart,
               "scaleY":scaleStart
            },5);
            star.§=!1§.play();
         }
         var len:int = this.§<!O§.length;
         for(var i:int = len - 1; i >= 0; )
         {
            deleteFlag = false;
            star = this.§<!O§[i];
            star.§<!D§ += this.§?!S§ * deltaTime;
            if(star.§<!D§ > this.§?n§)
            {
               star.§<!D§ = this.§?n§;
            }
            star.x += star.§<t§ * deltaTime;
            star.y += star.§<!D§ * deltaTime;
            star.rotation += 5 * deltaTime;
            if(star.x < -star.width / 2)
            {
               deleteFlag = true;
            }
            else if(star.x > this.§,M§ + star.width / 2)
            {
               deleteFlag = true;
            }
            else if(star.y > this.§6!M§ + star.height / 2)
            {
               deleteFlag = true;
            }
            if(this.§<!O§.length > 0 && deleteFlag)
            {
               splicedStar = this.§<!O§.splice(i,1);
               if(splicedStar is §5q§)
               {
                  splicedStar.clean();
               }
               star.x = -2000;
               star.y = -2000;
            }
            i--;
         }
      }
   }
}
