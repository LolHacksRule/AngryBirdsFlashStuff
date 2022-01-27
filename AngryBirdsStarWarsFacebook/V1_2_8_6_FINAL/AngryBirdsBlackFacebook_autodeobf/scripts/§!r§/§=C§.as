package §!r§
{
   import §!!k§.§0!B§;
   import §"§.§;!E§;
   import §7"A§.b2Vec2;
   import com.angrybirds.§<!J§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import §use§.§,!u§;
   
   public class §=C§ extends EventDispatcher
   {
      
      public static const §@"w§:int = 0;
      
      public static const §-"]§:int = 1;
      
      public static const §,#-§:int = 2;
      
      public static const §&!,§:String = "BEAM_READY";
      
      private static var §8a§:§0N§;
       
      
      private const §<"M§:Array = ["PINK_BIRD_GRAVITY_RAY_PINK_1","PINK_BIRD_GRAVITY_RAY_PINK_2","PINK_BIRD_GRAVITY_RAY_PINK_3","PINK_BIRD_GRAVITY_RAY_PINK_4"];
      
      private const §5m§:int = 3;
      
      private var §^!a§:int = 0;
      
      private var §`F§:int = 0;
      
      private var §%##§:int = 0;
      
      private var §"!`§:int = 0;
      
      private var §2!^§:§,!u§;
      
      private var §1f§:§@]§;
      
      private var §+"K§:§0N§;
      
      private var §-# §:Boolean;
      
      private var §@""§:b2Vec2;
      
      public function §=C§(param1:§@]§, param2:§0N§, param3:int, param4:b2Vec2 = null)
      {
         super();
         this.§1f§ = param1;
         this.§+"K§ = param2;
         this.§@""§ = param4;
         if(param3 == §@"w§)
         {
            §8a§ = this.§+"K§;
         }
         this.§9y§(param3);
         this.§2!^§ = new §,!u§(§0!B§.§!6§.getTexture(this.§<"M§[this.§"!`§]).texture);
         this.§-# § = false;
      }
      
      public function update(param1:int) : void
      {
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc13_:§%2§ = null;
         this.§`F§ += param1;
         this.§0H§();
         this.§""E§(param1);
         var _loc2_:Number = this.§1f§.§"!r§() / §;!E§.§0"?§;
         var _loc3_:Number = this.§1f§.§8#1§() / §;!E§.§0"?§;
         var _loc4_:Number = 0;
         var _loc5_:Number = 0;
         var _loc6_:Number = 0;
         var _loc7_:Number = 0;
         if(§8a§ && this.§+"K§)
         {
            _loc4_ = §8a§.§"!r§() / §;!E§.§0"?§;
            _loc5_ = §8a§.§8#1§() / §;!E§.§0"?§;
            _loc6_ = this.§+"K§.§"!r§() / §;!E§.§0"?§;
            _loc7_ = this.§+"K§.§8#1§() / §;!E§.§0"?§;
         }
         else
         {
            _loc6_ = _loc4_ = this.§@""§.x / §;!E§.§0"?§;
            _loc7_ = _loc5_ = this.§@""§.y / §;!E§.§0"?§;
         }
         var _loc8_:Number = _loc2_;
         var _loc9_:Number = _loc3_;
         switch(this.§^!a§)
         {
            case §@"w§:
               _loc10_ = _loc4_ - (_loc4_ - _loc2_) * (1 - this.§`F§ / this.§1f§.specialtyBeamPhase1Time);
               _loc11_ = _loc5_ - (_loc5_ - _loc3_) * (1 - this.§`F§ / this.§1f§.specialtyBeamPhase1Time);
               this.§2!^§.alpha = this.§`F§ / this.§1f§.specialtyBeamPhase1Time;
               break;
            case §-"]§:
               _loc10_ = _loc6_ - (_loc6_ - _loc4_) * (1 - this.§`F§ / this.§1f§.specialtyBeamPhase2Time);
               _loc11_ = _loc7_ - (_loc7_ - _loc5_) * (1 - this.§`F§ / this.§1f§.specialtyBeamPhase2Time);
               break;
            case §,#-§:
               _loc10_ = _loc6_;
               _loc11_ = _loc7_;
         }
         var _loc12_:b2Vec2;
         if((_loc12_ = new b2Vec2(_loc10_ - _loc8_,_loc11_ - _loc9_)).Length() > 1)
         {
            this.§2!^§.§4"]§(this.§4"^§(_loc8_,_loc9_,_loc10_,_loc11_,20));
            this.§2!^§.visible = true;
         }
         else
         {
            this.§2!^§.visible = false;
         }
         if(!this.§-# §)
         {
            (_loc13_ = §%2§(§<!J§.§=!%§.levelObjects)).§2F§.addChildAt(this.§2!^§,0);
            this.§-# § = true;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:§%2§ = §%2§(§<!J§.§=!%§.levelObjects);
         _loc1_.§2F§.removeChild(this.§2!^§,true);
         this.§-# § = false;
         this.§2!^§.dispose();
         this.§2!^§ = null;
      }
      
      public function get phase() : int
      {
         return this.§^!a§;
      }
      
      private function §9y§(param1:int) : void
      {
         this.§^!a§ = param1;
         if(this.§^!a§ == §,#-§)
         {
            dispatchEvent(new Event(§&!,§));
         }
      }
      
      private function §0H§() : void
      {
         var _loc1_:int = 0;
         switch(this.§^!a§)
         {
            case §@"w§:
               _loc1_ = this.§1f§.specialtyBeamPhase1Time;
               break;
            case §-"]§:
               _loc1_ = this.§1f§.specialtyBeamPhase2Time;
         }
         if(this.§`F§ >= _loc1_)
         {
            this.§9y§(§,#-§);
         }
      }
      
      private function §""E§(param1:int) : void
      {
         if(this.§2!^§)
         {
            this.§%##§ += param1;
            if(this.§%##§ >= this.§5m§)
            {
               ++this.§"!`§;
               if(this.§"!`§ > this.§<"M§.length - 1)
               {
                  this.§"!`§ = 0;
               }
               this.§2!^§.texture = §0!B§.§!6§.getTexture(this.§<"M§[this.§"!`§]).texture;
               this.§%##§ = 0;
            }
         }
      }
      
      private function §4"^§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : Vector.<Point>
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
