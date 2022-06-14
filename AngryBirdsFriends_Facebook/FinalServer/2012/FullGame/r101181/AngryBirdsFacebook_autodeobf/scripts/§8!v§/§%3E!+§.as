package §8!v§
{
   import § I§.*;
   
   public class §>!+§
   {
      
      public static const §6!1§:Function = §^g§.easeIn;
      
      public static const §'"'§:Function = §["5§.easeIn;
      
      public static const §!!>§:Function = §["5§.easeOut;
      
      public static const §;U§:Function = §3N§.easeOut;
      
      public static const §19§:Function = §3N§.easeIn;
      
      public static const §%%§:Function = §3"D§.easeOut;
      
      public static const §,"B§:Function = §3"D§.easeIn;
      
      public static const § !G§:Function = §>w§.easeOut;
      
      public static const §?!B§:Function = §>w§.easeIn;
      
      private static var §2"<§:§>!+§;
       
      
      protected var §77§:Vector.<§+!W§>;
      
      protected var §^!C§:Boolean;
      
      protected var §3"!§:Boolean = true;
      
      public function §>!+§()
      {
         this.§77§ = new Vector.<§+!W§>();
         super();
      }
      
      public static function get §;"§() : §>!+§
      {
         if(!§2"<§)
         {
            §2"<§ = new §>!+§();
         }
         return §2"<§;
      }
      
      public function set §]!]§(param1:Boolean) : void
      {
         this.§3"!§ = param1;
      }
      
      public function §&7§() : void
      {
         var _loc2_:§+!W§ = null;
         var _loc1_:int = this.§77§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§77§[_loc1_];
            if(_loc2_.§'l§)
            {
               this.§77§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §^!K§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Function = null) : §+!W§
      {
         param5 = param5 || §^g§.easeIn;
         var _loc6_:§@!3§;
         (_loc6_ = new §@!3§(param1,param2,param3,param4,param5)).§]!]§ = this.§3"!§;
         this.§77§.push(_loc6_);
         return _loc6_;
      }
      
      public function §2!z§(... rest) : §+!W§
      {
         var _loc2_:§'!6§ = null;
         var _loc3_:§>Y§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§77§.indexOf(_loc2_);
            this.§77§.splice(_loc4_,1);
         }
         _loc3_ = new §>Y§(rest,true);
         _loc3_.§]!]§ = this.§3"!§;
         this.§77§.push(_loc3_);
         return _loc3_;
      }
      
      public function §%!p§(... rest) : §+!W§
      {
         var _loc2_:§'!6§ = null;
         var _loc3_:§>Y§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§77§.indexOf(_loc2_);
            this.§77§.splice(_loc4_,1);
         }
         _loc3_ = new §>Y§(rest,false);
         _loc3_.§]!]§ = this.§3"!§;
         this.§77§.push(_loc3_);
         return _loc3_;
      }
      
      public function pause() : void
      {
         this.§^!C§ = true;
      }
      
      public function resume() : void
      {
         this.§^!C§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§+!W§ = null;
         if(this.§^!C§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§77§.length)
         {
            _loc3_ = false;
            (_loc4_ = this.§77§[_loc2_]).update(param1);
            if(_loc4_.isCompleted)
            {
               this.§77§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
