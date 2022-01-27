package §?!O§
{
   public class TweenManager
   {
      
      public static const §`!j§:String = "linear";
      
      public static const §import§:String = "sine_in";
      
      public static const §3!T§:String = "sine_out";
      
      public static const §2!'§:String = "quad_out";
      
      public static const §6!N§:String = "quad_in";
      
      public static const §&=§:String = "bounce_out";
      
      public static const §6!'§:String = "bounce_in";
      
      public static const §9!V§:String = "circular_out";
      
      public static const §>!0§:String = "circular_in";
      
      private static var sInstance:TweenManager;
       
      
      private var §;J§:Vector.<§9N§>;
      
      private var §^^§:Boolean;
      
      private var §?4§:Boolean = true;
      
      public function TweenManager()
      {
         this.§;J§ = new Vector.<§9N§>();
         super();
      }
      
      public static function get §7!E§() : TweenManager
      {
         if(!sInstance)
         {
            sInstance = new TweenManager();
         }
         return sInstance;
      }
      
      public function set §function§(param1:Boolean) : void
      {
         this.§?4§ = param1;
      }
      
      public function §'!3§() : void
      {
         var _loc2_:§9N§ = null;
         var _loc1_:int = this.§;J§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§;J§[_loc1_];
            if(_loc2_.§1!,§)
            {
               this.§;J§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §5§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:String = "linear") : §?W§
      {
         var _loc6_:SimpleTween = new SimpleTween(param1,param2,param3,param4,param5);
         _loc6_.§function§ = this.§?4§;
         this.§;J§.push(_loc6_);
         return _loc6_;
      }
      
      public function §7f§(... rest) : §?W§
      {
         var _loc2_:§!i§ = null;
         var _loc3_:SimpleTweenContainer = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§;J§.indexOf(_loc2_);
            this.§;J§.splice(_loc4_,1);
         }
         _loc3_ = new SimpleTweenContainer(rest,true);
         _loc3_.§function§ = this.§?4§;
         this.§;J§.push(_loc3_);
         return _loc3_;
      }
      
      public function §0!G§(... rest) : §?W§
      {
         var _loc2_:§!i§ = null;
         var _loc3_:SimpleTweenContainer = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§;J§.indexOf(_loc2_);
            this.§;J§.splice(_loc4_,1);
         }
         _loc3_ = new SimpleTweenContainer(rest,false);
         _loc3_.§function§ = this.§?4§;
         this.§;J§.push(_loc3_);
         return _loc3_;
      }
      
      public function pause() : void
      {
         this.§^^§ = true;
      }
      
      public function resume() : void
      {
         this.§^^§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§9N§ = null;
         if(this.§^^§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§;J§.length)
         {
            _loc3_ = false;
            _loc4_ = this.§;J§[_loc2_];
            _loc4_.update(param1);
            if(_loc4_.isCompleted)
            {
               this.§;J§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
