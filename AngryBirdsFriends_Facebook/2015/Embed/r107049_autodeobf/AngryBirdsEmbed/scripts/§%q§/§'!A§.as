package §%q§
{
   import §>!#§.*;
   
   public class §'!A§
   {
      
      public static const §3!>§:Function = §@L§.easeIn;
      
      public static const §9!'§:Function = §,!3§.easeIn;
      
      public static const §3!'§:Function = §,!3§.easeOut;
      
      public static const §=T§:Function = §23§.easeOut;
      
      public static const §@n§:Function = §23§.easeIn;
      
      public static const §6Q§:Function = §^!!§.easeOut;
      
      public static const §4;§:Function = §^!!§.easeIn;
      
      public static const §?!+§:Function = §1R§.easeOut;
      
      public static const §[L§:Function = §1R§.easeIn;
      
      private static var §1w§:§'!A§;
       
      
      protected var §+2§:Vector.<§;i§>;
      
      protected var §'!&§:Boolean;
      
      protected var §-R§:Boolean = true;
      
      public function §'!A§()
      {
         this.§+2§ = new Vector.<§;i§>();
         super();
      }
      
      public static function get §5+§() : §'!A§
      {
         if(!§1w§)
         {
            §1w§ = new §'!A§();
         }
         return §1w§;
      }
      
      public function set §<"§(param1:Boolean) : void
      {
         this.§-R§ = param1;
      }
      
      public function §4J§() : void
      {
         var _loc2_:§;i§ = null;
         var _loc1_:int = this.§+2§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§+2§[_loc1_];
            if(_loc2_.§8n§)
            {
               this.§+2§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §;h§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Function = null) : §;i§
      {
         param5 = param5 || §@L§.easeIn;
         var _loc6_:§^Q§;
         (_loc6_ = new §^Q§(param1,param2,param3,param4,param5)).§<"§ = this.§-R§;
         this.§+2§.push(_loc6_);
         return _loc6_;
      }
      
      public function §@v§(... rest) : §;i§
      {
         var _loc2_:§%!C§ = null;
         var _loc3_:§!y§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§+2§.indexOf(_loc2_);
            this.§+2§.splice(_loc4_,1);
         }
         _loc3_ = new §!y§(rest,true);
         _loc3_.§<"§ = this.§-R§;
         this.§+2§.push(_loc3_);
         return _loc3_;
      }
      
      public function §+I§(... rest) : §;i§
      {
         var _loc2_:§%!C§ = null;
         var _loc3_:§!y§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§+2§.indexOf(_loc2_);
            this.§+2§.splice(_loc4_,1);
         }
         _loc3_ = new §!y§(rest,false);
         _loc3_.§<"§ = this.§-R§;
         this.§+2§.push(_loc3_);
         return _loc3_;
      }
      
      public function pause() : void
      {
         this.§'!&§ = true;
      }
      
      public function resume() : void
      {
         this.§'!&§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§;i§ = null;
         if(this.§'!&§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§+2§.length)
         {
            _loc3_ = false;
            (_loc4_ = this.§+2§[_loc2_]).update(param1);
            if(_loc4_.isCompleted)
            {
               this.§+2§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
