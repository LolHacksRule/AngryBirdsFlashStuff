package §_-Nq§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class § for§ extends EventDispatcher implements §_-eI§
   {
       
      
      private var §_-EY§:Object;
      
      private var §_-d1§:String;
      
      private var §_-8P§:Vector.<String>;
      
      private var §_-IR§:Vector.<Number>;
      
      private var §_-0-y§:Vector.<Number>;
      
      private var §_-BB§:Function;
      
      private var §_-04V§:Function;
      
      private var §_-9L§:Function;
      
      private var §_-HC§:Array;
      
      private var §_-02h§:Array;
      
      private var §_-GA§:Array;
      
      private var §_-hV§:Number;
      
      private var §_-Pe§:Number;
      
      private var §_-kv§:Number;
      
      private var §_-fo§:Boolean;
      
      public function § for§(param1:Object, param2:Number, param3:String = "linear")
      {
         super();
         this.§_-EY§ = param1;
         this.§_-Pe§ = 0;
         this.§_-hV§ = Math.max(0.0001,param2);
         this.§_-kv§ = 0;
         this.§_-d1§ = param3;
         this.§_-fo§ = false;
         this.§_-8P§ = new Vector.<String>(0);
         this.§_-IR§ = new Vector.<Number>(0);
         this.§_-0-y§ = new Vector.<Number>(0);
      }
      
      public function §_-Ao§(param1:String, param2:Number) : void
      {
         if(this.§_-EY§ == null)
         {
            return;
         }
         this.§_-8P§.push(param1);
         this.§_-IR§.push(Number.NaN);
         this.§_-0-y§.push(param2);
      }
      
      public function §_-Xq§(param1:Number) : void
      {
         this.§_-Ao§("scaleX",param1);
         this.§_-Ao§("scaleY",param1);
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.§_-Ao§("x",param1);
         this.§_-Ao§("y",param2);
      }
      
      public function §_-Hm§(param1:Number) : void
      {
         this.§_-Ao§("alpha",param1);
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Function = null;
         var _loc10_:Number = NaN;
         if(param1 == 0)
         {
            return;
         }
         var _loc2_:Number = this.§_-Pe§;
         this.§_-Pe§ += param1;
         if(this.§_-Pe§ < 0 || _loc2_ >= this.§_-hV§)
         {
            return;
         }
         if(this.§_-HT§ != null && _loc2_ <= 0 && this.§_-Pe§ >= 0)
         {
            this.§_-HT§.apply(null,this.§_-HC§);
         }
         var _loc3_:Number = Math.min(this.§_-hV§,this.§_-Pe§) / this.§_-hV§;
         var _loc4_:int = this.§_-IR§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(isNaN(this.§_-IR§[_loc5_]))
            {
               this.§_-IR§[_loc5_] = this.§_-EY§[this.§_-8P§[_loc5_]] as Number;
            }
            _loc6_ = this.§_-IR§[_loc5_];
            _loc8_ = (_loc7_ = this.§_-0-y§[_loc5_]) - _loc6_;
            _loc9_ = §_-0CC§.§_-uB§(this.§_-d1§);
            _loc10_ = _loc6_ + _loc9_(_loc3_) * _loc8_;
            if(this.§_-fo§)
            {
               _loc10_ = Math.round(_loc10_);
            }
            this.§_-EY§[this.§_-8P§[_loc5_]] = _loc10_;
            _loc5_++;
         }
         if(this.§_-AD§ != null)
         {
            this.§_-AD§.apply(null,this.§_-02h§);
         }
         if(_loc2_ < this.§_-hV§ && this.§_-Pe§ >= this.§_-hV§)
         {
            dispatchEvent(new Event(Event.§_-rC§));
            if(this.onComplete != null)
            {
               this.onComplete.apply(null,this.§_-GA§);
            }
         }
      }
      
      public function get §_-yF§() : Boolean
      {
         return this.§_-Pe§ >= this.§_-hV§;
      }
      
      public function get target() : Object
      {
         return this.§_-EY§;
      }
      
      public function get §_-030§() : String
      {
         return this.§_-d1§;
      }
      
      public function get §_-8f§() : Number
      {
         return this.§_-hV§;
      }
      
      public function get §_-Ms§() : Number
      {
         return this.§_-Pe§;
      }
      
      public function get delay() : Number
      {
         return this.§_-kv§;
      }
      
      public function set delay(param1:Number) : void
      {
         this.§_-Pe§ = this.§_-Pe§ + this.§_-kv§ - param1;
         this.§_-kv§ = param1;
      }
      
      public function get §_-46§() : Boolean
      {
         return this.§_-fo§;
      }
      
      public function set §_-46§(param1:Boolean) : void
      {
         this.§_-fo§ = param1;
      }
      
      public function get §_-HT§() : Function
      {
         return this.§_-BB§;
      }
      
      public function set §_-HT§(param1:Function) : void
      {
         this.§_-BB§ = param1;
      }
      
      public function get §_-AD§() : Function
      {
         return this.§_-04V§;
      }
      
      public function set §_-AD§(param1:Function) : void
      {
         this.§_-04V§ = param1;
      }
      
      public function get onComplete() : Function
      {
         return this.§_-9L§;
      }
      
      public function set onComplete(param1:Function) : void
      {
         this.§_-9L§ = param1;
      }
      
      public function get §_-089§() : Array
      {
         return this.§_-HC§;
      }
      
      public function set §_-089§(param1:Array) : void
      {
         this.§_-HC§ = param1;
      }
      
      public function get §_-oI§() : Array
      {
         return this.§_-02h§;
      }
      
      public function set §_-oI§(param1:Array) : void
      {
         this.§_-02h§ = param1;
      }
      
      public function get §_-yv§() : Array
      {
         return this.§_-GA§;
      }
      
      public function set §_-yv§(param1:Array) : void
      {
         this.§_-GA§ = param1;
      }
   }
}
