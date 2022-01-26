package §_-ST§
{
   import §_-8p§.§_-Zu§;
   import §_-8p§.§_-dW§;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.utils.getTimer;
   
   public class §_-vi§ implements §_-dW§
   {
      
      private static var §_-PO§:Shape = new Shape();
       
      
      private var §_-n9§:Vector.<§_-Zu§>;
      
      private var §_-1-§:uint = 0;
      
      private var §_-cW§:Number;
      
      private var §_-mt§:§_-Zu§ = null;
      
      public function §_-vi§()
      {
         var _loc3_:§_-Zu§ = null;
         super();
         this.§_-n9§ = new Vector.<§_-Zu§>(10,true);
         var _loc1_:§_-Zu§ = null;
         var _loc2_:uint = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = new §_-Zu§();
            if(_loc1_ != null)
            {
               _loc1_.§_-oj§ = _loc3_;
               _loc3_.§_-lp§ = _loc1_;
            }
            _loc1_ = _loc3_;
            this.§_-n9§[_loc2_] = _loc3_;
            _loc2_++;
         }
      }
      
      function update(param1:Event) : void
      {
         var _loc2_:Number = this.§_-cW§ = getTimer() / 1000;
         var _loc3_:uint = 8 - this.§_-1-§ % 8;
         var _loc4_:§_-Zu§ = this.§_-n9§[0];
         var _loc5_:§_-Zu§ = this.§_-n9§[_loc3_];
         var _loc6_:§_-Zu§ = null;
         if((_loc5_.§_-oj§ = this.§_-mt§) != null)
         {
            this.§_-mt§.§_-lp§ = _loc5_;
         }
         while(_loc4_.§_-oj§ != null)
         {
            if((_loc4_ = _loc4_.§_-oj§).tick(_loc2_))
            {
               if(_loc4_.§_-lp§ != null)
               {
                  _loc4_.§_-lp§.§_-oj§ = _loc4_.§_-oj§;
               }
               if(_loc4_.§_-oj§ != null)
               {
                  _loc4_.§_-oj§.§_-lp§ = _loc4_.§_-lp§;
               }
               _loc6_ = _loc4_.§_-lp§;
               _loc4_.§_-oj§ = null;
               _loc4_.§_-lp§ = null;
               _loc4_ = _loc6_;
               --this.§_-1-§;
            }
            if((_loc4_ = _loc4_.§_-oj§).tick(_loc2_))
            {
               if(_loc4_.§_-lp§ != null)
               {
                  _loc4_.§_-lp§.§_-oj§ = _loc4_.§_-oj§;
               }
               if(_loc4_.§_-oj§ != null)
               {
                  _loc4_.§_-oj§.§_-lp§ = _loc4_.§_-lp§;
               }
               _loc6_ = _loc4_.§_-lp§;
               _loc4_.§_-oj§ = null;
               _loc4_.§_-lp§ = null;
               _loc4_ = _loc6_;
               --this.§_-1-§;
            }
            if((_loc4_ = _loc4_.§_-oj§).tick(_loc2_))
            {
               if(_loc4_.§_-lp§ != null)
               {
                  _loc4_.§_-lp§.§_-oj§ = _loc4_.§_-oj§;
               }
               if(_loc4_.§_-oj§ != null)
               {
                  _loc4_.§_-oj§.§_-lp§ = _loc4_.§_-lp§;
               }
               _loc6_ = _loc4_.§_-lp§;
               _loc4_.§_-oj§ = null;
               _loc4_.§_-lp§ = null;
               _loc4_ = _loc6_;
               --this.§_-1-§;
            }
            if((_loc4_ = _loc4_.§_-oj§).tick(_loc2_))
            {
               if(_loc4_.§_-lp§ != null)
               {
                  _loc4_.§_-lp§.§_-oj§ = _loc4_.§_-oj§;
               }
               if(_loc4_.§_-oj§ != null)
               {
                  _loc4_.§_-oj§.§_-lp§ = _loc4_.§_-lp§;
               }
               _loc6_ = _loc4_.§_-lp§;
               _loc4_.§_-oj§ = null;
               _loc4_.§_-lp§ = null;
               _loc4_ = _loc6_;
               --this.§_-1-§;
            }
            if((_loc4_ = _loc4_.§_-oj§).tick(_loc2_))
            {
               if(_loc4_.§_-lp§ != null)
               {
                  _loc4_.§_-lp§.§_-oj§ = _loc4_.§_-oj§;
               }
               if(_loc4_.§_-oj§ != null)
               {
                  _loc4_.§_-oj§.§_-lp§ = _loc4_.§_-lp§;
               }
               _loc6_ = _loc4_.§_-lp§;
               _loc4_.§_-oj§ = null;
               _loc4_.§_-lp§ = null;
               _loc4_ = _loc6_;
               --this.§_-1-§;
            }
            if((_loc4_ = _loc4_.§_-oj§).tick(_loc2_))
            {
               if(_loc4_.§_-lp§ != null)
               {
                  _loc4_.§_-lp§.§_-oj§ = _loc4_.§_-oj§;
               }
               if(_loc4_.§_-oj§ != null)
               {
                  _loc4_.§_-oj§.§_-lp§ = _loc4_.§_-lp§;
               }
               _loc6_ = _loc4_.§_-lp§;
               _loc4_.§_-oj§ = null;
               _loc4_.§_-lp§ = null;
               _loc4_ = _loc6_;
               --this.§_-1-§;
            }
            if((_loc4_ = _loc4_.§_-oj§).tick(_loc2_))
            {
               if(_loc4_.§_-lp§ != null)
               {
                  _loc4_.§_-lp§.§_-oj§ = _loc4_.§_-oj§;
               }
               if(_loc4_.§_-oj§ != null)
               {
                  _loc4_.§_-oj§.§_-lp§ = _loc4_.§_-lp§;
               }
               _loc6_ = _loc4_.§_-lp§;
               _loc4_.§_-oj§ = null;
               _loc4_.§_-lp§ = null;
               _loc4_ = _loc6_;
               --this.§_-1-§;
            }
            if((_loc4_ = _loc4_.§_-oj§).tick(_loc2_))
            {
               if(_loc4_.§_-lp§ != null)
               {
                  _loc4_.§_-lp§.§_-oj§ = _loc4_.§_-oj§;
               }
               if(_loc4_.§_-oj§ != null)
               {
                  _loc4_.§_-oj§.§_-lp§ = _loc4_.§_-lp§;
               }
               _loc6_ = _loc4_.§_-lp§;
               _loc4_.§_-oj§ = null;
               _loc4_.§_-lp§ = null;
               _loc4_ = _loc6_;
               --this.§_-1-§;
            }
         }
         if((this.§_-mt§ = _loc5_.§_-oj§) != null)
         {
            this.§_-mt§.§_-lp§ = null;
         }
         _loc5_.§_-oj§ = this.§_-n9§[_loc3_ + 1];
      }
      
      public function start() : void
      {
         this.§_-cW§ = getTimer() / 1000;
         §_-PO§.addEventListener(Event.ENTER_FRAME,this.update);
      }
      
      public function §_-RY§(param1:§_-Zu§) : void
      {
         var _loc2_:§_-Zu§ = this.§_-mt§;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc2_.§_-lp§ != null)
               {
                  _loc2_.§_-lp§.§_-oj§ = _loc2_.§_-oj§;
                  _loc2_.§_-oj§ = null;
               }
               else
               {
                  this.§_-mt§ = _loc2_.§_-oj§;
               }
               if(_loc2_.§_-oj§ != null)
               {
                  _loc2_.§_-oj§.§_-lp§ = _loc2_.§_-lp§;
                  _loc2_.§_-lp§ = null;
               }
               --this.§_-1-§;
            }
            _loc2_ = _loc2_.§_-oj§;
         }
      }
      
      public function get time() : Number
      {
         return this.§_-cW§;
      }
      
      public function stop() : void
      {
         §_-PO§.removeEventListener(Event.ENTER_FRAME,this.update);
      }
      
      public function §_-42§(param1:§_-Zu§) : void
      {
         if(param1.§_-oj§ != null || param1.§_-lp§ != null)
         {
            return;
         }
         if(this.§_-mt§ != null)
         {
            if(this.§_-mt§.§_-lp§ != null)
            {
               this.§_-mt§.§_-lp§.§_-oj§ = param1;
               param1.§_-lp§ = this.§_-mt§.§_-lp§;
            }
            param1.§_-oj§ = this.§_-mt§;
            this.§_-mt§.§_-lp§ = param1;
         }
         this.§_-mt§ = param1;
         ++this.§_-1-§;
      }
   }
}
