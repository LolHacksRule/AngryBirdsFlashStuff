package §8!-§
{
   import §[&§.*;
   
   public class §2!B§
   {
      
      public static const §1s§:Function = §''§.easeIn;
      
      public static const §]!5§:Function = §4m§.easeIn;
      
      public static const §3s§:Function = §4m§.easeOut;
      
      public static const §-!J§:Function = §2s§.easeOut;
      
      public static const §=X§:Function = §2s§.easeIn;
      
      public static const §;!@§:Function = §@x§.easeOut;
      
      public static const §,#§:Function = §@x§.easeIn;
      
      public static const §8!@§:Function = §,=§.easeOut;
      
      public static const §6p§:Function = §,=§.easeIn;
      
      private static var §4h§:§2!B§;
       
      
      protected var §2-§:Vector.<§98§>;
      
      protected var §@@§:Boolean;
      
      protected var §3!b§:Boolean = true;
      
      public function §2!B§()
      {
         this.§2-§ = new Vector.<§98§>();
         super();
      }
      
      public static function get §,!U§() : §2!B§
      {
         if(!§4h§)
         {
            §4h§ = new §2!B§();
         }
         return §4h§;
      }
      
      public function set §+`§(param1:Boolean) : void
      {
         this.§3!b§ = param1;
      }
      
      public function §=!O§() : void
      {
         var _loc2_:§98§ = null;
         var _loc1_:int = this.§2-§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§2-§[_loc1_];
            if(_loc2_.§;!b§)
            {
               this.§2-§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §%!K§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Function = null) : §98§
      {
         param5 = param5 || §''§.easeIn;
         var _loc6_:§@q§;
         (_loc6_ = new §@q§(param1,param2,param3,param4,param5)).§+`§ = this.§3!b§;
         this.§2-§.push(_loc6_);
         return _loc6_;
      }
      
      public function §4!B§(... rest) : §98§
      {
         var _loc2_:§,I§ = null;
         var _loc3_:§,p§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§2-§.indexOf(_loc2_);
            this.§2-§.splice(_loc4_,1);
         }
         _loc3_ = new §,p§(rest,true);
         _loc3_.§+`§ = this.§3!b§;
         this.§2-§.push(_loc3_);
         return _loc3_;
      }
      
      public function §<!7§(... rest) : §98§
      {
         var _loc2_:§,I§ = null;
         var _loc3_:§,p§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§2-§.indexOf(_loc2_);
            this.§2-§.splice(_loc4_,1);
         }
         _loc3_ = new §,p§(rest,false);
         _loc3_.§+`§ = this.§3!b§;
         this.§2-§.push(_loc3_);
         return _loc3_;
      }
      
      public function §0!G§() : void
      {
         this.§@@§ = true;
      }
      
      public function §`5§() : void
      {
         this.§@@§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§98§ = null;
         if(this.§@@§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§2-§.length)
         {
            _loc3_ = false;
            (_loc4_ = this.§2-§[_loc2_]).update(param1);
            if(_loc4_.isCompleted)
            {
               this.§2-§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
