package §!$;§
{
   import §6#H§.DisplayObject;
   import starling.§core:starling_internal§.*;
   
   public class TouchEvent extends Event
   {
      
      public static const §3O§:String = "touch";
      
      private static var §[#%§:Vector.<§!r§> = new Vector.<§!r§>(0);
       
      
      private var §6"C§:Boolean;
      
      private var §3$7§:Boolean;
      
      private var §?!!§:Number;
      
      private var §2^§:Vector.<EventDispatcher>;
      
      public function TouchEvent(param1:String, param2:Vector.<§!r§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         super(param1,param5,param2);
         this.§6"C§ = param3;
         this.§3$7§ = param4;
         this.§?!!§ = -1;
         this.§2^§ = new Vector.<EventDispatcher>(0);
         var _loc6_:int = param2.length;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            if(param2[_loc7_].timestamp > this.§?!!§)
            {
               this.§?!!§ = param2[_loc7_].timestamp;
            }
            _loc7_++;
         }
      }
      
      public function §@!1§(param1:DisplayObject, param2:String = null, param3:Vector.<§!r§> = null) : Vector.<§!r§>
      {
         var _loc7_:§!r§ = null;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = false;
         if(param3 == null)
         {
            param3 = new Vector.<§!r§>(0);
         }
         var _loc4_:Vector.<§!r§>;
         var _loc5_:int = (_loc4_ = data as Vector.<§!r§>).length;
         var _loc6_:int = 0;
         while(_loc6_ < _loc5_)
         {
            _loc8_ = (_loc7_ = _loc4_[_loc6_]).§@$$§(param1);
            _loc9_ = param2 == null || param2 == _loc7_.phase;
            if(_loc8_ && _loc9_)
            {
               param3.push(_loc7_);
            }
            _loc6_++;
         }
         return param3;
      }
      
      public function §5$E§(param1:DisplayObject, param2:String = null) : §!r§
      {
         var _loc3_:§!r§ = null;
         this.§@!1§(param1,param2,§[#%§);
         if(§[#%§.length)
         {
            _loc3_ = §[#%§[0];
            §[#%§.length = 0;
            return _loc3_;
         }
         return null;
      }
      
      public function §7'§(param1:DisplayObject) : Boolean
      {
         var _loc2_:Vector.<§!r§> = null;
         var _loc3_:int = 0;
         if(this.§5$E§(param1) == null)
         {
            return false;
         }
         _loc2_ = this.§@!1§(param1);
         _loc3_ = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc2_[_loc3_].phase != §4$8§.ENDED)
            {
               return true;
            }
            _loc3_--;
         }
         return false;
      }
      
      function §&"U§(param1:Vector.<EventDispatcher>) : void
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
            §15§(param1[0] as EventDispatcher);
            _loc4_ = 0;
            while(_loc4_ < _loc2_)
            {
               _loc5_ = param1[_loc4_] as EventDispatcher;
               if(this.§2^§.indexOf(_loc5_) == -1)
               {
                  _loc6_ = _loc5_.invokeEvent(this);
                  this.§2^§.push(_loc5_);
                  if(_loc6_)
                  {
                     break;
                  }
               }
               _loc4_++;
            }
            §15§(_loc3_);
         }
      }
      
      public function get timestamp() : Number
      {
         return this.§?!!§;
      }
      
      public function get §-#?§() : Vector.<§!r§>
      {
         return (data as Vector.<§!r§>).concat() as Vector.<§!r§>;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§6"C§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§3$7§;
      }
   }
}
