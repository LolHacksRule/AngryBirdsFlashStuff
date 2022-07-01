package §1O§
{
   import §4!7§.§%!m§;
   import §4!7§.§,u§;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.utils.getTimer;
   
   public class §59§ implements §%!m§
   {
      
      private static var §^!§:Shape = new Shape();
       
      
      private var §&w§:Vector.<§,u§>;
      
      private var §4q§:uint = 0;
      
      private var §8!E§:Number;
      
      private var §,=§:§,u§ = null;
      
      public function §59§()
      {
         var _loc3_:§,u§ = null;
         super();
         this.§&w§ = new Vector.<§,u§>(10,true);
         var _loc1_:§,u§ = null;
         var _loc2_:uint = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = new §,u§();
            if(_loc1_ != null)
            {
               _loc1_.§^e§ = _loc3_;
               _loc3_.§>S§ = _loc1_;
            }
            _loc1_ = _loc3_;
            this.§&w§[_loc2_] = _loc3_;
            _loc2_++;
         }
      }
      
      function update(param1:Event) : void
      {
         var _loc2_:Number = this.§8!E§ = getTimer() / 1000;
         var _loc3_:uint = 8 - this.§4q§ % 8;
         var _loc4_:§,u§ = this.§&w§[0];
         var _loc5_:§,u§ = this.§&w§[_loc3_];
         var _loc6_:§,u§ = null;
         if((_loc5_.§^e§ = this.§,=§) != null)
         {
            this.§,=§.§>S§ = _loc5_;
         }
         while(_loc4_.§^e§ != null)
         {
            if((_loc4_ = _loc4_.§^e§).tick(_loc2_))
            {
               if(_loc4_.§>S§ != null)
               {
                  _loc4_.§>S§.§^e§ = _loc4_.§^e§;
               }
               if(_loc4_.§^e§ != null)
               {
                  _loc4_.§^e§.§>S§ = _loc4_.§>S§;
               }
               _loc6_ = _loc4_.§>S§;
               _loc4_.§^e§ = null;
               _loc4_.§>S§ = null;
               _loc4_ = _loc6_;
               --this.§4q§;
            }
            if((_loc4_ = _loc4_.§^e§).tick(_loc2_))
            {
               if(_loc4_.§>S§ != null)
               {
                  _loc4_.§>S§.§^e§ = _loc4_.§^e§;
               }
               if(_loc4_.§^e§ != null)
               {
                  _loc4_.§^e§.§>S§ = _loc4_.§>S§;
               }
               _loc6_ = _loc4_.§>S§;
               _loc4_.§^e§ = null;
               _loc4_.§>S§ = null;
               _loc4_ = _loc6_;
               --this.§4q§;
            }
            if((_loc4_ = _loc4_.§^e§).tick(_loc2_))
            {
               if(_loc4_.§>S§ != null)
               {
                  _loc4_.§>S§.§^e§ = _loc4_.§^e§;
               }
               if(_loc4_.§^e§ != null)
               {
                  _loc4_.§^e§.§>S§ = _loc4_.§>S§;
               }
               _loc6_ = _loc4_.§>S§;
               _loc4_.§^e§ = null;
               _loc4_.§>S§ = null;
               _loc4_ = _loc6_;
               --this.§4q§;
            }
            if((_loc4_ = _loc4_.§^e§).tick(_loc2_))
            {
               if(_loc4_.§>S§ != null)
               {
                  _loc4_.§>S§.§^e§ = _loc4_.§^e§;
               }
               if(_loc4_.§^e§ != null)
               {
                  _loc4_.§^e§.§>S§ = _loc4_.§>S§;
               }
               _loc6_ = _loc4_.§>S§;
               _loc4_.§^e§ = null;
               _loc4_.§>S§ = null;
               _loc4_ = _loc6_;
               --this.§4q§;
            }
            if((_loc4_ = _loc4_.§^e§).tick(_loc2_))
            {
               if(_loc4_.§>S§ != null)
               {
                  _loc4_.§>S§.§^e§ = _loc4_.§^e§;
               }
               if(_loc4_.§^e§ != null)
               {
                  _loc4_.§^e§.§>S§ = _loc4_.§>S§;
               }
               _loc6_ = _loc4_.§>S§;
               _loc4_.§^e§ = null;
               _loc4_.§>S§ = null;
               _loc4_ = _loc6_;
               --this.§4q§;
            }
            if((_loc4_ = _loc4_.§^e§).tick(_loc2_))
            {
               if(_loc4_.§>S§ != null)
               {
                  _loc4_.§>S§.§^e§ = _loc4_.§^e§;
               }
               if(_loc4_.§^e§ != null)
               {
                  _loc4_.§^e§.§>S§ = _loc4_.§>S§;
               }
               _loc6_ = _loc4_.§>S§;
               _loc4_.§^e§ = null;
               _loc4_.§>S§ = null;
               _loc4_ = _loc6_;
               --this.§4q§;
            }
            if((_loc4_ = _loc4_.§^e§).tick(_loc2_))
            {
               if(_loc4_.§>S§ != null)
               {
                  _loc4_.§>S§.§^e§ = _loc4_.§^e§;
               }
               if(_loc4_.§^e§ != null)
               {
                  _loc4_.§^e§.§>S§ = _loc4_.§>S§;
               }
               _loc6_ = _loc4_.§>S§;
               _loc4_.§^e§ = null;
               _loc4_.§>S§ = null;
               _loc4_ = _loc6_;
               --this.§4q§;
            }
            if((_loc4_ = _loc4_.§^e§).tick(_loc2_))
            {
               if(_loc4_.§>S§ != null)
               {
                  _loc4_.§>S§.§^e§ = _loc4_.§^e§;
               }
               if(_loc4_.§^e§ != null)
               {
                  _loc4_.§^e§.§>S§ = _loc4_.§>S§;
               }
               _loc6_ = _loc4_.§>S§;
               _loc4_.§^e§ = null;
               _loc4_.§>S§ = null;
               _loc4_ = _loc6_;
               --this.§4q§;
            }
         }
         if((this.§,=§ = _loc5_.§^e§) != null)
         {
            this.§,=§.§>S§ = null;
         }
         _loc5_.§^e§ = this.§&w§[_loc3_ + 1];
      }
      
      public function start() : void
      {
         this.§8!E§ = getTimer() / 1000;
         §^!§.addEventListener(Event.ENTER_FRAME,this.update);
      }
      
      public function §]g§(param1:§,u§) : void
      {
         var _loc2_:§,u§ = this.§,=§;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc2_.§>S§ != null)
               {
                  _loc2_.§>S§.§^e§ = _loc2_.§^e§;
                  _loc2_.§^e§ = null;
               }
               else
               {
                  this.§,=§ = _loc2_.§^e§;
               }
               if(_loc2_.§^e§ != null)
               {
                  _loc2_.§^e§.§>S§ = _loc2_.§>S§;
                  _loc2_.§>S§ = null;
               }
               --this.§4q§;
            }
            _loc2_ = _loc2_.§^e§;
         }
      }
      
      public function get time() : Number
      {
         return this.§8!E§;
      }
      
      public function stop() : void
      {
         §^!§.removeEventListener(Event.ENTER_FRAME,this.update);
      }
      
      public function §'`§(param1:§,u§) : void
      {
         if(param1.§^e§ != null || param1.§>S§ != null)
         {
            return;
         }
         if(this.§,=§ != null)
         {
            if(this.§,=§.§>S§ != null)
            {
               this.§,=§.§>S§.§^e§ = param1;
               param1.§>S§ = this.§,=§.§>S§;
            }
            param1.§^e§ = this.§,=§;
            this.§,=§.§>S§ = param1;
         }
         this.§,=§ = param1;
         ++this.§4q§;
      }
   }
}
