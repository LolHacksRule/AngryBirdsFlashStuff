package §>2§
{
   import §&$3§.§"!&§;
   import §&$3§.§7$C§;
   import §-$!§.§ $<§;
   import §-$!§.§0$@§;
   import §-$!§.§<U§;
   import §6#H§.Sprite;
   import §?$<§.§?$>§;
   import flash.geom.Point;
   
   public class §&!T§ extends §>#!§
   {
      
      private static const §6!]§:Number = 10;
      
      public static const §1!2§:Number = 1;
       
      
      private var §5F§:§7$C§ = null;
      
      private var §;"R§:Object;
      
      private var §;!`§:Boolean = false;
      
      private var §;!v§:§ $<§;
      
      public function §&!T§(param1:§6#t§, param2:Sprite, param3:String, param4:§?$>§, param5:Number, param6:Number, param7:Number, param8:int)
      {
         this.§;"R§ = new Object();
         super(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public function §1#n§(param1:Number, param2:Number, param3:Boolean = true) : §7$C§
      {
         §]"b§ = false;
         §%#=§ = -1;
         this.§;"R§.x = §["d§;
         this.§;"R§.y = §%#z§;
         this.§;"R§.rotation = §'$5§;
         if(param3)
         {
            this.§5F§ = §"!&§.§`"H§.§;#r§(§"!&§.§`"H§.§1"W§(this.§;"R§,{
               "x":param1,
               "rotation":-360
            },null,§1!2§),§"!&§.§`"H§.§?"§(§"!&§.§`"H§.§1"W§(this.§;"R§,{"y":this.§;"R§.y - §6!]§},null,§1!2§ / 2,§"!&§.§%# §),§"!&§.§`"H§.§1"W§(this.§;"R§,{"y":param2},{"y":this.§;"R§.y - §6!]§},§1!2§ / 2,§"!&§.§6!j§)));
         }
         else
         {
            this.§5F§ = §"!&§.§`"H§.§1"W§(null,null,null,§&!T§.§1!2§);
         }
         this.§5F§.play();
         this.§5F§.onComplete = this.§]@§;
         return this.§5F§;
      }
      
      private function §]@§() : void
      {
         this.§5F§ = null;
         §'$5§ = this.§;"R§.rotation;
         setPosition(this.§;"R§.x,this.§;"R§.y);
         §]"b§ = false;
         §%#=§ = -1;
         animationsEnabled = true;
      }
      
      override public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         if(this.§5F§ != null)
         {
            §'$5§ = this.§;"R§.rotation;
            setPosition(this.§;"R§.x,this.§;"R§.y);
            this.updateRenderer();
            this.§5F§.play();
         }
         else
         {
            super.update(param1,param2,param3);
         }
      }
      
      override public function applyGravity(param1:Number) : Boolean
      {
         if(this.§5F§ != null)
         {
            return false;
         }
         return super.applyGravity(param1);
      }
      
      override public function updateGroundControl(param1:Number) : void
      {
         if(this.§5F§ != null)
         {
            return;
         }
         super.updateGroundControl(param1);
      }
      
      public function get §+#'§() : Boolean
      {
         return this.§;!`§;
      }
      
      public function set §+#'§(param1:Boolean) : void
      {
         this.§;!`§ = param1;
      }
      
      public function get §<!c§() : § $<§
      {
         return this.§;!v§;
      }
      
      public function set §<!c§(param1:§ $<§) : void
      {
         this.§;!v§ = param1;
      }
      
      override public function approachSlingshot(param1:Number) : void
      {
         if(§<U§.§='§() == §0$@§.§9!§.§1#7§)
         {
         }
         super.approachSlingshot(param1);
      }
      
      override public function updateRenderer() : void
      {
         var _loc1_:Point = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         super.updateRenderer();
         if(§0"x§ && §<U§.§='§() == §0$@§.§9!§.§1#7§ && (§]#-§ as §7#;§).§]"_§)
         {
            _loc1_ = new Point((§]#-§ as §7#;§).§]"_§.x,(§]#-§ as §7#;§).§]"_§.y);
            _loc2_ = (§]#-§ as §7#;§).§]"_§.§%#4§();
            _loc3_ = 0.5 * radius * Math.cos(§+R§) / §!6§.§[#v§;
            _loc4_ = 0.5 * radius * Math.sin(§+R§) / §!6§.§[#v§;
            sprite.x = _loc1_.x + _loc3_;
            sprite.y = _loc1_.y + _loc4_;
         }
      }
   }
}
