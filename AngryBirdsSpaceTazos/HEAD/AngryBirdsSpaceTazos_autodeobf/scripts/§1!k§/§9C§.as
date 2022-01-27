package §1!k§
{
   import flash.display.Sprite;
   import flash.events.TimerEvent;
   import flash.geom.ColorTransform;
   import flash.media.SoundMixer;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   
   public class §9C§ extends Sprite
   {
      
      public static const §>n§:uint = 4;
      
      public static const §+"9§:uint = 25;
      
      private static const §>U§:uint = 30;
      
      private static var §>!M§:uint = 1;
      
      private static var § if§:uint = 2;
      
      private static var §@^§:uint = 256;
       
      
      private var §>T§:uint;
      
      private var § D§:int;
      
      private var §=!b§:int;
      
      private var §16§:int;
      
      private var §^!6§:uint;
      
      private var §01§:Array;
      
      private var §;!2§:Timer = null;
      
      private var §?W§:ByteArray;
      
      private var §"W§:uint;
      
      private var §?9§:Number = 0;
      
      private var §set §:Boolean;
      
      public function §9C§(param1:int, param2:uint, param3:uint, param4:uint)
      {
         super();
         this.§>T§ = param1;
         this.§^!6§ = this.final(param2,param3,param4);
         this.§ D§ = param2;
         this.§16§ = param4;
         this.§=!b§ = param3;
         this.§"W§ = uint(§@^§ / this.§>T§);
         this.draw();
      }
      
      public function final(param1:uint, param2:uint, param3:uint) : uint
      {
         var _loc4_:ColorTransform;
         (_loc4_ = new ColorTransform()).redOffset = param1;
         _loc4_.greenOffset = param2;
         _loc4_.blueOffset = param3;
         return _loc4_.color;
      }
      
      private function draw() : void
      {
         var _loc2_:§]!E§ = null;
         this.§01§ = new Array();
         var _loc1_:uint = 0;
         while(_loc1_ < this.§>T§)
         {
            this.§16§ -= 2;
            this.§=!b§ -= 2;
            this.§ D§ -= 2;
            this.§^!6§ = this.final(this.§ D§,this.§=!b§,this.§16§);
            _loc2_ = new §]!E§(§>n§,§+"9§,this.§^!6§);
            addChild(_loc2_);
            _loc2_.x = -(§>n§ + §>!M§) * this.§>T§ / 2 + (§>n§ + §>!M§) * _loc1_;
            _loc2_.y = 0;
            this.§01§.push(_loc2_);
            _loc1_++;
         }
         this.§?W§ = new ByteArray();
      }
      
      public function start() : void
      {
         if(this.§;!2§ == null)
         {
            this.§;!2§ = new Timer(§>U§);
            this.§;!2§.addEventListener(TimerEvent.TIMER,this.update,false,0,true);
            this.§;!2§.start();
         }
         this.§set § = true;
      }
      
      public function stop() : void
      {
         var _loc2_:§]!E§ = null;
         this.§set § = false;
         var _loc1_:uint = 0;
         while(_loc1_ < this.§>T§)
         {
            _loc2_ = this.§01§[_loc1_];
            _loc2_.update(0);
            _loc1_++;
         }
         this.reset();
      }
      
      public function update(param1:TimerEvent) : void
      {
         var indicator:§]!E§ = null;
         var percent:Number = NaN;
         var evt:TimerEvent = param1;
         try
         {
            SoundMixer.computeSpectrum(this.§?W§,true,this.§"W§);
         }
         catch(err:Error)
         {
            return;
         }
         var n:uint = 0;
         while(n < this.§>T§)
         {
            indicator = this.§01§[n];
            this.§?W§.position = this.§"W§ * 4 * n;
            percent = this.§?W§.readFloat();
            if(percent > 0.91)
            {
               dispatchEvent(new §'!5§(§'!5§.§54§));
            }
            if(this.§set §)
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
         var _loc2_:§]!E§ = null;
         var _loc1_:uint = 0;
         while(_loc1_ < this.§>T§)
         {
            _loc2_ = this.§01§[_loc1_];
            _loc2_.reset();
            _loc1_++;
         }
      }
   }
}
