package §_-ib§
{
   import §_-Aa§.§_-Y4§;
   import §_-Aa§.§_-nm§;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.utils.getTimer;
   
   public class §_-SV§ implements §_-Y4§
   {
      
      private static var §_-Qz§:Shape = new Shape();
       
      
      private var §_-kW§:Vector.<§_-nm§>;
      
      private var §_-co§:uint = 0;
      
      private var §_-vL§:Number;
      
      private var §_-FS§:§_-nm§ = null;
      
      public function §_-SV§()
      {
         var _loc3_:§_-nm§ = null;
         super();
         this.§_-kW§ = new Vector.<§_-nm§>(10,true);
         var _loc1_:§_-nm§ = null;
         var _loc2_:uint = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = new §_-nm§();
            if(_loc1_ != null)
            {
               _loc1_.§_-le§ = _loc3_;
               _loc3_.§_-fD§ = _loc1_;
            }
            _loc1_ = _loc3_;
            this.§_-kW§[_loc2_] = _loc3_;
            _loc2_++;
         }
      }
      
      function update(param1:Event) : void
      {
         var _loc2_:Number = this.§_-vL§ = getTimer() / 1000;
         var _loc3_:uint = 8 - this.§_-co§ % 8;
         var _loc4_:§_-nm§ = this.§_-kW§[0];
         var _loc5_:§_-nm§ = this.§_-kW§[_loc3_];
         var _loc6_:§_-nm§ = null;
         if((_loc5_.§_-le§ = this.§_-FS§) != null)
         {
            this.§_-FS§.§_-fD§ = _loc5_;
         }
         while(_loc4_.§_-le§ != null)
         {
            if((_loc4_ = _loc4_.§_-le§).tick(_loc2_))
            {
               if(_loc4_.§_-fD§ != null)
               {
                  _loc4_.§_-fD§.§_-le§ = _loc4_.§_-le§;
               }
               if(_loc4_.§_-le§ != null)
               {
                  _loc4_.§_-le§.§_-fD§ = _loc4_.§_-fD§;
               }
               _loc6_ = _loc4_.§_-fD§;
               _loc4_.§_-le§ = null;
               _loc4_.§_-fD§ = null;
               _loc4_ = _loc6_;
               --this.§_-co§;
            }
            if((_loc4_ = _loc4_.§_-le§).tick(_loc2_))
            {
               if(_loc4_.§_-fD§ != null)
               {
                  _loc4_.§_-fD§.§_-le§ = _loc4_.§_-le§;
               }
               if(_loc4_.§_-le§ != null)
               {
                  _loc4_.§_-le§.§_-fD§ = _loc4_.§_-fD§;
               }
               _loc6_ = _loc4_.§_-fD§;
               _loc4_.§_-le§ = null;
               _loc4_.§_-fD§ = null;
               _loc4_ = _loc6_;
               --this.§_-co§;
            }
            if((_loc4_ = _loc4_.§_-le§).tick(_loc2_))
            {
               if(_loc4_.§_-fD§ != null)
               {
                  _loc4_.§_-fD§.§_-le§ = _loc4_.§_-le§;
               }
               if(_loc4_.§_-le§ != null)
               {
                  _loc4_.§_-le§.§_-fD§ = _loc4_.§_-fD§;
               }
               _loc6_ = _loc4_.§_-fD§;
               _loc4_.§_-le§ = null;
               _loc4_.§_-fD§ = null;
               _loc4_ = _loc6_;
               --this.§_-co§;
            }
            if((_loc4_ = _loc4_.§_-le§).tick(_loc2_))
            {
               if(_loc4_.§_-fD§ != null)
               {
                  _loc4_.§_-fD§.§_-le§ = _loc4_.§_-le§;
               }
               if(_loc4_.§_-le§ != null)
               {
                  _loc4_.§_-le§.§_-fD§ = _loc4_.§_-fD§;
               }
               _loc6_ = _loc4_.§_-fD§;
               _loc4_.§_-le§ = null;
               _loc4_.§_-fD§ = null;
               _loc4_ = _loc6_;
               --this.§_-co§;
            }
            if((_loc4_ = _loc4_.§_-le§).tick(_loc2_))
            {
               if(_loc4_.§_-fD§ != null)
               {
                  _loc4_.§_-fD§.§_-le§ = _loc4_.§_-le§;
               }
               if(_loc4_.§_-le§ != null)
               {
                  _loc4_.§_-le§.§_-fD§ = _loc4_.§_-fD§;
               }
               _loc6_ = _loc4_.§_-fD§;
               _loc4_.§_-le§ = null;
               _loc4_.§_-fD§ = null;
               _loc4_ = _loc6_;
               --this.§_-co§;
            }
            if((_loc4_ = _loc4_.§_-le§).tick(_loc2_))
            {
               if(_loc4_.§_-fD§ != null)
               {
                  _loc4_.§_-fD§.§_-le§ = _loc4_.§_-le§;
               }
               if(_loc4_.§_-le§ != null)
               {
                  _loc4_.§_-le§.§_-fD§ = _loc4_.§_-fD§;
               }
               _loc6_ = _loc4_.§_-fD§;
               _loc4_.§_-le§ = null;
               _loc4_.§_-fD§ = null;
               _loc4_ = _loc6_;
               --this.§_-co§;
            }
            if((_loc4_ = _loc4_.§_-le§).tick(_loc2_))
            {
               if(_loc4_.§_-fD§ != null)
               {
                  _loc4_.§_-fD§.§_-le§ = _loc4_.§_-le§;
               }
               if(_loc4_.§_-le§ != null)
               {
                  _loc4_.§_-le§.§_-fD§ = _loc4_.§_-fD§;
               }
               _loc6_ = _loc4_.§_-fD§;
               _loc4_.§_-le§ = null;
               _loc4_.§_-fD§ = null;
               _loc4_ = _loc6_;
               --this.§_-co§;
            }
            if((_loc4_ = _loc4_.§_-le§).tick(_loc2_))
            {
               if(_loc4_.§_-fD§ != null)
               {
                  _loc4_.§_-fD§.§_-le§ = _loc4_.§_-le§;
               }
               if(_loc4_.§_-le§ != null)
               {
                  _loc4_.§_-le§.§_-fD§ = _loc4_.§_-fD§;
               }
               _loc6_ = _loc4_.§_-fD§;
               _loc4_.§_-le§ = null;
               _loc4_.§_-fD§ = null;
               _loc4_ = _loc6_;
               --this.§_-co§;
            }
         }
         if((this.§_-FS§ = _loc5_.§_-le§) != null)
         {
            this.§_-FS§.§_-fD§ = null;
         }
         _loc5_.§_-le§ = this.§_-kW§[_loc3_ + 1];
      }
      
      public function start() : void
      {
         this.§_-vL§ = getTimer() / 1000;
         §_-Qz§.addEventListener(Event.ENTER_FRAME,this.update);
      }
      
      public function §_-gr§(param1:§_-nm§) : void
      {
         var _loc2_:§_-nm§ = this.§_-FS§;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc2_.§_-fD§ != null)
               {
                  _loc2_.§_-fD§.§_-le§ = _loc2_.§_-le§;
                  _loc2_.§_-le§ = null;
               }
               else
               {
                  this.§_-FS§ = _loc2_.§_-le§;
               }
               if(_loc2_.§_-le§ != null)
               {
                  _loc2_.§_-le§.§_-fD§ = _loc2_.§_-fD§;
                  _loc2_.§_-fD§ = null;
               }
               --this.§_-co§;
            }
            _loc2_ = _loc2_.§_-le§;
         }
      }
      
      public function get time() : Number
      {
         return this.§_-vL§;
      }
      
      public function stop() : void
      {
         §_-Qz§.removeEventListener(Event.ENTER_FRAME,this.update);
      }
      
      public function §_-Ej§(param1:§_-nm§) : void
      {
         if(param1.§_-le§ != null || param1.§_-fD§ != null)
         {
            return;
         }
         if(this.§_-FS§ != null)
         {
            if(this.§_-FS§.§_-fD§ != null)
            {
               this.§_-FS§.§_-fD§.§_-le§ = param1;
               param1.§_-fD§ = this.§_-FS§.§_-fD§;
            }
            param1.§_-le§ = this.§_-FS§;
            this.§_-FS§.§_-fD§ = param1;
         }
         this.§_-FS§ = param1;
         ++this.§_-co§;
      }
   }
}
