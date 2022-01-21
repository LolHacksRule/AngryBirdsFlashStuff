package §`!"§
{
   import §^§.*;
   
   public class §;i§
   {
      
      public static const §#!,§:Function = §,!P§.easeIn;
      
      public static const §56§:Function = §2t§.easeIn;
      
      public static const §#!m§:Function = §2t§.easeOut;
      
      public static const §%!J§:Function = §@b§.easeOut;
      
      public static const §<!A§:Function = §@b§.easeIn;
      
      public static const §!5§:Function = §#!A§.easeOut;
      
      public static const §#!F§:Function = §#!A§.easeIn;
      
      public static const §3C§:Function = §>h§.easeOut;
      
      public static const §<l§:Function = §>h§.easeIn;
      
      private static var §^1§:§;i§;
       
      
      protected var §+t§:Vector.<§`!&§>;
      
      protected var §6!!§:Boolean;
      
      protected var §^!6§:Boolean = true;
      
      public function §;i§()
      {
         this.§+t§ = new Vector.<§`!&§>();
         super();
      }
      
      public static function get §@!7§() : §;i§
      {
         if(!§^1§)
         {
            §^1§ = new §;i§();
         }
         return §^1§;
      }
      
      public function set §?!T§(param1:Boolean) : void
      {
         this.§^!6§ = param1;
      }
      
      public function §;?§() : void
      {
         var _loc2_:§`!&§ = null;
         var _loc1_:int = this.§+t§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§+t§[_loc1_];
            if(_loc2_.§#f§)
            {
               this.§+t§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §@!6§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Function = null) : §`!&§
      {
         param5 = param5 || §,!P§.easeIn;
         var _loc6_:§+!Z§;
         (_loc6_ = new §+!Z§(param1,param2,param3,param4,param5)).§?!T§ = this.§^!6§;
         this.§+t§.push(_loc6_);
         return _loc6_;
      }
      
      public function §2J§(... rest) : §`!&§
      {
         var _loc2_:§"!b§ = null;
         var _loc3_:§@E§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§+t§.indexOf(_loc2_);
            this.§+t§.splice(_loc4_,1);
         }
         _loc3_ = new §@E§(rest,true);
         _loc3_.§?!T§ = this.§^!6§;
         this.§+t§.push(_loc3_);
         return _loc3_;
      }
      
      public function §?O§(... rest) : §`!&§
      {
         var _loc2_:§"!b§ = null;
         var _loc3_:§@E§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§+t§.indexOf(_loc2_);
            this.§+t§.splice(_loc4_,1);
         }
         _loc3_ = new §@E§(rest,false);
         _loc3_.§?!T§ = this.§^!6§;
         this.§+t§.push(_loc3_);
         return _loc3_;
      }
      
      public function §2![§() : void
      {
         this.§6!!§ = true;
      }
      
      public function §1F§() : void
      {
         this.§6!!§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§`!&§ = null;
         if(this.§6!!§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§+t§.length)
         {
            _loc3_ = false;
            (_loc4_ = this.§+t§[_loc2_]).update(param1);
            if(_loc4_.isCompleted)
            {
               this.§+t§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
