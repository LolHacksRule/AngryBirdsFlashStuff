package §7P§
{
   import §!!U§.§#"t§;
   import §7!F§.§7§;
   import §[R§.b2Vec2;
   import §^#>§.§#_§;
   import com.angrybirds.§,!q§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   
   public class §2"L§ extends EventDispatcher
   {
      
      public static const §#!P§:int = 0;
      
      public static const §6o§:int = 1;
      
      public static const §+!`§:int = 2;
      
      public static const §%m§:String = "BEAM_READY";
      
      private static var §6!?§:§&#=§;
       
      
      private const §#",§:Array = ["PINK_BIRD_GRAVITY_RAY_PINK_1","PINK_BIRD_GRAVITY_RAY_PINK_2","PINK_BIRD_GRAVITY_RAY_PINK_3","PINK_BIRD_GRAVITY_RAY_PINK_4"];
      
      private const §9",§:int = 3;
      
      private var §`!a§:int = 0;
      
      private var §6B§:int = 0;
      
      private var §]!P§:int = 0;
      
      private var §#!d§:int = 0;
      
      private var §,!d§:§#"t§;
      
      private var §&!9§:§8!?§;
      
      private var §5H§:§&#=§;
      
      private var §1=§:Boolean;
      
      private var §^!Q§:b2Vec2;
      
      public function §2"L§(param1:§8!?§, param2:§&#=§, param3:int, param4:b2Vec2 = null)
      {
         super();
         this.§&!9§ = param1;
         this.§5H§ = param2;
         this.§^!Q§ = param4;
         if(param3 == §#!P§)
         {
            §6!?§ = this.§5H§;
         }
         this.§%"8§(param3);
         this.§,!d§ = new §#"t§(§7#5§.§%!E§.getTexture(this.§#",§[this.§#!d§]).texture);
         this.§1=§ = false;
      }
      
      public function update(param1:int) : void
      {
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc13_:§^!K§ = null;
         this.§6B§ += param1;
         this.§4!N§();
         this.§6"y§(param1);
         var _loc2_:Number = this.§&!9§.§'"8§() / §#_§.§8]§;
         var _loc3_:Number = this.§&!9§.§;">§() / §#_§.§8]§;
         var _loc4_:Number = 0;
         var _loc5_:Number = 0;
         var _loc6_:Number = 0;
         var _loc7_:Number = 0;
         if(§6!?§ && this.§5H§)
         {
            _loc4_ = §6!?§.§'"8§() / §#_§.§8]§;
            _loc5_ = §6!?§.§;">§() / §#_§.§8]§;
            _loc6_ = this.§5H§.§'"8§() / §#_§.§8]§;
            _loc7_ = this.§5H§.§;">§() / §#_§.§8]§;
         }
         else
         {
            _loc6_ = _loc4_ = this.§^!Q§.x / §#_§.§8]§;
            _loc7_ = _loc5_ = this.§^!Q§.y / §#_§.§8]§;
         }
         var _loc8_:Number = _loc2_;
         var _loc9_:Number = _loc3_;
         switch(this.§`!a§)
         {
            case §#!P§:
               _loc10_ = _loc4_ - (_loc4_ - _loc2_) * (1 - this.§6B§ / this.§&!9§.specialtyBeamPhase1Time);
               _loc11_ = _loc5_ - (_loc5_ - _loc3_) * (1 - this.§6B§ / this.§&!9§.specialtyBeamPhase1Time);
               this.§,!d§.alpha = this.§6B§ / this.§&!9§.specialtyBeamPhase1Time;
               break;
            case §6o§:
               _loc10_ = _loc6_ - (_loc6_ - _loc4_) * (1 - this.§6B§ / this.§&!9§.specialtyBeamPhase2Time);
               _loc11_ = _loc7_ - (_loc7_ - _loc5_) * (1 - this.§6B§ / this.§&!9§.specialtyBeamPhase2Time);
               break;
            case §+!`§:
               _loc10_ = _loc6_;
               _loc11_ = _loc7_;
         }
         var _loc12_:b2Vec2;
         if((_loc12_ = new b2Vec2(_loc10_ - _loc8_,_loc11_ - _loc9_)).Length() > 1)
         {
            this.§,!d§.§+!l§(this.§1#§(_loc8_,_loc9_,_loc10_,_loc11_,20));
            this.§,!d§.visible = true;
         }
         else
         {
            this.§,!d§.visible = false;
         }
         if(!this.§1=§)
         {
            (_loc13_ = §^!K§(§,!q§.§9!,§.levelObjects)).§8#G§.addChildAt(this.§,!d§,0);
            this.§1=§ = true;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:§^!K§ = §^!K§(§,!q§.§9!,§.levelObjects);
         _loc1_.§8#G§.removeChild(this.§,!d§,true);
         this.§1=§ = false;
         this.§,!d§.dispose();
         this.§,!d§ = null;
      }
      
      public function get phase() : int
      {
         return this.§`!a§;
      }
      
      private function §%"8§(param1:int) : void
      {
         this.§`!a§ = param1;
         if(this.§`!a§ == §+!`§)
         {
            dispatchEvent(new Event(§%m§));
         }
      }
      
      private function §4!N§() : void
      {
         var _loc1_:int = 0;
         switch(this.§`!a§)
         {
            case §#!P§:
               _loc1_ = this.§&!9§.specialtyBeamPhase1Time;
               break;
            case §6o§:
               _loc1_ = this.§&!9§.specialtyBeamPhase2Time;
         }
         if(this.§6B§ >= _loc1_)
         {
            this.§%"8§(§+!`§);
         }
      }
      
      private function §6"y§(param1:int) : void
      {
         if(this.§,!d§)
         {
            this.§]!P§ += param1;
            if(this.§]!P§ >= this.§9",§)
            {
               ++this.§#!d§;
               if(this.§#!d§ > this.§#",§.length - 1)
               {
                  this.§#!d§ = 0;
               }
               this.§,!d§.texture = §7#5§.§%!E§.getTexture(this.§#",§[this.§#!d§]).texture;
               this.§]!P§ = 0;
            }
         }
      }
      
      private function §1#§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : Vector.<Point>
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
