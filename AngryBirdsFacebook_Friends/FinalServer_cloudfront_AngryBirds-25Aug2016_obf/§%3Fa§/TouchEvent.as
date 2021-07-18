package §?a§
{
   import §9$§.DisplayObject;
   import starling.§core:starling_internal§.*;
   
   public class TouchEvent extends Event
   {
      
      public static const §#q§:String = "touch";
      
      private static var §;",§:Vector.<§=!U§> = new Vector.<§=!U§>(0);
       
      
      private var §`!Y§:Boolean;
      
      private var §`"p§:Boolean;
      
      private var §1!k§:Number;
      
      private var §?f§:Vector.<EventDispatcher>;
      
      public function TouchEvent(param1:String, param2:Vector.<§=!U§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         super(param1,param5,param2);
         this.§`!Y§ = param3;
         this.§`"p§ = param4;
         this.§1!k§ = -1;
         this.§?f§ = new Vector.<EventDispatcher>(0);
         var _loc6_:int = param2.length;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            if(param2[_loc7_].timestamp > this.§1!k§)
            {
               this.§1!k§ = param2[_loc7_].timestamp;
            }
            _loc7_++;
         }
      }
      
      public function §0b§(param1:DisplayObject, param2:String = null, param3:Vector.<§=!U§> = null) : Vector.<§=!U§>
      {
         var _loc7_:§=!U§ = null;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = false;
         if(param3 == null)
         {
            param3 = new Vector.<§=!U§>(0);
         }
         var _loc4_:Vector.<§=!U§>;
         var _loc5_:int = (_loc4_ = data as Vector.<§=!U§>).length;
         var _loc6_:int = 0;
         while(_loc6_ < _loc5_)
         {
            _loc8_ = (_loc7_ = _loc4_[_loc6_]).§&"a§(param1);
            _loc9_ = param2 == null || param2 == _loc7_.phase;
            if(_loc8_ && _loc9_)
            {
               param3.push(_loc7_);
            }
            _loc6_++;
         }
         return param3;
      }
      
      public function §`[§(param1:DisplayObject, param2:String = null) : §=!U§
      {
         var _loc3_:§=!U§ = null;
         this.§0b§(param1,param2,§;",§);
         if(§;",§.length)
         {
            _loc3_ = §;",§[0];
            §;",§.length = 0;
            return _loc3_;
         }
         return null;
      }
      
      public function §<l§(param1:DisplayObject) : Boolean
      {
         var _loc2_:Vector.<§=!U§> = null;
         var _loc3_:int = 0;
         if(this.§`[§(param1) == null)
         {
            return false;
         }
         _loc2_ = this.§0b§(param1);
         _loc3_ = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc2_[_loc3_].phase != §2#n§.§<#D§)
            {
               return true;
            }
            _loc3_--;
         }
         return false;
      }
      
      function §2"=§(param1:Vector.<EventDispatcher>) : void
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
            §@"^§(param1[0] as EventDispatcher);
            _loc4_ = 0;
            while(_loc4_ < _loc2_)
            {
               _loc5_ = param1[_loc4_] as EventDispatcher;
               if(this.§?f§.indexOf(_loc5_) == -1)
               {
                  _loc6_ = _loc5_.invokeEvent(this);
                  this.§?f§.push(_loc5_);
                  if(_loc6_)
                  {
                     break;
                  }
               }
               _loc4_++;
            }
            §@"^§(_loc3_);
         }
      }
      
      public function get timestamp() : Number
      {
         return this.§1!k§;
      }
      
      public function get §=$ §() : Vector.<§=!U§>
      {
         return (data as Vector.<§=!U§>).concat() as Vector.<§=!U§>;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§`!Y§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§`"p§;
      }
   }
}
