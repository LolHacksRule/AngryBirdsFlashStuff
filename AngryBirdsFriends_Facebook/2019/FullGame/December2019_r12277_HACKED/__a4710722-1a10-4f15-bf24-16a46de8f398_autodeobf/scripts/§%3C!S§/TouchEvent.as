package §<!S§
{
   import §#Z§.DisplayObject;
   import starling.§core:starling_internal§.*;
   
   public class TouchEvent extends Event
   {
      
      public static const §-X§:String = "touch";
      
      private static var §0!f§:Vector.<§?"^§> = new Vector.<§?"^§>(0);
       
      
      private var §!$B§:Boolean;
      
      private var §?$2§:Boolean;
      
      private var §`!0§:Number;
      
      private var §+k§:Vector.<EventDispatcher>;
      
      public function TouchEvent(param1:String, param2:Vector.<§?"^§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         super(param1,param5,param2);
         this.§!$B§ = param3;
         this.§?$2§ = param4;
         this.§`!0§ = -1;
         this.§+k§ = new Vector.<EventDispatcher>(0);
         var _loc6_:int = param2.length;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            if(param2[_loc7_].timestamp > this.§`!0§)
            {
               this.§`!0§ = param2[_loc7_].timestamp;
            }
            _loc7_++;
         }
      }
      
      public function § -§(param1:DisplayObject, param2:String = null, param3:Vector.<§?"^§> = null) : Vector.<§?"^§>
      {
         var _loc7_:§?"^§ = null;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = false;
         if(param3 == null)
         {
            param3 = new Vector.<§?"^§>(0);
         }
         var _loc4_:Vector.<§?"^§>;
         var _loc5_:int = (_loc4_ = data as Vector.<§?"^§>).length;
         var _loc6_:int = 0;
         while(_loc6_ < _loc5_)
         {
            _loc8_ = (_loc7_ = _loc4_[_loc6_]).§5"I§(param1);
            _loc9_ = param2 == null || param2 == _loc7_.phase;
            if(_loc8_ && _loc9_)
            {
               param3.push(_loc7_);
            }
            _loc6_++;
         }
         return param3;
      }
      
      public function §+!k§(param1:DisplayObject, param2:String = null) : §?"^§
      {
         var _loc3_:§?"^§ = null;
         this.§ -§(param1,param2,§0!f§);
         if(§0!f§.length)
         {
            _loc3_ = §0!f§[0];
            §0!f§.length = 0;
            return _loc3_;
         }
         return null;
      }
      
      public function §]"i§(param1:DisplayObject) : Boolean
      {
         var _loc2_:Vector.<§?"^§> = null;
         var _loc3_:int = 0;
         if(this.§+!k§(param1) == null)
         {
            return false;
         }
         _loc2_ = this.§ -§(param1);
         _loc3_ = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc2_[_loc3_].phase != §2w§.ENDED)
            {
               return true;
            }
            _loc3_--;
         }
         return false;
      }
      
      function §'$<§(param1:Vector.<EventDispatcher>) : void
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
            §7"I§(param1[0] as EventDispatcher);
            _loc4_ = 0;
            while(_loc4_ < _loc2_)
            {
               _loc5_ = param1[_loc4_] as EventDispatcher;
               if(this.§+k§.indexOf(_loc5_) == -1)
               {
                  _loc6_ = _loc5_.invokeEvent(this);
                  this.§+k§.push(_loc5_);
                  if(_loc6_)
                  {
                     break;
                  }
               }
               _loc4_++;
            }
            §7"I§(_loc3_);
         }
      }
      
      public function get timestamp() : Number
      {
         return this.§`!0§;
      }
      
      public function get §""Q§() : Vector.<§?"^§>
      {
         return (data as Vector.<§?"^§>).concat() as Vector.<§?"^§>;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§!$B§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§?$2§;
      }
   }
}
