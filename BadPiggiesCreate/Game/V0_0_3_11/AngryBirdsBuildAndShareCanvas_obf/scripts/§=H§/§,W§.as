package §=H§
{
   import §8!X§.§7'§;
   import §8!X§.§^^§;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.utils.getTimer;
   
   public class §,W§ implements §7'§
   {
      
      private static var §'!V§:Shape = new Shape();
       
      
      private var §"!4§:Vector.<§^^§>;
      
      private var §,!e§:uint = 0;
      
      private var §[!5§:Number;
      
      private var §0!Q§:§^^§ = null;
      
      public function §,W§()
      {
         var _loc3_:§^^§ = null;
         super();
         this.§"!4§ = new Vector.<§^^§>(10,true);
         var _loc1_:§^^§ = null;
         var _loc2_:uint = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = new §^^§();
            if(_loc1_ != null)
            {
               _loc1_.§+!w§ = _loc3_;
               _loc3_.§4F§ = _loc1_;
            }
            _loc1_ = _loc3_;
            this.§"!4§[_loc2_] = _loc3_;
            _loc2_++;
         }
      }
      
      function update(param1:Event) : void
      {
         var _loc2_:Number = this.§[!5§ = getTimer() / 1000;
         var _loc3_:uint = 8 - this.§,!e§ % 8;
         var _loc4_:§^^§ = this.§"!4§[0];
         var _loc5_:§^^§ = this.§"!4§[_loc3_];
         var _loc6_:§^^§ = null;
         if((_loc5_.§+!w§ = this.§0!Q§) != null)
         {
            this.§0!Q§.§4F§ = _loc5_;
         }
         while(_loc4_.§+!w§ != null)
         {
            if((_loc4_ = _loc4_.§+!w§).tick(_loc2_))
            {
               if(_loc4_.§4F§ != null)
               {
                  _loc4_.§4F§.§+!w§ = _loc4_.§+!w§;
               }
               if(_loc4_.§+!w§ != null)
               {
                  _loc4_.§+!w§.§4F§ = _loc4_.§4F§;
               }
               _loc6_ = _loc4_.§4F§;
               _loc4_.§+!w§ = null;
               _loc4_.§4F§ = null;
               _loc4_ = _loc6_;
               --this.§,!e§;
            }
            if((_loc4_ = _loc4_.§+!w§).tick(_loc2_))
            {
               if(_loc4_.§4F§ != null)
               {
                  _loc4_.§4F§.§+!w§ = _loc4_.§+!w§;
               }
               if(_loc4_.§+!w§ != null)
               {
                  _loc4_.§+!w§.§4F§ = _loc4_.§4F§;
               }
               _loc6_ = _loc4_.§4F§;
               _loc4_.§+!w§ = null;
               _loc4_.§4F§ = null;
               _loc4_ = _loc6_;
               --this.§,!e§;
            }
            if((_loc4_ = _loc4_.§+!w§).tick(_loc2_))
            {
               if(_loc4_.§4F§ != null)
               {
                  _loc4_.§4F§.§+!w§ = _loc4_.§+!w§;
               }
               if(_loc4_.§+!w§ != null)
               {
                  _loc4_.§+!w§.§4F§ = _loc4_.§4F§;
               }
               _loc6_ = _loc4_.§4F§;
               _loc4_.§+!w§ = null;
               _loc4_.§4F§ = null;
               _loc4_ = _loc6_;
               --this.§,!e§;
            }
            if((_loc4_ = _loc4_.§+!w§).tick(_loc2_))
            {
               if(_loc4_.§4F§ != null)
               {
                  _loc4_.§4F§.§+!w§ = _loc4_.§+!w§;
               }
               if(_loc4_.§+!w§ != null)
               {
                  _loc4_.§+!w§.§4F§ = _loc4_.§4F§;
               }
               _loc6_ = _loc4_.§4F§;
               _loc4_.§+!w§ = null;
               _loc4_.§4F§ = null;
               _loc4_ = _loc6_;
               --this.§,!e§;
            }
            if((_loc4_ = _loc4_.§+!w§).tick(_loc2_))
            {
               if(_loc4_.§4F§ != null)
               {
                  _loc4_.§4F§.§+!w§ = _loc4_.§+!w§;
               }
               if(_loc4_.§+!w§ != null)
               {
                  _loc4_.§+!w§.§4F§ = _loc4_.§4F§;
               }
               _loc6_ = _loc4_.§4F§;
               _loc4_.§+!w§ = null;
               _loc4_.§4F§ = null;
               _loc4_ = _loc6_;
               --this.§,!e§;
            }
            if((_loc4_ = _loc4_.§+!w§).tick(_loc2_))
            {
               if(_loc4_.§4F§ != null)
               {
                  _loc4_.§4F§.§+!w§ = _loc4_.§+!w§;
               }
               if(_loc4_.§+!w§ != null)
               {
                  _loc4_.§+!w§.§4F§ = _loc4_.§4F§;
               }
               _loc6_ = _loc4_.§4F§;
               _loc4_.§+!w§ = null;
               _loc4_.§4F§ = null;
               _loc4_ = _loc6_;
               --this.§,!e§;
            }
            if((_loc4_ = _loc4_.§+!w§).tick(_loc2_))
            {
               if(_loc4_.§4F§ != null)
               {
                  _loc4_.§4F§.§+!w§ = _loc4_.§+!w§;
               }
               if(_loc4_.§+!w§ != null)
               {
                  _loc4_.§+!w§.§4F§ = _loc4_.§4F§;
               }
               _loc6_ = _loc4_.§4F§;
               _loc4_.§+!w§ = null;
               _loc4_.§4F§ = null;
               _loc4_ = _loc6_;
               --this.§,!e§;
            }
            if((_loc4_ = _loc4_.§+!w§).tick(_loc2_))
            {
               if(_loc4_.§4F§ != null)
               {
                  _loc4_.§4F§.§+!w§ = _loc4_.§+!w§;
               }
               if(_loc4_.§+!w§ != null)
               {
                  _loc4_.§+!w§.§4F§ = _loc4_.§4F§;
               }
               _loc6_ = _loc4_.§4F§;
               _loc4_.§+!w§ = null;
               _loc4_.§4F§ = null;
               _loc4_ = _loc6_;
               --this.§,!e§;
            }
         }
         if((this.§0!Q§ = _loc5_.§+!w§) != null)
         {
            this.§0!Q§.§4F§ = null;
         }
         _loc5_.§+!w§ = this.§"!4§[_loc3_ + 1];
      }
      
      public function start() : void
      {
         this.§[!5§ = getTimer() / 1000;
         §'!V§.addEventListener(Event.ENTER_FRAME,this.update);
      }
      
      public function §]!L§(param1:§^^§) : void
      {
         var _loc2_:§^^§ = this.§0!Q§;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc2_.§4F§ != null)
               {
                  _loc2_.§4F§.§+!w§ = _loc2_.§+!w§;
                  _loc2_.§+!w§ = null;
               }
               else
               {
                  this.§0!Q§ = _loc2_.§+!w§;
               }
               if(_loc2_.§+!w§ != null)
               {
                  _loc2_.§+!w§.§4F§ = _loc2_.§4F§;
                  _loc2_.§4F§ = null;
               }
               --this.§,!e§;
            }
            _loc2_ = _loc2_.§+!w§;
         }
      }
      
      public function get time() : Number
      {
         return this.§[!5§;
      }
      
      public function stop() : void
      {
         §'!V§.removeEventListener(Event.ENTER_FRAME,this.update);
      }
      
      public function § "9§(param1:§^^§) : void
      {
         if(param1.§+!w§ != null || param1.§4F§ != null)
         {
            return;
         }
         if(this.§0!Q§ != null)
         {
            if(this.§0!Q§.§4F§ != null)
            {
               this.§0!Q§.§4F§.§+!w§ = param1;
               param1.§4F§ = this.§0!Q§.§4F§;
            }
            param1.§+!w§ = this.§0!Q§;
            this.§0!Q§.§4F§ = param1;
         }
         this.§0!Q§ = param1;
         ++this.§,!e§;
      }
   }
}
