package §;!%§
{
   import §^b§.§ E§;
   import §^b§.§6!s§;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.utils.getTimer;
   
   public class §3o§ implements § E§
   {
      
      private static var §@!Q§:Shape = new Shape();
       
      
      private var §?S§:Vector.<§6!s§>;
      
      private var §'e§:uint = 0;
      
      private var §2"&§:Number;
      
      private var §'B§:§6!s§ = null;
      
      public function §3o§()
      {
         var _loc3_:§6!s§ = null;
         super();
         this.§?S§ = new Vector.<§6!s§>(10,true);
         var _loc1_:§6!s§ = null;
         var _loc2_:uint = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = new §6!s§();
            if(_loc1_ != null)
            {
               _loc1_.§-S§ = _loc3_;
               _loc3_.§"!c§ = _loc1_;
            }
            _loc1_ = _loc3_;
            this.§?S§[_loc2_] = _loc3_;
            _loc2_++;
         }
      }
      
      function update(param1:Event) : void
      {
         var _loc2_:Number = this.§2"&§ = getTimer() / 1000;
         var _loc3_:uint = 8 - this.§'e§ % 8;
         var _loc4_:§6!s§ = this.§?S§[0];
         var _loc5_:§6!s§ = this.§?S§[_loc3_];
         var _loc6_:§6!s§ = null;
         if((_loc5_.§-S§ = this.§'B§) != null)
         {
            this.§'B§.§"!c§ = _loc5_;
         }
         while(_loc4_.§-S§ != null)
         {
            if((_loc4_ = _loc4_.§-S§).tick(_loc2_))
            {
               if(_loc4_.§"!c§ != null)
               {
                  _loc4_.§"!c§.§-S§ = _loc4_.§-S§;
               }
               if(_loc4_.§-S§ != null)
               {
                  _loc4_.§-S§.§"!c§ = _loc4_.§"!c§;
               }
               _loc6_ = _loc4_.§"!c§;
               _loc4_.§-S§ = null;
               _loc4_.§"!c§ = null;
               _loc4_ = _loc6_;
               --this.§'e§;
            }
            if((_loc4_ = _loc4_.§-S§).tick(_loc2_))
            {
               if(_loc4_.§"!c§ != null)
               {
                  _loc4_.§"!c§.§-S§ = _loc4_.§-S§;
               }
               if(_loc4_.§-S§ != null)
               {
                  _loc4_.§-S§.§"!c§ = _loc4_.§"!c§;
               }
               _loc6_ = _loc4_.§"!c§;
               _loc4_.§-S§ = null;
               _loc4_.§"!c§ = null;
               _loc4_ = _loc6_;
               --this.§'e§;
            }
            if((_loc4_ = _loc4_.§-S§).tick(_loc2_))
            {
               if(_loc4_.§"!c§ != null)
               {
                  _loc4_.§"!c§.§-S§ = _loc4_.§-S§;
               }
               if(_loc4_.§-S§ != null)
               {
                  _loc4_.§-S§.§"!c§ = _loc4_.§"!c§;
               }
               _loc6_ = _loc4_.§"!c§;
               _loc4_.§-S§ = null;
               _loc4_.§"!c§ = null;
               _loc4_ = _loc6_;
               --this.§'e§;
            }
            if((_loc4_ = _loc4_.§-S§).tick(_loc2_))
            {
               if(_loc4_.§"!c§ != null)
               {
                  _loc4_.§"!c§.§-S§ = _loc4_.§-S§;
               }
               if(_loc4_.§-S§ != null)
               {
                  _loc4_.§-S§.§"!c§ = _loc4_.§"!c§;
               }
               _loc6_ = _loc4_.§"!c§;
               _loc4_.§-S§ = null;
               _loc4_.§"!c§ = null;
               _loc4_ = _loc6_;
               --this.§'e§;
            }
            if((_loc4_ = _loc4_.§-S§).tick(_loc2_))
            {
               if(_loc4_.§"!c§ != null)
               {
                  _loc4_.§"!c§.§-S§ = _loc4_.§-S§;
               }
               if(_loc4_.§-S§ != null)
               {
                  _loc4_.§-S§.§"!c§ = _loc4_.§"!c§;
               }
               _loc6_ = _loc4_.§"!c§;
               _loc4_.§-S§ = null;
               _loc4_.§"!c§ = null;
               _loc4_ = _loc6_;
               --this.§'e§;
            }
            if((_loc4_ = _loc4_.§-S§).tick(_loc2_))
            {
               if(_loc4_.§"!c§ != null)
               {
                  _loc4_.§"!c§.§-S§ = _loc4_.§-S§;
               }
               if(_loc4_.§-S§ != null)
               {
                  _loc4_.§-S§.§"!c§ = _loc4_.§"!c§;
               }
               _loc6_ = _loc4_.§"!c§;
               _loc4_.§-S§ = null;
               _loc4_.§"!c§ = null;
               _loc4_ = _loc6_;
               --this.§'e§;
            }
            if((_loc4_ = _loc4_.§-S§).tick(_loc2_))
            {
               if(_loc4_.§"!c§ != null)
               {
                  _loc4_.§"!c§.§-S§ = _loc4_.§-S§;
               }
               if(_loc4_.§-S§ != null)
               {
                  _loc4_.§-S§.§"!c§ = _loc4_.§"!c§;
               }
               _loc6_ = _loc4_.§"!c§;
               _loc4_.§-S§ = null;
               _loc4_.§"!c§ = null;
               _loc4_ = _loc6_;
               --this.§'e§;
            }
            if((_loc4_ = _loc4_.§-S§).tick(_loc2_))
            {
               if(_loc4_.§"!c§ != null)
               {
                  _loc4_.§"!c§.§-S§ = _loc4_.§-S§;
               }
               if(_loc4_.§-S§ != null)
               {
                  _loc4_.§-S§.§"!c§ = _loc4_.§"!c§;
               }
               _loc6_ = _loc4_.§"!c§;
               _loc4_.§-S§ = null;
               _loc4_.§"!c§ = null;
               _loc4_ = _loc6_;
               --this.§'e§;
            }
         }
         if((this.§'B§ = _loc5_.§-S§) != null)
         {
            this.§'B§.§"!c§ = null;
         }
         _loc5_.§-S§ = this.§?S§[_loc3_ + 1];
      }
      
      public function start() : void
      {
         this.§2"&§ = getTimer() / 1000;
         §@!Q§.addEventListener(Event.ENTER_FRAME,this.update);
      }
      
      public function §+l§(param1:§6!s§) : void
      {
         var _loc2_:§6!s§ = this.§'B§;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc2_.§"!c§ != null)
               {
                  _loc2_.§"!c§.§-S§ = _loc2_.§-S§;
                  _loc2_.§-S§ = null;
               }
               else
               {
                  this.§'B§ = _loc2_.§-S§;
               }
               if(_loc2_.§-S§ != null)
               {
                  _loc2_.§-S§.§"!c§ = _loc2_.§"!c§;
                  _loc2_.§"!c§ = null;
               }
               --this.§'e§;
            }
            _loc2_ = _loc2_.§-S§;
         }
      }
      
      public function get time() : Number
      {
         return this.§2"&§;
      }
      
      public function stop() : void
      {
         §@!Q§.removeEventListener(Event.ENTER_FRAME,this.update);
      }
      
      public function §+!U§(param1:§6!s§) : void
      {
         if(param1.§-S§ != null || param1.§"!c§ != null)
         {
            return;
         }
         if(this.§'B§ != null)
         {
            if(this.§'B§.§"!c§ != null)
            {
               this.§'B§.§"!c§.§-S§ = param1;
               param1.§"!c§ = this.§'B§.§"!c§;
            }
            param1.§-S§ = this.§'B§;
            this.§'B§.§"!c§ = param1;
         }
         this.§'B§ = param1;
         ++this.§'e§;
      }
   }
}
