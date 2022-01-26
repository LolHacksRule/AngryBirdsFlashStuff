package §6!S§
{
   import §!D§.*;
   
   public class §!<§
   {
      
      public static const §&!5§:Function = §>!A§.easeIn;
      
      public static const §4b§:Function = §[`§.easeIn;
      
      public static const §?!4§:Function = §[`§.easeOut;
      
      public static const §>!%§:Function = §"H§.easeOut;
      
      public static const §<V§:Function = §"H§.easeIn;
      
      public static const §+c§:Function = §"!T§.easeOut;
      
      public static const §]Q§:Function = §"!T§.easeIn;
      
      public static const §`I§:Function = §9r§.easeOut;
      
      public static const §2]§:Function = §9r§.easeIn;
      
      private static var §]7§:§!<§;
       
      
      protected var §^!@§:Vector.<§1a§>;
      
      protected var §]c§:Boolean;
      
      protected var §^!=§:Boolean = true;
      
      public function §!<§()
      {
         this.§^!@§ = new Vector.<§1a§>();
         super();
      }
      
      public static function get §%b§() : §!<§
      {
         if(!§]7§)
         {
            §]7§ = new §!<§();
         }
         return §]7§;
      }
      
      public function set §1g§(param1:Boolean) : void
      {
         this.§^!=§ = param1;
      }
      
      public function §+u§() : void
      {
         var _loc2_:§1a§ = null;
         var _loc1_:int = this.§^!@§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§^!@§[_loc1_];
            if(_loc2_.§@!X§)
            {
               this.§^!@§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §9!!§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Function = null) : §1a§
      {
         param5 = param5 || §>!A§.easeIn;
         var _loc6_:§&!§;
         (_loc6_ = new §&!§(param1,param2,param3,param4,param5)).§1g§ = this.§^!=§;
         this.§^!@§.push(_loc6_);
         return _loc6_;
      }
      
      public function §'T§(... rest) : §1a§
      {
         var _loc2_:§;!<§ = null;
         var _loc3_:§<K§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§^!@§.indexOf(_loc2_);
            this.§^!@§.splice(_loc4_,1);
         }
         _loc3_ = new §<K§(rest,true);
         _loc3_.§1g§ = this.§^!=§;
         this.§^!@§.push(_loc3_);
         return _loc3_;
      }
      
      public function §3!$§(... rest) : §1a§
      {
         var _loc2_:§;!<§ = null;
         var _loc3_:§<K§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§^!@§.indexOf(_loc2_);
            this.§^!@§.splice(_loc4_,1);
         }
         _loc3_ = new §<K§(rest,false);
         _loc3_.§1g§ = this.§^!=§;
         this.§^!@§.push(_loc3_);
         return _loc3_;
      }
      
      public function §9!§() : void
      {
         this.§]c§ = true;
      }
      
      public function §5H§() : void
      {
         this.§]c§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§1a§ = null;
         if(this.§]c§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§^!@§.length)
         {
            _loc3_ = false;
            (_loc4_ = this.§^!@§[_loc2_]).update(param1);
            if(_loc4_.isCompleted)
            {
               this.§^!@§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
