package §%#+§
{
   import §!"-§.§]"_§;
   import §"§.§%!_§;
   import §"§.§%§;
   import §"§.§;!E§;
   import §"§.§<U§;
   import §'"A§.§3"x§;
   import §0"g§.§%b§;
   import §0"g§.§5!%§;
   import §9"U§.§[!b§;
   import §?"6§.§`!^§;
   import §`"1§.§=Q§;
   import §`"]§.PowerupFlash;
   import com.angrybirds.§<!J§;
   import flash.geom.Point;
   import §use§.§,!u§;
   
   public class §?!^§ extends §5x§
   {
      
      private static const §%"f§:Number = 2000;
      
      private static const §4"D§:Number = 1300;
       
      
      private var §'"k§:§%b§ = null;
      
      private var §&! §:§<U§;
      
      private var §"'§:§%!_§;
      
      private var §5!4§:§,!u§;
      
      private var §0V§:Point;
      
      private var §,!h§:Number;
      
      private var §?x§:Number;
      
      private var §#v§:Number;
      
      private var §8",§:Number;
      
      private var §`"W§:§%!_§;
      
      private var §&"1§:PowerupFlash;
      
      private var §@#"§:Boolean;
      
      private var §%"c§:Boolean;
      
      private var §3! §:Number = 0;
      
      public function §?!^§()
      {
         super(§[!b§.§]!F§,§3"x§.§"!0§);
      }
      
      override public function execute() : void
      {
         §=Q§.§`!A§("clone_bird_enter");
         §"!Z§ = false;
         this.§&! § = §<U§(§<!J§.§=!%§.slingshot);
         this.§#v§ = this.§&! §.x / §;!E§.§0"?§;
         this.§8",§ = this.§&! §.y / §;!E§.§0"?§;
         this.§,!h§ = this.§#v§ - 300;
         this.§?x§ = this.§8",§ - 800;
         this.§&! §.isLocked = true;
         if(this.§&! §.§&"P§.length > 0)
         {
            this.§"'§ = §%!_§(this.§&! §.§&"P§[this.§&! §.§#!A§]);
            if(this.§&! §.§&"P§.length <= 1 && this.§"'§)
            {
               this.§'"k§ = this.§"'§.§@!j§(this.§"'§.§1!v§,this.§"'§.§?#5§,false);
            }
            else if(this.§"'§)
            {
               this.§"'§.fallFromSlingshot();
               this.§'"k§ = this.§"'§.§@!j§(this.§"'§.§1!v§,this.§"'§.§?#5§);
            }
         }
         else
         {
            this.§"'§ = §%!_§(this.§&! §.§@o§);
         }
         this.§%"c§ = this.§"'§.§]P§;
         this.§@#"§ = this.§"'§.§8'§;
         if(this.§&! §.§&"P§.length > 0)
         {
            this.§"'§.§%"q§();
         }
         this.§&! §.§]"<§(§%#7§.§##3§);
         this.§5!4§ = §<!J§.§=!%§.textureManager.getTexture("CLONE_BIRD").§6z§(true);
         this.§&! §.sprite.addChild(this.§5!4§);
         this.§5!4§.x = this.§,!h§;
         this.§5!4§.y = this.§?x§;
         this.§5!4§.alpha = 0;
         this.§0V§ = new Point(this.§5!4§.x,this.§5!4§.y);
      }
      
      override public function updateTimeStep(param1:Number) : void
      {
         if(§2l§)
         {
            return;
         }
         this.§3! § += param1;
         if(this.§3! § > §%"f§)
         {
            this.§3! § = §%"f§;
         }
         this.§@"g§(param1);
         if(!this.§`"W§ && this.§3! § > §4"D§)
         {
            this.§+!M§();
         }
         this.§,!Y§(param1);
         if(this.§`"W§)
         {
            this.§`"W§.setPosition(this.§0V§.x * §;!E§.§0"?§,this.§0V§.y * §;!E§.§0"?§);
         }
         else
         {
            this.§5!4§.rotation = Math.atan2(this.§0V§.y - this.§5!4§.y,this.§0V§.x - this.§5!4§.x) - Math.PI / 2;
            this.§5!4§.x = this.§0V§.x;
            this.§5!4§.y = this.§0V§.y;
            this.§5!4§.alpha = Math.min(this.§3! § / 300,1);
         }
         if(this.§3! § == §%"f§)
         {
            this.§5",§();
         }
      }
      
      private function §,!Y§(param1:Number) : void
      {
         var _loc2_:Number = Math.min(this.§3! § / 2000,1);
         var _loc3_:Number = Math.min(this.§3! § / 2000,1);
         _loc3_ = §]"_§.easeIn(_loc3_,0,1,1);
         this.§0V§.x = this.§,!h§ + (this.§#v§ - this.§,!h§) * _loc2_;
         this.§0V§.y = this.§?x§ + (this.§8",§ - this.§?x§) * _loc3_;
      }
      
      private function §+!M§() : void
      {
         var _loc4_:§,!u§ = null;
         var _loc5_:Number = NaN;
         this.§&! §.sprite.removeChild(this.§5!4§);
         this.§`"W§ = §%!_§(§<U§(§<!J§.§=!%§.slingshot).§2#,§(this.§"'§.levelItem.itemName,this.§0V§.x * §;!E§.§0"?§,this.§0V§.y * §;!E§.§0"?§));
         if(this.§%"c§)
         {
            this.§`"W§.§2§();
         }
         if(this.§@#"§)
         {
            this.§`"W§.§="p§();
         }
         var _loc1_:Array = [0,0,0,0,0,0,0,0,0,0];
         var _loc2_:Array = [135,45,-135,-45,90];
         var _loc3_:int = 0;
         while(_loc3_ < 5)
         {
            _loc4_ = §<!J§.§=!%§.textureManager.getTexture("CLONE_BIRD_" + (_loc3_ + 1)).§6z§(true);
            this.§&! §.sprite.addChild(_loc4_);
            _loc4_.x = this.§0V§.x + _loc1_[_loc3_ * 2];
            _loc4_.y = this.§0V§.y + _loc1_[_loc3_ * 2 + 1];
            _loc5_ = _loc2_[_loc3_] * (Math.PI / 180);
            §5!%§.§!6§.§4!M§(_loc4_,{
               "x":_loc4_.x + Math.cos(_loc5_) * 300,
               "y":_loc4_.y + Math.sin(_loc5_) * 300,
               "rotation":5
            },null,1,§]"_§.easeOut).play();
            §5!%§.§!6§.§4!M§(_loc4_,{"alpha":0},null,1,§]"_§.easeIn).play();
            _loc3_++;
         }
         this.§&"1§ = new PowerupFlash();
         this.§&! §.sprite.addChild(this.§&"1§);
         this.§&"1§.x = this.§0V§.x;
         this.§&"1§.y = this.§0V§.y;
         this.§&"1§.scaleY = 2;
         this.§&"1§.scaleX = 2;
      }
      
      private function §5",§() : void
      {
         this.§&! §.isLocked = false;
         §`!^§(§<!J§.§]!D§).§`!;§();
         this.§&! §.§]"<§(§%#7§.§]!r§);
         §2l§ = true;
         §"!Z§ = true;
      }
      
      private function §##'§() : void
      {
      }
      
      private function §@"g§(param1:Number) : void
      {
         if(this.§&"1§)
         {
            this.§&"1§.update(param1);
            if(!this.§&"1§.§["z§)
            {
               this.§&! §.sprite.removeChild(this.§&"1§,true);
            }
         }
      }
   }
}
