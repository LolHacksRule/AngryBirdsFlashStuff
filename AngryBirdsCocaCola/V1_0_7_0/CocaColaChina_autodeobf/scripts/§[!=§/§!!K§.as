package §[!=§
{
   public class §!!K§
   {
      
      public static const §2-§:String = "linear";
      
      public static const §-!§:String = "sine_in";
      
      public static const § i§:String = "sine_out";
      
      public static const §^O§:String = "quad_out";
      
      public static const §;!c§:String = "quad_in";
      
      public static const §1<§:String = "bounce_out";
      
      public static const §@b§:String = "bounce_in";
      
      public static const §<!G§:String = "circular_out";
      
      public static const §#,§:String = "circular_in";
      
      private static var §4R§:§!!K§;
       
      
      private var §,3§:Vector.<§&!D§>;
      
      private var §?r§:Boolean;
      
      private var §`!X§:Boolean = true;
      
      public function §!!K§()
      {
         this.§,3§ = new Vector.<§&!D§>();
         super();
      }
      
      public static function get §'!C§() : §!!K§
      {
         if(!§4R§)
         {
            §4R§ = new §!!K§();
         }
         return §4R§;
      }
      
      public function set §9!b§(param1:Boolean) : void
      {
         this.§`!X§ = param1;
      }
      
      public function §'X§() : void
      {
         var _loc2_:§&!D§ = null;
         var _loc1_:int = this.§,3§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§,3§[_loc1_];
            if(_loc2_.§1!1§)
            {
               this.§,3§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §'!H§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:String = "linear") : §3!2§
      {
         var _loc6_:§9j§;
         (_loc6_ = new §9j§(param1,param2,param3,param4,param5)).§9!b§ = this.§`!X§;
         this.§,3§.push(_loc6_);
         return _loc6_;
      }
      
      public function §;_§(... rest) : §3!2§
      {
         var _loc2_:§%!!§ = null;
         var _loc3_:§0f§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§,3§.indexOf(_loc2_);
            this.§,3§.splice(_loc4_,1);
         }
         _loc3_ = new §0f§(rest,true);
         _loc3_.§9!b§ = this.§`!X§;
         this.§,3§.push(_loc3_);
         return _loc3_;
      }
      
      public function §1W§(... rest) : §3!2§
      {
         var _loc2_:§%!!§ = null;
         var _loc3_:§0f§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§,3§.indexOf(_loc2_);
            this.§,3§.splice(_loc4_,1);
         }
         _loc3_ = new §0f§(rest,false);
         _loc3_.§9!b§ = this.§`!X§;
         this.§,3§.push(_loc3_);
         return _loc3_;
      }
      
      public function §]w§() : void
      {
         this.§?r§ = true;
      }
      
      public function §0#§() : void
      {
         this.§?r§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§&!D§ = null;
         if(this.§?r§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§,3§.length)
         {
            _loc3_ = false;
            (_loc4_ = this.§,3§[_loc2_]).update(param1);
            if(_loc4_.isCompleted)
            {
               this.§,3§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
