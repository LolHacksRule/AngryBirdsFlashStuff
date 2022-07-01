package §<!Z§
{
   import §2n§.§5!t§;
   import §2n§.§8"7§;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.utils.getTimer;
   
   public class §5"$§ implements §8"7§
   {
      
      private static var §`!]§:Shape = new Shape();
       
      
      private var §[1§:Vector.<§5!t§>;
      
      private var §[I§:uint = 0;
      
      private var §-!"§:Number;
      
      private var §^!§:§5!t§ = null;
      
      public function §5"$§()
      {
         var _loc3_:§5!t§ = null;
         super();
         this.§[1§ = new Vector.<§5!t§>(10,true);
         var _loc1_:§5!t§ = null;
         var _loc2_:uint = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = new §5!t§();
            if(_loc1_ != null)
            {
               _loc1_.§5!W§ = _loc3_;
               _loc3_.§?!1§ = _loc1_;
            }
            _loc1_ = _loc3_;
            this.§[1§[_loc2_] = _loc3_;
            _loc2_++;
         }
      }
      
      function update(param1:Event) : void
      {
         var _loc2_:Number = this.§-!"§ = getTimer() / 1000;
         var _loc3_:uint = 8 - this.§[I§ % 8;
         var _loc4_:§5!t§ = this.§[1§[0];
         var _loc5_:§5!t§ = this.§[1§[_loc3_];
         var _loc6_:§5!t§ = null;
         if((_loc5_.§5!W§ = this.§^!§) != null)
         {
            this.§^!§.§?!1§ = _loc5_;
         }
         while(_loc4_.§5!W§ != null)
         {
            if((_loc4_ = _loc4_.§5!W§).tick(_loc2_))
            {
               if(_loc4_.§?!1§ != null)
               {
                  _loc4_.§?!1§.§5!W§ = _loc4_.§5!W§;
               }
               if(_loc4_.§5!W§ != null)
               {
                  _loc4_.§5!W§.§?!1§ = _loc4_.§?!1§;
               }
               _loc6_ = _loc4_.§?!1§;
               _loc4_.§5!W§ = null;
               _loc4_.§?!1§ = null;
               _loc4_ = _loc6_;
               --this.§[I§;
            }
            if((_loc4_ = _loc4_.§5!W§).tick(_loc2_))
            {
               if(_loc4_.§?!1§ != null)
               {
                  _loc4_.§?!1§.§5!W§ = _loc4_.§5!W§;
               }
               if(_loc4_.§5!W§ != null)
               {
                  _loc4_.§5!W§.§?!1§ = _loc4_.§?!1§;
               }
               _loc6_ = _loc4_.§?!1§;
               _loc4_.§5!W§ = null;
               _loc4_.§?!1§ = null;
               _loc4_ = _loc6_;
               --this.§[I§;
            }
            if((_loc4_ = _loc4_.§5!W§).tick(_loc2_))
            {
               if(_loc4_.§?!1§ != null)
               {
                  _loc4_.§?!1§.§5!W§ = _loc4_.§5!W§;
               }
               if(_loc4_.§5!W§ != null)
               {
                  _loc4_.§5!W§.§?!1§ = _loc4_.§?!1§;
               }
               _loc6_ = _loc4_.§?!1§;
               _loc4_.§5!W§ = null;
               _loc4_.§?!1§ = null;
               _loc4_ = _loc6_;
               --this.§[I§;
            }
            if((_loc4_ = _loc4_.§5!W§).tick(_loc2_))
            {
               if(_loc4_.§?!1§ != null)
               {
                  _loc4_.§?!1§.§5!W§ = _loc4_.§5!W§;
               }
               if(_loc4_.§5!W§ != null)
               {
                  _loc4_.§5!W§.§?!1§ = _loc4_.§?!1§;
               }
               _loc6_ = _loc4_.§?!1§;
               _loc4_.§5!W§ = null;
               _loc4_.§?!1§ = null;
               _loc4_ = _loc6_;
               --this.§[I§;
            }
            if((_loc4_ = _loc4_.§5!W§).tick(_loc2_))
            {
               if(_loc4_.§?!1§ != null)
               {
                  _loc4_.§?!1§.§5!W§ = _loc4_.§5!W§;
               }
               if(_loc4_.§5!W§ != null)
               {
                  _loc4_.§5!W§.§?!1§ = _loc4_.§?!1§;
               }
               _loc6_ = _loc4_.§?!1§;
               _loc4_.§5!W§ = null;
               _loc4_.§?!1§ = null;
               _loc4_ = _loc6_;
               --this.§[I§;
            }
            if((_loc4_ = _loc4_.§5!W§).tick(_loc2_))
            {
               if(_loc4_.§?!1§ != null)
               {
                  _loc4_.§?!1§.§5!W§ = _loc4_.§5!W§;
               }
               if(_loc4_.§5!W§ != null)
               {
                  _loc4_.§5!W§.§?!1§ = _loc4_.§?!1§;
               }
               _loc6_ = _loc4_.§?!1§;
               _loc4_.§5!W§ = null;
               _loc4_.§?!1§ = null;
               _loc4_ = _loc6_;
               --this.§[I§;
            }
            if((_loc4_ = _loc4_.§5!W§).tick(_loc2_))
            {
               if(_loc4_.§?!1§ != null)
               {
                  _loc4_.§?!1§.§5!W§ = _loc4_.§5!W§;
               }
               if(_loc4_.§5!W§ != null)
               {
                  _loc4_.§5!W§.§?!1§ = _loc4_.§?!1§;
               }
               _loc6_ = _loc4_.§?!1§;
               _loc4_.§5!W§ = null;
               _loc4_.§?!1§ = null;
               _loc4_ = _loc6_;
               --this.§[I§;
            }
            if((_loc4_ = _loc4_.§5!W§).tick(_loc2_))
            {
               if(_loc4_.§?!1§ != null)
               {
                  _loc4_.§?!1§.§5!W§ = _loc4_.§5!W§;
               }
               if(_loc4_.§5!W§ != null)
               {
                  _loc4_.§5!W§.§?!1§ = _loc4_.§?!1§;
               }
               _loc6_ = _loc4_.§?!1§;
               _loc4_.§5!W§ = null;
               _loc4_.§?!1§ = null;
               _loc4_ = _loc6_;
               --this.§[I§;
            }
         }
         if((this.§^!§ = _loc5_.§5!W§) != null)
         {
            this.§^!§.§?!1§ = null;
         }
         _loc5_.§5!W§ = this.§[1§[_loc3_ + 1];
      }
      
      public function start() : void
      {
         this.§-!"§ = getTimer() / 1000;
         §`!]§.addEventListener(Event.ENTER_FRAME,this.update);
      }
      
      public function §,U§(param1:§5!t§) : void
      {
         var _loc2_:§5!t§ = this.§^!§;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc2_.§?!1§ != null)
               {
                  _loc2_.§?!1§.§5!W§ = _loc2_.§5!W§;
                  _loc2_.§5!W§ = null;
               }
               else
               {
                  this.§^!§ = _loc2_.§5!W§;
               }
               if(_loc2_.§5!W§ != null)
               {
                  _loc2_.§5!W§.§?!1§ = _loc2_.§?!1§;
                  _loc2_.§?!1§ = null;
               }
               --this.§[I§;
            }
            _loc2_ = _loc2_.§5!W§;
         }
      }
      
      public function get time() : Number
      {
         return this.§-!"§;
      }
      
      public function stop() : void
      {
         §`!]§.removeEventListener(Event.ENTER_FRAME,this.update);
      }
      
      public function §["3§(param1:§5!t§) : void
      {
         if(param1.§5!W§ != null || param1.§?!1§ != null)
         {
            return;
         }
         if(this.§^!§ != null)
         {
            if(this.§^!§.§?!1§ != null)
            {
               this.§^!§.§?!1§.§5!W§ = param1;
               param1.§?!1§ = this.§^!§.§?!1§;
            }
            param1.§5!W§ = this.§^!§;
            this.§^!§.§?!1§ = param1;
         }
         this.§^!§ = param1;
         ++this.§[I§;
      }
   }
}
