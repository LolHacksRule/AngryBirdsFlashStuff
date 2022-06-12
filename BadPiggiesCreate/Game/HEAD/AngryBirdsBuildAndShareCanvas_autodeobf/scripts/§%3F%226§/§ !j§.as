package §?"6§
{
   import §%!n§.§'!r§;
   import §%!n§.§;!'§;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.utils.getTimer;
   
   public class § !j§ implements §;!'§
   {
      
      private static var §<!d§:Shape = new Shape();
       
      
      private var §<#§:Vector.<§'!r§>;
      
      private var §1!0§:uint = 0;
      
      private var §;1§:Number;
      
      private var §[P§:§'!r§ = null;
      
      public function § !j§()
      {
         var _loc3_:§'!r§ = null;
         super();
         this.§<#§ = new Vector.<§'!r§>(10,true);
         var _loc1_:§'!r§ = null;
         var _loc2_:uint = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = new §'!r§();
            if(_loc1_ != null)
            {
               _loc1_.§,"%§ = _loc3_;
               _loc3_.§<!>§ = _loc1_;
            }
            _loc1_ = _loc3_;
            this.§<#§[_loc2_] = _loc3_;
            _loc2_++;
         }
      }
      
      function update(param1:Event) : void
      {
         var _loc2_:Number = this.§;1§ = getTimer() / 1000;
         var _loc3_:uint = 8 - this.§1!0§ % 8;
         var _loc4_:§'!r§ = this.§<#§[0];
         var _loc5_:§'!r§ = this.§<#§[_loc3_];
         var _loc6_:§'!r§ = null;
         if((_loc5_.§,"%§ = this.§[P§) != null)
         {
            this.§[P§.§<!>§ = _loc5_;
         }
         while(_loc4_.§,"%§ != null)
         {
            if((_loc4_ = _loc4_.§,"%§).tick(_loc2_))
            {
               if(_loc4_.§<!>§ != null)
               {
                  _loc4_.§<!>§.§,"%§ = _loc4_.§,"%§;
               }
               if(_loc4_.§,"%§ != null)
               {
                  _loc4_.§,"%§.§<!>§ = _loc4_.§<!>§;
               }
               _loc6_ = _loc4_.§<!>§;
               _loc4_.§,"%§ = null;
               _loc4_.§<!>§ = null;
               _loc4_ = _loc6_;
               --this.§1!0§;
            }
            if((_loc4_ = _loc4_.§,"%§).tick(_loc2_))
            {
               if(_loc4_.§<!>§ != null)
               {
                  _loc4_.§<!>§.§,"%§ = _loc4_.§,"%§;
               }
               if(_loc4_.§,"%§ != null)
               {
                  _loc4_.§,"%§.§<!>§ = _loc4_.§<!>§;
               }
               _loc6_ = _loc4_.§<!>§;
               _loc4_.§,"%§ = null;
               _loc4_.§<!>§ = null;
               _loc4_ = _loc6_;
               --this.§1!0§;
            }
            if((_loc4_ = _loc4_.§,"%§).tick(_loc2_))
            {
               if(_loc4_.§<!>§ != null)
               {
                  _loc4_.§<!>§.§,"%§ = _loc4_.§,"%§;
               }
               if(_loc4_.§,"%§ != null)
               {
                  _loc4_.§,"%§.§<!>§ = _loc4_.§<!>§;
               }
               _loc6_ = _loc4_.§<!>§;
               _loc4_.§,"%§ = null;
               _loc4_.§<!>§ = null;
               _loc4_ = _loc6_;
               --this.§1!0§;
            }
            if((_loc4_ = _loc4_.§,"%§).tick(_loc2_))
            {
               if(_loc4_.§<!>§ != null)
               {
                  _loc4_.§<!>§.§,"%§ = _loc4_.§,"%§;
               }
               if(_loc4_.§,"%§ != null)
               {
                  _loc4_.§,"%§.§<!>§ = _loc4_.§<!>§;
               }
               _loc6_ = _loc4_.§<!>§;
               _loc4_.§,"%§ = null;
               _loc4_.§<!>§ = null;
               _loc4_ = _loc6_;
               --this.§1!0§;
            }
            if((_loc4_ = _loc4_.§,"%§).tick(_loc2_))
            {
               if(_loc4_.§<!>§ != null)
               {
                  _loc4_.§<!>§.§,"%§ = _loc4_.§,"%§;
               }
               if(_loc4_.§,"%§ != null)
               {
                  _loc4_.§,"%§.§<!>§ = _loc4_.§<!>§;
               }
               _loc6_ = _loc4_.§<!>§;
               _loc4_.§,"%§ = null;
               _loc4_.§<!>§ = null;
               _loc4_ = _loc6_;
               --this.§1!0§;
            }
            if((_loc4_ = _loc4_.§,"%§).tick(_loc2_))
            {
               if(_loc4_.§<!>§ != null)
               {
                  _loc4_.§<!>§.§,"%§ = _loc4_.§,"%§;
               }
               if(_loc4_.§,"%§ != null)
               {
                  _loc4_.§,"%§.§<!>§ = _loc4_.§<!>§;
               }
               _loc6_ = _loc4_.§<!>§;
               _loc4_.§,"%§ = null;
               _loc4_.§<!>§ = null;
               _loc4_ = _loc6_;
               --this.§1!0§;
            }
            if((_loc4_ = _loc4_.§,"%§).tick(_loc2_))
            {
               if(_loc4_.§<!>§ != null)
               {
                  _loc4_.§<!>§.§,"%§ = _loc4_.§,"%§;
               }
               if(_loc4_.§,"%§ != null)
               {
                  _loc4_.§,"%§.§<!>§ = _loc4_.§<!>§;
               }
               _loc6_ = _loc4_.§<!>§;
               _loc4_.§,"%§ = null;
               _loc4_.§<!>§ = null;
               _loc4_ = _loc6_;
               --this.§1!0§;
            }
            if((_loc4_ = _loc4_.§,"%§).tick(_loc2_))
            {
               if(_loc4_.§<!>§ != null)
               {
                  _loc4_.§<!>§.§,"%§ = _loc4_.§,"%§;
               }
               if(_loc4_.§,"%§ != null)
               {
                  _loc4_.§,"%§.§<!>§ = _loc4_.§<!>§;
               }
               _loc6_ = _loc4_.§<!>§;
               _loc4_.§,"%§ = null;
               _loc4_.§<!>§ = null;
               _loc4_ = _loc6_;
               --this.§1!0§;
            }
         }
         if((this.§[P§ = _loc5_.§,"%§) != null)
         {
            this.§[P§.§<!>§ = null;
         }
         _loc5_.§,"%§ = this.§<#§[_loc3_ + 1];
      }
      
      public function start() : void
      {
         this.§;1§ = getTimer() / 1000;
         §<!d§.addEventListener(Event.ENTER_FRAME,this.update);
      }
      
      public function §#!Y§(param1:§'!r§) : void
      {
         var _loc2_:§'!r§ = this.§[P§;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc2_.§<!>§ != null)
               {
                  _loc2_.§<!>§.§,"%§ = _loc2_.§,"%§;
                  _loc2_.§,"%§ = null;
               }
               else
               {
                  this.§[P§ = _loc2_.§,"%§;
               }
               if(_loc2_.§,"%§ != null)
               {
                  _loc2_.§,"%§.§<!>§ = _loc2_.§<!>§;
                  _loc2_.§<!>§ = null;
               }
               --this.§1!0§;
            }
            _loc2_ = _loc2_.§,"%§;
         }
      }
      
      public function get time() : Number
      {
         return this.§;1§;
      }
      
      public function stop() : void
      {
         §<!d§.removeEventListener(Event.ENTER_FRAME,this.update);
      }
      
      public function §]!a§(param1:§'!r§) : void
      {
         if(param1.§,"%§ != null || param1.§<!>§ != null)
         {
            return;
         }
         if(this.§[P§ != null)
         {
            if(this.§[P§.§<!>§ != null)
            {
               this.§[P§.§<!>§.§,"%§ = param1;
               param1.§<!>§ = this.§[P§.§<!>§;
            }
            param1.§,"%§ = this.§[P§;
            this.§[P§.§<!>§ = param1;
         }
         this.§[P§ = param1;
         ++this.§1!0§;
      }
   }
}
