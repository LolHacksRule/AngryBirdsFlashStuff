package §'"E§
{
   import §!!U§.§#"t§;
   import §"a§.§6#!§;
   import §+!c§.PowerupFlash;
   import §,"N§.§6"w§;
   import §3y§.§9!Z§;
   import §6!H§.§,#E§;
   import §6"G§.§-#C§;
   import §6"G§.§[#R§;
   import §="2§.§?!r§;
   import §^#>§.§#_§;
   import §^#>§.§'"3§;
   import §^#>§.§;x§;
   import §^#>§.§>f§;
   import com.angrybirds.§,!q§;
   import flash.geom.Point;
   
   public class §3!e§ extends §^"`§
   {
      
      private static const §^"i§:Number = 2000;
      
      private static const §6#V§:Number = 1300;
       
      
      private var §5#_§:§[#R§ = null;
      
      private var §8"y§:§>f§;
      
      private var § "w§:§'"3§;
      
      private var §2!p§:§#"t§;
      
      private var §,#&§:Point;
      
      private var §2M§:Number;
      
      private var §=z§:Number;
      
      private var § "]§:Number;
      
      private var §8U§:Number;
      
      private var §'>§:§'"3§;
      
      private var §catch§:PowerupFlash;
      
      private var §,5§:Boolean;
      
      private var §#"j§:Boolean;
      
      private var §5"v§:Number = 0;
      
      public function §3!e§()
      {
         super(§6"w§.§1!m§,§,#E§.§&X§);
      }
      
      override public function execute() : void
      {
         §?!r§.§"#_§("clone_bird_enter");
         §,#4§ = false;
         this.§8"y§ = §>f§(§,!q§.§9!,§.slingshot);
         this.§ "]§ = this.§8"y§.x / §#_§.§8]§;
         this.§8U§ = this.§8"y§.y / §#_§.§8]§;
         this.§2M§ = this.§ "]§ - 300;
         this.§=z§ = this.§8U§ - 800;
         this.§8"y§.isLocked = true;
         if(this.§8"y§.§,!?§.length > 0)
         {
            this.§ "w§ = §'"3§(this.§8"y§.§,!?§[this.§8"y§.§72§]);
            if(this.§8"y§.§,!?§.length <= 1 && this.§ "w§)
            {
               this.§5#_§ = this.§ "w§.§1V§(this.§ "w§.§,r§,this.§ "w§.§for §,false);
            }
            else if(this.§ "w§)
            {
               this.§ "w§.fallFromSlingshot();
               this.§5#_§ = this.§ "w§.§1V§(this.§ "w§.§,r§,this.§ "w§.§for §);
            }
         }
         else
         {
            this.§ "w§ = §'"3§(this.§8"y§.§6!8§);
         }
         this.§#"j§ = this.§ "w§.§!#?§;
         this.§,5§ = this.§ "w§.§[g§;
         if(this.§8"y§.§,!?§.length > 0)
         {
            this.§ "w§.§^w§();
         }
         this.§8"y§.§8"F§(§;x§.§@"m§);
         this.§2!p§ = §,!q§.§9!,§.textureManager.getTexture("CLONE_BIRD").§ "P§(true);
         this.§8"y§.sprite.addChild(this.§2!p§);
         this.§2!p§.x = this.§2M§;
         this.§2!p§.y = this.§=z§;
         this.§2!p§.alpha = 0;
         this.§,#&§ = new Point(this.§2!p§.x,this.§2!p§.y);
      }
      
      override public function updateTimeStep(param1:Number) : void
      {
         if(§0!3§)
         {
            return;
         }
         this.§5"v§ += param1;
         if(this.§5"v§ > §^"i§)
         {
            this.§5"v§ = §^"i§;
         }
         this.§'!%§(param1);
         if(!this.§'>§ && this.§5"v§ > §6#V§)
         {
            this.§0f§();
         }
         this.§8"h§(param1);
         if(this.§'>§)
         {
            this.§'>§.setPosition(this.§,#&§.x * §#_§.§8]§,this.§,#&§.y * §#_§.§8]§);
         }
         else
         {
            this.§2!p§.rotation = Math.atan2(this.§,#&§.y - this.§2!p§.y,this.§,#&§.x - this.§2!p§.x) - Math.PI / 2;
            this.§2!p§.x = this.§,#&§.x;
            this.§2!p§.y = this.§,#&§.y;
            this.§2!p§.alpha = Math.min(this.§5"v§ / 300,1);
         }
         if(this.§5"v§ == §^"i§)
         {
            this.§]d§();
         }
      }
      
      private function §8"h§(param1:Number) : void
      {
         var _loc2_:Number = Math.min(this.§5"v§ / 2000,1);
         var _loc3_:Number = Math.min(this.§5"v§ / 2000,1);
         _loc3_ = §9!Z§.easeIn(_loc3_,0,1,1);
         this.§,#&§.x = this.§2M§ + (this.§ "]§ - this.§2M§) * _loc2_;
         this.§,#&§.y = this.§=z§ + (this.§8U§ - this.§=z§) * _loc3_;
      }
      
      private function §0f§() : void
      {
         var _loc4_:§#"t§ = null;
         var _loc5_:Number = NaN;
         this.§8"y§.sprite.removeChild(this.§2!p§);
         this.§'>§ = §'"3§(§>f§(§,!q§.§9!,§.slingshot).§+#2§(this.§ "w§.levelItem.itemName,this.§,#&§.x * §#_§.§8]§,this.§,#&§.y * §#_§.§8]§));
         if(this.§#"j§)
         {
            this.§'>§.§@#Y§();
         }
         if(this.§,5§)
         {
            this.§'>§.§#W§();
         }
         var _loc1_:Array = [0,0,0,0,0,0,0,0,0,0];
         var _loc2_:Array = [135,45,-135,-45,90];
         var _loc3_:int = 0;
         while(_loc3_ < 5)
         {
            _loc4_ = §,!q§.§9!,§.textureManager.getTexture("CLONE_BIRD_" + (_loc3_ + 1)).§ "P§(true);
            this.§8"y§.sprite.addChild(_loc4_);
            _loc4_.x = this.§,#&§.x + _loc1_[_loc3_ * 2];
            _loc4_.y = this.§,#&§.y + _loc1_[_loc3_ * 2 + 1];
            _loc5_ = _loc2_[_loc3_] * (Math.PI / 180);
            §-#C§.§%!E§.§^!H§(_loc4_,{
               "x":_loc4_.x + Math.cos(_loc5_) * 300,
               "y":_loc4_.y + Math.sin(_loc5_) * 300,
               "rotation":5
            },null,1,§9!Z§.easeOut).play();
            §-#C§.§%!E§.§^!H§(_loc4_,{"alpha":0},null,1,§9!Z§.easeIn).play();
            _loc3_++;
         }
         this.§catch§ = new PowerupFlash();
         this.§8"y§.sprite.addChild(this.§catch§);
         this.§catch§.x = this.§,#&§.x;
         this.§catch§.y = this.§,#&§.y;
         this.§catch§.scaleY = 2;
         this.§catch§.scaleX = 2;
      }
      
      private function §]d§() : void
      {
         this.§8"y§.isLocked = false;
         §6#!§(§,!q§.§>k§).§3x§();
         this.§8"y§.§8"F§(§;x§.§,"K§);
         §0!3§ = true;
         §,#4§ = true;
      }
      
      private function §+!y§() : void
      {
      }
      
      private function §'!%§(param1:Number) : void
      {
         if(this.§catch§)
         {
            this.§catch§.update(param1);
            if(!this.§catch§.§<"M§)
            {
               this.§8"y§.sprite.removeChild(this.§catch§,true);
            }
         }
      }
   }
}
