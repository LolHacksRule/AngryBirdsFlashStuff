package §,$&§
{
   import §,#e§.DisplayObject;
   import starling.§core:starling_internal§.*;
   
   public class TouchEvent extends Event
   {
      
      public static const §"x§:String = "touch";
      
      private static var §7$0§:Vector.<§4"i§> = new Vector.<§4"i§>(0);
       
      
      private var §+!'§:Boolean;
      
      private var §4!D§:Boolean;
      
      private var §4#6§:Number;
      
      private var §%!7§:Vector.<EventDispatcher>;
      
      public function TouchEvent(param1:String, param2:Vector.<§4"i§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         super(param1,param5,param2);
         this.§+!'§ = param3;
         this.§4!D§ = param4;
         this.§4#6§ = -1;
         this.§%!7§ = new Vector.<EventDispatcher>(0);
         var _loc6_:int = param2.length;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            if(param2[_loc7_].timestamp > this.§4#6§)
            {
               this.§4#6§ = param2[_loc7_].timestamp;
            }
            _loc7_++;
         }
      }
      
      public function §+"E§(param1:DisplayObject, param2:String = null, param3:Vector.<§4"i§> = null) : Vector.<§4"i§>
      {
         var _loc7_:§4"i§ = null;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = false;
         if(param3 == null)
         {
            param3 = new Vector.<§4"i§>(0);
         }
         var _loc4_:Vector.<§4"i§>;
         var _loc5_:int = (_loc4_ = data as Vector.<§4"i§>).length;
         var _loc6_:int = 0;
         while(_loc6_ < _loc5_)
         {
            _loc8_ = (_loc7_ = _loc4_[_loc6_]).§-" §(param1);
            _loc9_ = param2 == null || param2 == _loc7_.phase;
            if(_loc8_ && _loc9_)
            {
               param3.push(_loc7_);
            }
            _loc6_++;
         }
         return param3;
      }
      
      public function §]!v§(param1:DisplayObject, param2:String = null) : §4"i§
      {
         var _loc3_:§4"i§ = null;
         this.§+"E§(param1,param2,§7$0§);
         if(§7$0§.length)
         {
            _loc3_ = §7$0§[0];
            §7$0§.length = 0;
            return _loc3_;
         }
         return null;
      }
      
      public function §"k§(param1:DisplayObject) : Boolean
      {
         var _loc2_:Vector.<§4"i§> = null;
         var _loc3_:int = 0;
         if(this.§]!v§(param1) == null)
         {
            return false;
         }
         _loc2_ = this.§+"E§(param1);
         _loc3_ = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc2_[_loc3_].phase != §-"E§.ENDED)
            {
               return true;
            }
            _loc3_--;
         }
         return false;
      }
      
      function §'!I§(param1:Vector.<EventDispatcher>) : void
      {
         var _loc2_:int = 0;
         var _loc3_:EventDispatcher = null;
         var _loc4_:int = 0;
         var _loc5_:EventDispatcher = null;
         var _loc6_:Boolean = false;
         if(param1 && param1.length)
         {
            _loc2_ = !!bubbles ? int(param1.length) : 1;
            _loc3_ = target;
            §'2§(param1[0] as EventDispatcher);
            _loc4_ = 0;
            while(_loc4_ < _loc2_)
            {
               _loc5_ = param1[_loc4_] as EventDispatcher;
               if(this.§%!7§.indexOf(_loc5_) == -1)
               {
                  _loc6_ = _loc5_.invokeEvent(this);
                  this.§%!7§.push(_loc5_);
                  if(_loc6_)
                  {
                     break;
                  }
               }
               _loc4_++;
            }
            §'2§(_loc3_);
         }
      }
      
      public function get timestamp() : Number
      {
         return this.§4#6§;
      }
      
      public function get §[r§() : Vector.<§4"i§>
      {
         return (data as Vector.<§4"i§>).concat() as Vector.<§4"i§>;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§+!'§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§4!D§;
      }
   }
}
