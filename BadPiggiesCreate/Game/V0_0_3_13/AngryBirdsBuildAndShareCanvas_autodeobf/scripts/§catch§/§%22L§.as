package §catch§
{
   import §?!p§.*;
   
   public class §"L§
   {
      
      public static const §6_§:Function = §`!R§.easeIn;
      
      public static const §`!"§:Function = §#"%§.easeIn;
      
      public static const §5!+§:Function = §#"%§.easeOut;
      
      public static const §;§:Function = §1!p§.easeOut;
      
      public static const § "9§:Function = §1!p§.easeIn;
      
      public static const §@v§:Function = §0![§.easeOut;
      
      public static const §2!5§:Function = §0![§.easeIn;
      
      public static const §%!!§:Function = §`-§.easeOut;
      
      public static const §'"4§:Function = §`-§.easeIn;
      
      private static var §`!z§:§"L§;
       
      
      protected var §`9§:Vector.<§!M§>;
      
      protected var §`!K§:Boolean;
      
      protected var §+"%§:Boolean = true;
      
      public function §"L§()
      {
         this.§`9§ = new Vector.<§!M§>();
         super();
      }
      
      public static function get §7!?§() : §"L§
      {
         if(!§`!z§)
         {
            §`!z§ = new §"L§();
         }
         return §`!z§;
      }
      
      public function set §]!5§(param1:Boolean) : void
      {
         this.§+"%§ = param1;
      }
      
      public function §#!2§() : void
      {
         var _loc2_:§!M§ = null;
         var _loc1_:int = this.§`9§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§`9§[_loc1_];
            if(_loc2_.§;v§)
            {
               this.§`9§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §4!P§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Function = null) : §!M§
      {
         param5 = param5 || §`!R§.easeIn;
         var _loc6_:§class§;
         (_loc6_ = new §class§(param1,param2,param3,param4,param5)).§]!5§ = this.§+"%§;
         this.§`9§.push(_loc6_);
         return _loc6_;
      }
      
      public function §#!x§(... rest) : §!M§
      {
         var _loc2_:§?5§ = null;
         var _loc3_:§'!5§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§`9§.indexOf(_loc2_);
            this.§`9§.splice(_loc4_,1);
         }
         _loc3_ = new §'!5§(rest,true);
         _loc3_.§]!5§ = this.§+"%§;
         this.§`9§.push(_loc3_);
         return _loc3_;
      }
      
      public function §@!H§(... rest) : §!M§
      {
         var _loc2_:§?5§ = null;
         var _loc3_:§'!5§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§`9§.indexOf(_loc2_);
            this.§`9§.splice(_loc4_,1);
         }
         _loc3_ = new §'!5§(rest,false);
         _loc3_.§]!5§ = this.§+"%§;
         this.§`9§.push(_loc3_);
         return _loc3_;
      }
      
      public function pause() : void
      {
         this.§`!K§ = true;
      }
      
      public function resume() : void
      {
         this.§`!K§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§!M§ = null;
         if(this.§`!K§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§`9§.length)
         {
            _loc3_ = false;
            (_loc4_ = this.§`9§[_loc2_]).update(param1);
            if(_loc4_.isCompleted)
            {
               this.§`9§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
