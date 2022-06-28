package §^h§
{
   import §-!>§.§4!T§;
   import §<!G§.TweenManager;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class StarSplash extends Sprite
   {
      
      public static const STARSPLASH_LEFT:int = 0;
      
      public static const STARSPLASH_CENTER:int = 1;
      
      public static const STARSPLASH_RIGHT:int = 2;
      
      public static const STARSPLASH_BADGE:int = 3;
       
      
      private const §"!6§:uint = 40;
      
      private const §][§:Number = 0.3;
      
      private const §^!7§:Number = 25;
      
      private const §@!<§:Number = 10;
      
      private const §2!V§:Number = 9;
      
      private var §2+§:int;
      
      private var §@O§:int;
      
      private var §#!§:Array;
      
      private var §<g§:Array;
      
      private var §&w§:Point;
      
      private var §;§:int;
      
      public function StarSplash(stageWidth:int, stageHeight:int, posX:Number, posY:Number, starPos:int, starCount:int = 40)
      {
         var star:§1!T§ = null;
         var absX:Number = NaN;
         var absY:Number = NaN;
         super();
         this.§2+§ = stageWidth;
         this.§@O§ = stageHeight;
         var scaleMin:Number = Math.min(§4!T§.§=!_§,§4!T§.§`!Y§);
         var scaleMax:Number = Math.max(§4!T§.§=!_§,§4!T§.§`!Y§);
         posX /= §4!T§.§`!Y§;
         posY /= §4!T§.§=!_§;
         this.§;§ = starPos;
         this.§&w§ = new Point(posX,posY);
         this.§#!§ = [];
         this.§<g§ = [];
         for(var i:int = 0; i < starCount; i++)
         {
            star = new §1!T§(Math.random() * 40 + 10);
            star.x = -2000;
            star.y = -2000;
            this.addChild(star);
            this.§#!§[i] = star;
         }
         this.scaleX = scaleMax;
         this.scaleY = scaleMax;
      }
      
      public function clean() : void
      {
         for(var cleanThisStar:§1!T§ = null; this.§#!§.length > 0; )
         {
            cleanThisStar = this.§#!§.shift();
            cleanThisStar.clean();
         }
         while(this.§<g§.length > 0)
         {
            cleanThisStar = this.§<g§.shift();
            cleanThisStar.clean();
         }
         this.§#!§ = [];
         this.§<g§ = [];
      }
      
      public function update(deltaTime:Number) : void
      {
         var deleteFlag:Boolean = false;
         var star:§1!T§ = null;
         var randomVelocity:Number = NaN;
         var randomRadian:Number = NaN;
         var randomVx:Number = NaN;
         var randomVy:Number = NaN;
         var scaleStart:Number = NaN;
         var scaleEnd:Number = NaN;
         var velocityMin:Number = NaN;
         var velocityMax:Number = NaN;
         var splicedStar:Object = null;
         for(deltaTime /= 20; this.§#!§.length > 0; )
         {
            star = this.§#!§.shift();
            randomVelocity = Math.random() * (this.§^!7§ - this.§@!<§) + this.§@!<§;
            if(this.§;§ == STARSPLASH_LEFT)
            {
               randomRadian = -(Math.PI / 2) * Math.random();
               randomVx = Math.sin(randomRadian - Math.PI / 2);
               randomVy = Math.cos(randomRadian - Math.PI / 2);
            }
            else if(this.§;§ == STARSPLASH_CENTER)
            {
               randomRadian = Math.PI * (Math.random() - 0.5) * 0.5;
               randomVx = Math.sin(randomRadian + Math.PI);
               randomVy = Math.cos(randomRadian + Math.PI);
            }
            else if(this.§;§ == STARSPLASH_RIGHT)
            {
               randomRadian = Math.PI / 2 * Math.random();
               randomVx = Math.sin(randomRadian + Math.PI / 2);
               randomVy = Math.cos(randomRadian + Math.PI / 2);
            }
            else if(this.§;§ == STARSPLASH_BADGE)
            {
               randomRadian = Math.PI * (Math.random() - 0.5) * 0.5;
               randomVx = Math.sin(randomRadian + Math.PI);
               randomVy = Math.cos(randomRadian + Math.PI);
               velocityMin = this.§@!<§ / 2;
               velocityMax = this.§^!7§ / 2;
               randomVelocity = Math.random() * (velocityMax - velocityMin) + velocityMin;
            }
            star.§#C§ = randomVx * randomVelocity;
            star.§&i§ = randomVy * randomVelocity;
            star.x = this.§&w§.x;
            star.y = this.§&w§.y;
            this.§<g§.push(star);
            scaleStart = 0.5 + Math.random() * 1.5;
            scaleEnd = 0.2;
            star.§"n§ = TweenManager.§&!'§.§3L§(star,{
               "scaleX":scaleEnd,
               "scaleY":scaleEnd
            },{
               "scaleX":scaleStart,
               "scaleY":scaleStart
            },5);
            star.§"n§.play();
         }
         var len:int = this.§<g§.length;
         for(var i:int = len - 1; i >= 0; )
         {
            deleteFlag = false;
            star = this.§<g§[i];
            star.§&i§ += this.§][§ * deltaTime;
            if(star.§&i§ > this.§2!V§)
            {
               star.§&i§ = this.§2!V§;
            }
            star.x += star.§#C§ * deltaTime;
            star.y += star.§&i§ * deltaTime;
            star.rotation += 5 * deltaTime;
            if(star.x < -star.width / 2)
            {
               deleteFlag = true;
            }
            else if(star.x > this.§2+§ + star.width / 2)
            {
               deleteFlag = true;
            }
            else if(star.y > this.§@O§ + star.height / 2)
            {
               deleteFlag = true;
            }
            if(this.§<g§.length > 0 && deleteFlag)
            {
               splicedStar = this.§<g§.splice(i,1);
               if(splicedStar is §1!T§)
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
