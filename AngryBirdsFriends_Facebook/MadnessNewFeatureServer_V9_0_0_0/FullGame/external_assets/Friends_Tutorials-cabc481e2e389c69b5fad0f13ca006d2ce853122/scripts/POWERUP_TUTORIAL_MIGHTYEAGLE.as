package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   
   public dynamic class POWERUP_TUTORIAL_MIGHTYEAGLE extends MovieClip
   {
       
      
      public function POWERUP_TUTORIAL_MIGHTYEAGLE()
      {
         super();
      }
      
      public function addCollisionParticles(param1:Number, param2:Number, param3:Class = null, param4:Number = 1) : void
      {
         var particleScaleAtLifeTimeValue:Number = NaN;
         var particleFrameFunction:Function = null;
         var particle:MovieClip = null;
         var x:Number = param1;
         var y:Number = param2;
         var particleClass:Class = param3;
         var strength:Number = param4;
         var fromForce:Point = new Point(-2,0);
         var toForce:Point = new Point(2,1);
         var particleCount:Number = 15;
         particleScaleAtLifeTimeValue = 50;
         var defaultParticleClass:Class = IceParticle;
         particleFrameFunction = function(param1:Event):void
         {
            var _loc2_:MovieClip = MovieClip(param1.target);
            if(_loc2_.lifetime <= 0)
            {
               _loc2_.removeEventListener(Event.ENTER_FRAME,particleFrameFunction);
               removeChild(_loc2_);
               return;
            }
            _loc2_.x += _loc2_.force.x;
            _loc2_.y += _loc2_.force.y;
            _loc2_.rotation += _loc2_.rotationForce;
            _loc2_.force.x *= 0.97;
            _loc2_.rotationForce *= 0.98;
            if(_loc2_.lifetime < particleScaleAtLifeTimeValue)
            {
               _loc2_.scaleX = _loc2_.scaleY = _loc2_.lifetime / particleScaleAtLifeTimeValue;
            }
            --_loc2_.lifetime;
         };
         var i:int = 0;
         while(i < particleCount * strength)
         {
            particle = new (particleClass || defaultParticleClass)();
            addChild(particle);
            particle.x = x;
            particle.y = y;
            particle.lifetime = 30 + Math.random() * 20;
            particle.force = new Point(fromForce.x + Math.random() * (toForce.x - fromForce.x),fromForce.y + Math.random() * (toForce.y - fromForce.y));
            particle.rotation = Math.random() * 360;
            particle.rotationForce = Math.random() * 20 - 10;
            particle.addEventListener(Event.ENTER_FRAME,particleFrameFunction);
            i++;
         }
      }
   }
}
