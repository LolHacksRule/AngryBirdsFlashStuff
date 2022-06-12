package §8!&§
{
   import §=b§.§%"2§;
   import §=b§.§,7§;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.utils.getTimer;
   
   public class §]!^§ implements §%"2§
   {
      
      private static var §-k§:Shape = new Shape();
       
      
      private var §,!V§:Vector.<§,7§>;
      
      private var §4y§:uint = 0;
      
      private var §=m§:Number;
      
      private var §["+§:§,7§ = null;
      
      public function §]!^§()
      {
         var _loc3_:§,7§ = null;
         super();
         this.§,!V§ = new Vector.<§,7§>(10,true);
         var _loc1_:§,7§ = null;
         var _loc2_:uint = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = new §,7§();
            if(_loc1_ != null)
            {
               _loc1_.§<-§ = _loc3_;
               _loc3_.§34§ = _loc1_;
            }
            _loc1_ = _loc3_;
            this.§,!V§[_loc2_] = _loc3_;
            _loc2_++;
         }
      }
      
      function update(param1:Event) : void
      {
         var _loc2_:Number = this.§=m§ = getTimer() / 1000;
         var _loc3_:uint = 8 - this.§4y§ % 8;
         var _loc4_:§,7§ = this.§,!V§[0];
         var _loc5_:§,7§ = this.§,!V§[_loc3_];
         var _loc6_:§,7§ = null;
         if((_loc5_.§<-§ = this.§["+§) != null)
         {
            this.§["+§.§34§ = _loc5_;
         }
         while(_loc4_.§<-§ != null)
         {
            if((_loc4_ = _loc4_.§<-§).tick(_loc2_))
            {
               if(_loc4_.§34§ != null)
               {
                  _loc4_.§34§.§<-§ = _loc4_.§<-§;
               }
               if(_loc4_.§<-§ != null)
               {
                  _loc4_.§<-§.§34§ = _loc4_.§34§;
               }
               _loc6_ = _loc4_.§34§;
               _loc4_.§<-§ = null;
               _loc4_.§34§ = null;
               _loc4_ = _loc6_;
               --this.§4y§;
            }
            if((_loc4_ = _loc4_.§<-§).tick(_loc2_))
            {
               if(_loc4_.§34§ != null)
               {
                  _loc4_.§34§.§<-§ = _loc4_.§<-§;
               }
               if(_loc4_.§<-§ != null)
               {
                  _loc4_.§<-§.§34§ = _loc4_.§34§;
               }
               _loc6_ = _loc4_.§34§;
               _loc4_.§<-§ = null;
               _loc4_.§34§ = null;
               _loc4_ = _loc6_;
               --this.§4y§;
            }
            if((_loc4_ = _loc4_.§<-§).tick(_loc2_))
            {
               if(_loc4_.§34§ != null)
               {
                  _loc4_.§34§.§<-§ = _loc4_.§<-§;
               }
               if(_loc4_.§<-§ != null)
               {
                  _loc4_.§<-§.§34§ = _loc4_.§34§;
               }
               _loc6_ = _loc4_.§34§;
               _loc4_.§<-§ = null;
               _loc4_.§34§ = null;
               _loc4_ = _loc6_;
               --this.§4y§;
            }
            if((_loc4_ = _loc4_.§<-§).tick(_loc2_))
            {
               if(_loc4_.§34§ != null)
               {
                  _loc4_.§34§.§<-§ = _loc4_.§<-§;
               }
               if(_loc4_.§<-§ != null)
               {
                  _loc4_.§<-§.§34§ = _loc4_.§34§;
               }
               _loc6_ = _loc4_.§34§;
               _loc4_.§<-§ = null;
               _loc4_.§34§ = null;
               _loc4_ = _loc6_;
               --this.§4y§;
            }
            if((_loc4_ = _loc4_.§<-§).tick(_loc2_))
            {
               if(_loc4_.§34§ != null)
               {
                  _loc4_.§34§.§<-§ = _loc4_.§<-§;
               }
               if(_loc4_.§<-§ != null)
               {
                  _loc4_.§<-§.§34§ = _loc4_.§34§;
               }
               _loc6_ = _loc4_.§34§;
               _loc4_.§<-§ = null;
               _loc4_.§34§ = null;
               _loc4_ = _loc6_;
               --this.§4y§;
            }
            if((_loc4_ = _loc4_.§<-§).tick(_loc2_))
            {
               if(_loc4_.§34§ != null)
               {
                  _loc4_.§34§.§<-§ = _loc4_.§<-§;
               }
               if(_loc4_.§<-§ != null)
               {
                  _loc4_.§<-§.§34§ = _loc4_.§34§;
               }
               _loc6_ = _loc4_.§34§;
               _loc4_.§<-§ = null;
               _loc4_.§34§ = null;
               _loc4_ = _loc6_;
               --this.§4y§;
            }
            if((_loc4_ = _loc4_.§<-§).tick(_loc2_))
            {
               if(_loc4_.§34§ != null)
               {
                  _loc4_.§34§.§<-§ = _loc4_.§<-§;
               }
               if(_loc4_.§<-§ != null)
               {
                  _loc4_.§<-§.§34§ = _loc4_.§34§;
               }
               _loc6_ = _loc4_.§34§;
               _loc4_.§<-§ = null;
               _loc4_.§34§ = null;
               _loc4_ = _loc6_;
               --this.§4y§;
            }
            if((_loc4_ = _loc4_.§<-§).tick(_loc2_))
            {
               if(_loc4_.§34§ != null)
               {
                  _loc4_.§34§.§<-§ = _loc4_.§<-§;
               }
               if(_loc4_.§<-§ != null)
               {
                  _loc4_.§<-§.§34§ = _loc4_.§34§;
               }
               _loc6_ = _loc4_.§34§;
               _loc4_.§<-§ = null;
               _loc4_.§34§ = null;
               _loc4_ = _loc6_;
               --this.§4y§;
            }
         }
         if((this.§["+§ = _loc5_.§<-§) != null)
         {
            this.§["+§.§34§ = null;
         }
         _loc5_.§<-§ = this.§,!V§[_loc3_ + 1];
      }
      
      public function start() : void
      {
         this.§=m§ = getTimer() / 1000;
         §-k§.addEventListener(Event.ENTER_FRAME,this.update);
      }
      
      public function §0!j§(param1:§,7§) : void
      {
         var _loc2_:§,7§ = this.§["+§;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc2_.§34§ != null)
               {
                  _loc2_.§34§.§<-§ = _loc2_.§<-§;
                  _loc2_.§<-§ = null;
               }
               else
               {
                  this.§["+§ = _loc2_.§<-§;
               }
               if(_loc2_.§<-§ != null)
               {
                  _loc2_.§<-§.§34§ = _loc2_.§34§;
                  _loc2_.§34§ = null;
               }
               --this.§4y§;
            }
            _loc2_ = _loc2_.§<-§;
         }
      }
      
      public function get time() : Number
      {
         return this.§=m§;
      }
      
      public function stop() : void
      {
         §-k§.removeEventListener(Event.ENTER_FRAME,this.update);
      }
      
      public function §`H§(param1:§,7§) : void
      {
         if(param1.§<-§ != null || param1.§34§ != null)
         {
            return;
         }
         if(this.§["+§ != null)
         {
            if(this.§["+§.§34§ != null)
            {
               this.§["+§.§34§.§<-§ = param1;
               param1.§34§ = this.§["+§.§34§;
            }
            param1.§<-§ = this.§["+§;
            this.§["+§.§34§ = param1;
         }
         this.§["+§ = param1;
         ++this.§4y§;
      }
   }
}
