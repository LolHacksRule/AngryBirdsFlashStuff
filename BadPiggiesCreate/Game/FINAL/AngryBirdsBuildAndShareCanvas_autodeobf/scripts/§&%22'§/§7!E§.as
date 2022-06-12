package §&"'§
{
   import §'B§.*;
   
   public class §7!E§
   {
      
      public static const §+!E§:Function = §-"&§.easeIn;
      
      public static const §throw§:Function = §5!z§.easeIn;
      
      public static const §;!i§:Function = §5!z§.easeOut;
      
      public static const §5!+§:Function = §5";§.easeOut;
      
      public static const §#r§:Function = §5";§.easeIn;
      
      public static const §8""§:Function = §>!e§.easeOut;
      
      public static const §=!S§:Function = §>!e§.easeIn;
      
      public static const §-"9§:Function = §[7§.easeOut;
      
      public static const §0! §:Function = §[7§.easeIn;
      
      private static var §1%§:§7!E§;
       
      
      protected var static:Vector.<§@5§>;
      
      protected var §93§:Boolean;
      
      protected var §<!y§:Boolean = true;
      
      public function §7!E§()
      {
         this.static = new Vector.<§@5§>();
         super();
      }
      
      public static function get §2=§() : §7!E§
      {
         if(!§1%§)
         {
            §1%§ = new §7!E§();
         }
         return §1%§;
      }
      
      public function set §#!5§(param1:Boolean) : void
      {
         this.§<!y§ = param1;
      }
      
      public function §`!7§() : void
      {
         var _loc2_:§@5§ = null;
         var _loc1_:int = this.static.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.static[_loc1_];
            if(_loc2_.§?V§)
            {
               this.static.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §<!C§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Function = null) : §@5§
      {
         param5 = param5 || §-"&§.easeIn;
         var _loc6_:§+"5§;
         (_loc6_ = new §+"5§(param1,param2,param3,param4,param5)).§#!5§ = this.§<!y§;
         this.static.push(_loc6_);
         return _loc6_;
      }
      
      public function §7#§(... rest) : §@5§
      {
         var _loc2_:§1!X§ = null;
         var _loc3_:§`q§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.static.indexOf(_loc2_);
            this.static.splice(_loc4_,1);
         }
         _loc3_ = new §`q§(rest,true);
         _loc3_.§#!5§ = this.§<!y§;
         this.static.push(_loc3_);
         return _loc3_;
      }
      
      public function §2!u§(... rest) : §@5§
      {
         var _loc2_:§1!X§ = null;
         var _loc3_:§`q§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.static.indexOf(_loc2_);
            this.static.splice(_loc4_,1);
         }
         _loc3_ = new §`q§(rest,false);
         _loc3_.§#!5§ = this.§<!y§;
         this.static.push(_loc3_);
         return _loc3_;
      }
      
      public function pause() : void
      {
         this.§93§ = true;
      }
      
      public function resume() : void
      {
         this.§93§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§@5§ = null;
         if(this.§93§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.static.length)
         {
            _loc3_ = false;
            (_loc4_ = this.static[_loc2_]).update(param1);
            if(_loc4_.isCompleted)
            {
               this.static.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
