package §2=§
{
   public class TweenManager
   {
      
      public static const §[u§:String = "linear";
      
      public static const § !V§:String = "sine_in";
      
      public static const §-!g§:String = "sine_out";
      
      public static const §&T§:String = "quad_out";
      
      public static const §5!@§:String = "quad_in";
      
      public static const §0D§:String = "bounce_out";
      
      public static const §#Z§:String = "bounce_in";
      
      public static const §7x§:String = "circular_out";
      
      public static const §package§:String = "circular_in";
      
      private static var sInstance:TweenManager;
       
      
      private var §`G§:Vector.<§4x§>;
      
      private var §"!&§:Boolean;
      
      private var §+j§:Boolean = true;
      
      public function TweenManager()
      {
         this.§`G§ = new Vector.<§4x§>();
         super();
      }
      
      public static function get §8!X§() : TweenManager
      {
         if(!sInstance)
         {
            sInstance = new TweenManager();
         }
         return sInstance;
      }
      
      public function set §8!,§(param1:Boolean) : void
      {
         this.§+j§ = param1;
      }
      
      public function §8!?§() : void
      {
         var _loc2_:§4x§ = null;
         var _loc1_:int = this.§`G§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§`G§[_loc1_];
            if(_loc2_.§2!_§)
            {
               this.§`G§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §8m§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:String = "linear") : §!T§
      {
         var _loc6_:SimpleTween = new SimpleTween(param1,param2,param3,param4,param5);
         _loc6_.§8!,§ = this.§+j§;
         this.§`G§.push(_loc6_);
         return _loc6_;
      }
      
      public function §`!6§(... rest) : §!T§
      {
         var _loc2_:§=N§ = null;
         var _loc3_:SimpleTweenContainer = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§`G§.indexOf(_loc2_);
            this.§`G§.splice(_loc4_,1);
         }
         _loc3_ = new SimpleTweenContainer(rest,true);
         _loc3_.§8!,§ = this.§+j§;
         this.§`G§.push(_loc3_);
         return _loc3_;
      }
      
      public function §[!D§(... rest) : §!T§
      {
         var _loc2_:§=N§ = null;
         var _loc3_:SimpleTweenContainer = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§`G§.indexOf(_loc2_);
            this.§`G§.splice(_loc4_,1);
         }
         _loc3_ = new SimpleTweenContainer(rest,false);
         _loc3_.§8!,§ = this.§+j§;
         this.§`G§.push(_loc3_);
         return _loc3_;
      }
      
      public function pause() : void
      {
         this.§"!&§ = true;
      }
      
      public function resume() : void
      {
         this.§"!&§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§4x§ = null;
         if(this.§"!&§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§`G§.length)
         {
            _loc3_ = false;
            _loc4_ = this.§`G§[_loc2_];
            _loc4_.update(param1);
            if(_loc4_.isCompleted)
            {
               this.§`G§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
