package §_-T5§
{
   import §_-h2§.§_-CC§;
   import §_-h2§.§_-Q0§;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.utils.getTimer;
   
   public class §_-c7§ implements §_-CC§
   {
      
      private static var §_-4E§:Shape = new Shape();
       
      
      private var §_-qD§:Vector.<§_-Q0§>;
      
      private var §_-2H§:uint = 0;
      
      private var §_-6e§:Number;
      
      private var §_-L1§:§_-Q0§ = null;
      
      public function §_-c7§()
      {
         var _loc3_:§_-Q0§ = null;
         super();
         this.§_-qD§ = new Vector.<§_-Q0§>(10,true);
         var _loc1_:§_-Q0§ = null;
         var _loc2_:uint = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = new §_-Q0§();
            if(_loc1_ != null)
            {
               _loc1_.§_-tL§ = _loc3_;
               _loc3_.§_-l3§ = _loc1_;
            }
            _loc1_ = _loc3_;
            this.§_-qD§[_loc2_] = _loc3_;
            _loc2_++;
         }
      }
      
      function update(param1:Event) : void
      {
         var _loc2_:Number = this.§_-6e§ = getTimer() / 1000;
         var _loc3_:uint = 8 - this.§_-2H§ % 8;
         var _loc4_:§_-Q0§ = this.§_-qD§[0];
         var _loc5_:§_-Q0§ = this.§_-qD§[_loc3_];
         var _loc6_:§_-Q0§ = null;
         if((_loc5_.§_-tL§ = this.§_-L1§) != null)
         {
            this.§_-L1§.§_-l3§ = _loc5_;
         }
         while(_loc4_.§_-tL§ != null)
         {
            if((_loc4_ = _loc4_.§_-tL§).tick(_loc2_))
            {
               if(_loc4_.§_-l3§ != null)
               {
                  _loc4_.§_-l3§.§_-tL§ = _loc4_.§_-tL§;
               }
               if(_loc4_.§_-tL§ != null)
               {
                  _loc4_.§_-tL§.§_-l3§ = _loc4_.§_-l3§;
               }
               _loc6_ = _loc4_.§_-l3§;
               _loc4_.§_-tL§ = null;
               _loc4_.§_-l3§ = null;
               _loc4_ = _loc6_;
               --this.§_-2H§;
            }
            if((_loc4_ = _loc4_.§_-tL§).tick(_loc2_))
            {
               if(_loc4_.§_-l3§ != null)
               {
                  _loc4_.§_-l3§.§_-tL§ = _loc4_.§_-tL§;
               }
               if(_loc4_.§_-tL§ != null)
               {
                  _loc4_.§_-tL§.§_-l3§ = _loc4_.§_-l3§;
               }
               _loc6_ = _loc4_.§_-l3§;
               _loc4_.§_-tL§ = null;
               _loc4_.§_-l3§ = null;
               _loc4_ = _loc6_;
               --this.§_-2H§;
            }
            if((_loc4_ = _loc4_.§_-tL§).tick(_loc2_))
            {
               if(_loc4_.§_-l3§ != null)
               {
                  _loc4_.§_-l3§.§_-tL§ = _loc4_.§_-tL§;
               }
               if(_loc4_.§_-tL§ != null)
               {
                  _loc4_.§_-tL§.§_-l3§ = _loc4_.§_-l3§;
               }
               _loc6_ = _loc4_.§_-l3§;
               _loc4_.§_-tL§ = null;
               _loc4_.§_-l3§ = null;
               _loc4_ = _loc6_;
               --this.§_-2H§;
            }
            if((_loc4_ = _loc4_.§_-tL§).tick(_loc2_))
            {
               if(_loc4_.§_-l3§ != null)
               {
                  _loc4_.§_-l3§.§_-tL§ = _loc4_.§_-tL§;
               }
               if(_loc4_.§_-tL§ != null)
               {
                  _loc4_.§_-tL§.§_-l3§ = _loc4_.§_-l3§;
               }
               _loc6_ = _loc4_.§_-l3§;
               _loc4_.§_-tL§ = null;
               _loc4_.§_-l3§ = null;
               _loc4_ = _loc6_;
               --this.§_-2H§;
            }
            if((_loc4_ = _loc4_.§_-tL§).tick(_loc2_))
            {
               if(_loc4_.§_-l3§ != null)
               {
                  _loc4_.§_-l3§.§_-tL§ = _loc4_.§_-tL§;
               }
               if(_loc4_.§_-tL§ != null)
               {
                  _loc4_.§_-tL§.§_-l3§ = _loc4_.§_-l3§;
               }
               _loc6_ = _loc4_.§_-l3§;
               _loc4_.§_-tL§ = null;
               _loc4_.§_-l3§ = null;
               _loc4_ = _loc6_;
               --this.§_-2H§;
            }
            if((_loc4_ = _loc4_.§_-tL§).tick(_loc2_))
            {
               if(_loc4_.§_-l3§ != null)
               {
                  _loc4_.§_-l3§.§_-tL§ = _loc4_.§_-tL§;
               }
               if(_loc4_.§_-tL§ != null)
               {
                  _loc4_.§_-tL§.§_-l3§ = _loc4_.§_-l3§;
               }
               _loc6_ = _loc4_.§_-l3§;
               _loc4_.§_-tL§ = null;
               _loc4_.§_-l3§ = null;
               _loc4_ = _loc6_;
               --this.§_-2H§;
            }
            if((_loc4_ = _loc4_.§_-tL§).tick(_loc2_))
            {
               if(_loc4_.§_-l3§ != null)
               {
                  _loc4_.§_-l3§.§_-tL§ = _loc4_.§_-tL§;
               }
               if(_loc4_.§_-tL§ != null)
               {
                  _loc4_.§_-tL§.§_-l3§ = _loc4_.§_-l3§;
               }
               _loc6_ = _loc4_.§_-l3§;
               _loc4_.§_-tL§ = null;
               _loc4_.§_-l3§ = null;
               _loc4_ = _loc6_;
               --this.§_-2H§;
            }
            if((_loc4_ = _loc4_.§_-tL§).tick(_loc2_))
            {
               if(_loc4_.§_-l3§ != null)
               {
                  _loc4_.§_-l3§.§_-tL§ = _loc4_.§_-tL§;
               }
               if(_loc4_.§_-tL§ != null)
               {
                  _loc4_.§_-tL§.§_-l3§ = _loc4_.§_-l3§;
               }
               _loc6_ = _loc4_.§_-l3§;
               _loc4_.§_-tL§ = null;
               _loc4_.§_-l3§ = null;
               _loc4_ = _loc6_;
               --this.§_-2H§;
            }
         }
         if((this.§_-L1§ = _loc5_.§_-tL§) != null)
         {
            this.§_-L1§.§_-l3§ = null;
         }
         _loc5_.§_-tL§ = this.§_-qD§[_loc3_ + 1];
      }
      
      public function start() : void
      {
         this.§_-6e§ = getTimer() / 1000;
         §_-4E§.addEventListener(Event.ENTER_FRAME,this.update);
      }
      
      public function §_-7k§(param1:§_-Q0§) : void
      {
         var _loc2_:§_-Q0§ = this.§_-L1§;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc2_.§_-l3§ != null)
               {
                  _loc2_.§_-l3§.§_-tL§ = _loc2_.§_-tL§;
                  _loc2_.§_-tL§ = null;
               }
               else
               {
                  this.§_-L1§ = _loc2_.§_-tL§;
               }
               if(_loc2_.§_-tL§ != null)
               {
                  _loc2_.§_-tL§.§_-l3§ = _loc2_.§_-l3§;
                  _loc2_.§_-l3§ = null;
               }
               --this.§_-2H§;
            }
            _loc2_ = _loc2_.§_-tL§;
         }
      }
      
      public function get time() : Number
      {
         return this.§_-6e§;
      }
      
      public function stop() : void
      {
         §_-4E§.removeEventListener(Event.ENTER_FRAME,this.update);
      }
      
      public function §_-kf§(param1:§_-Q0§) : void
      {
         if(param1.§_-tL§ != null || param1.§_-l3§ != null)
         {
            return;
         }
         if(this.§_-L1§ != null)
         {
            if(this.§_-L1§.§_-l3§ != null)
            {
               this.§_-L1§.§_-l3§.§_-tL§ = param1;
               param1.§_-l3§ = this.§_-L1§.§_-l3§;
            }
            param1.§_-tL§ = this.§_-L1§;
            this.§_-L1§.§_-l3§ = param1;
         }
         this.§_-L1§ = param1;
         ++this.§_-2H§;
      }
   }
}
