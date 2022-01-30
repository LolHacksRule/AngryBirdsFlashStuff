package §2n§
{
   import §]+§.§"G§;
   import §]+§.§%a§;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.utils.getTimer;
   
   public class §^!7§ implements §"G§
   {
      
      private static var §4!G§:Shape = new Shape();
       
      
      private var §81§:Vector.<§%a§>;
      
      private var §&j§:uint = 0;
      
      private var §1!X§:Number;
      
      private var §5!=§:§%a§ = null;
      
      public function §^!7§()
      {
         var _loc3_:§%a§ = null;
         super();
         this.§81§ = new Vector.<§%a§>(10,true);
         var _loc1_:§%a§ = null;
         var _loc2_:uint = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = new §%a§();
            if(_loc1_ != null)
            {
               _loc1_.§1!@§ = _loc3_;
               _loc3_.§!6§ = _loc1_;
            }
            _loc1_ = _loc3_;
            this.§81§[_loc2_] = _loc3_;
            _loc2_++;
         }
      }
      
      function update(param1:Event) : void
      {
         var _loc2_:Number = this.§1!X§ = getTimer() / 1000;
         var _loc3_:uint = 8 - this.§&j§ % 8;
         var _loc4_:§%a§ = this.§81§[0];
         var _loc5_:§%a§ = this.§81§[_loc3_];
         var _loc6_:§%a§ = null;
         if((_loc5_.§1!@§ = this.§5!=§) != null)
         {
            this.§5!=§.§!6§ = _loc5_;
         }
         while(_loc4_.§1!@§ != null)
         {
            if((_loc4_ = _loc4_.§1!@§).tick(_loc2_))
            {
               if(_loc4_.§!6§ != null)
               {
                  _loc4_.§!6§.§1!@§ = _loc4_.§1!@§;
               }
               if(_loc4_.§1!@§ != null)
               {
                  _loc4_.§1!@§.§!6§ = _loc4_.§!6§;
               }
               _loc6_ = _loc4_.§!6§;
               _loc4_.§1!@§ = null;
               _loc4_.§!6§ = null;
               _loc4_ = _loc6_;
               --this.§&j§;
            }
            if((_loc4_ = _loc4_.§1!@§).tick(_loc2_))
            {
               if(_loc4_.§!6§ != null)
               {
                  _loc4_.§!6§.§1!@§ = _loc4_.§1!@§;
               }
               if(_loc4_.§1!@§ != null)
               {
                  _loc4_.§1!@§.§!6§ = _loc4_.§!6§;
               }
               _loc6_ = _loc4_.§!6§;
               _loc4_.§1!@§ = null;
               _loc4_.§!6§ = null;
               _loc4_ = _loc6_;
               --this.§&j§;
            }
            if((_loc4_ = _loc4_.§1!@§).tick(_loc2_))
            {
               if(_loc4_.§!6§ != null)
               {
                  _loc4_.§!6§.§1!@§ = _loc4_.§1!@§;
               }
               if(_loc4_.§1!@§ != null)
               {
                  _loc4_.§1!@§.§!6§ = _loc4_.§!6§;
               }
               _loc6_ = _loc4_.§!6§;
               _loc4_.§1!@§ = null;
               _loc4_.§!6§ = null;
               _loc4_ = _loc6_;
               --this.§&j§;
            }
            if((_loc4_ = _loc4_.§1!@§).tick(_loc2_))
            {
               if(_loc4_.§!6§ != null)
               {
                  _loc4_.§!6§.§1!@§ = _loc4_.§1!@§;
               }
               if(_loc4_.§1!@§ != null)
               {
                  _loc4_.§1!@§.§!6§ = _loc4_.§!6§;
               }
               _loc6_ = _loc4_.§!6§;
               _loc4_.§1!@§ = null;
               _loc4_.§!6§ = null;
               _loc4_ = _loc6_;
               --this.§&j§;
            }
            if((_loc4_ = _loc4_.§1!@§).tick(_loc2_))
            {
               if(_loc4_.§!6§ != null)
               {
                  _loc4_.§!6§.§1!@§ = _loc4_.§1!@§;
               }
               if(_loc4_.§1!@§ != null)
               {
                  _loc4_.§1!@§.§!6§ = _loc4_.§!6§;
               }
               _loc6_ = _loc4_.§!6§;
               _loc4_.§1!@§ = null;
               _loc4_.§!6§ = null;
               _loc4_ = _loc6_;
               --this.§&j§;
            }
            if((_loc4_ = _loc4_.§1!@§).tick(_loc2_))
            {
               if(_loc4_.§!6§ != null)
               {
                  _loc4_.§!6§.§1!@§ = _loc4_.§1!@§;
               }
               if(_loc4_.§1!@§ != null)
               {
                  _loc4_.§1!@§.§!6§ = _loc4_.§!6§;
               }
               _loc6_ = _loc4_.§!6§;
               _loc4_.§1!@§ = null;
               _loc4_.§!6§ = null;
               _loc4_ = _loc6_;
               --this.§&j§;
            }
            if((_loc4_ = _loc4_.§1!@§).tick(_loc2_))
            {
               if(_loc4_.§!6§ != null)
               {
                  _loc4_.§!6§.§1!@§ = _loc4_.§1!@§;
               }
               if(_loc4_.§1!@§ != null)
               {
                  _loc4_.§1!@§.§!6§ = _loc4_.§!6§;
               }
               _loc6_ = _loc4_.§!6§;
               _loc4_.§1!@§ = null;
               _loc4_.§!6§ = null;
               _loc4_ = _loc6_;
               --this.§&j§;
            }
            if((_loc4_ = _loc4_.§1!@§).tick(_loc2_))
            {
               if(_loc4_.§!6§ != null)
               {
                  _loc4_.§!6§.§1!@§ = _loc4_.§1!@§;
               }
               if(_loc4_.§1!@§ != null)
               {
                  _loc4_.§1!@§.§!6§ = _loc4_.§!6§;
               }
               _loc6_ = _loc4_.§!6§;
               _loc4_.§1!@§ = null;
               _loc4_.§!6§ = null;
               _loc4_ = _loc6_;
               --this.§&j§;
            }
         }
         if((this.§5!=§ = _loc5_.§1!@§) != null)
         {
            this.§5!=§.§!6§ = null;
         }
         _loc5_.§1!@§ = this.§81§[_loc3_ + 1];
      }
      
      public function start() : void
      {
         this.§1!X§ = getTimer() / 1000;
         §4!G§.addEventListener(Event.ENTER_FRAME,this.update);
      }
      
      public function §2>§(param1:§%a§) : void
      {
         var _loc2_:§%a§ = this.§5!=§;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc2_.§!6§ != null)
               {
                  _loc2_.§!6§.§1!@§ = _loc2_.§1!@§;
                  _loc2_.§1!@§ = null;
               }
               else
               {
                  this.§5!=§ = _loc2_.§1!@§;
               }
               if(_loc2_.§1!@§ != null)
               {
                  _loc2_.§1!@§.§!6§ = _loc2_.§!6§;
                  _loc2_.§!6§ = null;
               }
               --this.§&j§;
            }
            _loc2_ = _loc2_.§1!@§;
         }
      }
      
      public function get time() : Number
      {
         return this.§1!X§;
      }
      
      public function stop() : void
      {
         §4!G§.removeEventListener(Event.ENTER_FRAME,this.update);
      }
      
      public function §-q§(param1:§%a§) : void
      {
         if(param1.§1!@§ != null || param1.§!6§ != null)
         {
            return;
         }
         if(this.§5!=§ != null)
         {
            if(this.§5!=§.§!6§ != null)
            {
               this.§5!=§.§!6§.§1!@§ = param1;
               param1.§!6§ = this.§5!=§.§!6§;
            }
            param1.§1!@§ = this.§5!=§;
            this.§5!=§.§!6§ = param1;
         }
         this.§5!=§ = param1;
         ++this.§&j§;
      }
   }
}
