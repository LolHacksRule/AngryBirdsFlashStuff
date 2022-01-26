package §_-aL§
{
   import §_-SJ§.§_-Q5§;
   import §_-SJ§.§_-kc§;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.utils.getTimer;
   
   public class §_-7t§ implements §_-Q5§
   {
      
      private static var §_-e-§:Shape = new Shape();
       
      
      private var §_-5t§:Vector.<§_-kc§>;
      
      private var §_-Uh§:uint = 0;
      
      private var §_-Lg§:Number;
      
      private var §_-0-§:§_-kc§ = null;
      
      public function §_-7t§()
      {
         var _loc3_:§_-kc§ = null;
         super();
         this.§_-5t§ = new Vector.<§_-kc§>(10,true);
         var _loc1_:§_-kc§ = null;
         var _loc2_:uint = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = new §_-kc§();
            if(_loc1_ != null)
            {
               _loc1_.§_-sV§ = _loc3_;
               _loc3_.§_-Cl§ = _loc1_;
            }
            _loc1_ = _loc3_;
            this.§_-5t§[_loc2_] = _loc3_;
            _loc2_++;
         }
      }
      
      function update(param1:Event) : void
      {
         var _loc2_:Number = this.§_-Lg§ = getTimer() / 1000;
         var _loc3_:uint = 8 - this.§_-Uh§ % 8;
         var _loc4_:§_-kc§ = this.§_-5t§[0];
         var _loc5_:§_-kc§ = this.§_-5t§[_loc3_];
         var _loc6_:§_-kc§ = null;
         if((_loc5_.§_-sV§ = this.§_-0-§) != null)
         {
            this.§_-0-§.§_-Cl§ = _loc5_;
         }
         while(_loc4_.§_-sV§ != null)
         {
            if((_loc4_ = _loc4_.§_-sV§).tick(_loc2_))
            {
               if(_loc4_.§_-Cl§ != null)
               {
                  _loc4_.§_-Cl§.§_-sV§ = _loc4_.§_-sV§;
               }
               if(_loc4_.§_-sV§ != null)
               {
                  _loc4_.§_-sV§.§_-Cl§ = _loc4_.§_-Cl§;
               }
               _loc6_ = _loc4_.§_-Cl§;
               _loc4_.§_-sV§ = null;
               _loc4_.§_-Cl§ = null;
               _loc4_ = _loc6_;
               --this.§_-Uh§;
            }
            if((_loc4_ = _loc4_.§_-sV§).tick(_loc2_))
            {
               if(_loc4_.§_-Cl§ != null)
               {
                  _loc4_.§_-Cl§.§_-sV§ = _loc4_.§_-sV§;
               }
               if(_loc4_.§_-sV§ != null)
               {
                  _loc4_.§_-sV§.§_-Cl§ = _loc4_.§_-Cl§;
               }
               _loc6_ = _loc4_.§_-Cl§;
               _loc4_.§_-sV§ = null;
               _loc4_.§_-Cl§ = null;
               _loc4_ = _loc6_;
               --this.§_-Uh§;
            }
            if((_loc4_ = _loc4_.§_-sV§).tick(_loc2_))
            {
               if(_loc4_.§_-Cl§ != null)
               {
                  _loc4_.§_-Cl§.§_-sV§ = _loc4_.§_-sV§;
               }
               if(_loc4_.§_-sV§ != null)
               {
                  _loc4_.§_-sV§.§_-Cl§ = _loc4_.§_-Cl§;
               }
               _loc6_ = _loc4_.§_-Cl§;
               _loc4_.§_-sV§ = null;
               _loc4_.§_-Cl§ = null;
               _loc4_ = _loc6_;
               --this.§_-Uh§;
            }
            if((_loc4_ = _loc4_.§_-sV§).tick(_loc2_))
            {
               if(_loc4_.§_-Cl§ != null)
               {
                  _loc4_.§_-Cl§.§_-sV§ = _loc4_.§_-sV§;
               }
               if(_loc4_.§_-sV§ != null)
               {
                  _loc4_.§_-sV§.§_-Cl§ = _loc4_.§_-Cl§;
               }
               _loc6_ = _loc4_.§_-Cl§;
               _loc4_.§_-sV§ = null;
               _loc4_.§_-Cl§ = null;
               _loc4_ = _loc6_;
               --this.§_-Uh§;
            }
            if((_loc4_ = _loc4_.§_-sV§).tick(_loc2_))
            {
               if(_loc4_.§_-Cl§ != null)
               {
                  _loc4_.§_-Cl§.§_-sV§ = _loc4_.§_-sV§;
               }
               if(_loc4_.§_-sV§ != null)
               {
                  _loc4_.§_-sV§.§_-Cl§ = _loc4_.§_-Cl§;
               }
               _loc6_ = _loc4_.§_-Cl§;
               _loc4_.§_-sV§ = null;
               _loc4_.§_-Cl§ = null;
               _loc4_ = _loc6_;
               --this.§_-Uh§;
            }
            if((_loc4_ = _loc4_.§_-sV§).tick(_loc2_))
            {
               if(_loc4_.§_-Cl§ != null)
               {
                  _loc4_.§_-Cl§.§_-sV§ = _loc4_.§_-sV§;
               }
               if(_loc4_.§_-sV§ != null)
               {
                  _loc4_.§_-sV§.§_-Cl§ = _loc4_.§_-Cl§;
               }
               _loc6_ = _loc4_.§_-Cl§;
               _loc4_.§_-sV§ = null;
               _loc4_.§_-Cl§ = null;
               _loc4_ = _loc6_;
               --this.§_-Uh§;
            }
            if((_loc4_ = _loc4_.§_-sV§).tick(_loc2_))
            {
               if(_loc4_.§_-Cl§ != null)
               {
                  _loc4_.§_-Cl§.§_-sV§ = _loc4_.§_-sV§;
               }
               if(_loc4_.§_-sV§ != null)
               {
                  _loc4_.§_-sV§.§_-Cl§ = _loc4_.§_-Cl§;
               }
               _loc6_ = _loc4_.§_-Cl§;
               _loc4_.§_-sV§ = null;
               _loc4_.§_-Cl§ = null;
               _loc4_ = _loc6_;
               --this.§_-Uh§;
            }
            if((_loc4_ = _loc4_.§_-sV§).tick(_loc2_))
            {
               if(_loc4_.§_-Cl§ != null)
               {
                  _loc4_.§_-Cl§.§_-sV§ = _loc4_.§_-sV§;
               }
               if(_loc4_.§_-sV§ != null)
               {
                  _loc4_.§_-sV§.§_-Cl§ = _loc4_.§_-Cl§;
               }
               _loc6_ = _loc4_.§_-Cl§;
               _loc4_.§_-sV§ = null;
               _loc4_.§_-Cl§ = null;
               _loc4_ = _loc6_;
               --this.§_-Uh§;
            }
         }
         if((this.§_-0-§ = _loc5_.§_-sV§) != null)
         {
            this.§_-0-§.§_-Cl§ = null;
         }
         _loc5_.§_-sV§ = this.§_-5t§[_loc3_ + 1];
      }
      
      public function start() : void
      {
         this.§_-Lg§ = getTimer() / 1000;
         §_-e-§.addEventListener(Event.ENTER_FRAME,this.update);
      }
      
      public function §_-OB§(param1:§_-kc§) : void
      {
         var _loc2_:§_-kc§ = this.§_-0-§;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc2_.§_-Cl§ != null)
               {
                  _loc2_.§_-Cl§.§_-sV§ = _loc2_.§_-sV§;
                  _loc2_.§_-sV§ = null;
               }
               else
               {
                  this.§_-0-§ = _loc2_.§_-sV§;
               }
               if(_loc2_.§_-sV§ != null)
               {
                  _loc2_.§_-sV§.§_-Cl§ = _loc2_.§_-Cl§;
                  _loc2_.§_-Cl§ = null;
               }
               --this.§_-Uh§;
            }
            _loc2_ = _loc2_.§_-sV§;
         }
      }
      
      public function get time() : Number
      {
         return this.§_-Lg§;
      }
      
      public function stop() : void
      {
         §_-e-§.removeEventListener(Event.ENTER_FRAME,this.update);
      }
      
      public function §_-X5§(param1:§_-kc§) : void
      {
         if(param1.§_-sV§ != null || param1.§_-Cl§ != null)
         {
            return;
         }
         if(this.§_-0-§ != null)
         {
            if(this.§_-0-§.§_-Cl§ != null)
            {
               this.§_-0-§.§_-Cl§.§_-sV§ = param1;
               param1.§_-Cl§ = this.§_-0-§.§_-Cl§;
            }
            param1.§_-sV§ = this.§_-0-§;
            this.§_-0-§.§_-Cl§ = param1;
         }
         this.§_-0-§ = param1;
         ++this.§_-Uh§;
      }
   }
}
