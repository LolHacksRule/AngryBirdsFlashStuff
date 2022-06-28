package §<!G§
{
   public class TweenManager
   {
      
      public static const §#R§:String = "linear";
      
      public static const §@6§:String = "sine_in";
      
      public static const §+v§:String = "sine_out";
      
      public static const §[!0§:String = "quad_out";
      
      public static const §3!]§:String = "quad_in";
      
      public static const §4!-§:String = "bounce_out";
      
      public static const §0]§:String = "bounce_in";
      
      public static const §<M§:String = "circular_out";
      
      public static const §?!X§:String = "circular_in";
      
      private static var sInstance:TweenManager;
       
      
      private var §@!=§:Vector.<§;K§>;
      
      private var §"^§:Boolean;
      
      private var §9i§:Boolean = true;
      
      public function TweenManager()
      {
         this.§@!=§ = new Vector.<§;K§>();
         super();
      }
      
      public static function get §&!'§() : TweenManager
      {
         if(!sInstance)
         {
            sInstance = new TweenManager();
         }
         return sInstance;
      }
      
      public function set §+K§(param1:Boolean) : void
      {
         this.§9i§ = param1;
      }
      
      public function §%T§() : void
      {
         var _loc2_:§;K§ = null;
         var _loc1_:int = this.§@!=§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§@!=§[_loc1_];
            if(_loc2_.§'H§)
            {
               this.§@!=§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §3L§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:String = "linear") : §9h§
      {
         var _loc6_:SimpleTween = new SimpleTween(param1,param2,param3,param4,param5);
         _loc6_.§+K§ = this.§9i§;
         this.§@!=§.push(_loc6_);
         return _loc6_;
      }
      
      public function §+!^§(... rest) : §9h§
      {
         var _loc2_:§'=§ = null;
         var _loc3_:SimpleTweenContainer = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§@!=§.indexOf(_loc2_);
            this.§@!=§.splice(_loc4_,1);
         }
         _loc3_ = new SimpleTweenContainer(rest,true);
         _loc3_.§+K§ = this.§9i§;
         this.§@!=§.push(_loc3_);
         return _loc3_;
      }
      
      public function §[!1§(... rest) : §9h§
      {
         var _loc2_:§'=§ = null;
         var _loc3_:SimpleTweenContainer = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§@!=§.indexOf(_loc2_);
            this.§@!=§.splice(_loc4_,1);
         }
         _loc3_ = new SimpleTweenContainer(rest,false);
         _loc3_.§+K§ = this.§9i§;
         this.§@!=§.push(_loc3_);
         return _loc3_;
      }
      
      public function pause() : void
      {
         this.§"^§ = true;
      }
      
      public function resume() : void
      {
         this.§"^§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§;K§ = null;
         if(this.§"^§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§@!=§.length)
         {
            _loc3_ = false;
            _loc4_ = this.§@!=§[_loc2_];
            _loc4_.update(param1);
            if(_loc4_.isCompleted)
            {
               this.§@!=§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
