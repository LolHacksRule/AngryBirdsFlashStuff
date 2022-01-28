package §_-Di§
{
   import §_-2F§.§_-F6§;
   import §_-3b§.§_-I1§;
   import §_-3b§.§_-Og§;
   import §_-3b§.§_-Xv§;
   import §_-3t§.§_-J0§;
   import §_-7x§.§_-4O§;
   import §_-7x§.§_-oD§;
   import §_-7x§.§_-oH§;
   import §_-7x§.§_-yE§;
   import §_-E0§.§_-Es§;
   import §_-Ku§.§_-Ha§;
   import §_-SE§.DisplayObject;
   import §_-SE§.Sprite;
   import §_-bA§.b2Vec2;
   import §_-bu§.§_-Yc§;
   import §_-dH§.§_-ds§;
   import §_-dH§.§_-wT§;
   import §_-gM§.§_-yj§;
   import §_-h3§.§_-07§;
   import §_-h3§.§_-EL§;
   import §_-m9§.§_-d7§;
   import §_-pm§.§_-gb§;
   import §_-qb§.§_-a2§;
   import §_-tW§.§_-S5§;
   import §_-tW§.§_-f5§;
   import §_-tW§.§_-lx§;
   import §_-tW§.§_-wS§;
   import §_-ym§.§_-7s§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-ix§
   {
      
      public static const §_-md§:Number = §_-gb§.§ null§;
      
      public static const §_-l3§:Number = §_-gb§.§_-aD§;
      
      public static const §_-z8§:Number = 1 / 20;
      
      public static const §_-Xn§:Number = §_-gb§.§_-aD§ * §_-z8§;
      
      public static const §_-dP§:Number = §_-md§ * §_-z8§;
      
      public static const §case §:§_-F6§ = new §_-F6§(13 - 3);
      
      protected static var §_-Iy§:String = §_-yE§.§_-D3§;
       
      
      protected var §_-nf§:§_-S5§;
      
      private var §_-M6§:§_-lx§;
      
      private var §_-vj§:Array = null;
      
      private var §_-pG§:§_-Es§;
      
      public var §_-v0§:§_-gf§;
      
      private var §_-7k§:§_-58§;
      
      private var §_-qE§:§_-7s§;
      
      private var §null §:§_-pX§;
      
      private var §_-T2§:§_-wT§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §_-el§:Boolean = false;
      
      private var §_-mk§:Boolean = false;
      
      private var §_-NA§:Boolean = false;
      
      public var §_-Dd§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §_-d6§:Number;
      
      public var §_-hS§:Number;
      
      private var §_-ye§:Number;
      
      public var §_-kr§:§_-oD§;
      
      public var §_-9U§:Boolean = false;
      
      private var §_-dC§:§_-iF§;
      
      private var §_-ut§:Sprite;
      
      private var §_-CY§:Vector.<Sprite>;
      
      private var §_-mj§:§_-yE§;
      
      private var §_-0-1§:§_-a2§ = null;
      
      private var §_-EM§:EventDispatcher;
      
      private var §_-PL§:Array;
      
      private var §_-BD§:Array;
      
      private var §_-l2§:§_-Ha§;
      
      private var §_-tJ§:§_-d7§;
      
      private var §_-wI§:§_-Og§;
      
      private var §_-LP§:§_-Xv§;
      
      private var §_-3B§:§_-I1§;
      
      private var §_-6n§:§_-I1§;
      
      private var §_-0c§:§_-I1§;
      
      private var mStage:Stage;
      
      private var §_-C1§:§_-Pm§;
      
      protected var §_-3C§:§_-J0§;
      
      protected var §_-z4§:§_-J0§;
      
      protected var §_-DF§:Number = 0.0;
      
      protected var §_-hM§:String;
      
      private var §_-YV§:Boolean;
      
      private var §_-3j§:Boolean;
      
      private var §_-xs§:Boolean;
      
      private var §_-1F§:uint = 1.417339207E9;
      
      public function §_-ix§(param1:Stage)
      {
         this.§_-BD§ = [];
         super();
         this.§_-EM§ = new EventDispatcher();
         this.§_-kr§ = new §_-oD§();
         this.mStage = param1;
         this.§_-wI§ = §_-Og§.§_-uP§;
         this.§_-LP§ = this.§_-Ad§(this.§_-wI§);
         this.§_-3B§ = this.§_-fQ§();
         this.§_-6n§ = this.§_-A9§();
         this.§_-0c§ = this.§_-Kl§();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§_-l2§ = new §_-Ha§(§_-iF§,param1,new Rectangle(0,0,§_-gb§.§ null§,§_-gb§.§_-aD§),_loc2_);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§_-Ch§,false,0,true);
         this.§_-l2§.§_-bK§ = false;
         this.§_-l2§.enableErrorChecking = false;
         this.§_-l2§.§_-Wm§ = 2;
         this.§_-l2§.§_-Nb§();
      }
      
      public static function §_-iB§(param1:§_-lx§, param2:§_-lx§) : Number
      {
         var _loc3_:Number = param1.§_-PN§ - param2.§_-PN§;
         var _loc4_:Number = param1.§_-gk§ - param2.§_-gk§;
         return §_-pz§(_loc3_,_loc4_);
      }
      
      public static function §_-pz§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§_-ut§ && this.§_-Lm§)
         {
            this.§_-ut§ = this.§_-dC§.§_-LA§;
            if(this.§_-ut§)
            {
               if(§_-Ha§.§_-0E§)
               {
                  this.§_-CY§ = new Vector.<Sprite>();
               }
            }
         }
         return this.§_-ut§;
      }
      
      public function get §_-Lm§() : Sprite
      {
         if(!this.§_-dC§)
         {
            this.§_-dC§ = this.§_-l2§.§_-hO§ as §_-iF§;
            this.§_-dC§.§_-54§ = false;
         }
         return this.§_-dC§;
      }
      
      private function get §_-jX§() : DisplayObject
      {
         if(this.§_-Lm§)
         {
            return (this.§_-Lm§ as §_-iF§).§_-jX§;
         }
         return null;
      }
      
      public function get §_-i1§() : §_-Xv§
      {
         return this.§_-LP§;
      }
      
      public function get §_-G9§() : §_-Og§
      {
         return this.§_-wI§;
      }
      
      public function get camera() : §_-7s§
      {
         return this.§_-qE§;
      }
      
      public function get objects() : §_-S5§
      {
         return this.§_-nf§;
      }
      
      public function get particles() : §_-wT§
      {
         return this.§_-T2§;
      }
      
      public function get background() : §_-Es§
      {
         return this.§_-pG§;
      }
      
      public function get slingshot() : §_-pX§
      {
         return this.§null §;
      }
      
      public function get activeObject() : §_-lx§
      {
         return this.§_-M6§;
      }
      
      public function get §_-Ts§() : §_-58§
      {
         return this.§_-7k§;
      }
      
      public function get stage() : Stage
      {
         return this.mStage;
      }
      
      public function get §_-nG§() : §_-I1§
      {
         return this.§_-0c§;
      }
      
      protected function get §_-iG§() : §_-I1§
      {
         return this.§_-3B§;
      }
      
      public function set activeObject(param1:§_-lx§) : void
      {
         this.§_-M6§ = param1;
      }
      
      public function set §_-U-§(param1:Boolean) : void
      {
         this.§_-3j§ = param1;
      }
      
      protected function §_-fQ§() : §_-I1§
      {
         return null;
      }
      
      protected function §_-A9§() : §_-I1§
      {
         return null;
      }
      
      protected function §_-Kl§() : §_-I1§
      {
         return null;
      }
      
      protected function §_-Ad§(param1:§_-Og§) : §_-Xv§
      {
         return new §_-Xv§(param1);
      }
      
      public function §_-2L§(param1:Boolean) : void
      {
         if(§_-Ha§.§_-Aq§)
         {
            if(param1)
            {
               §_-Ha§.§_-Aq§.start();
            }
            else
            {
               §_-Ha§.§_-Aq§.stop();
               §_-Ha§.§_-Aq§.color = 0;
            }
         }
      }
      
      public function §_-gS§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function §_-A§(param1:§_-a2§) : void
      {
         if(this.§_-0-1§ != null)
         {
            this.§_-0-1§.removeEventListeners();
         }
         this.§_-0-1§ = param1;
         if(this.mReadyToRun)
         {
            this.§_-0-1§.addEventListeners();
         }
      }
      
      public function §_-Bg§() : §_-J0§
      {
         return this.§_-3C§;
      }
      
      public function §_-8V§(param1:§_-d7§, param2:Array, param3:Function) : void
      {
         this.§_-tJ§ = param1;
         var _loc4_:int = this.§_-tJ§.§_-lr§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§_-wI§.§_-Xf§(this.§_-tJ§.§_-QD§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§_-EM§.addEventListener(Event.INIT,param3);
            this.§_-BD§.push(param3);
         }
         if(this.§_-3g§(param2))
         {
            this.§_-9j§();
         }
      }
      
      private function §_-3g§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§_-wI§.§_-42§())
         {
            _loc2_ = this.§_-wI§.§_-Zz§ / 1000;
            _loc3_ = this.§_-wI§.§_-Mk§ / 1000;
            §_-yj§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.§_-Ep§(param1);
            return true;
         }
         this.§_-PL§ = param1.concat();
         return false;
      }
      
      private function §_-Ep§(param1:Array) : void
      {
         this.§_-LP§.§_-Ep§(param1);
      }
      
      private function §_-Ch§(param1:Event) : void
      {
         this.§_-wI§.§_-sd§();
         if(this.§_-iG§ && this.§_-iG§.§_-G9§)
         {
            this.§_-iG§.§_-G9§.§_-sd§();
         }
         if(this.§_-nG§ && this.§_-nG§.§_-G9§)
         {
            this.§_-nG§.§_-G9§.§_-sd§();
         }
         if(this.§_-PL§)
         {
            this.§_-3g§(this.§_-PL§);
            this.§_-PL§ = null;
            this.§_-9j§();
         }
         if(this.§_-0-1§ != null && this.mReadyToRun)
         {
            this.§_-0-1§.addEventListeners();
         }
         if(this.§_-3B§)
         {
            this.§_-3B§.§_-42§();
         }
         if(this.§_-0c§)
         {
            if(this.§_-0c§.§_-G9§)
            {
               this.§_-0c§.§_-G9§.§_-sd§();
               this.§_-0c§.§_-42§();
            }
         }
      }
      
      private function §_-9j§() : void
      {
         this.§_-EM§.dispatchEvent(new Event(Event.INIT));
         this.§_-W7§();
      }
      
      private function §_-W7§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§_-BD§)
         {
            this.§_-EM§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§_-BD§ = [];
      }
      
      public function init(param1:§_-yE§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§_-7k§ = new §_-58§(this,param1);
         this.§_-qE§ = this.§_-86§(param1);
         this.§_-d6§ = 0;
         this.§_-hS§ = 0;
         this.§_-ye§ = 0;
         this.§_-YV§ = false;
         this.mReadyToRun = false;
         this.§_-el§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §_-Iy§ = param1.§_-9Q§;
         this.§_-mj§ = param1;
         this.§_-mk§ = this.§_-0Q§(param1.§_-9Q§);
         this.§_-NA§ = this.§_-k1§(param1.§_-9Q§);
         if(this.§_-mk§ && this.§_-NA§)
         {
            this.§_-xS§(param1);
         }
         else
         {
            this.§_-Yx§(param1.§_-9Q§);
         }
         this.§_-cK§();
         §_-3w§.init();
      }
      
      protected function §_-cK§() : void
      {
         this.§_-3C§ = new §_-J0§(§_-4O§.§_-FH§);
      }
      
      protected function §_-0Q§(param1:String) : Boolean
      {
         if(this.§_-3B§)
         {
            return false;
         }
         return true;
      }
      
      protected function §_-k1§(param1:String) : Boolean
      {
         var _loc2_:§_-07§ = null;
         if(this.§_-6n§)
         {
            _loc2_ = §_-EL§.§_-fN§(param1);
            if(_loc2_)
            {
               if(!this.§_-6n§.§_-BT§(_loc2_.§_-IK§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §_-Yx§(param1:String) : void
      {
         var _loc2_:§_-07§ = null;
         if(this.§_-3B§ && !this.§_-0Q§(param1))
         {
            this.§_-3B§.removeEventListener(Event.COMPLETE,this.§_-Ey§);
            this.§_-3B§.removeEventListener(Event.CANCEL,this.§_-kX§);
            this.§_-3B§.addEventListener(Event.COMPLETE,this.§_-Ey§);
            this.§_-3B§.addEventListener(Event.CANCEL,this.§_-kX§);
            this.§_-3B§.§_-0W§(param1);
         }
         if(this.§_-6n§ && !this.§_-k1§(param1))
         {
            this.§_-6n§.removeEventListener(Event.COMPLETE,this.§_-iK§);
            this.§_-6n§.removeEventListener(Event.CANCEL,this.§_-ck§);
            this.§_-6n§.addEventListener(Event.COMPLETE,this.§_-iK§);
            this.§_-6n§.addEventListener(Event.CANCEL,this.§_-ck§);
            _loc2_ = §_-EL§.§_-fN§(param1);
            if(_loc2_)
            {
               this.§_-6n§.§_-0W§(_loc2_.§_-IK§);
            }
         }
      }
      
      private function §_-Ey§(param1:Event) : void
      {
         this.§_-3B§.removeEventListener(Event.COMPLETE,this.§_-Ey§);
         this.§_-3B§.removeEventListener(Event.CANCEL,this.§_-kX§);
         this.§_-mk§ = true;
         if(this.§_-mk§ && this.§_-NA§)
         {
            this.§_-xS§(this.§_-mj§);
         }
      }
      
      private function §_-kX§(param1:Event) : void
      {
         this.§_-3B§.removeEventListener(Event.COMPLETE,this.§_-Ey§);
         this.§_-3B§.removeEventListener(Event.CANCEL,this.§_-kX§);
         this.§_-el§ = true;
      }
      
      private function §_-iK§(param1:Event) : void
      {
         this.§_-3B§.removeEventListener(Event.COMPLETE,this.§_-iK§);
         this.§_-3B§.removeEventListener(Event.CANCEL,this.§_-ck§);
         this.§_-NA§ = true;
         if(this.§_-mk§ && this.§_-NA§)
         {
            this.§_-xS§(this.§_-mj§);
         }
      }
      
      private function §_-ck§(param1:Event) : void
      {
         this.§_-3B§.removeEventListener(Event.COMPLETE,this.§_-iK§);
         this.§_-3B§.removeEventListener(Event.CANCEL,this.§_-ck§);
         this.§_-NA§ = true;
         if(this.§_-mk§ && this.§_-NA§)
         {
            this.§_-xS§(this.§_-mj§);
         }
      }
      
      public function get §_-Km§() : §_-Og§
      {
         return this.§_-wI§;
      }
      
      private function §_-xS§(param1:§_-yE§) : void
      {
         this.§_-3j§ = false;
         this.§_-xs§ = false;
         if(§_-Ha§.§for §)
         {
            §_-Ha§.§for §.speed = 1;
         }
         this.§_-v0§ = new §_-gf§(this);
         this.§_-pG§ = this.§_-Ez§(param1.§_-9Q§,this.§_-7k§.§_-p7§ / §_-z8§,this.§_-Km§,this.§_-qE§.§_-0T§());
         this.§_-pG§.§_-ki§(§_-gb§.§_-kS§());
         this.§_-nf§ = this.§_-5C§(param1);
         this.§null § = this.§_-ga§(param1);
         this.§_-T2§ = new §_-wT§(this.§_-LP§,this.§_-wI§);
         this.§_-qE§.init();
         this.§_-7O§();
         this.§_-Fu§();
         this.mReadyToRun = true;
         if(this.§_-0-1§)
         {
            this.§_-0-1§.addEventListeners();
         }
      }
      
      protected function §_-Fu§() : void
      {
         if(this.§_-hM§)
         {
            this.§_-z4§ = §_-J0§.§_-xS§(this.§_-hM§);
            this.§_-z4§.speed = 1;
            this.§_-z4§.play();
            this.§_-DF§ = -1000;
            this.§_-hM§ = null;
         }
      }
      
      public function §_-fm§(param1:String) : void
      {
         this.§_-hM§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§_-z4§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§_-z4§)
         {
            if(param1)
            {
               this.§_-z4§.speed = Math.min(this.§_-z4§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§_-z4§.speed = Math.max(this.§_-z4§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§_-z4§)
         {
            this.§_-z4§.speed = 1;
         }
      }
      
      protected function §_-5C§(param1:§_-yE§) : §_-S5§
      {
         return new §_-S5§(this,param1,new Sprite());
      }
      
      protected function §_-86§(param1:§_-yE§) : §_-7s§
      {
         return new §_-7s§(this,param1);
      }
      
      protected function §_-Ez§(param1:String, param2:Number, param3:§_-Og§, param4:Number) : §_-Es§
      {
         return new §_-Es§(param1,param2,param3,param4);
      }
      
      protected function §_-ga§(param1:§_-yE§) : §_-pX§
      {
         return new §_-pX§(this,param1,new Sprite());
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = true) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§_-yE§ = new §_-yE§();
         _loc3_.§_-pW§ = -12;
         var _loc4_:§_-oH§;
         (_loc4_ = new §_-oH§()).left = 0;
         _loc4_.top = -§_-7s§.§_-SG§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §_-7s§.§_-SG§;
         _loc4_.right = _loc4_.left + §_-7s§.§_-eh§;
         _loc4_.y = -13.929;
         _loc4_.x = §_-7s§.§_-eh§;
         _loc4_.id = §_-7s§.§_-gR§;
         _loc3_.§_-o9§.push(_loc4_);
         var _loc5_:§_-oH§;
         (_loc5_ = new §_-oH§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §_-7s§.§_-eh§;
         _loc5_.bottom = _loc5_.top + §_-7s§.§_-SG§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §_-7s§.§_-eh§ / 2;
         _loc5_.id = §_-7s§.§_-Ps§;
         _loc3_.§_-o9§.push(_loc5_);
         if(param2)
         {
            this.§_-Z8§(_loc3_);
         }
         if(param1 != null)
         {
            _loc3_.§_-9Q§ = param1;
         }
         else if(§_-Iy§ != null)
         {
            _loc3_.§_-9Q§ = §_-Iy§;
         }
         this.init(_loc3_);
      }
      
      private function §_-Zl§() : Number
      {
         this.§_-1F§ ^= this.§_-1F§ << 21;
         this.§_-1F§ ^= this.§_-1F§ >>> 35;
         this.§_-1F§ ^= this.§_-1F§ << 4;
         return this.§_-1F§ * (1 / uint.MAX_VALUE);
      }
      
      private function §_-Z8§(param1:§_-yE§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§_-Yc§ = null;
         this.§_-1F§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§_-Zl§() * 5;
               (_loc5_ = new §_-Yc§()).x = 30 + _loc3_ * 10 + this.§_-Zl§() * 9;
               if(_loc2_ == 0)
               {
                  _loc5_.y = 0;
                  if(_loc3_ == 1 || _loc3_ == 2 || _loc3_ == 4)
                  {
                     _loc5_.id = "PIG_MUSTACHE";
                  }
                  else
                  {
                     _loc5_.id = "PIG_HELMET";
                  }
                  _loc5_.angle = 45 - this.§_-Zl§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§_-Zl§() * 3 - _loc3_ * 8;
                  if((_loc4_ = (_loc3_ * _loc3_ + _loc2_ * _loc3_ + _loc2_) % 5) < 2)
                  {
                     _loc5_.id = "BIRD_RED";
                  }
                  else if(_loc4_ == 3)
                  {
                     _loc5_.id = "BIRD_YELLOW";
                  }
                  else
                  {
                     _loc5_.id = "BIRD_BLUE";
                  }
                  _loc5_.angle = this.§_-Zl§() * 360;
               }
               param1.§_-dD§.push(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §_-P6§() : void
      {
      }
      
      public function §_-7O§() : void
      {
         if(§_-Es§.§_-rj§)
         {
            this.§_-jo§(this.§_-pG§.§_-89§,false);
         }
         this.§_-jo§(this.§_-T2§.§_-6h§(§_-wT§.§_-g7§),false);
         this.§_-jo§(this.§_-T2§.§_-6h§(§_-wT§.§_-uY§),true);
         this.§_-jo§(this.§_-T2§.§_-6h§(§_-wT§.§_-Fi§),true);
         this.§_-jo§(this.§_-nf§.§_-eA§,true);
         this.§_-jo§(this.§null §.sprite,true);
         this.§_-jo§(this.§_-T2§.§_-6h§(§_-wT§.§_-Kz§),true);
         this.§_-jo§(this.§_-pG§.§_-u8§,false);
         if(§_-Es§.§_-rj§)
         {
            this.§_-jo§(this.§_-pG§.§_-rs§,false);
         }
         this.§_-jo§(this.§_-T2§.§_-6h§(§_-wT§.§_-HN§),true);
         if(!§_-gf§.§_-5y§)
         {
         }
      }
      
      private function §_-jo§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
         if(param2 && this.§_-CY§)
         {
            this.§_-CY§.push(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §_-gb§.§_-EZ§;
         param2 /= §_-gb§.§_-EZ§;
         _loc3_.x = (param1 / §_-7s§.§_-ng§ + this.§_-qE§.§_-dz§ - §_-7s§.§_-4P§ / §_-7s§.§_-ng§) * §_-z8§;
         _loc3_.y = (param2 / §_-7s§.§_-ng§ + this.§_-qE§.§_-qJ§ - §_-7s§.§_-2a§ / §_-7s§.§_-ng§) * §_-z8§;
         return _loc3_;
      }
      
      public function §_-jN§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §_-z8§ + §_-7s§.§_-4P§ / §_-7s§.§_-ng§ - this.§_-qE§.§_-dz§) * §_-7s§.§_-ng§;
         _loc3_.y = (param2 / §_-z8§ + §_-7s§.§_-2a§ / §_-7s§.§_-ng§ - this.§_-qE§.§_-qJ§) * §_-7s§.§_-ng§;
         _loc3_.x *= §_-gb§.§_-lv§;
         _loc3_.y *= §_-gb§.§_-lv§;
         return _loc3_;
      }
      
      public function §_-4T§(param1:String, param2:Number, param3:Number) : void
      {
         this.§_-nf§.§_-ZA§(param1,param2,param3);
      }
      
      public function §_-gL§() : void
      {
         if(this.§_-jX§)
         {
            this.§_-jX§.visible = true;
            this.§_-jX§.alpha = 0;
         }
         this.§_-Dd§ = 0;
      }
      
      public function §_-Dw§() : void
      {
         this.§_-C1§ = new §_-Pm§(§_-nT§.§_-GJ§,§_-nT§.§_-GZ§);
      }
      
      public function §_-VM§() : void
      {
         this.§_-C1§ = null;
      }
      
      public function clearLevel() : void
      {
         var _loc1_:Sprite = null;
         if(this.§_-pG§)
         {
            this.§_-pG§.dispose();
            this.§_-pG§ = null;
         }
         if(this.§_-nf§)
         {
            this.§_-nf§.dispose();
            this.§_-nf§ = null;
            this.§_-M6§ = null;
         }
         if(this.§_-CY§)
         {
            for each(_loc1_ in this.§_-CY§)
            {
               _loc1_.dispose();
            }
            this.§_-CY§ = new Vector.<Sprite>();
         }
         if(this.§_-v0§)
         {
            if(!this.§_-v0§.§_-xt§)
            {
            }
            this.§_-v0§.clear();
            this.§_-v0§ = null;
         }
         if(this.§_-7k§)
         {
            this.§_-7k§.clear();
            this.§_-7k§ = null;
         }
         if(this.§null §)
         {
            this.§null §.dispose();
            this.§null § = null;
         }
         if(this.§_-qE§)
         {
            this.§_-qE§.clear();
            this.§_-qE§ = null;
         }
         if(this.§_-T2§)
         {
            this.§_-T2§.dispose();
            this.§_-T2§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§_-d6§ = 0;
         this.§_-hS§ = 0;
         this.mReadyToRun = false;
         this.§_-YV§ = false;
         this.§_-Dd§ = §_-nT§.§_-vu§;
         if(this.§_-Lm§)
         {
            (this.§_-Lm§ as §_-iF§).§_-cn§.x = 0;
            (this.§_-Lm§ as §_-iF§).§_-cn§.y = 0;
         }
         if(this.§_-jX§)
         {
            this.§_-jX§.visible = false;
         }
         this.§_-z4§ = null;
         this.§_-3C§ = null;
         if(this.§_-3B§)
         {
            this.§_-3B§.removeEventListener(Event.COMPLETE,this.§_-Ey§);
            this.§_-3B§.removeEventListener(Event.CANCEL,this.§_-kX§);
         }
         if(this.§_-6n§)
         {
            this.§_-6n§.removeEventListener(Event.COMPLETE,this.§_-iK§);
            this.§_-6n§.removeEventListener(Event.CANCEL,this.§_-ck§);
         }
         this.§_-W7§();
         if(§_-Ha§.§_-Aq§)
         {
            §_-Ha§.§_-Aq§.color = 0;
         }
         if(this.§_-0-1§)
         {
            this.§_-0-1§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function §_-DO§() : String
      {
         if(this.§_-3C§)
         {
            return this.§_-3C§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§_-Ha§.§_-97§())
         {
            return 0;
         }
         if(this.§_-z4§ && this.§_-z4§.§_-jk§)
         {
            return this.§_-2v§(param1,param2,param3);
         }
         return this.§_-nX§(param1,true,param2,param3);
      }
      
      protected function §_-nX§(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§_-3j§)
         {
            param1 *= 0.2;
            if(§_-Ha§.§for §)
            {
               §_-Ha§.§for §.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§_-hS§ += param1;
         if(param3)
         {
            this.§_-d6§ += param1;
            _loc5_ = this.§_-v0§.§_-bS§(this.§_-d6§);
            this.§null §.update(param1,param4);
            this.§_-d6§ = _loc5_;
         }
         else
         {
            this.§_-nf§.§_-bU§();
            this.§_-d6§ = 0;
         }
         if(param2)
         {
            this.§_-5F§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §_-2v§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §_-gf§.§_-sK§ * 1000;
         if(this.§_-z4§)
         {
            param1 *= this.§_-z4§.speed;
            _loc5_ = this.§_-hS§ + param1;
            while(this.§_-hS§ + _loc4_ < _loc5_)
            {
               if(this.§_-hS§ + _loc4_ > this.§_-DF§)
               {
                  this.§_-z4§.step(this);
                  this.§_-DF§ += _loc4_;
               }
               this.§_-nX§(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§_-DF§ + _loc4_)
            {
               this.§_-z4§.step(this);
               this.§_-DF§ += _loc4_;
            }
            if(this.§_-hS§ < _loc5_)
            {
               this.§_-nX§(_loc5_ - this.§_-hS§,true,param2,param3);
            }
            return param1;
         }
         return this.§_-nX§(_loc4_,true,param2,param3);
      }
      
      private function §_-5F§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Sprite = null;
         this.§_-pG§.update(param1);
         this.§_-nf§.§_-Vt§(param1,param2);
         this.§_-Wz§();
         if(this.§_-Dd§ < §_-nT§.§_-vu§)
         {
            this.§_-Dd§ += param1;
            _loc3_ = §_-nT§.§_-vu§ / 2;
            _loc4_ = (-Math.abs(this.§_-Dd§ - _loc3_) + _loc3_) * (§_-nT§.§_-o4§ / _loc3_);
            if(this.§_-jX§)
            {
               this.§_-jX§.alpha = _loc4_;
            }
         }
         else if(this.§_-jX§)
         {
            this.§_-jX§.visible = false;
         }
         if(this.§_-C1§)
         {
            if(!this.§_-C1§.§_-S-§(this.§_-qE§,param1))
            {
               this.§_-VM§();
            }
         }
         this.§_-qE§.§_-1E§(param1);
         this.§_-v0§.§_-7p§();
         this.§_-T2§.update(param1);
         if(this.§_-CY§)
         {
            for each(_loc5_ in this.§_-CY§)
            {
               _loc5_.flatten();
            }
         }
      }
      
      public function §_-jh§(param1:Number) : void
      {
         this.objects.§_-bU§();
         this.objects.§_-FK§(param1 * 1000);
         this.§_-qc§();
      }
      
      public function §_-Wz§() : void
      {
         var _loc1_:§_-lx§ = null;
         if(this.§_-hS§ > this.§_-ye§ + 1000 / 30)
         {
            if(this.§_-vj§ != null)
            {
               for each(_loc1_ in this.§_-vj§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§_-ye§ = this.§_-hS§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§_-lx§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§_-nf§.isPigsAlive(true))
            {
               _loc2_ = this.§_-nf§.§_-Su§(true);
               _loc2_.§_-bV§.mTryToScream = §_-wS§.§_-Ma§;
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§_-nf§.§_-9D§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§_-nf§.isPigsAlive(true))
            {
               _loc2_ = this.§_-nf§.§_-Su§(true);
               _loc2_.§_-bV§.mTryToBlink = §_-wS§.§_-DA§;
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§_-nf§.§_-9D§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §_-ds§.§_-NY§;
         }
         §_-3w§.addScore(param1,param2);
         this.§_-0-1§.addScore(param1);
         if(param3 && param1 > 0 && !this.§_-xs§)
         {
            this.§_-QE§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §_-QE§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §_-ds§.§_-00§;
         }
         this.§_-T2§.§_-Kw§(§_-ds§.§_-VD§,§_-wT§.§_-HN§,§_-ds§.§_-J5§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §_-a8§(param1:§_-lx§) : void
      {
         if(this.§_-vj§ == null)
         {
            this.§_-vj§ = new Array();
         }
         this.§_-vj§.push(param1);
      }
      
      public function §_-WB§() : void
      {
         this.§null §.§_-WB§();
         this.§_-nf§.mSardineCanAdded = true;
         this.§_-xs§ = true;
      }
      
      public function §_-9d§(param1:§_-lx§) : void
      {
         this.§_-T2§.§_-Jf§(§_-wT§.§_-g7§);
         if(this.§_-vj§.indexOf(param1) >= 0)
         {
            this.§_-vj§.splice(this.§_-vj§.indexOf(param1),1);
         }
         if(this.§_-vj§.length == 0)
         {
            this.§_-vj§ = null;
         }
      }
      
      public function §_-5T§(param1:§_-aX§, param2:Number, param3:Number) : void
      {
         this.§_-M6§ = this.§_-nf§.§_-ZA§(param1.name,param1.mX,param1.mY,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§_-pX§.§_-te§) : Number(§_-pX§.§_-15§);
         if(param1.§_-pc§ > 1)
         {
            this.§_-M6§.§_-IP§(param1.§_-pc§);
            this.§_-M6§.§_-bV§.§_-p4§();
         }
         if(param1.§_-3o§ != 0)
         {
            _loc4_ = param1.§_-3o§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§_-M6§.§_-BQ§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§_-A7§(§_-7s§.§_-C5§);
         if(this.§_-3C§)
         {
            this.§_-3C§.§_-5T§(this.§_-v0§.§_-sL§,param1.mX,param1.mY,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§_-YV§ = true;
      }
      
      private function §_-qc§() : void
      {
         if(!this.§_-YV§)
         {
            return;
         }
         this.§_-YV§ = false;
         if(this.activeObject is §_-f5§ && !(this.activeObject as §_-f5§).§_-dv§)
         {
            if(this.activeObject.activateSpecialPower(this.§_-of§))
            {
               this.§_-9U§ = true;
            }
         }
         else
         {
            this.§_-nf§.§_-uI§();
         }
         if(this.§_-3C§)
         {
            this.§_-3C§.§_-aA§(this.§_-v0§.§_-sL§);
         }
      }
      
      public function §_-B§() : void
      {
         this.§_-nf§.§_-B§();
      }
      
      public function §_-hl§() : void
      {
         this.§_-nf§.§_-ND§();
      }
      
      public function §_-DQ§() : §_-yE§
      {
         var _loc1_:§_-yE§ = new §_-yE§();
         this.§_-qE§.§_-lu§(_loc1_);
         this.§_-nf§.§_-4D§(_loc1_);
         this.§null §.§_-qR§(_loc1_);
         _loc1_.§_-9Q§ = this.§_-pG§.§_-0b§();
         return _loc1_;
      }
      
      public function §_-68§(param1:Number, param2:Number) : void
      {
         if(this.§_-dC§)
         {
            this.§_-dC§.§_-Hc§(param1,param2);
         }
      }
      
      public function get §_-of§() : §_-S5§
      {
         return this.§_-nf§;
      }
   }
}
