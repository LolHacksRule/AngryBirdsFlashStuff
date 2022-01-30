package §-b§
{
   import §9c§.*;
   
   public class §"!d§
   {
      
      public static const §>!N§:Function = §6"5§.easeIn;
      
      public static const § if§:Function = §<!j§.easeIn;
      
      public static const §8t§:Function = §<!j§.easeOut;
      
      public static const §[!v§:Function = §!!2§.easeOut;
      
      public static const §9]§:Function = §!!2§.easeIn;
      
      public static const § !E§:Function = §,!"§.easeOut;
      
      public static const §1!g§:Function = §,!"§.easeIn;
      
      public static const §?9§:Function = §"!$§.easeOut;
      
      public static const §,!y§:Function = §"!$§.easeIn;
      
      private static var §#B§:§"!d§;
       
      
      protected var §3!!§:Vector.<§ !e§>;
      
      protected var §]p§:Boolean;
      
      protected var §;p§:Boolean = true;
      
      public function §"!d§()
      {
         this.§3!!§ = new Vector.<§ !e§>();
         super();
      }
      
      public static function get §>!P§() : §"!d§
      {
         if(!§#B§)
         {
            §#B§ = new §"!d§();
         }
         return §#B§;
      }
      
      public function set §+!,§(param1:Boolean) : void
      {
         this.§;p§ = param1;
      }
      
      public function §4m§() : void
      {
         var _loc2_:§ !e§ = null;
         var _loc1_:int = this.§3!!§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§3!!§[_loc1_];
            if(_loc2_.§?!b§)
            {
               this.§3!!§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §7R§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Function = null) : § !e§
      {
         param5 = param5 || §6"5§.easeIn;
         var _loc6_:§^!z§;
         (_loc6_ = new §^!z§(param1,param2,param3,param4,param5)).§+!,§ = this.§;p§;
         this.§3!!§.push(_loc6_);
         return _loc6_;
      }
      
      public function §'!5§(... rest) : § !e§
      {
         var _loc2_:§ !e§ = null;
         var _loc3_:§"!§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§3!!§.indexOf(_loc2_);
            this.§3!!§.splice(_loc4_,1);
         }
         _loc3_ = new §"!§(rest,true);
         _loc3_.§+!,§ = this.§;p§;
         this.§3!!§.push(_loc3_);
         return _loc3_;
      }
      
      public function §8!h§(... rest) : § !e§
      {
         var _loc2_:§ !e§ = null;
         var _loc3_:§"!§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§3!!§.indexOf(_loc2_);
            this.§3!!§.splice(_loc4_,1);
         }
         _loc3_ = new §"!§(rest,false);
         _loc3_.§+!,§ = this.§;p§;
         this.§3!!§.push(_loc3_);
         return _loc3_;
      }
      
      public function pause() : void
      {
         this.§]p§ = true;
      }
      
      public function resume() : void
      {
         this.§]p§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§]p§)
         {
            return;
         }
         if(this.§3!!§.length == 0)
         {
            return;
         }
         var _loc2_:Vector.<§ !e§> = this.§3!!§.concat();
         var _loc3_:§ !e§ = null;
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.length)
         {
            _loc3_ = _loc2_[_loc4_];
            _loc3_.update(param1);
            _loc4_++;
         }
         var _loc5_:int = this.§3!!§.length - 1;
         while(_loc5_ >= 0)
         {
            _loc3_ = this.§3!!§[_loc5_];
            if(_loc3_.isCompleted)
            {
               this.§3!!§.splice(_loc5_,1);
               _loc3_.dispose();
            }
            _loc5_--;
         }
      }
   }
}
