package §0r§
{
   import §51§.*;
   
   public class §7!b§
   {
      
      public static const §""<§:Function = §8_§.easeIn;
      
      public static const §-z§:Function = §default§.easeIn;
      
      public static const §!!h§:Function = §default§.easeOut;
      
      public static const §4"0§:Function = §,!Z§.easeOut;
      
      public static const §6!&§:Function = §,!Z§.easeIn;
      
      public static const §5E§:Function = §,"#§.easeOut;
      
      public static const §8!5§:Function = §,"#§.easeIn;
      
      public static const §`"=§:Function = §82§.easeOut;
      
      public static const § v§:Function = §82§.easeIn;
      
      private static var §#!O§:§7!b§;
       
      
      protected var §'!t§:Vector.<§=S§>;
      
      protected var §'"6§:Boolean;
      
      protected var §-"$§:Boolean = true;
      
      public function §7!b§()
      {
         this.§'!t§ = new Vector.<§=S§>();
         super();
      }
      
      public static function get §8c§() : §7!b§
      {
         if(!§#!O§)
         {
            §#!O§ = new §7!b§();
         }
         return §#!O§;
      }
      
      public function set §!!y§(param1:Boolean) : void
      {
         this.§-"$§ = param1;
      }
      
      public function § "?§() : void
      {
         var _loc2_:§=S§ = null;
         var _loc1_:int = this.§'!t§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§'!t§[_loc1_];
            if(_loc2_.§?"+§)
            {
               this.§'!t§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §4&§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Function = null) : §=S§
      {
         param5 = param5 || §8_§.easeIn;
         var _loc6_:§break§;
         (_loc6_ = new §break§(param1,param2,param3,param4,param5)).§!!y§ = this.§-"$§;
         this.§'!t§.push(_loc6_);
         return _loc6_;
      }
      
      public function §,H§(... rest) : §=S§
      {
         var _loc2_:§4x§ = null;
         var _loc3_:§6[§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§'!t§.indexOf(_loc2_);
            this.§'!t§.splice(_loc4_,1);
         }
         _loc3_ = new §6[§(rest,true);
         _loc3_.§!!y§ = this.§-"$§;
         this.§'!t§.push(_loc3_);
         return _loc3_;
      }
      
      public function §+J§(... rest) : §=S§
      {
         var _loc2_:§4x§ = null;
         var _loc3_:§6[§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§'!t§.indexOf(_loc2_);
            this.§'!t§.splice(_loc4_,1);
         }
         _loc3_ = new §6[§(rest,false);
         _loc3_.§!!y§ = this.§-"$§;
         this.§'!t§.push(_loc3_);
         return _loc3_;
      }
      
      public function pause() : void
      {
         this.§'"6§ = true;
      }
      
      public function resume() : void
      {
         this.§'"6§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§=S§ = null;
         if(this.§'"6§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§'!t§.length)
         {
            _loc3_ = false;
            (_loc4_ = this.§'!t§[_loc2_]).update(param1);
            if(_loc4_.isCompleted)
            {
               this.§'!t§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
