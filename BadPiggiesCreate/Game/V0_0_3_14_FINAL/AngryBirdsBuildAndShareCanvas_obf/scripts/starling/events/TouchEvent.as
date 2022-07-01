package starling.events
{
   import §default§.DisplayObject;
   import §default§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §9>§:String = "touch";
       
      
      private var §^!v§:Vector.<§1[§>;
      
      private var §<!!§:Boolean;
      
      private var §47§:Boolean;
      
      private var §->§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§1[§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         super(param1,param5);
         this.§^!v§ = !!param2 ? param2 : new Vector.<§1[§>(0);
         this.§<!!§ = param3;
         this.§47§ = param4;
         this.§->§ = -1;
         var _loc6_:int = param2.length;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            if(param2[_loc7_].timestamp > this.§->§)
            {
               this.§->§ = param2[_loc7_].timestamp;
            }
            _loc7_++;
         }
      }
      
      public function §<C§(param1:DisplayObject, param2:String = null) : Vector.<§1[§>
      {
         var _loc6_:§1[§ = null;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc3_:Vector.<§1[§> = new Vector.<§1[§>(0);
         var _loc4_:int = this.§^!v§.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc7_ = (_loc6_ = this.§^!v§[_loc5_]).target == param1 || param1 is DisplayObjectContainer && (param1 as DisplayObjectContainer).contains(_loc6_.target);
            _loc8_ = param2 == null || param2 == _loc6_.phase;
            if(_loc7_ && _loc8_)
            {
               _loc3_.push(_loc6_);
            }
            _loc5_++;
         }
         return _loc3_;
      }
      
      public function §package§(param1:DisplayObject, param2:String = null) : §1[§
      {
         var _loc3_:Vector.<§1[§> = this.§<C§(param1,param2);
         if(_loc3_.length > 0)
         {
            return _loc3_[0];
         }
         return null;
      }
      
      public function §]%§(param1:DisplayObject) : Boolean
      {
         var _loc2_:Vector.<§1[§> = null;
         var _loc3_:int = 0;
         if(this.§package§(param1) == null)
         {
            return false;
         }
         _loc2_ = this.§<C§(param1);
         _loc3_ = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc2_[_loc3_].phase != §<!h§.§,"#§)
            {
               return true;
            }
            _loc3_--;
         }
         return false;
      }
      
      public function get timestamp() : Number
      {
         return this.§->§;
      }
      
      public function get §[!d§() : Vector.<§1[§>
      {
         return this.§^!v§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§<!!§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§47§;
      }
   }
}
