package §_-mu§
{
   import §_-FQ§.§_-7W§;
   import flash.system.Capabilities;
   
   public class §_-CO§
   {
      
      private static const §_-Iw§:String = "@@";
      
      private static const §_-qA§:String = "@";
       
      
      private var §_-U§:String;
      
      private var §_-tY§:int;
      
      private var §_-Sm§:Number;
      
      private var §_-vC§:int;
      
      private var §_-Va§:int;
      
      private var §_-2y§:Number;
      
      private var §_-pQ§:Boolean;
      
      private var §_-ec§:Vector.<§_-wW§>;
      
      private var §_-F2§:Vector.<§_-uq§>;
      
      private var §_-Rz§:int;
      
      private var §_-Ep§:int;
      
      public function §_-CO§(param1:String)
      {
         this.§_-ec§ = new Vector.<§_-wW§>();
         this.§_-F2§ = new Vector.<§_-uq§>();
         super();
         this.§_-U§ = param1;
      }
      
      public static function §_-UD§(param1:String) : §_-CO§
      {
         var _loc2_:§_-CO§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§_-wW§ = null;
         var _loc9_:§_-uq§ = null;
         var _loc3_:Array = param1.split(§_-Iw§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §_-CO§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§_-qA§);
            _loc5_ = _loc3_[2].split(§_-qA§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §_-wW§.§_-UD§(_loc6_))
               {
                  _loc2_.§_-ec§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §_-uq§.§_-UD§(_loc7_))
               {
                  _loc2_.§_-F2§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §_-54§() : Boolean
      {
         return this.§_-pQ§;
      }
      
      public function get §_-c9§() : String
      {
         return this.§_-U§;
      }
      
      public function set §_-Dg§(param1:int) : void
      {
         this.§_-Sm§ = 1;
         this.§_-vC§ = param1;
         this.§_-Va§ = 1;
      }
      
      public function set §_-TV§(param1:int) : void
      {
         this.§_-Sm§ = param1;
         this.§_-vC§ = 1;
         this.§_-Va§ = param1;
      }
      
      public function get §_-Dg§() : int
      {
         return this.§_-vC§;
      }
      
      public function get §_-TV§() : int
      {
         return this.§_-Va§;
      }
      
      private function get §_-Po§() : int
      {
         return Math.round(this.§_-tY§ / this.§_-Sm§);
      }
      
      public function §_-yu§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§_-pQ§)
         {
            this.§_-ec§.push(new §_-wW§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §_-s5§(param1:int) : void
      {
         if(!this.§_-pQ§)
         {
            if(this.§_-F2§.length > 0)
            {
               if(this.§_-F2§[this.§_-F2§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§_-F2§.push(new §_-uq§(param1));
         }
      }
      
      public function play() : void
      {
         this.§_-pQ§ = true;
      }
      
      public function step(param1:§_-7W§) : void
      {
         var _loc2_:§_-wW§ = null;
         var _loc3_:§_-uq§ = null;
         if(this.§_-ec§.length > this.§_-Rz§)
         {
            _loc2_ = this.§_-ec§[this.§_-Rz§];
            if(_loc2_.step == this.§_-Po§)
            {
               param1.mLevelSlingshot.§_-CM§(_loc2_.x,_loc2_.y,_loc2_.§_-ZK§,_loc2_.angle);
               ++this.§_-Rz§;
            }
         }
         if(this.§_-F2§.length > this.§_-Ep§)
         {
            _loc3_ = this.§_-F2§[this.§_-Ep§];
            if(_loc3_.step == this.§_-Po§)
            {
               param1.activatePowerup();
               ++this.§_-Ep§;
            }
         }
         ++this.§_-tY§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§_-U§ + §_-Iw§ + this.§_-yy§() + §_-Iw§ + this.§_-m0§());
      }
      
      private function §_-yy§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§_-ec§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-ec§.length)
         {
            _loc1_ += §_-qA§;
            _loc1_ += this.§_-ec§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §_-m0§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§_-F2§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-F2§.length)
         {
            _loc1_ += §_-qA§;
            _loc1_ += this.§_-F2§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
