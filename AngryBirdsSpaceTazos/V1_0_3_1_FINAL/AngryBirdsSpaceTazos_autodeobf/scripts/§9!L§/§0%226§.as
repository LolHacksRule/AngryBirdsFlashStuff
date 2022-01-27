package §9!L§
{
   import flash.display.Sprite;
   import flash.events.TimerEvent;
   import flash.geom.ColorTransform;
   import flash.media.SoundMixer;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   
   public class §0"6§ extends Sprite
   {
      
      public static const §-!O§:uint = 4;
      
      public static const §68§:uint = 25;
      
      private static const §?r§:uint = 30;
      
      private static var §4f§:uint = 1;
      
      private static var §0M§:uint = 2;
      
      private static var §>!_§:uint = 256;
       
      
      private var §#b§:uint;
      
      private var §?!Z§:int;
      
      private var §1!=§:int;
      
      private var § !4§:int;
      
      private var §]"<§:uint;
      
      private var §&@§:Array;
      
      private var §@!q§:Timer = null;
      
      private var §@!;§:ByteArray;
      
      private var §6"4§:uint;
      
      private var §1"A§:Number = 0;
      
      private var §?w§:Boolean;
      
      public function §0"6§(param1:int, param2:uint, param3:uint, param4:uint)
      {
         super();
         this.§#b§ = param1;
         this.§]"<§ = this.§63§(param2,param3,param4);
         this.§?!Z§ = param2;
         this.§ !4§ = param4;
         this.§1!=§ = param3;
         this.§6"4§ = uint(§>!_§ / this.§#b§);
         this.draw();
      }
      
      public function §63§(param1:uint, param2:uint, param3:uint) : uint
      {
         var _loc4_:ColorTransform;
         (_loc4_ = new ColorTransform()).redOffset = param1;
         _loc4_.greenOffset = param2;
         _loc4_.blueOffset = param3;
         return _loc4_.color;
      }
      
      private function draw() : void
      {
         var _loc2_:§#! § = null;
         this.§&@§ = new Array();
         var _loc1_:uint = 0;
         while(_loc1_ < this.§#b§)
         {
            this.§ !4§ -= 2;
            this.§1!=§ -= 2;
            this.§?!Z§ -= 2;
            this.§]"<§ = this.§63§(this.§?!Z§,this.§1!=§,this.§ !4§);
            _loc2_ = new §#! §(§-!O§,§68§,this.§]"<§);
            addChild(_loc2_);
            _loc2_.x = -(§-!O§ + §4f§) * this.§#b§ / 2 + (§-!O§ + §4f§) * _loc1_;
            _loc2_.y = 0;
            this.§&@§.push(_loc2_);
            _loc1_++;
         }
         this.§@!;§ = new ByteArray();
      }
      
      public function start() : void
      {
         if(this.§@!q§ == null)
         {
            this.§@!q§ = new Timer(§?r§);
            this.§@!q§.addEventListener(TimerEvent.TIMER,this.update,false,0,true);
            this.§@!q§.start();
         }
         this.§?w§ = true;
      }
      
      public function stop() : void
      {
         var _loc2_:§#! § = null;
         this.§?w§ = false;
         var _loc1_:uint = 0;
         while(_loc1_ < this.§#b§)
         {
            _loc2_ = this.§&@§[_loc1_];
            _loc2_.update(0);
            _loc1_++;
         }
         this.reset();
      }
      
      public function update(param1:TimerEvent) : void
      {
         var indicator:§#! § = null;
         var percent:Number = NaN;
         var evt:TimerEvent = param1;
         try
         {
            SoundMixer.computeSpectrum(this.§@!;§,true,this.§6"4§);
         }
         catch(err:Error)
         {
            return;
         }
         var n:uint = 0;
         while(n < this.§#b§)
         {
            indicator = this.§&@§[n];
            this.§@!;§.position = this.§6"4§ * 4 * n;
            percent = this.§@!;§.readFloat();
            if(percent > 0.91)
            {
               dispatchEvent(new §3!W§(§3!W§.§"T§));
            }
            if(this.§?w§)
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
         var _loc2_:§#! § = null;
         var _loc1_:uint = 0;
         while(_loc1_ < this.§#b§)
         {
            _loc2_ = this.§&@§[_loc1_];
            _loc2_.reset();
            _loc1_++;
         }
      }
   }
}
