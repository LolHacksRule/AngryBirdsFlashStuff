package §;g§
{
   import §'!W§.*;
   
   public class §0!o§
   {
      
      public static const §>"$§:Function = §--§.easeIn;
      
      public static const §'"6§:Function = §5!q§.easeIn;
      
      public static const §="#§:Function = §5!q§.easeOut;
      
      public static const §7!O§:Function = §=!'§.easeOut;
      
      public static const §'!d§:Function = §=!'§.easeIn;
      
      public static const §2+§:Function = §0Q§.easeOut;
      
      public static const §78§:Function = §0Q§.easeIn;
      
      public static const § !E§:Function = §7d§.easeOut;
      
      public static const §1[§:Function = §7d§.easeIn;
      
      private static var §&8§:§0!o§;
       
      
      protected var §6!Y§:Vector.<§<!9§>;
      
      protected var §7!J§:Boolean;
      
      protected var §#M§:Boolean = true;
      
      public function §0!o§()
      {
         this.§6!Y§ = new Vector.<§<!9§>();
         super();
      }
      
      public static function get §,2§() : §0!o§
      {
         if(!§&8§)
         {
            §&8§ = new §0!o§();
         }
         return §&8§;
      }
      
      public function set §6!i§(param1:Boolean) : void
      {
         this.§#M§ = param1;
      }
      
      public function §<!q§() : void
      {
         var _loc2_:§<!9§ = null;
         var _loc1_:int = this.§6!Y§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§6!Y§[_loc1_];
            if(_loc2_.§7y§)
            {
               this.§6!Y§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §4!t§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Function = null) : §<!9§
      {
         param5 = param5 || §--§.easeIn;
         var _loc6_:§1!F§;
         (_loc6_ = new §1!F§(param1,param2,param3,param4,param5)).§6!i§ = this.§#M§;
         this.§6!Y§.push(_loc6_);
         return _loc6_;
      }
      
      public function §+!p§(... rest) : §<!9§
      {
         var _loc2_:§<!9§ = null;
         var _loc3_:§"^§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§6!Y§.indexOf(_loc2_);
            this.§6!Y§.splice(_loc4_,1);
         }
         _loc3_ = new §"^§(rest,true);
         _loc3_.§6!i§ = this.§#M§;
         this.§6!Y§.push(_loc3_);
         return _loc3_;
      }
      
      public function §=!<§(... rest) : §<!9§
      {
         var _loc2_:§<!9§ = null;
         var _loc3_:§"^§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§6!Y§.indexOf(_loc2_);
            this.§6!Y§.splice(_loc4_,1);
         }
         _loc3_ = new §"^§(rest,false);
         _loc3_.§6!i§ = this.§#M§;
         this.§6!Y§.push(_loc3_);
         return _loc3_;
      }
      
      public function pause() : void
      {
         this.§7!J§ = true;
      }
      
      public function resume() : void
      {
         this.§7!J§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§7!J§)
         {
            return;
         }
         if(this.§6!Y§.length == 0)
         {
            return;
         }
         var _loc2_:Vector.<§<!9§> = this.§6!Y§.concat();
         var _loc3_:§<!9§ = null;
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.length)
         {
            _loc3_ = _loc2_[_loc4_];
            _loc3_.update(param1);
            _loc4_++;
         }
         var _loc5_:int = this.§6!Y§.length - 1;
         while(_loc5_ >= 0)
         {
            _loc3_ = this.§6!Y§[_loc5_];
            if(_loc3_.isCompleted)
            {
               this.§6!Y§.splice(_loc5_,1);
               _loc3_.dispose();
            }
            _loc5_--;
         }
      }
   }
}
