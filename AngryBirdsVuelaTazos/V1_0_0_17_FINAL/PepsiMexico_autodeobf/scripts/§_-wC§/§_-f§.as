package §_-wC§
{
   import §_-Xz§.§_-PG§;
   import §_-Xz§.§_-Ps§;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.utils.getTimer;
   
   public class §_-f§ implements §_-Ps§
   {
      
      private static var §_-u2§:Shape = new Shape();
       
      
      private var §_-gv§:Vector.<§_-PG§>;
      
      private var §_-vW§:uint = 0;
      
      private var §_-CP§:Number;
      
      private var §_-cP§:§_-PG§ = null;
      
      public function §_-f§()
      {
         var _loc3_:§_-PG§ = null;
         super();
         this.§_-gv§ = new Vector.<§_-PG§>(10,true);
         var _loc1_:§_-PG§ = null;
         var _loc2_:uint = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = new §_-PG§();
            if(_loc1_ != null)
            {
               _loc1_.§_-2E§ = _loc3_;
               _loc3_.§_-zJ§ = _loc1_;
            }
            _loc1_ = _loc3_;
            this.§_-gv§[_loc2_] = _loc3_;
            _loc2_++;
         }
      }
      
      function update(param1:Event) : void
      {
         var _loc2_:Number = this.§_-CP§ = getTimer() / 1000;
         var _loc3_:uint = 8 - this.§_-vW§ % 8;
         var _loc4_:§_-PG§ = this.§_-gv§[0];
         var _loc5_:§_-PG§ = this.§_-gv§[_loc3_];
         var _loc6_:§_-PG§ = null;
         if((_loc5_.§_-2E§ = this.§_-cP§) != null)
         {
            this.§_-cP§.§_-zJ§ = _loc5_;
         }
         while(_loc4_.§_-2E§ != null)
         {
            if((_loc4_ = _loc4_.§_-2E§).tick(_loc2_))
            {
               if(_loc4_.§_-zJ§ != null)
               {
                  _loc4_.§_-zJ§.§_-2E§ = _loc4_.§_-2E§;
               }
               if(_loc4_.§_-2E§ != null)
               {
                  _loc4_.§_-2E§.§_-zJ§ = _loc4_.§_-zJ§;
               }
               _loc6_ = _loc4_.§_-zJ§;
               _loc4_.§_-2E§ = null;
               _loc4_.§_-zJ§ = null;
               _loc4_ = _loc6_;
               --this.§_-vW§;
            }
            if((_loc4_ = _loc4_.§_-2E§).tick(_loc2_))
            {
               if(_loc4_.§_-zJ§ != null)
               {
                  _loc4_.§_-zJ§.§_-2E§ = _loc4_.§_-2E§;
               }
               if(_loc4_.§_-2E§ != null)
               {
                  _loc4_.§_-2E§.§_-zJ§ = _loc4_.§_-zJ§;
               }
               _loc6_ = _loc4_.§_-zJ§;
               _loc4_.§_-2E§ = null;
               _loc4_.§_-zJ§ = null;
               _loc4_ = _loc6_;
               --this.§_-vW§;
            }
            if((_loc4_ = _loc4_.§_-2E§).tick(_loc2_))
            {
               if(_loc4_.§_-zJ§ != null)
               {
                  _loc4_.§_-zJ§.§_-2E§ = _loc4_.§_-2E§;
               }
               if(_loc4_.§_-2E§ != null)
               {
                  _loc4_.§_-2E§.§_-zJ§ = _loc4_.§_-zJ§;
               }
               _loc6_ = _loc4_.§_-zJ§;
               _loc4_.§_-2E§ = null;
               _loc4_.§_-zJ§ = null;
               _loc4_ = _loc6_;
               --this.§_-vW§;
            }
            if((_loc4_ = _loc4_.§_-2E§).tick(_loc2_))
            {
               if(_loc4_.§_-zJ§ != null)
               {
                  _loc4_.§_-zJ§.§_-2E§ = _loc4_.§_-2E§;
               }
               if(_loc4_.§_-2E§ != null)
               {
                  _loc4_.§_-2E§.§_-zJ§ = _loc4_.§_-zJ§;
               }
               _loc6_ = _loc4_.§_-zJ§;
               _loc4_.§_-2E§ = null;
               _loc4_.§_-zJ§ = null;
               _loc4_ = _loc6_;
               --this.§_-vW§;
            }
            if((_loc4_ = _loc4_.§_-2E§).tick(_loc2_))
            {
               if(_loc4_.§_-zJ§ != null)
               {
                  _loc4_.§_-zJ§.§_-2E§ = _loc4_.§_-2E§;
               }
               if(_loc4_.§_-2E§ != null)
               {
                  _loc4_.§_-2E§.§_-zJ§ = _loc4_.§_-zJ§;
               }
               _loc6_ = _loc4_.§_-zJ§;
               _loc4_.§_-2E§ = null;
               _loc4_.§_-zJ§ = null;
               _loc4_ = _loc6_;
               --this.§_-vW§;
            }
            if((_loc4_ = _loc4_.§_-2E§).tick(_loc2_))
            {
               if(_loc4_.§_-zJ§ != null)
               {
                  _loc4_.§_-zJ§.§_-2E§ = _loc4_.§_-2E§;
               }
               if(_loc4_.§_-2E§ != null)
               {
                  _loc4_.§_-2E§.§_-zJ§ = _loc4_.§_-zJ§;
               }
               _loc6_ = _loc4_.§_-zJ§;
               _loc4_.§_-2E§ = null;
               _loc4_.§_-zJ§ = null;
               _loc4_ = _loc6_;
               --this.§_-vW§;
            }
            if((_loc4_ = _loc4_.§_-2E§).tick(_loc2_))
            {
               if(_loc4_.§_-zJ§ != null)
               {
                  _loc4_.§_-zJ§.§_-2E§ = _loc4_.§_-2E§;
               }
               if(_loc4_.§_-2E§ != null)
               {
                  _loc4_.§_-2E§.§_-zJ§ = _loc4_.§_-zJ§;
               }
               _loc6_ = _loc4_.§_-zJ§;
               _loc4_.§_-2E§ = null;
               _loc4_.§_-zJ§ = null;
               _loc4_ = _loc6_;
               --this.§_-vW§;
            }
            if((_loc4_ = _loc4_.§_-2E§).tick(_loc2_))
            {
               if(_loc4_.§_-zJ§ != null)
               {
                  _loc4_.§_-zJ§.§_-2E§ = _loc4_.§_-2E§;
               }
               if(_loc4_.§_-2E§ != null)
               {
                  _loc4_.§_-2E§.§_-zJ§ = _loc4_.§_-zJ§;
               }
               _loc6_ = _loc4_.§_-zJ§;
               _loc4_.§_-2E§ = null;
               _loc4_.§_-zJ§ = null;
               _loc4_ = _loc6_;
               --this.§_-vW§;
            }
         }
         if((this.§_-cP§ = _loc5_.§_-2E§) != null)
         {
            this.§_-cP§.§_-zJ§ = null;
         }
         _loc5_.§_-2E§ = this.§_-gv§[_loc3_ + 1];
      }
      
      public function start() : void
      {
         this.§_-CP§ = getTimer() / 1000;
         §_-u2§.addEventListener(Event.ENTER_FRAME,this.update);
      }
      
      public function §_-TY§(param1:§_-PG§) : void
      {
         var _loc2_:§_-PG§ = this.§_-cP§;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc2_.§_-zJ§ != null)
               {
                  _loc2_.§_-zJ§.§_-2E§ = _loc2_.§_-2E§;
                  _loc2_.§_-2E§ = null;
               }
               else
               {
                  this.§_-cP§ = _loc2_.§_-2E§;
               }
               if(_loc2_.§_-2E§ != null)
               {
                  _loc2_.§_-2E§.§_-zJ§ = _loc2_.§_-zJ§;
                  _loc2_.§_-zJ§ = null;
               }
               --this.§_-vW§;
            }
            _loc2_ = _loc2_.§_-2E§;
         }
      }
      
      public function get time() : Number
      {
         return this.§_-CP§;
      }
      
      public function stop() : void
      {
         §_-u2§.removeEventListener(Event.ENTER_FRAME,this.update);
      }
      
      public function §_-lE§(param1:§_-PG§) : void
      {
         if(param1.§_-2E§ != null || param1.§_-zJ§ != null)
         {
            return;
         }
         if(this.§_-cP§ != null)
         {
            if(this.§_-cP§.§_-zJ§ != null)
            {
               this.§_-cP§.§_-zJ§.§_-2E§ = param1;
               param1.§_-zJ§ = this.§_-cP§.§_-zJ§;
            }
            param1.§_-2E§ = this.§_-cP§;
            this.§_-cP§.§_-zJ§ = param1;
         }
         this.§_-cP§ = param1;
         ++this.§_-vW§;
      }
   }
}
