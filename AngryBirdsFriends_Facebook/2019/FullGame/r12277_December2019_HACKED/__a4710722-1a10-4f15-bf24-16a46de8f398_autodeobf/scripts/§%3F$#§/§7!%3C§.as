package §?$#§
{
   import § null§.§5"<§;
   import § null§.§@§;
   import §#Z§.Sprite;
   import §-!j§.§-"8§;
   import §-"e§.§!"=§;
   import §-"e§.§[9§;
   import §-"e§.§^#i§;
   import flash.geom.Point;
   
   public class §7!<§ extends §;![§
   {
      
      private static const §7"3§:Number = 10;
      
      public static const §%u§:Number = 1;
       
      
      private var §`"M§:§@#5§ = null;
      
      private var §"#W§:Object;
      
      private var §;"z§:Boolean = false;
      
      private var §<!1§:§^#i§;
      
      public function §7!<§(param1:§2!"§, param2:Sprite, param3:String, param4:§-"8§, param5:Number, param6:Number, param7:Number, param8:int)
      {
         this.§"#W§ = new Object();
         super(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public function §[!B§(param1:Number, param2:Number, param3:Boolean = true) : §@#5§
      {
         §?!U§ = false;
         §1#u§ = -1;
         this.§"#W§.x = §0k§;
         this.§"#W§.y = §@_§;
         this.§"#W§.rotation = §^I§;
         if(param3)
         {
            this.§`"M§ = §5"<§.§3"1§.§!"[§(§5"<§.§3"1§.§3#§(this.§"#W§,{
               "x":param1,
               "rotation":-360
            },null,§%u§),§5"<§.§3"1§.§]#6§(§5"<§.§3"1§.§3#§(this.§"#W§,{"y":this.§"#W§.y - §7"3§},null,§%u§ / 2,§5"<§.§6=§),§5"<§.§3"1§.§3#§(this.§"#W§,{"y":param2},{"y":this.§"#W§.y - §7"3§},§%u§ / 2,§5"<§.§`#3§)));
         }
         else
         {
            this.§`"M§ = §5"<§.§3"1§.§3#§(null,null,null,§7!<§.§%u§);
         }
         this.§`"M§.play();
         this.§`"M§.onComplete = this.§&"Y§;
         return this.§`"M§;
      }
      
      private function §&"Y§() : void
      {
         this.§`"M§ = null;
         §^I§ = this.§"#W§.rotation;
         setPosition(this.§"#W§.x,this.§"#W§.y);
         §?!U§ = false;
         §1#u§ = -1;
         animationsEnabled = true;
      }
      
      override public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         if(this.§`"M§ != null)
         {
            §^I§ = this.§"#W§.rotation;
            setPosition(this.§"#W§.x,this.§"#W§.y);
            this.updateRenderer();
            this.§`"M§.play();
         }
         else
         {
            super.update(param1,param2,param3);
         }
      }
      
      override public function applyGravity(param1:Number) : Boolean
      {
         if(this.§`"M§ != null)
         {
            return false;
         }
         return super.applyGravity(param1);
      }
      
      override public function updateGroundControl(param1:Number) : void
      {
         if(this.§`"M§ != null)
         {
            return;
         }
         super.updateGroundControl(param1);
      }
      
      public function get §;!u§() : Boolean
      {
         return this.§;"z§;
      }
      
      public function set §;!u§(param1:Boolean) : void
      {
         this.§;"z§ = param1;
      }
      
      public function get §,'§() : §^#i§
      {
         return this.§<!1§;
      }
      
      public function set §,'§(param1:§^#i§) : void
      {
         this.§<!1§ = param1;
      }
      
      override public function approachSlingshot(param1:Number) : void
      {
         if(§!"=§.§!$#§() == §[9§.§%"<§.§=#@§)
         {
         }
         super.approachSlingshot(param1);
      }
      
      override public function updateRenderer() : void
      {
         var _loc1_:Point = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         super.updateRenderer();
         if(§'1§ && §!"=§.§!$#§() == §[9§.§%"<§.§=#@§ && (§[0§ as §]"]§).§4U§)
         {
            _loc1_ = new Point((§[0§ as §]"]§).§4U§.x,(§[0§ as §]"]§).§4U§.y);
            Number((§[0§ as §]"]§).§4U§.§<!C§());
            _loc3_ = 0.5 * radius * Math.cos(§[$D§) / §<d§.§6@§;
            _loc4_ = 0.5 * radius * Math.sin(§[$D§) / §<d§.§6@§;
            sprite.x = _loc1_.x + _loc3_;
            sprite.y = _loc1_.y + _loc4_;
         }
      }
   }
}
