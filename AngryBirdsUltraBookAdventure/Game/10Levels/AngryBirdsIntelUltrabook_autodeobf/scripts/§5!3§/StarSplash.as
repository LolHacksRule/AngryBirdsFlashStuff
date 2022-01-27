package §5!3§
{
   import §?!O§.TweenManager;
   import §?!Y§.§`S§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class StarSplash extends Sprite
   {
      
      public static const STARSPLASH_LEFT:int = 0;
      
      public static const STARSPLASH_CENTER:int = 1;
      
      public static const STARSPLASH_RIGHT:int = 2;
      
      public static const STARSPLASH_BADGE:int = 3;
       
      
      private const §>y§:uint = 40;
      
      private const §;K§:Number = 0.3;
      
      private const §3"§:Number = 25;
      
      private const §<!#§:Number = 10;
      
      private const §?%§:Number = 9;
      
      private var §,!g§:int;
      
      private var §,K§:int;
      
      private var §=w§:Array;
      
      private var §+!D§:Array;
      
      private var §=!A§:Point;
      
      private var §',§:int;
      
      public function StarSplash(stageWidth:int, stageHeight:int, posX:Number, posY:Number, starPos:int, starCount:int = 40)
      {
         var star:§ !N§ = null;
         var absX:Number = NaN;
         var absY:Number = NaN;
         super();
         this.§,!g§ = stageWidth;
         this.§,K§ = stageHeight;
         var scaleMin:Number = Math.min(§`S§.§4+§,§`S§.§`!A§);
         var scaleMax:Number = Math.max(§`S§.§4+§,§`S§.§`!A§);
         posX /= §`S§.§`!A§;
         posY /= §`S§.§4+§;
         this.§',§ = starPos;
         this.§=!A§ = new Point(posX,posY);
         this.§=w§ = [];
         this.§+!D§ = [];
         for(var i:int = 0; i < starCount; i++)
         {
            star = new § !N§(Math.random() * 40 + 10);
            star.x = -2000;
            star.y = -2000;
            this.addChild(star);
            this.§=w§[i] = star;
         }
         this.scaleX = scaleMax;
         this.scaleY = scaleMax;
      }
      
      public function clean() : void
      {
         for(var cleanThisStar:§ !N§ = null; this.§=w§.length > 0; )
         {
            cleanThisStar = this.§=w§.shift();
            cleanThisStar.clean();
         }
         while(this.§+!D§.length > 0)
         {
            cleanThisStar = this.§+!D§.shift();
            cleanThisStar.clean();
         }
         this.§=w§ = [];
         this.§+!D§ = [];
      }
      
      public function update(deltaTime:Number) : void
      {
         var deleteFlag:Boolean = false;
         var star:§ !N§ = null;
         var randomVelocity:Number = NaN;
         var randomRadian:Number = NaN;
         var randomVx:Number = NaN;
         var randomVy:Number = NaN;
         var scaleStart:Number = NaN;
         var scaleEnd:Number = NaN;
         var velocityMin:Number = NaN;
         var velocityMax:Number = NaN;
         var splicedStar:Object = null;
         for(deltaTime /= 20; this.§=w§.length > 0; )
         {
            star = this.§=w§.shift();
            randomVelocity = Math.random() * (this.§3"§ - this.§<!#§) + this.§<!#§;
            if(this.§',§ == STARSPLASH_LEFT)
            {
               randomRadian = -(Math.PI / 2) * Math.random();
               randomVx = Math.sin(randomRadian - Math.PI / 2);
               randomVy = Math.cos(randomRadian - Math.PI / 2);
            }
            else if(this.§',§ == STARSPLASH_CENTER)
            {
               randomRadian = Math.PI * (Math.random() - 0.5) * 0.5;
               randomVx = Math.sin(randomRadian + Math.PI);
               randomVy = Math.cos(randomRadian + Math.PI);
            }
            else if(this.§',§ == STARSPLASH_RIGHT)
            {
               randomRadian = Math.PI / 2 * Math.random();
               randomVx = Math.sin(randomRadian + Math.PI / 2);
               randomVy = Math.cos(randomRadian + Math.PI / 2);
            }
            else if(this.§',§ == STARSPLASH_BADGE)
            {
               randomRadian = Math.PI * (Math.random() - 0.5) * 0.5;
               randomVx = Math.sin(randomRadian + Math.PI);
               randomVy = Math.cos(randomRadian + Math.PI);
               velocityMin = this.§<!#§ / 2;
               velocityMax = this.§3"§ / 2;
               randomVelocity = Math.random() * (velocityMax - velocityMin) + velocityMin;
            }
            star.§+!;§ = randomVx * randomVelocity;
            star.§>!?§ = randomVy * randomVelocity;
            star.x = this.§=!A§.x;
            star.y = this.§=!A§.y;
            this.§+!D§.push(star);
            scaleStart = 0.5 + Math.random() * 1.5;
            scaleEnd = 0.2;
            star.§#!4§ = TweenManager.§7!E§.§5§(star,{
               "scaleX":scaleEnd,
               "scaleY":scaleEnd
            },{
               "scaleX":scaleStart,
               "scaleY":scaleStart
            },5);
            star.§#!4§.play();
         }
         var len:int = this.§+!D§.length;
         for(var i:int = len - 1; i >= 0; )
         {
            deleteFlag = false;
            star = this.§+!D§[i];
            star.§>!?§ += this.§;K§ * deltaTime;
            if(star.§>!?§ > this.§?%§)
            {
               star.§>!?§ = this.§?%§;
            }
            star.x += star.§+!;§ * deltaTime;
            star.y += star.§>!?§ * deltaTime;
            star.rotation += 5 * deltaTime;
            if(star.x < -star.width / 2)
            {
               deleteFlag = true;
            }
            else if(star.x > this.§,!g§ + star.width / 2)
            {
               deleteFlag = true;
            }
            else if(star.y > this.§,K§ + star.height / 2)
            {
               deleteFlag = true;
            }
            if(this.§+!D§.length > 0 && deleteFlag)
            {
               splicedStar = this.§+!D§.splice(i,1);
               if(splicedStar is § !N§)
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
