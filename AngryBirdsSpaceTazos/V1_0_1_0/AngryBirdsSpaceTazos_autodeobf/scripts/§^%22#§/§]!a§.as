package §^"#§
{
   import flash.display.Sprite;
   import flash.events.TimerEvent;
   import flash.geom.ColorTransform;
   import flash.media.SoundMixer;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   
   public class §]!a§ extends Sprite
   {
      
      public static const §[0§:uint = 4;
      
      public static const § "§:uint = 25;
      
      private static const §5!q§:uint = 30;
      
      private static var §04§:uint = 1;
      
      private static var §6"!§:uint = 2;
      
      private static var §8"0§:uint = 256;
       
      
      private var §^!0§:uint;
      
      private var §6"D§:int;
      
      private var §<%§:int;
      
      private var §6"%§:int;
      
      private var §4"%§:uint;
      
      private var §`7§:Array;
      
      private var §&Q§:Timer = null;
      
      private var §#",§:ByteArray;
      
      private var §6!U§:uint;
      
      private var §=+§:Number = 0;
      
      private var §+!!§:Boolean;
      
      public function §]!a§(param1:int, param2:uint, param3:uint, param4:uint)
      {
         super();
         this.§^!0§ = param1;
         this.§4"%§ = this.§1g§(param2,param3,param4);
         this.§6"D§ = param2;
         this.§6"%§ = param4;
         this.§<%§ = param3;
         this.§6!U§ = uint(§8"0§ / this.§^!0§);
         this.draw();
      }
      
      public function §1g§(param1:uint, param2:uint, param3:uint) : uint
      {
         var _loc4_:ColorTransform;
         (_loc4_ = new ColorTransform()).redOffset = param1;
         _loc4_.greenOffset = param2;
         _loc4_.blueOffset = param3;
         return _loc4_.color;
      }
      
      private function draw() : void
      {
         var _loc2_:§'#§ = null;
         this.§`7§ = new Array();
         var _loc1_:uint = 0;
         while(_loc1_ < this.§^!0§)
         {
            this.§6"%§ -= 2;
            this.§<%§ -= 2;
            this.§6"D§ -= 2;
            this.§4"%§ = this.§1g§(this.§6"D§,this.§<%§,this.§6"%§);
            _loc2_ = new §'#§(§[0§,§ "§,this.§4"%§);
            addChild(_loc2_);
            _loc2_.x = -(§[0§ + §04§) * this.§^!0§ / 2 + (§[0§ + §04§) * _loc1_;
            _loc2_.y = 0;
            this.§`7§.push(_loc2_);
            _loc1_++;
         }
         this.§#",§ = new ByteArray();
      }
      
      public function start() : void
      {
         if(this.§&Q§ == null)
         {
            this.§&Q§ = new Timer(§5!q§);
            this.§&Q§.addEventListener(TimerEvent.TIMER,this.update,false,0,true);
            this.§&Q§.start();
         }
         this.§+!!§ = true;
      }
      
      public function stop() : void
      {
         var _loc2_:§'#§ = null;
         this.§+!!§ = false;
         var _loc1_:uint = 0;
         while(_loc1_ < this.§^!0§)
         {
            _loc2_ = this.§`7§[_loc1_];
            _loc2_.update(0);
            _loc1_++;
         }
         this.reset();
      }
      
      public function update(param1:TimerEvent) : void
      {
         var indicator:§'#§ = null;
         var percent:Number = NaN;
         var evt:TimerEvent = param1;
         try
         {
            SoundMixer.computeSpectrum(this.§#",§,true,this.§6!U§);
         }
         catch(err:Error)
         {
            return;
         }
         var n:uint = 0;
         while(n < this.§^!0§)
         {
            indicator = this.§`7§[n];
            this.§#",§.position = this.§6!U§ * 4 * n;
            percent = this.§#",§.readFloat();
            if(percent > 0.91)
            {
               dispatchEvent(new § f§(§ f§.§%@§));
            }
            if(this.§+!!§)
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
         var _loc2_:§'#§ = null;
         var _loc1_:uint = 0;
         while(_loc1_ < this.§^!0§)
         {
            _loc2_ = this.§`7§[_loc1_];
            _loc2_.reset();
            _loc1_++;
         }
      }
   }
}
