package §&!V§
{
   import §["6§.§"!g§;
   import §["6§.§@D§;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.utils.getTimer;
   
   public class §+v§ implements §@D§
   {
      
      private static var §[!u§:Shape = new Shape();
       
      
      private var §^t§:Vector.<§"!g§>;
      
      private var § in§:uint = 0;
      
      private var §62§:Number;
      
      private var §9!J§:§"!g§ = null;
      
      public function §+v§()
      {
         var _loc3_:§"!g§ = null;
         super();
         this.§^t§ = new Vector.<§"!g§>(10,true);
         var _loc1_:§"!g§ = null;
         var _loc2_:uint = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = new §"!g§();
            if(_loc1_ != null)
            {
               _loc1_.§^!d§ = _loc3_;
               _loc3_.§!!j§ = _loc1_;
            }
            _loc1_ = _loc3_;
            this.§^t§[_loc2_] = _loc3_;
            _loc2_++;
         }
      }
      
      function update(param1:Event) : void
      {
         var _loc2_:Number = this.§62§ = getTimer() / 1000;
         var _loc3_:uint = 8 - this.§ in§ % 8;
         var _loc4_:§"!g§ = this.§^t§[0];
         var _loc5_:§"!g§ = this.§^t§[_loc3_];
         var _loc6_:§"!g§ = null;
         if((_loc5_.§^!d§ = this.§9!J§) != null)
         {
            this.§9!J§.§!!j§ = _loc5_;
         }
         while(_loc4_.§^!d§ != null)
         {
            if((_loc4_ = _loc4_.§^!d§).tick(_loc2_))
            {
               if(_loc4_.§!!j§ != null)
               {
                  _loc4_.§!!j§.§^!d§ = _loc4_.§^!d§;
               }
               if(_loc4_.§^!d§ != null)
               {
                  _loc4_.§^!d§.§!!j§ = _loc4_.§!!j§;
               }
               _loc6_ = _loc4_.§!!j§;
               _loc4_.§^!d§ = null;
               _loc4_.§!!j§ = null;
               _loc4_ = _loc6_;
               --this.§ in§;
            }
            if((_loc4_ = _loc4_.§^!d§).tick(_loc2_))
            {
               if(_loc4_.§!!j§ != null)
               {
                  _loc4_.§!!j§.§^!d§ = _loc4_.§^!d§;
               }
               if(_loc4_.§^!d§ != null)
               {
                  _loc4_.§^!d§.§!!j§ = _loc4_.§!!j§;
               }
               _loc6_ = _loc4_.§!!j§;
               _loc4_.§^!d§ = null;
               _loc4_.§!!j§ = null;
               _loc4_ = _loc6_;
               --this.§ in§;
            }
            if((_loc4_ = _loc4_.§^!d§).tick(_loc2_))
            {
               if(_loc4_.§!!j§ != null)
               {
                  _loc4_.§!!j§.§^!d§ = _loc4_.§^!d§;
               }
               if(_loc4_.§^!d§ != null)
               {
                  _loc4_.§^!d§.§!!j§ = _loc4_.§!!j§;
               }
               _loc6_ = _loc4_.§!!j§;
               _loc4_.§^!d§ = null;
               _loc4_.§!!j§ = null;
               _loc4_ = _loc6_;
               --this.§ in§;
            }
            if((_loc4_ = _loc4_.§^!d§).tick(_loc2_))
            {
               if(_loc4_.§!!j§ != null)
               {
                  _loc4_.§!!j§.§^!d§ = _loc4_.§^!d§;
               }
               if(_loc4_.§^!d§ != null)
               {
                  _loc4_.§^!d§.§!!j§ = _loc4_.§!!j§;
               }
               _loc6_ = _loc4_.§!!j§;
               _loc4_.§^!d§ = null;
               _loc4_.§!!j§ = null;
               _loc4_ = _loc6_;
               --this.§ in§;
            }
            if((_loc4_ = _loc4_.§^!d§).tick(_loc2_))
            {
               if(_loc4_.§!!j§ != null)
               {
                  _loc4_.§!!j§.§^!d§ = _loc4_.§^!d§;
               }
               if(_loc4_.§^!d§ != null)
               {
                  _loc4_.§^!d§.§!!j§ = _loc4_.§!!j§;
               }
               _loc6_ = _loc4_.§!!j§;
               _loc4_.§^!d§ = null;
               _loc4_.§!!j§ = null;
               _loc4_ = _loc6_;
               --this.§ in§;
            }
            if((_loc4_ = _loc4_.§^!d§).tick(_loc2_))
            {
               if(_loc4_.§!!j§ != null)
               {
                  _loc4_.§!!j§.§^!d§ = _loc4_.§^!d§;
               }
               if(_loc4_.§^!d§ != null)
               {
                  _loc4_.§^!d§.§!!j§ = _loc4_.§!!j§;
               }
               _loc6_ = _loc4_.§!!j§;
               _loc4_.§^!d§ = null;
               _loc4_.§!!j§ = null;
               _loc4_ = _loc6_;
               --this.§ in§;
            }
            if((_loc4_ = _loc4_.§^!d§).tick(_loc2_))
            {
               if(_loc4_.§!!j§ != null)
               {
                  _loc4_.§!!j§.§^!d§ = _loc4_.§^!d§;
               }
               if(_loc4_.§^!d§ != null)
               {
                  _loc4_.§^!d§.§!!j§ = _loc4_.§!!j§;
               }
               _loc6_ = _loc4_.§!!j§;
               _loc4_.§^!d§ = null;
               _loc4_.§!!j§ = null;
               _loc4_ = _loc6_;
               --this.§ in§;
            }
            if((_loc4_ = _loc4_.§^!d§).tick(_loc2_))
            {
               if(_loc4_.§!!j§ != null)
               {
                  _loc4_.§!!j§.§^!d§ = _loc4_.§^!d§;
               }
               if(_loc4_.§^!d§ != null)
               {
                  _loc4_.§^!d§.§!!j§ = _loc4_.§!!j§;
               }
               _loc6_ = _loc4_.§!!j§;
               _loc4_.§^!d§ = null;
               _loc4_.§!!j§ = null;
               _loc4_ = _loc6_;
               --this.§ in§;
            }
         }
         if((this.§9!J§ = _loc5_.§^!d§) != null)
         {
            this.§9!J§.§!!j§ = null;
         }
         _loc5_.§^!d§ = this.§^t§[_loc3_ + 1];
      }
      
      public function start() : void
      {
         this.§62§ = getTimer() / 1000;
         §[!u§.addEventListener(Event.ENTER_FRAME,this.update);
      }
      
      public function §@!=§(param1:§"!g§) : void
      {
         var _loc2_:§"!g§ = this.§9!J§;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc2_.§!!j§ != null)
               {
                  _loc2_.§!!j§.§^!d§ = _loc2_.§^!d§;
                  _loc2_.§^!d§ = null;
               }
               else
               {
                  this.§9!J§ = _loc2_.§^!d§;
               }
               if(_loc2_.§^!d§ != null)
               {
                  _loc2_.§^!d§.§!!j§ = _loc2_.§!!j§;
                  _loc2_.§!!j§ = null;
               }
               --this.§ in§;
            }
            _loc2_ = _loc2_.§^!d§;
         }
      }
      
      public function get time() : Number
      {
         return this.§62§;
      }
      
      public function stop() : void
      {
         §[!u§.removeEventListener(Event.ENTER_FRAME,this.update);
      }
      
      public function §9y§(param1:§"!g§) : void
      {
         if(param1.§^!d§ != null || param1.§!!j§ != null)
         {
            return;
         }
         if(this.§9!J§ != null)
         {
            if(this.§9!J§.§!!j§ != null)
            {
               this.§9!J§.§!!j§.§^!d§ = param1;
               param1.§!!j§ = this.§9!J§.§!!j§;
            }
            param1.§^!d§ = this.§9!J§;
            this.§9!J§.§!!j§ = param1;
         }
         this.§9!J§ = param1;
         ++this.§ in§;
      }
   }
}
