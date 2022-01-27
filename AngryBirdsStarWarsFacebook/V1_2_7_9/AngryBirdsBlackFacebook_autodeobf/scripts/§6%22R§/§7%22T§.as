package §6"R§
{
   import §1"s§.§-i§;
   import §3"$§.§&"0§;
   import §5!q§.§3"X§;
   import §^>§.b2Vec2;
   import com.angrybirds.§;!e§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   
   public class §7"T§ extends EventDispatcher
   {
      
      public static const §7"B§:int = 0;
      
      public static const §3"K§:int = 1;
      
      public static const §+!M§:int = 2;
      
      public static const §0!E§:String = "BEAM_READY";
      
      private static var §-"=§:§4!w§;
       
      
      private const §4#"§:Array = ["PINK_BIRD_GRAVITY_RAY_PINK_1","PINK_BIRD_GRAVITY_RAY_PINK_2","PINK_BIRD_GRAVITY_RAY_PINK_3","PINK_BIRD_GRAVITY_RAY_PINK_4"];
      
      private const §0!b§:int = 3;
      
      private var §@#%§:int = 0;
      
      private var §6"g§:int = 0;
      
      private var §9o§:int = 0;
      
      private var §5!g§:int = 0;
      
      private var §>$§:§-i§;
      
      private var §[!9§:§3#+§;
      
      private var §5!'§:§4!w§;
      
      private var §0"0§:Boolean;
      
      private var §&!E§:b2Vec2;
      
      public function §7"T§(param1:§3#+§, param2:§4!w§, param3:int, param4:b2Vec2 = null)
      {
         super();
         this.§[!9§ = param1;
         this.§5!'§ = param2;
         this.§&!E§ = param4;
         if(param3 == §7"B§)
         {
            §-"=§ = this.§5!'§;
         }
         this.§6"z§(param3);
         this.§>$§ = new §-i§(§&"0§.§-G§.getTexture(this.§4#"§[this.§5!g§]).texture);
         this.§0"0§ = false;
      }
      
      public function update(param1:int) : void
      {
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc13_:§,"z§ = null;
         this.§6"g§ += param1;
         this.§2l§();
         this.§;"-§(param1);
         var _loc2_:Number = this.§[!9§.§#"v§() / §3"X§.§;"l§;
         var _loc3_:Number = this.§[!9§.§2!;§() / §3"X§.§;"l§;
         var _loc4_:Number = 0;
         var _loc5_:Number = 0;
         var _loc6_:Number = 0;
         var _loc7_:Number = 0;
         if(§-"=§ && this.§5!'§)
         {
            _loc4_ = §-"=§.§#"v§() / §3"X§.§;"l§;
            _loc5_ = §-"=§.§2!;§() / §3"X§.§;"l§;
            _loc6_ = this.§5!'§.§#"v§() / §3"X§.§;"l§;
            _loc7_ = this.§5!'§.§2!;§() / §3"X§.§;"l§;
         }
         else
         {
            _loc6_ = _loc4_ = this.§&!E§.x / §3"X§.§;"l§;
            _loc7_ = _loc5_ = this.§&!E§.y / §3"X§.§;"l§;
         }
         var _loc8_:Number = _loc2_;
         var _loc9_:Number = _loc3_;
         switch(this.§@#%§)
         {
            case §7"B§:
               _loc10_ = _loc4_ - (_loc4_ - _loc2_) * (1 - this.§6"g§ / this.§[!9§.specialtyBeamPhase1Time);
               _loc11_ = _loc5_ - (_loc5_ - _loc3_) * (1 - this.§6"g§ / this.§[!9§.specialtyBeamPhase1Time);
               this.§>$§.alpha = this.§6"g§ / this.§[!9§.specialtyBeamPhase1Time;
               break;
            case §3"K§:
               _loc10_ = _loc6_ - (_loc6_ - _loc4_) * (1 - this.§6"g§ / this.§[!9§.specialtyBeamPhase2Time);
               _loc11_ = _loc7_ - (_loc7_ - _loc5_) * (1 - this.§6"g§ / this.§[!9§.specialtyBeamPhase2Time);
               break;
            case §+!M§:
               _loc10_ = _loc6_;
               _loc11_ = _loc7_;
         }
         var _loc12_:b2Vec2;
         if((_loc12_ = new b2Vec2(_loc10_ - _loc8_,_loc11_ - _loc9_)).Length() > 1)
         {
            this.§>$§.§%!6§(this.§;9§(_loc8_,_loc9_,_loc10_,_loc11_,20));
            this.§>$§.visible = true;
         }
         else
         {
            this.§>$§.visible = false;
         }
         if(!this.§0"0§)
         {
            (_loc13_ = §,"z§(§;!e§.§<x§.levelObjects)).§6!>§.addChildAt(this.§>$§,0);
            this.§0"0§ = true;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:§,"z§ = §,"z§(§;!e§.§<x§.levelObjects);
         _loc1_.§6!>§.removeChild(this.§>$§,true);
         this.§0"0§ = false;
         this.§>$§.dispose();
         this.§>$§ = null;
      }
      
      public function get phase() : int
      {
         return this.§@#%§;
      }
      
      private function §6"z§(param1:int) : void
      {
         this.§@#%§ = param1;
         if(this.§@#%§ == §+!M§)
         {
            dispatchEvent(new Event(§0!E§));
         }
      }
      
      private function §2l§() : void
      {
         var _loc1_:int = 0;
         switch(this.§@#%§)
         {
            case §7"B§:
               _loc1_ = this.§[!9§.specialtyBeamPhase1Time;
               break;
            case §3"K§:
               _loc1_ = this.§[!9§.specialtyBeamPhase2Time;
         }
         if(this.§6"g§ >= _loc1_)
         {
            this.§6"z§(§+!M§);
         }
      }
      
      private function §;"-§(param1:int) : void
      {
         if(this.§>$§)
         {
            this.§9o§ += param1;
            if(this.§9o§ >= this.§0!b§)
            {
               ++this.§5!g§;
               if(this.§5!g§ > this.§4#"§.length - 1)
               {
                  this.§5!g§ = 0;
               }
               this.§>$§.texture = §&"0§.§-G§.getTexture(this.§4#"§[this.§5!g§]).texture;
               this.§9o§ = 0;
            }
         }
      }
      
      private function §;9§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : Vector.<Point>
      {
         var _loc6_:b2Vec2 = new b2Vec2();
         var _loc7_:b2Vec2 = new b2Vec2(1,1);
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2(1,0);
         var _loc10_:b2Vec2 = new b2Vec2(0,1);
         var _loc11_:b2Vec2;
         var _loc12_:Number = (_loc11_ = new b2Vec2(param3 - param1,param4 - param2)).x - _loc8_.x;
         var _loc13_:Number = _loc11_.y - _loc8_.y;
         var _loc14_:Number = param1 + _loc8_.x + _loc6_.x;
         var _loc15_:Number = param2 + _loc8_.y + _loc6_.y;
         var _loc16_:Vector.<b2Vec2>;
         (_loc16_ = new Vector.<b2Vec2>())[0] = new b2Vec2();
         _loc16_[0].x = _loc7_.x * (_loc14_ + _loc9_.x * -_loc8_.x + _loc10_.x * -_loc8_.y);
         _loc16_[0].y = _loc7_.y * (_loc15_ + _loc9_.y * -_loc8_.x + _loc10_.y * -_loc8_.y);
         _loc16_[1] = new b2Vec2();
         _loc16_[1].x = _loc7_.x * (_loc14_ + _loc9_.x * _loc12_ + _loc10_.x * _loc13_);
         _loc16_[1].y = _loc7_.y * (_loc15_ + _loc9_.y * _loc12_ + _loc10_.y * _loc13_);
         var _loc17_:Point;
         (_loc17_ = new Point(-_loc11_.y,_loc11_.x)).normalize(1);
         var _loc18_:b2Vec2;
         (_loc18_ = new b2Vec2()).x = _loc17_.x * param5 * 0.5;
         _loc18_.y = _loc17_.y * param5 * 0.5;
         _loc18_.x = _loc7_.x * (_loc9_.x * _loc18_.x + _loc10_.x * _loc18_.y);
         _loc18_.y = _loc7_.y * (_loc9_.y * _loc18_.x + _loc10_.y * _loc18_.y);
         var _loc19_:Vector.<Point>;
         (_loc19_ = new Vector.<Point>())[0] = new Point();
         _loc19_[1] = new Point();
         _loc19_[2] = new Point();
         _loc19_[3] = new Point();
         _loc19_[3].x = _loc16_[0].x + _loc18_.x;
         _loc19_[3].y = _loc16_[0].y + _loc18_.y;
         _loc19_[0].x = _loc16_[0].x - _loc18_.x;
         _loc19_[0].y = _loc16_[0].y - _loc18_.y;
         _loc19_[1].x = _loc16_[1].x + _loc18_.x;
         _loc19_[1].y = _loc16_[1].y + _loc18_.y;
         _loc19_[2].x = _loc16_[1].x - _loc18_.x;
         _loc19_[2].y = _loc16_[1].y - _loc18_.y;
         return _loc19_;
      }
   }
}
