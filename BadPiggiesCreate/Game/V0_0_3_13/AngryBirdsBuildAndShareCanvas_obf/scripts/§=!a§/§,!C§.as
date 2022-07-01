package §=!a§
{
   import §6!>§.§-!s§;
   import §6!>§.§>!#§;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.utils.getTimer;
   
   public class §,!C§ implements §>!#§
   {
      
      private static var §+-§:Shape = new Shape();
       
      
      private var §[]§:Vector.<§-!s§>;
      
      private var §<!E§:uint = 0;
      
      private var §2"'§:Number;
      
      private var §[!6§:§-!s§ = null;
      
      public function §,!C§()
      {
         var _loc3_:§-!s§ = null;
         super();
         this.§[]§ = new Vector.<§-!s§>(10,true);
         var _loc1_:§-!s§ = null;
         var _loc2_:uint = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = new §-!s§();
            if(_loc1_ != null)
            {
               _loc1_.§""8§ = _loc3_;
               _loc3_.§4W§ = _loc1_;
            }
            _loc1_ = _loc3_;
            this.§[]§[_loc2_] = _loc3_;
            _loc2_++;
         }
      }
      
      function update(param1:Event) : void
      {
         var _loc2_:Number = this.§2"'§ = getTimer() / 1000;
         var _loc3_:uint = 8 - this.§<!E§ % 8;
         var _loc4_:§-!s§ = this.§[]§[0];
         var _loc5_:§-!s§ = this.§[]§[_loc3_];
         var _loc6_:§-!s§ = null;
         if((_loc5_.§""8§ = this.§[!6§) != null)
         {
            this.§[!6§.§4W§ = _loc5_;
         }
         while(_loc4_.§""8§ != null)
         {
            if((_loc4_ = _loc4_.§""8§).tick(_loc2_))
            {
               if(_loc4_.§4W§ != null)
               {
                  _loc4_.§4W§.§""8§ = _loc4_.§""8§;
               }
               if(_loc4_.§""8§ != null)
               {
                  _loc4_.§""8§.§4W§ = _loc4_.§4W§;
               }
               _loc6_ = _loc4_.§4W§;
               _loc4_.§""8§ = null;
               _loc4_.§4W§ = null;
               _loc4_ = _loc6_;
               --this.§<!E§;
            }
            if((_loc4_ = _loc4_.§""8§).tick(_loc2_))
            {
               if(_loc4_.§4W§ != null)
               {
                  _loc4_.§4W§.§""8§ = _loc4_.§""8§;
               }
               if(_loc4_.§""8§ != null)
               {
                  _loc4_.§""8§.§4W§ = _loc4_.§4W§;
               }
               _loc6_ = _loc4_.§4W§;
               _loc4_.§""8§ = null;
               _loc4_.§4W§ = null;
               _loc4_ = _loc6_;
               --this.§<!E§;
            }
            if((_loc4_ = _loc4_.§""8§).tick(_loc2_))
            {
               if(_loc4_.§4W§ != null)
               {
                  _loc4_.§4W§.§""8§ = _loc4_.§""8§;
               }
               if(_loc4_.§""8§ != null)
               {
                  _loc4_.§""8§.§4W§ = _loc4_.§4W§;
               }
               _loc6_ = _loc4_.§4W§;
               _loc4_.§""8§ = null;
               _loc4_.§4W§ = null;
               _loc4_ = _loc6_;
               --this.§<!E§;
            }
            if((_loc4_ = _loc4_.§""8§).tick(_loc2_))
            {
               if(_loc4_.§4W§ != null)
               {
                  _loc4_.§4W§.§""8§ = _loc4_.§""8§;
               }
               if(_loc4_.§""8§ != null)
               {
                  _loc4_.§""8§.§4W§ = _loc4_.§4W§;
               }
               _loc6_ = _loc4_.§4W§;
               _loc4_.§""8§ = null;
               _loc4_.§4W§ = null;
               _loc4_ = _loc6_;
               --this.§<!E§;
            }
            if((_loc4_ = _loc4_.§""8§).tick(_loc2_))
            {
               if(_loc4_.§4W§ != null)
               {
                  _loc4_.§4W§.§""8§ = _loc4_.§""8§;
               }
               if(_loc4_.§""8§ != null)
               {
                  _loc4_.§""8§.§4W§ = _loc4_.§4W§;
               }
               _loc6_ = _loc4_.§4W§;
               _loc4_.§""8§ = null;
               _loc4_.§4W§ = null;
               _loc4_ = _loc6_;
               --this.§<!E§;
            }
            if((_loc4_ = _loc4_.§""8§).tick(_loc2_))
            {
               if(_loc4_.§4W§ != null)
               {
                  _loc4_.§4W§.§""8§ = _loc4_.§""8§;
               }
               if(_loc4_.§""8§ != null)
               {
                  _loc4_.§""8§.§4W§ = _loc4_.§4W§;
               }
               _loc6_ = _loc4_.§4W§;
               _loc4_.§""8§ = null;
               _loc4_.§4W§ = null;
               _loc4_ = _loc6_;
               --this.§<!E§;
            }
            if((_loc4_ = _loc4_.§""8§).tick(_loc2_))
            {
               if(_loc4_.§4W§ != null)
               {
                  _loc4_.§4W§.§""8§ = _loc4_.§""8§;
               }
               if(_loc4_.§""8§ != null)
               {
                  _loc4_.§""8§.§4W§ = _loc4_.§4W§;
               }
               _loc6_ = _loc4_.§4W§;
               _loc4_.§""8§ = null;
               _loc4_.§4W§ = null;
               _loc4_ = _loc6_;
               --this.§<!E§;
            }
            if((_loc4_ = _loc4_.§""8§).tick(_loc2_))
            {
               if(_loc4_.§4W§ != null)
               {
                  _loc4_.§4W§.§""8§ = _loc4_.§""8§;
               }
               if(_loc4_.§""8§ != null)
               {
                  _loc4_.§""8§.§4W§ = _loc4_.§4W§;
               }
               _loc6_ = _loc4_.§4W§;
               _loc4_.§""8§ = null;
               _loc4_.§4W§ = null;
               _loc4_ = _loc6_;
               --this.§<!E§;
            }
         }
         if((this.§[!6§ = _loc5_.§""8§) != null)
         {
            this.§[!6§.§4W§ = null;
         }
         _loc5_.§""8§ = this.§[]§[_loc3_ + 1];
      }
      
      public function start() : void
      {
         this.§2"'§ = getTimer() / 1000;
         §+-§.addEventListener(Event.ENTER_FRAME,this.update);
      }
      
      public function §"!b§(param1:§-!s§) : void
      {
         var _loc2_:§-!s§ = this.§[!6§;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc2_.§4W§ != null)
               {
                  _loc2_.§4W§.§""8§ = _loc2_.§""8§;
                  _loc2_.§""8§ = null;
               }
               else
               {
                  this.§[!6§ = _loc2_.§""8§;
               }
               if(_loc2_.§""8§ != null)
               {
                  _loc2_.§""8§.§4W§ = _loc2_.§4W§;
                  _loc2_.§4W§ = null;
               }
               --this.§<!E§;
            }
            _loc2_ = _loc2_.§""8§;
         }
      }
      
      public function get time() : Number
      {
         return this.§2"'§;
      }
      
      public function stop() : void
      {
         §+-§.removeEventListener(Event.ENTER_FRAME,this.update);
      }
      
      public function §%"!§(param1:§-!s§) : void
      {
         if(param1.§""8§ != null || param1.§4W§ != null)
         {
            return;
         }
         if(this.§[!6§ != null)
         {
            if(this.§[!6§.§4W§ != null)
            {
               this.§[!6§.§4W§.§""8§ = param1;
               param1.§4W§ = this.§[!6§.§4W§;
            }
            param1.§""8§ = this.§[!6§;
            this.§[!6§.§4W§ = param1;
         }
         this.§[!6§ = param1;
         ++this.§<!E§;
      }
   }
}
