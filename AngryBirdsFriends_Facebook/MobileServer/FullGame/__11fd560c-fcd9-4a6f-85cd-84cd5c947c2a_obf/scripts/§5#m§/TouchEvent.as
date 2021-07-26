package §5#m§
{
   import §^"S§.DisplayObject;
   import starling.§core:starling_internal§.*;
   
   public class TouchEvent extends Event
   {
      
      public static const §2"H§:String = "touch";
      
      private static var §0#+§:Vector.<§,o§> = new Vector.<§,o§>(0);
       
      
      private var §%e§:Boolean;
      
      private var §1"n§:Boolean;
      
      private var §2#Z§:Number;
      
      private var §]#+§:Vector.<EventDispatcher>;
      
      public function TouchEvent(param1:String, param2:Vector.<§,o§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         super(param1,param5,param2);
         this.§%e§ = param3;
         this.§1"n§ = param4;
         this.§2#Z§ = -1;
         this.§]#+§ = new Vector.<EventDispatcher>(0);
         var _loc6_:int = param2.length;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            if(param2[_loc7_].timestamp > this.§2#Z§)
            {
               this.§2#Z§ = param2[_loc7_].timestamp;
            }
            _loc7_++;
         }
      }
      
      public function §%x§(param1:DisplayObject, param2:String = null, param3:Vector.<§,o§> = null) : Vector.<§,o§>
      {
         var _loc7_:§,o§ = null;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = false;
         if(param3 == null)
         {
            param3 = new Vector.<§,o§>(0);
         }
         var _loc4_:Vector.<§,o§>;
         var _loc5_:int = (_loc4_ = data as Vector.<§,o§>).length;
         var _loc6_:int = 0;
         while(_loc6_ < _loc5_)
         {
            _loc8_ = (_loc7_ = _loc4_[_loc6_]).§-#n§(param1);
            _loc9_ = param2 == null || param2 == _loc7_.phase;
            if(_loc8_ && _loc9_)
            {
               param3.push(_loc7_);
            }
            _loc6_++;
         }
         return param3;
      }
      
      public function §=$A§(param1:DisplayObject, param2:String = null) : §,o§
      {
         var _loc3_:§,o§ = null;
         this.§%x§(param1,param2,§0#+§);
         if(§0#+§.length)
         {
            _loc3_ = §0#+§[0];
            §0#+§.length = 0;
            return _loc3_;
         }
         return null;
      }
      
      public function §#"9§(param1:DisplayObject) : Boolean
      {
         var _loc2_:Vector.<§,o§> = null;
         var _loc3_:int = 0;
         if(this.§=$A§(param1) == null)
         {
            return false;
         }
         _loc2_ = this.§%x§(param1);
         _loc3_ = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc2_[_loc3_].phase != §6a§.§5#L§)
            {
               return true;
            }
            _loc3_--;
         }
         return false;
      }
      
      function §9m§(param1:Vector.<EventDispatcher>) : void
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
            §<"v§(param1[0] as EventDispatcher);
            _loc4_ = 0;
            while(_loc4_ < _loc2_)
            {
               _loc5_ = param1[_loc4_] as EventDispatcher;
               if(this.§]#+§.indexOf(_loc5_) == -1)
               {
                  _loc6_ = _loc5_.invokeEvent(this);
                  this.§]#+§.push(_loc5_);
                  if(_loc6_)
                  {
                     break;
                  }
               }
               _loc4_++;
            }
            §<"v§(_loc3_);
         }
      }
      
      public function get timestamp() : Number
      {
         return this.§2#Z§;
      }
      
      public function get §8#2§() : Vector.<§,o§>
      {
         return (data as Vector.<§,o§>).concat() as Vector.<§,o§>;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§%e§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§1"n§;
      }
   }
}
