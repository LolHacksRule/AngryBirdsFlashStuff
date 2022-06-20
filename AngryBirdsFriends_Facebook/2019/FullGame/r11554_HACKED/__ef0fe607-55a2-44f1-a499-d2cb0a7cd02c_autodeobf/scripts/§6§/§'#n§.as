package §6§#7
{
   import §9#^§.*;
   
   public class §'#n§
   {
      
      public static const §-#o§:Function = §`!h§.easeIn;
      
      public static const §8"W§:Function = §7b§.easeIn;
      
      public static const §^!k§:Function = §7b§.easeOut;
      
      public static const §[i§:Function = §"$ §.easeOut;
      
      public static const §`"E§:Function = §"$ §.easeIn;
      
      public static const §6"o§:Function = §;#I§.easeOut;
      
      public static const §#!0§:Function = §;#I§.easeIn;
      
      public static const §-"P§:Function = §6!,§.easeOut;
      
      public static const §8$%§:Function = §6!,§.easeIn;
      
      private static var §#!5§:§'#n§;
       
      
      protected var §7#a§:Vector.<§6$'§>;
      
      protected var §"#j§:Boolean;
      
      protected var §+!5§:Boolean = true;
      
      public function §'#n§()
      {
         this.§7#a§ = new Vector.<§6$'§>();
         super();
      }
      
      public static function get §?q§() : §'#n§
      {
         if(!§#!5§)
         {
            §#!5§ = new §'#n§();
         }
         return §#!5§;
      }
      
      public function set §8u§(param1:Boolean) : void
      {
         this.§+!5§ = param1;
      }
      
      public function §3#t§() : void
      {
         var _loc2_:§6$'§ = null;
         var _loc1_:int = this.§7#a§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§7#a§[_loc1_];
            if(_loc2_.§-#u§)
            {
               this.§7#a§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §9!N§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Function = null, param6:Number = 0.0) : §6$'§
      {
         param5 = param5 || §`!h§.easeIn;
         var _loc7_:§"!L§;
         (_loc7_ = new §"!L§(param1,param2,param3,param4,param5)).§8u§ = this.§+!5§;
         _loc7_.§^"p§ = param6;
         this.§7#a§.push(_loc7_);
         return _loc7_;
      }
      
      public function §set §(... rest) : §6$'§
      {
         var _loc2_:§6$'§ = null;
         var _loc3_:§#!_§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§7#a§.indexOf(_loc2_);
            this.§7#a§.splice(_loc4_,1);
         }
         _loc3_ = new §#!_§(rest,true);
         _loc3_.§8u§ = this.§+!5§;
         this.§7#a§.push(_loc3_);
         return _loc3_;
      }
      
      public function §5$<§(param1:Array) : §6$'§
      {
         var _loc2_:§6$'§ = null;
         var _loc3_:§#!_§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in param1)
         {
            _loc4_ = this.§7#a§.indexOf(_loc2_);
            this.§7#a§.splice(_loc4_,1);
         }
         _loc3_ = new §#!_§(param1,true);
         _loc3_.§8u§ = this.§+!5§;
         this.§7#a§.push(_loc3_);
         return _loc3_;
      }
      
      public function §[#F§(... rest) : §6$'§
      {
         var _loc2_:§6$'§ = null;
         var _loc3_:§#!_§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§7#a§.indexOf(_loc2_);
            this.§7#a§.splice(_loc4_,1);
         }
         _loc3_ = new §#!_§(rest,false);
         _loc3_.§8u§ = this.§+!5§;
         this.§7#a§.push(_loc3_);
         return _loc3_;
      }
      
      public function §^"%§(param1:Array) : §6$'§
      {
         var _loc2_:§6$'§ = null;
         var _loc3_:§#!_§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in param1)
         {
            _loc4_ = this.§7#a§.indexOf(_loc2_);
            this.§7#a§.splice(_loc4_,1);
         }
         _loc3_ = new §#!_§(param1,false);
         _loc3_.§8u§ = this.§+!5§;
         this.§7#a§.push(_loc3_);
         return _loc3_;
      }
      
      public function pause() : void
      {
         this.§"#j§ = true;
      }
      
      public function resume() : void
      {
         this.§"#j§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§"#j§)
         {
            return;
         }
         if(this.§7#a§.length == 0)
         {
            return;
         }
         var _loc2_:Vector.<§6$'§> = this.§7#a§.concat();
         var _loc3_:§6$'§ = null;
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.length)
         {
            _loc3_ = _loc2_[_loc4_];
            _loc3_.update(param1);
            _loc4_++;
         }
         var _loc5_:int = this.§7#a§.length - 1;
         while(_loc5_ >= 0)
         {
            _loc3_ = this.§7#a§[_loc5_];
            if(_loc3_.isCompleted)
            {
               this.§7#a§.splice(_loc5_,1);
               _loc3_.dispose();
            }
            _loc5_--;
         }
      }
   }
}
