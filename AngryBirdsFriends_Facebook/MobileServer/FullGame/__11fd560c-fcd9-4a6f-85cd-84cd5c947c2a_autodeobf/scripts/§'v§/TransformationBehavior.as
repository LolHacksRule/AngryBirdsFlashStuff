package §'v§
{
   import § "%§.b2Vec2;
   import §'!L§.§-$?§;
   import §'!L§.§5",§;
   import §3$"§.§#!_§;
   import §3$"§.§`"k§;
   import §4"O§.b2Body;
   import §8"L§.§!!C§;
   import §8"L§.§4U§;
   import §8§.§!#L§;
   import §8§.§,§;
   import §8§.§4!y§;
   import §;#D§.§3#U§;
   import §=#G§.§6"v§;
   import §>M§.§["z§;
   import §>M§.§[N§;
   import §@!M§.§!"p§;
   import §@0§.§%!q§;
   
   public class TransformationBehavior implements §`"k§, §#!_§, §-$?§
   {
      
      private static const TYPE:String = "transformation";
       
      
      private var §=#N§:§%!q§;
      
      private var §4#0§:Vector.<PendingTransformData>;
      
      public function TransformationBehavior()
      {
         this.§4#0§ = new Vector.<PendingTransformData>();
         super();
      }
      
      public function initialize(param1:§%!q§) : void
      {
         this.§=#N§ = param1;
      }
      
      public function §?!k§(param1:String) : Boolean
      {
         return param1 == TYPE;
      }
      
      public function update(param1:int) : void
      {
         var _loc2_:Vector.<PendingTransformData> = null;
         var _loc3_:int = 0;
         var _loc4_:Boolean = false;
         var _loc5_:PendingTransformData = null;
         var _loc6_:int = 0;
         var _loc7_:PendingTransformData = null;
         if(this.§4#0§.length > 0)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§4#0§.length)
            {
               _loc4_ = false;
               if((_loc5_ = this.§4#0§[_loc3_]).object && this.§=#N§.objects.§'#9§(_loc5_.object))
               {
                  _loc5_.update(param1);
                  if(_loc5_.readyToTransform)
                  {
                     this.transform(_loc5_);
                     _loc4_ = true;
                  }
               }
               else
               {
                  _loc4_ = true;
               }
               if(_loc4_)
               {
                  if(_loc2_ == null)
                  {
                     _loc2_ = new Vector.<PendingTransformData>();
                  }
                  _loc2_.push(_loc5_);
               }
               _loc3_++;
            }
            if(_loc2_)
            {
               _loc6_ = 0;
               while(_loc6_ < _loc2_.length)
               {
                  _loc7_ = _loc2_[_loc6_];
                  this.§4#0§.splice(this.§4#0§.indexOf(_loc7_),1);
                  _loc6_++;
               }
            }
         }
      }
      
      private function transform(param1:PendingTransformData) : void
      {
         var _loc7_:b2Vec2 = null;
         var _loc2_:§4!y§ = param1.object;
         var _loc3_:§5'§ = param1.transformationData;
         var _loc4_:§!#L§ = this.§=#N§.objects;
         var _loc5_:String = _loc3_.§9S§;
         if(_loc3_.soundName != null)
         {
            §!"p§.§%!R§(_loc3_.soundName,"ChannelExplosions");
         }
         var _loc6_:§,#5§ = _loc4_.§@"H§(_loc2_,_loc5_);
         if(_loc3_.§5"L§)
         {
            _loc7_ = _loc6_.getBody().GetPosition();
            _loc4_.§5#A§(_loc7_.x,_loc7_.y,_loc3_.§4"E§,_loc3_.§,#@§,_loc3_.explosionDamageRadius,_loc3_.explosionDamage,(_loc6_ as §4!y§).id,false,false);
         }
         this.§## §(_loc6_,_loc3_,_loc4_);
         if(_loc6_.§3#,§)
         {
            if(§3#U§.§8I§ is §6"v§)
            {
               (§3#U§.§8I§ as §6"v§).§-!$§();
            }
         }
      }
      
      public function §5"P§(param1:String, param2:String) : void
      {
      }
      
      private function §## §(param1:§,#5§, param2:§5'§, param3:§!#L§) : void
      {
         var _loc15_:String = null;
         var _loc4_:b2Body;
         var _loc5_:Number = (_loc4_ = param1.getBody()).GetPosition().x;
         var _loc6_:Number = _loc4_.GetPosition().y;
         var _loc7_:Number = _loc4_.GetAngle();
         var _loc10_:§!!C§;
         var _loc9_:§4U§;
         var _loc11_:Number = (_loc10_ = (_loc9_ = param1.levelItem).shape).getWidth() * 1;
         var _loc12_:Number = _loc10_.getHeight() * 1;
         var _loc13_:int = param2.§%!§;
         var _loc14_:int = 0;
         while(_loc14_ < _loc13_)
         {
            if(_loc15_ = param2.§@!q§(_loc14_))
            {
               param3.§;"o§(_loc15_,_loc5_,_loc6_,_loc7_,§!#L§.ID_NEXT_FREE,_loc11_,_loc12_,1);
            }
            _loc14_++;
         }
      }
      
      private function §>!U§(param1:§4!y§, param2:String, param3:String) : §[N§
      {
         var _loc5_:§["z§ = null;
         var _loc6_:Vector.<§[N§> = null;
         var _loc7_:int = 0;
         var _loc8_:§[N§ = null;
         var _loc9_:String = null;
         var _loc10_:String = null;
         var _loc4_:§[N§ = null;
         if(param1 && param1.hasSpecialBehavior && param1.health > 0)
         {
            _loc6_ = (_loc5_ = param1.§9"f§).getBehaviorsData();
            _loc7_ = 0;
            while(_loc7_ < _loc6_.length)
            {
               _loc9_ = (_loc8_ = _loc6_[_loc7_]).type;
               if((_loc10_ = _loc8_.event) == param2 && _loc9_ == param3)
               {
                  _loc4_ = _loc8_;
                  break;
               }
               _loc7_++;
            }
         }
         return _loc4_;
      }
      
      public function get §]1§() : String
      {
         return TYPE;
      }
      
      public function §%+§(param1:§5",§) : void
      {
         var _loc6_:§4!y§ = null;
         var _loc7_:§[N§ = null;
         var _loc8_:§5'§ = null;
         var _loc2_:String = param1.eventName;
         var _loc3_:§!#L§ = this.§=#N§.objects;
         var _loc4_:int;
         var _loc5_:int = (_loc4_ = _loc3_.§&#1§()) - 1;
         while(_loc5_ >= 0)
         {
            _loc6_ = §4!y§(_loc3_.getObject(_loc5_));
            if(_loc7_ = this.§>!U§(_loc6_,_loc2_,this.§]1§))
            {
               _loc8_ = §5'§(this.§=#N§.levelItemManager.§"M§(_loc7_.name));
               this.§4#0§.push(new PendingTransformData(_loc6_,_loc8_));
            }
            _loc5_--;
         }
      }
      
      public function clear() : void
      {
         this.§4#0§ = new Vector.<PendingTransformData>();
      }
   }
}

import §'v§.§5'§;
import §8§.§4!y§;

class PendingTransformData
{
    
   
   public var delay:int;
   
   public var eventName:String;
   
   public var data:Object;
   
   public var timer:int = 0;
   
   public var timeInMillis:int = 0;
   
   public var object:§4!y§;
   
   public var maxDelayInMillis:int = 0;
   
   public var readyToTransform:Boolean = false;
   
   public var transformationData:§5'§;
   
   function PendingTransformData(param1:§4!y§, param2:§5'§)
   {
      super();
      this.object = param1;
      this.maxDelayInMillis = this.randRange(param2.§8"I§ * 1000,param2.§9!V§ * 1000);
      this.transformationData = param2;
   }
   
   public function update(param1:int) : void
   {
      this.timeInMillis += param1;
      if(this.timeInMillis >= this.maxDelayInMillis)
      {
         this.readyToTransform = true;
      }
   }
   
   private function randRange(param1:Number, param2:Number) : Number
   {
      return Math.floor(Math.random() * (param2 - param1 + 1)) + param1;
   }
}
