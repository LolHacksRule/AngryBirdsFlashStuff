package §]!O§
{
   import flash.display.Sprite;
   import flash.events.TimerEvent;
   import flash.geom.ColorTransform;
   import flash.media.SoundMixer;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   
   public class §^?§ extends Sprite
   {
      
      public static const §%"6§:uint = 4;
      
      public static const §finally§:uint = 25;
      
      private static const §<2§:uint = 30;
      
      private static var §#W§:uint = 1;
      
      private static var §9!x§:uint = 2;
      
      private static var §1m§:uint = 256;
       
      
      private var §#!I§:uint;
      
      private var §5u§:int;
      
      private var §&u§:int;
      
      private var §#w§:int;
      
      private var §8!F§:uint;
      
      private var §2""§:Array;
      
      private var §^"F§:Timer = null;
      
      private var §for§:ByteArray;
      
      private var §1"2§:uint;
      
      private var §9!o§:Number = 0;
      
      private var §!!j§:Boolean;
      
      public function §^?§(param1:int, param2:uint, param3:uint, param4:uint)
      {
         super();
         this.§#!I§ = param1;
         this.§8!F§ = this.§?"@§(param2,param3,param4);
         this.§5u§ = param2;
         this.§#w§ = param4;
         this.§&u§ = param3;
         this.§1"2§ = uint(§1m§ / this.§#!I§);
         this.draw();
      }
      
      public function §?"@§(param1:uint, param2:uint, param3:uint) : uint
      {
         var _loc4_:ColorTransform;
         (_loc4_ = new ColorTransform()).redOffset = param1;
         _loc4_.greenOffset = param2;
         _loc4_.blueOffset = param3;
         return _loc4_.color;
      }
      
      private function draw() : void
      {
         var _loc2_:§17§ = null;
         this.§2""§ = new Array();
         var _loc1_:uint = 0;
         while(_loc1_ < this.§#!I§)
         {
            this.§#w§ -= 2;
            this.§&u§ -= 2;
            this.§5u§ -= 2;
            this.§8!F§ = this.§?"@§(this.§5u§,this.§&u§,this.§#w§);
            _loc2_ = new §17§(§%"6§,§finally§,this.§8!F§);
            addChild(_loc2_);
            _loc2_.x = -(§%"6§ + §#W§) * this.§#!I§ / 2 + (§%"6§ + §#W§) * _loc1_;
            _loc2_.y = 0;
            this.§2""§.push(_loc2_);
            _loc1_++;
         }
         this.§for§ = new ByteArray();
      }
      
      public function start() : void
      {
         if(this.§^"F§ == null)
         {
            this.§^"F§ = new Timer(§<2§);
            this.§^"F§.addEventListener(TimerEvent.TIMER,this.update,false,0,true);
            this.§^"F§.start();
         }
         this.§!!j§ = true;
      }
      
      public function stop() : void
      {
         var _loc2_:§17§ = null;
         this.§!!j§ = false;
         var _loc1_:uint = 0;
         while(_loc1_ < this.§#!I§)
         {
            _loc2_ = this.§2""§[_loc1_];
            _loc2_.update(0);
            _loc1_++;
         }
         this.reset();
      }
      
      public function update(param1:TimerEvent) : void
      {
         var indicator:§17§ = null;
         var percent:Number = NaN;
         var evt:TimerEvent = param1;
         try
         {
            SoundMixer.computeSpectrum(this.§for§,true,this.§1"2§);
         }
         catch(err:Error)
         {
            return;
         }
         var n:uint = 0;
         while(n < this.§#!I§)
         {
            indicator = this.§2""§[n];
            this.§for§.position = this.§1"2§ * 4 * n;
            percent = this.§for§.readFloat();
            if(percent > 0.91)
            {
               dispatchEvent(new §#!i§(§#!i§.§`";§));
            }
            if(this.§!!j§)
            {
               indicator.update(percent);
            }
            else
            {
               indicator.update(0);
            }
            n++;
         }
      }
      
      public function reset() : void
      {
         var _loc2_:§17§ = null;
         var _loc1_:uint = 0;
         while(_loc1_ < this.§#!I§)
         {
            _loc2_ = this.§2""§[_loc1_];
            _loc2_.reset();
            _loc1_++;
         }
      }
   }
}
