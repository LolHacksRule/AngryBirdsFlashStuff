package §#g§
{
   import §+!Y§.§3!B§;
   import §+!Y§.§="S§;
   import §+!Y§.§[@§;
   import §,#e§.Sprite;
   import §8#K§.§&2§;
   import §;"5§.§6"W§;
   import §;"5§.§@$-§;
   import flash.geom.Point;
   
   public class §?'§ extends §1#0§
   {
      
      private static const §-!h§:Number = 10;
      
      public static const §2!D§:Number = 1;
       
      
      private var §7#y§:§@$-§ = null;
      
      private var §=#=§:Object;
      
      private var §?"[§:Boolean = false;
      
      private var §3"0§:§3!B§;
      
      public function §?'§(param1:§^"R§, param2:Sprite, param3:String, param4:§&2§, param5:Number, param6:Number, param7:Number, param8:int)
      {
         this.§=#=§ = new Object();
         super(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public function §8"T§(param1:Number, param2:Number, param3:Boolean = true) : §@$-§
      {
         §@!T§ = false;
         §+!%§ = -1;
         this.§=#=§.x = §&$'§;
         this.§=#=§.y = §<#-§;
         this.§=#=§.rotation = §^]§;
         if(param3)
         {
            this.§7#y§ = §6"W§.§+!,§.§8$>§(§6"W§.§+!,§.§9!n§(this.§=#=§,{
               "x":param1,
               "rotation":-360
            },null,§2!D§),§6"W§.§+!,§.§9S§(§6"W§.§+!,§.§9!n§(this.§=#=§,{"y":this.§=#=§.y - §-!h§},null,§2!D§ / 2,§6"W§.§,$8§),§6"W§.§+!,§.§9!n§(this.§=#=§,{"y":param2},{"y":this.§=#=§.y - §-!h§},§2!D§ / 2,§6"W§.§4-§)));
         }
         else
         {
            this.§7#y§ = §6"W§.§+!,§.§9!n§(null,null,null,§?'§.§2!D§);
         }
         this.§7#y§.play();
         this.§7#y§.onComplete = this.§35§;
         return this.§7#y§;
      }
      
      private function §35§() : void
      {
         this.§7#y§ = null;
         §^]§ = this.§=#=§.rotation;
         setPosition(this.§=#=§.x,this.§=#=§.y);
         §@!T§ = false;
         §+!%§ = -1;
         animationsEnabled = true;
      }
      
      override public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         if(this.§7#y§ != null)
         {
            §^]§ = this.§=#=§.rotation;
            setPosition(this.§=#=§.x,this.§=#=§.y);
            this.updateRenderer();
            this.§7#y§.play();
         }
         else
         {
            super.update(param1,param2,param3);
         }
      }
      
      override public function applyGravity(param1:Number) : Boolean
      {
         if(this.§7#y§ != null)
         {
            return false;
         }
         return super.applyGravity(param1);
      }
      
      override public function updateGroundControl(param1:Number) : void
      {
         if(this.§7#y§ != null)
         {
            return;
         }
         super.updateGroundControl(param1);
      }
      
      public function get §=!'§() : Boolean
      {
         return this.§?"[§;
      }
      
      public function set §=!'§(param1:Boolean) : void
      {
         this.§?"[§ = param1;
      }
      
      public function get §+"s§() : §3!B§
      {
         return this.§3"0§;
      }
      
      public function set §+"s§(param1:§3!B§) : void
      {
         this.§3"0§ = param1;
      }
      
      override public function approachSlingshot(param1:Number) : void
      {
         if(§="S§.§2!c§() == §[@§.§;"c§.§8t§)
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
         if(§,!p§ && §="S§.§2!c§() == §[@§.§;"c§.§8t§ && (§;!U§ as §+!C§).§+#2§)
         {
            _loc1_ = new Point((§;!U§ as §+!C§).§+#2§.x,(§;!U§ as §+!C§).§+#2§.y);
            _loc2_ = (§;!U§ as §+!C§).§+#2§.§3"W§();
            _loc3_ = 0.5 * radius * Math.cos(§ !B§) / §8#3§.§2K§;
            _loc4_ = 0.5 * radius * Math.sin(§ !B§) / §8#3§.§2K§;
            sprite.x = _loc1_.x + _loc3_;
            sprite.y = _loc1_.y + _loc4_;
         }
      }
   }
}
