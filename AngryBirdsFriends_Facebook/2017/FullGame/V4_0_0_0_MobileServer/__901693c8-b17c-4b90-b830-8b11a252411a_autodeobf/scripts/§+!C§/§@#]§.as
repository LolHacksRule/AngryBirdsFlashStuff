package §+!C§
{
   import §&!v§.Sprite;
   import §7"&§.§!"v§;
   import §8Z§.§-#C§;
   import §8Z§.§6"w§;
   import §=#C§.§1"r§;
   import §=#C§.§6!u§;
   import §=#C§.§7"G§;
   import flash.geom.Point;
   
   public class §@#]§ extends §@"@§
   {
      
      private static const §&#S§:Number = 10;
      
      public static const §##o§:Number = 1;
       
      
      private var §,#V§:§-#C§ = null;
      
      private var §0!>§:Object;
      
      private var §&#v§:Boolean = false;
      
      private var §9!F§:§6!u§;
      
      public function §@#]§(param1:§]#b§, param2:Sprite, param3:String, param4:§!"v§, param5:Number, param6:Number, param7:Number, param8:int)
      {
         this.§0!>§ = new Object();
         super(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public function §&$&§(param1:Number, param2:Number, param3:Boolean = true) : §-#C§
      {
         §=_§ = false;
         §@#>§ = -1;
         this.§0!>§.x = §?!l§;
         this.§0!>§.y = §`"T§;
         this.§0!>§.rotation = §,!H§;
         if(param3)
         {
            this.§,#V§ = §6"w§.§ "D§.§5"L§(§6"w§.§ "D§.§""3§(this.§0!>§,{
               "x":param1,
               "rotation":-360
            },null,§##o§),§6"w§.§ "D§.§=!b§(§6"w§.§ "D§.§""3§(this.§0!>§,{"y":this.§0!>§.y - §&#S§},null,§##o§ / 2,§6"w§.§'#v§),§6"w§.§ "D§.§""3§(this.§0!>§,{"y":param2},{"y":this.§0!>§.y - §&#S§},§##o§ / 2,§6"w§.§]i§)));
         }
         else
         {
            this.§,#V§ = §6"w§.§ "D§.§""3§(null,null,null,§@#]§.§##o§);
         }
         this.§,#V§.play();
         this.§,#V§.onComplete = this.§ "f§;
         return this.§,#V§;
      }
      
      private function § "f§() : void
      {
         this.§,#V§ = null;
         §,!H§ = this.§0!>§.rotation;
         setPosition(this.§0!>§.x,this.§0!>§.y);
         §=_§ = false;
         §@#>§ = -1;
      }
      
      override public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         if(this.§,#V§ != null)
         {
            §,!H§ = this.§0!>§.rotation;
            setPosition(this.§0!>§.x,this.§0!>§.y);
            this.updateRenderer();
            this.§,#V§.play();
         }
         else
         {
            super.update(param1,param2,param3);
         }
      }
      
      override public function applyGravity(param1:Number) : Boolean
      {
         if(this.§,#V§ != null)
         {
            return false;
         }
         return super.applyGravity(param1);
      }
      
      override public function updateGroundControl(param1:Number) : void
      {
         if(this.§,#V§ != null)
         {
            return;
         }
         super.updateGroundControl(param1);
      }
      
      public function get §8#o§() : Boolean
      {
         return this.§&#v§;
      }
      
      public function set §8#o§(param1:Boolean) : void
      {
         this.§&#v§ = param1;
      }
      
      public function get §0"4§() : §6!u§
      {
         return this.§9!F§;
      }
      
      public function set §0"4§(param1:§6!u§) : void
      {
         this.§9!F§ = param1;
      }
      
      override public function approachSlingshot(param1:Number) : void
      {
         if(§1"r§.§,#8§() == §7"G§.§1d§.§?"9§)
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
         if(§[!9§ && §1"r§.§,#8§() == §7"G§.§1d§.§?"9§ && (§#"5§ as §9!b§).§;j§)
         {
            _loc1_ = new Point((§#"5§ as §9!b§).§;j§.x,(§#"5§ as §9!b§).§;j§.y);
            _loc2_ = (§#"5§ as §9!b§).§;j§.§%D§();
            _loc3_ = 0.5 * radius * Math.cos(§1#E§) / §!!S§.§,"3§;
            _loc4_ = 0.5 * radius * Math.sin(§1#E§) / §!!S§.§,"3§;
            sprite.x = _loc1_.x + _loc3_;
            sprite.y = _loc1_.y + _loc4_;
         }
      }
   }
}
