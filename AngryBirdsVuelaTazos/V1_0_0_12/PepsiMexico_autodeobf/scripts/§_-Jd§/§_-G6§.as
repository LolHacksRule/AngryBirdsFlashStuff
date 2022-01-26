package §_-Jd§
{
   import §_-Ou§.§_-DP§;
   import §_-Ou§.§_-mV§;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.utils.getTimer;
   
   public class §_-G6§ implements §_-DP§
   {
      
      private static var §_-nS§:Shape = new Shape();
       
      
      private var §_-WY§:Vector.<§_-mV§>;
      
      private var §_-m-§:uint = 0;
      
      private var §_-AF§:Number;
      
      private var §_-na§:§_-mV§ = null;
      
      public function §_-G6§()
      {
         var _loc3_:§_-mV§ = null;
         super();
         this.§_-WY§ = new Vector.<§_-mV§>(10,true);
         var _loc1_:§_-mV§ = null;
         var _loc2_:uint = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = new §_-mV§();
            if(_loc1_ != null)
            {
               _loc1_.§_-fs§ = _loc3_;
               _loc3_.§_-nw§ = _loc1_;
            }
            _loc1_ = _loc3_;
            this.§_-WY§[_loc2_] = _loc3_;
            _loc2_++;
         }
      }
      
      function update(param1:Event) : void
      {
         var _loc2_:Number = this.§_-AF§ = getTimer() / 1000;
         var _loc3_:uint = 8 - this.§_-m-§ % 8;
         var _loc4_:§_-mV§ = this.§_-WY§[0];
         var _loc5_:§_-mV§ = this.§_-WY§[_loc3_];
         var _loc6_:§_-mV§ = null;
         if((_loc5_.§_-fs§ = this.§_-na§) != null)
         {
            this.§_-na§.§_-nw§ = _loc5_;
         }
         while(_loc4_.§_-fs§ != null)
         {
            if((_loc4_ = _loc4_.§_-fs§).tick(_loc2_))
            {
               if(_loc4_.§_-nw§ != null)
               {
                  _loc4_.§_-nw§.§_-fs§ = _loc4_.§_-fs§;
               }
               if(_loc4_.§_-fs§ != null)
               {
                  _loc4_.§_-fs§.§_-nw§ = _loc4_.§_-nw§;
               }
               _loc6_ = _loc4_.§_-nw§;
               _loc4_.§_-fs§ = null;
               _loc4_.§_-nw§ = null;
               _loc4_ = _loc6_;
               --this.§_-m-§;
            }
            if((_loc4_ = _loc4_.§_-fs§).tick(_loc2_))
            {
               if(_loc4_.§_-nw§ != null)
               {
                  _loc4_.§_-nw§.§_-fs§ = _loc4_.§_-fs§;
               }
               if(_loc4_.§_-fs§ != null)
               {
                  _loc4_.§_-fs§.§_-nw§ = _loc4_.§_-nw§;
               }
               _loc6_ = _loc4_.§_-nw§;
               _loc4_.§_-fs§ = null;
               _loc4_.§_-nw§ = null;
               _loc4_ = _loc6_;
               --this.§_-m-§;
            }
            if((_loc4_ = _loc4_.§_-fs§).tick(_loc2_))
            {
               if(_loc4_.§_-nw§ != null)
               {
                  _loc4_.§_-nw§.§_-fs§ = _loc4_.§_-fs§;
               }
               if(_loc4_.§_-fs§ != null)
               {
                  _loc4_.§_-fs§.§_-nw§ = _loc4_.§_-nw§;
               }
               _loc6_ = _loc4_.§_-nw§;
               _loc4_.§_-fs§ = null;
               _loc4_.§_-nw§ = null;
               _loc4_ = _loc6_;
               --this.§_-m-§;
            }
            if((_loc4_ = _loc4_.§_-fs§).tick(_loc2_))
            {
               if(_loc4_.§_-nw§ != null)
               {
                  _loc4_.§_-nw§.§_-fs§ = _loc4_.§_-fs§;
               }
               if(_loc4_.§_-fs§ != null)
               {
                  _loc4_.§_-fs§.§_-nw§ = _loc4_.§_-nw§;
               }
               _loc6_ = _loc4_.§_-nw§;
               _loc4_.§_-fs§ = null;
               _loc4_.§_-nw§ = null;
               _loc4_ = _loc6_;
               --this.§_-m-§;
            }
            if((_loc4_ = _loc4_.§_-fs§).tick(_loc2_))
            {
               if(_loc4_.§_-nw§ != null)
               {
                  _loc4_.§_-nw§.§_-fs§ = _loc4_.§_-fs§;
               }
               if(_loc4_.§_-fs§ != null)
               {
                  _loc4_.§_-fs§.§_-nw§ = _loc4_.§_-nw§;
               }
               _loc6_ = _loc4_.§_-nw§;
               _loc4_.§_-fs§ = null;
               _loc4_.§_-nw§ = null;
               _loc4_ = _loc6_;
               --this.§_-m-§;
            }
            if((_loc4_ = _loc4_.§_-fs§).tick(_loc2_))
            {
               if(_loc4_.§_-nw§ != null)
               {
                  _loc4_.§_-nw§.§_-fs§ = _loc4_.§_-fs§;
               }
               if(_loc4_.§_-fs§ != null)
               {
                  _loc4_.§_-fs§.§_-nw§ = _loc4_.§_-nw§;
               }
               _loc6_ = _loc4_.§_-nw§;
               _loc4_.§_-fs§ = null;
               _loc4_.§_-nw§ = null;
               _loc4_ = _loc6_;
               --this.§_-m-§;
            }
            if((_loc4_ = _loc4_.§_-fs§).tick(_loc2_))
            {
               if(_loc4_.§_-nw§ != null)
               {
                  _loc4_.§_-nw§.§_-fs§ = _loc4_.§_-fs§;
               }
               if(_loc4_.§_-fs§ != null)
               {
                  _loc4_.§_-fs§.§_-nw§ = _loc4_.§_-nw§;
               }
               _loc6_ = _loc4_.§_-nw§;
               _loc4_.§_-fs§ = null;
               _loc4_.§_-nw§ = null;
               _loc4_ = _loc6_;
               --this.§_-m-§;
            }
            if((_loc4_ = _loc4_.§_-fs§).tick(_loc2_))
            {
               if(_loc4_.§_-nw§ != null)
               {
                  _loc4_.§_-nw§.§_-fs§ = _loc4_.§_-fs§;
               }
               if(_loc4_.§_-fs§ != null)
               {
                  _loc4_.§_-fs§.§_-nw§ = _loc4_.§_-nw§;
               }
               _loc6_ = _loc4_.§_-nw§;
               _loc4_.§_-fs§ = null;
               _loc4_.§_-nw§ = null;
               _loc4_ = _loc6_;
               --this.§_-m-§;
            }
         }
         if((this.§_-na§ = _loc5_.§_-fs§) != null)
         {
            this.§_-na§.§_-nw§ = null;
         }
         _loc5_.§_-fs§ = this.§_-WY§[_loc3_ + 1];
      }
      
      public function start() : void
      {
         this.§_-AF§ = getTimer() / 1000;
         §_-nS§.addEventListener(Event.ENTER_FRAME,this.update);
      }
      
      public function §_-f0§(param1:§_-mV§) : void
      {
         var _loc2_:§_-mV§ = this.§_-na§;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc2_.§_-nw§ != null)
               {
                  _loc2_.§_-nw§.§_-fs§ = _loc2_.§_-fs§;
                  _loc2_.§_-fs§ = null;
               }
               else
               {
                  this.§_-na§ = _loc2_.§_-fs§;
               }
               if(_loc2_.§_-fs§ != null)
               {
                  _loc2_.§_-fs§.§_-nw§ = _loc2_.§_-nw§;
                  _loc2_.§_-nw§ = null;
               }
               --this.§_-m-§;
            }
            _loc2_ = _loc2_.§_-fs§;
         }
      }
      
      public function get time() : Number
      {
         return this.§_-AF§;
      }
      
      public function stop() : void
      {
         §_-nS§.removeEventListener(Event.ENTER_FRAME,this.update);
      }
      
      public function §_-I0§(param1:§_-mV§) : void
      {
         if(param1.§_-fs§ != null || param1.§_-nw§ != null)
         {
            return;
         }
         if(this.§_-na§ != null)
         {
            if(this.§_-na§.§_-nw§ != null)
            {
               this.§_-na§.§_-nw§.§_-fs§ = param1;
               param1.§_-nw§ = this.§_-na§.§_-nw§;
            }
            param1.§_-fs§ = this.§_-na§;
            this.§_-na§.§_-nw§ = param1;
         }
         this.§_-na§ = param1;
         ++this.§_-m-§;
      }
   }
}
