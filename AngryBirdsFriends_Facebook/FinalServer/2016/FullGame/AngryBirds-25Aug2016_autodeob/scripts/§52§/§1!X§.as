package §52§
{
   import §&#S§.§""Z§;
   import §&#S§.§+,§;
   import §+!d§.§&b§;
   import §+!d§.§2![§;
   import §+!d§.§3§;
   import §9$§.Sprite;
   import §`#C§.§0!y§;
   import §`#C§.§8K§;
   import flash.geom.Point;
   
   public class §1!X§ extends §5!&§
   {
      
      private static const §^"K§:Number = 10;
      
      public static const §4#]§:Number = 1;
       
      
      private var §;#"§:§+,§ = null;
      
      private var §;!`§:Object;
      
      private var §,!!§:Boolean = false;
      
      private var §&%§:§&b§;
      
      private var §'"V§:Number = 0;
      
      private var §^$,§:Number = 1000;
      
      private var §%!6§:Boolean = true;
      
      private var §%!>§:Boolean = false;
      
      public function §1!X§(param1:§@M§, param2:Sprite, param3:String, param4:§8K§, param5:Number, param6:Number, param7:Number, param8:int)
      {
         this.§;!`§ = new Object();
         super(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public function §,!4§(param1:Number, param2:Number, param3:Boolean = true) : §+,§
      {
         §4"=§ = false;
         §6z§ = -1;
         this.§;!`§.x = §+!5§;
         this.§;!`§.y = §'! §;
         this.§;!`§.rotation = §%##§;
         if(param3)
         {
            this.§;#"§ = §""Z§.§3!]§.§[$2§(§""Z§.§3!]§.§5"0§(this.§;!`§,{
               "x":param1,
               "rotation":-360
            },null,§4#]§),§""Z§.§3!]§.§[#h§(§""Z§.§3!]§.§5"0§(this.§;!`§,{"y":this.§;!`§.y - §^"K§},null,§4#]§ / 2,§""Z§.§-0§),§""Z§.§3!]§.§5"0§(this.§;!`§,{"y":param2},{"y":this.§;!`§.y - §^"K§},§4#]§ / 2,§""Z§.§[$1§)));
         }
         else
         {
            this.§;#"§ = §""Z§.§3!]§.§5"0§(null,null,null,§1!X§.§4#]§);
         }
         this.§;#"§.play();
         this.§;#"§.onComplete = this.§""6§;
         return this.§;#"§;
      }
      
      private function §""6§() : void
      {
         this.§;#"§ = null;
         §%##§ = this.§;!`§.rotation;
         setPosition(this.§;!`§.x,this.§;!`§.y);
         §4"=§ = false;
         §6z§ = -1;
      }
      
      override public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         if(this.§;#"§ != null)
         {
            §%##§ = this.§;!`§.rotation;
            setPosition(this.§;!`§.x,this.§;!`§.y);
            this.updateRenderer();
            this.§;#"§.play();
         }
         else
         {
            super.update(param1,param2,param3);
            this.§7d§(param1);
         }
      }
      
      override public function applyGravity(param1:Number) : Boolean
      {
         if(this.§;#"§ != null)
         {
            return false;
         }
         return super.applyGravity(param1);
      }
      
      override public function updateGroundControl(param1:Number) : void
      {
         if(this.§;#"§ != null)
         {
            return;
         }
         super.updateGroundControl(param1);
      }
      
      public function get §%8§() : Boolean
      {
         return this.§,!!§;
      }
      
      public function set §%8§(param1:Boolean) : void
      {
         this.§,!!§ = param1;
      }
      
      public function get §^#H§() : §&b§
      {
         return this.§&%§;
      }
      
      public function set §^#H§(param1:§&b§) : void
      {
         this.§&%§ = param1;
      }
      
      override public function approachSlingshot(param1:Number) : void
      {
         if(§2![§.§,#>§() == §3#8§.§ "Z§.§"!E§)
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
         if(§;#v§ && §2![§.§,#>§() == §3#8§.§ "Z§.§"!E§ && (§@!x§ as §&#q§).§3"U§)
         {
            _loc1_ = new Point((§@!x§ as §&#q§).§3"U§.x,(§@!x§ as §&#q§).§3"U§.y);
            Number((§@!x§ as §&#q§).§3"U§.§^!Y§());
            _loc3_ = 0.5 * radius * Math.cos(§!M§) / §#!,§.§?$#§;
            _loc4_ = 0.5 * radius * Math.sin(§!M§) / §#!,§.§?$#§;
            sprite.x = _loc1_.x + _loc3_;
            sprite.y = _loc1_.y + _loc4_;
         }
      }
      
      public function §6"1§() : void
      {
         if(!§-"A§)
         {
            return;
         }
         this.§%!6§ = true;
         this.§'"V§ = this.§^$,§;
         §<#6§();
      }
      
      private function §7d§(param1:Number) : void
      {
         if(this.§'"V§ <= 0 && this.§%!6§)
         {
            this.§%!6§ = false;
            this.§'"V§ = this.§^$,§;
            §9#&§();
            §"!0§(§0!y§.§3D§);
         }
         else if(this.§'"V§ > 0)
         {
            this.§'"V§ -= param1;
         }
      }
   }
}
