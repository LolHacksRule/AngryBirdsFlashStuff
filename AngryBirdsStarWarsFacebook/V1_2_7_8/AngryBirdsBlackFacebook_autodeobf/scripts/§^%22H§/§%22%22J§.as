package §^"H§
{
   import §#"_§.§<!Q§;
   import §'! §.§4!Q§;
   import §'! §.§41§;
   import §,"v§.§@§;
   import §1"s§.§-i§;
   import §5!q§.§&§;
   import §5!q§.§-R§;
   import §5!q§.§3"X§;
   import §5!q§.§[E§;
   import §7""§.PowerupFlash;
   import §@b§.§&M§;
   import §]!=§.§;"I§;
   import §`"8§.§#f§;
   import com.angrybirds.§;!e§;
   import flash.geom.Point;
   
   public class §""J§ extends §4!N§
   {
      
      private static const §3#2§:Number = 2000;
      
      private static const §>z§:Number = 1300;
       
      
      private var §4!@§:§4!Q§ = null;
      
      private var §0#7§:§&#3§;
      
      private var §;"R§:§[E§;
      
      private var §>!M§:§-i§;
      
      private var §=#2§:Point;
      
      private var § d§:Number;
      
      private var §4"Z§:Number;
      
      private var §<"_§:Number;
      
      private var § "Y§:Number;
      
      private var §[!K§:§[E§;
      
      private var §9"[§:PowerupFlash;
      
      private var §#"?§:Boolean;
      
      private var §3#5§:Boolean;
      
      private var §]"@§:Number = 0;
      
      public function §""J§()
      {
         super(§#f§.§]"i§,§&M§.§="6§);
      }
      
      override public function execute() : void
      {
         §@§.§=Y§("clone_bird_enter");
         §'!w§ = false;
         this.§0#7§ = §&#3§(§;!e§.§<x§.slingshot);
         this.§<"_§ = this.§0#7§.x / §3"X§.§;"l§;
         this.§ "Y§ = this.§0#7§.y / §3"X§.§;"l§;
         this.§ d§ = this.§<"_§ - 300;
         this.§4"Z§ = this.§ "Y§ - 800;
         this.§0#7§.isLocked = true;
         if(this.§0#7§.§1#!§.length > 0)
         {
            this.§;"R§ = §[E§(this.§0#7§.§1#!§[this.§0#7§.§%r§]);
            if(this.§0#7§.§1#!§.length <= 1 && this.§;"R§)
            {
               this.§4!@§ = this.§;"R§.§8h§(this.§;"R§.§>!G§,this.§;"R§.§<!7§,false);
            }
            else if(this.§;"R§)
            {
               this.§;"R§.fallFromSlingshot();
               this.§4!@§ = this.§;"R§.§8h§(this.§;"R§.§>!G§,this.§;"R§.§<!7§);
            }
         }
         else
         {
            this.§;"R§ = §[E§(this.§0#7§.§8!m§);
         }
         this.§3#5§ = this.§;"R§.§!"C§;
         this.§#"?§ = this.§;"R§.§ &§;
         if(this.§0#7§.§1#!§.length > 0)
         {
            this.§;"R§.§>"f§();
         }
         this.§0#7§.§ !E§(§-R§.§'A§);
         this.§>!M§ = §;!e§.§<x§.textureManager.getTexture("CLONE_BIRD").§]"9§(true);
         this.§0#7§.sprite.addChild(this.§>!M§);
         this.§>!M§.x = this.§ d§;
         this.§>!M§.y = this.§4"Z§;
         this.§>!M§.alpha = 0;
         this.§=#2§ = new Point(this.§>!M§.x,this.§>!M§.y);
      }
      
      override public function updateTimeStep(param1:Number) : void
      {
         if(§?##§)
         {
            return;
         }
         this.§]"@§ += param1;
         if(this.§]"@§ > §3#2§)
         {
            this.§]"@§ = §3#2§;
         }
         this.§##0§(param1);
         if(!this.§[!K§ && this.§]"@§ > §>z§)
         {
            this.§6"?§();
         }
         this.§-"n§(param1);
         if(this.§[!K§)
         {
            this.§[!K§.setPosition(this.§=#2§.x * §3"X§.§;"l§,this.§=#2§.y * §3"X§.§;"l§);
         }
         else
         {
            this.§>!M§.rotation = Math.atan2(this.§=#2§.y - this.§>!M§.y,this.§=#2§.x - this.§>!M§.x) - Math.PI / 2;
            this.§>!M§.x = this.§=#2§.x;
            this.§>!M§.y = this.§=#2§.y;
            this.§>!M§.alpha = Math.min(this.§]"@§ / 300,1);
         }
         if(this.§]"@§ == §3#2§)
         {
            this.§["k§();
         }
      }
      
      private function §-"n§(param1:Number) : void
      {
         var _loc2_:Number = Math.min(this.§]"@§ / 2000,1);
         var _loc3_:Number = Math.min(this.§]"@§ / 2000,1);
         _loc3_ = §<!Q§.easeIn(_loc3_,0,1,1);
         this.§=#2§.x = this.§ d§ + (this.§<"_§ - this.§ d§) * _loc2_;
         this.§=#2§.y = this.§4"Z§ + (this.§ "Y§ - this.§4"Z§) * _loc3_;
      }
      
      private function §6"?§() : void
      {
         var _loc4_:§-i§ = null;
         var _loc5_:Number = NaN;
         this.§0#7§.sprite.removeChild(this.§>!M§);
         this.§[!K§ = §[E§(§&#3§(§;!e§.§<x§.slingshot).§0"F§(this.§;"R§.levelItem.itemName,this.§=#2§.x * §3"X§.§;"l§,this.§=#2§.y * §3"X§.§;"l§));
         if(this.§3#5§)
         {
            this.§[!K§.§^H§();
         }
         if(this.§#"?§)
         {
            this.§[!K§.§7#%§();
         }
         var _loc1_:Array = [0,0,0,0,0,0,0,0,0,0];
         var _loc2_:Array = [135,45,-135,-45,90];
         var _loc3_:int = 0;
         while(_loc3_ < 5)
         {
            _loc4_ = §;!e§.§<x§.textureManager.getTexture("CLONE_BIRD_" + (_loc3_ + 1)).§]"9§(true);
            this.§0#7§.sprite.addChild(_loc4_);
            _loc4_.x = this.§=#2§.x + _loc1_[_loc3_ * 2];
            _loc4_.y = this.§=#2§.y + _loc1_[_loc3_ * 2 + 1];
            _loc5_ = _loc2_[_loc3_] * (Math.PI / 180);
            §41§.§-G§.§&#'§(_loc4_,{
               "x":_loc4_.x + Math.cos(_loc5_) * 300,
               "y":_loc4_.y + Math.sin(_loc5_) * 300,
               "rotation":5
            },null,1,§<!Q§.easeOut).play();
            §41§.§-G§.§&#'§(_loc4_,{"alpha":0},null,1,§<!Q§.easeIn).play();
            _loc3_++;
         }
         this.§9"[§ = new PowerupFlash();
         this.§0#7§.sprite.addChild(this.§9"[§);
         this.§9"[§.x = this.§=#2§.x;
         this.§9"[§.y = this.§=#2§.y;
         this.§9"[§.scaleY = 2;
         this.§9"[§.scaleX = 2;
      }
      
      private function §["k§() : void
      {
         this.§0#7§.isLocked = false;
         §;"I§(§;!e§.§%e§).§]"x§();
         this.§0#7§.§ !E§(§-R§.§`9§);
         §?##§ = true;
         §'!w§ = true;
      }
      
      private function §0!z§() : void
      {
      }
      
      private function §##0§(param1:Number) : void
      {
         if(this.§9"[§)
         {
            this.§9"[§.update(param1);
            if(!this.§9"[§.§^"h§)
            {
               this.§0#7§.sprite.removeChild(this.§9"[§,true);
            }
         }
      }
   }
}
