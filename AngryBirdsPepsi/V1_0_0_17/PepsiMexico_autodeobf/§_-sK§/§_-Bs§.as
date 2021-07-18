package §_-sK§
{
   import §_-OJ§.§_-tL§;
   import flash.system.Capabilities;
   
   public class §_-Bs§
   {
      
      private static const §_-am§:String = "@@";
      
      private static const §_-fB§:String = "@";
       
      
      private var §_-1v§:String;
      
      private var §_-Zk§:int;
      
      private var §_-80§:Number;
      
      private var §_-c0§:Number;
      
      private var §_-k3§:Boolean;
      
      private var §_-vm§:Vector.<§_-fz§>;
      
      private var §_-Of§:Vector.<§_-Nr§>;
      
      private var §_-YK§:int;
      
      private var §_-yR§:int;
      
      public function §_-Bs§(param1:String)
      {
         this.§_-vm§ = new Vector.<§_-fz§>();
         this.§_-Of§ = new Vector.<§_-Nr§>();
         super();
         this.§_-1v§ = param1;
         this.§_-80§ = 1;
      }
      
      public static function §_-oA§(param1:String) : §_-Bs§
      {
         var _loc2_:§_-Bs§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§_-fz§ = null;
         var _loc9_:§_-Nr§ = null;
         var _loc3_:Array = param1.split(§_-am§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §_-Bs§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§_-fB§);
            _loc5_ = _loc3_[2].split(§_-fB§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §_-fz§.§_-oA§(_loc6_))
               {
                  _loc2_.§_-vm§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §_-Nr§.§_-oA§(_loc7_))
               {
                  _loc2_.§_-Of§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §_-Z§() : Boolean
      {
         return this.§_-k3§;
      }
      
      public function get §_-za§() : String
      {
         return this.§_-1v§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§_-80§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§_-80§;
      }
      
      private function get §_-mv§() : int
      {
         return this.§_-Zk§;
      }
      
      public function §_-cQ§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§_-k3§)
         {
            this.§_-vm§.push(new §_-fz§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §_-HX§(param1:int) : void
      {
         if(!this.§_-k3§)
         {
            if(this.§_-Of§.length > 0)
            {
               if(this.§_-Of§[this.§_-Of§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§_-Of§.push(new §_-Nr§(param1));
         }
      }
      
      public function play() : void
      {
         this.§_-k3§ = true;
      }
      
      public function step(param1:§_-tL§) : void
      {
         var _loc2_:§_-fz§ = null;
         var _loc3_:§_-Nr§ = null;
         if(this.§_-vm§.length > this.§_-YK§)
         {
            _loc2_ = this.§_-vm§[this.§_-YK§];
            if(_loc2_.step == this.§_-mv§)
            {
               param1.slingshot.§_-0-§(_loc2_.x,_loc2_.y,_loc2_.§_-OS§,_loc2_.angle);
               ++this.§_-YK§;
            }
         }
         if(this.§_-Of§.length > this.§_-yR§)
         {
            _loc3_ = this.§_-Of§[this.§_-yR§];
            if(_loc3_.step == this.§_-mv§)
            {
               param1.activatePowerup();
               ++this.§_-yR§;
            }
         }
         ++this.§_-Zk§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§_-1v§ + §_-am§ + this.§_-bF§() + §_-am§ + this.§_-oJ§());
      }
      
      private function §_-bF§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§_-vm§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-vm§.length)
         {
            _loc1_ += §_-fB§;
            _loc1_ += this.§_-vm§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §_-oJ§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§_-Of§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-Of§.length)
         {
            _loc1_ += §_-fB§;
            _loc1_ += this.§_-Of§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
