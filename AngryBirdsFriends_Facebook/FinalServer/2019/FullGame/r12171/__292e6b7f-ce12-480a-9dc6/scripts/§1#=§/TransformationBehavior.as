package §1#=§
{
   import § !N§.§5"?§;
   import § !N§.§8!U§;
   import § #>§.§8#i§;
   import § #>§.§^$5§;
   import §#g§.§8§;
   import §'#K§.b2Body;
   import §,0§.§0"0§;
   import §,0§.§?h§;
   import §04§.b2Vec2;
   import §3"V§.§ b§;
   import §6#h§.§'!t§;
   import §8#K§.§&2§;
   import §8#K§.§46§;
   import §;!=§.§ !i§;
   import §;!=§.§'#N§;
   import §;!=§.§>"G§;
   import §?#z§.§]$?§;
   
   public class TransformationBehavior implements §8#i§, §^$5§, §?h§
   {
      
      private static const TYPE:String = "transformation";
       
      
      private var §9!E§:§8#3§;
      
      private var §9s§:Vector.<PendingTransformData>;
      
      public function TransformationBehavior()
      {
         this.§9s§ = new Vector.<PendingTransformData>();
         super();
      }
      
      public function initialize(param1:§8#3§) : void
      {
         this.§9!E§ = param1;
      }
      
      public function §#!"§(param1:String) : Boolean
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
         if(this.§9s§.length > 0)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§9s§.length)
            {
               _loc4_ = false;
               if((_loc5_ = this.§9s§[_loc3_]).object && this.§9!E§.objects.§2,§(_loc5_.object))
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
                  this.§9s§.splice(this.§9s§.indexOf(_loc7_),1);
                  _loc6_++;
               }
            }
         }
      }
      
      private function transform(param1:PendingTransformData) : void
      {
         var _loc7_:b2Vec2 = null;
         var _loc2_:§>"G§ = param1.object;
         var _loc3_:§@&§ = param1.transformationData;
         var _loc4_:§ !i§ = this.§9!E§.objects;
         var _loc5_:String = _loc3_.§`#a§;
         if(_loc3_.soundName != null)
         {
            § b§.§^"8§(_loc3_.soundName,"ChannelExplosions");
         }
         var _loc6_:§'#N§ = _loc4_.§["$§(_loc2_,_loc5_);
         if(_loc3_.§[#g§)
         {
            _loc7_ = _loc6_.getBody().GetPosition();
            _loc4_.§##Q§(_loc7_.x,_loc7_.y,_loc3_.§%$9§,_loc3_.§#$=§,_loc3_.explosionDamageRadius,_loc3_.explosionDamage,(_loc6_ as §>"G§).id,false,false);
         }
         this.§!!T§(_loc6_,_loc3_,_loc4_);
         if(_loc6_.§3!C§)
         {
            if(§]$?§.§;r§ is §'!t§)
            {
               (§]$?§.§;r§ as §'!t§).§!#i§();
            }
         }
      }
      
      public function §+"-§(param1:String, param2:String) : void
      {
      }
      
      private function §!!T§(param1:§'#N§, param2:§@&§, param3:§ !i§) : void
      {
         var _loc15_:String = null;
         var _loc4_:b2Body;
         var _loc5_:Number = (_loc4_ = param1.getBody()).GetPosition().x;
         var _loc6_:Number = _loc4_.GetPosition().y;
         var _loc7_:Number = _loc4_.GetAngle();
         var _loc10_:§46§;
         var _loc9_:§&2§;
         var _loc11_:Number = (_loc10_ = (_loc9_ = param1.levelItem).shape).getWidth() * 1;
         var _loc12_:Number = _loc10_.getHeight() * 1;
         var _loc13_:int = param2.§3_§;
         var _loc14_:int = 0;
         while(_loc14_ < _loc13_)
         {
            if(_loc15_ = param2.§0!=§(_loc14_))
            {
               param3.§-"k§(_loc15_,_loc5_,_loc6_,_loc7_,§ !i§.ID_NEXT_FREE,_loc11_,_loc12_,1);
            }
            _loc14_++;
         }
      }
      
      private function §"b§(param1:§>"G§, param2:String, param3:String) : §8!U§
      {
         var _loc5_:§5"?§ = null;
         var _loc6_:Vector.<§8!U§> = null;
         var _loc7_:int = 0;
         var _loc8_:§8!U§ = null;
         var _loc9_:String = null;
         var _loc10_:String = null;
         var _loc4_:§8!U§ = null;
         if(param1 && param1.hasSpecialBehavior && param1.health > 0)
         {
            _loc6_ = (_loc5_ = param1.§8!E§).getBehaviorsData();
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
      
      public function get §<0§() : String
      {
         return TYPE;
      }
      
      public function §[y§(param1:§0"0§) : void
      {
         var _loc6_:§>"G§ = null;
         var _loc7_:§8!U§ = null;
         var _loc8_:§@&§ = null;
         var _loc2_:String = param1.eventName;
         var _loc3_:§ !i§ = this.§9!E§.objects;
         var _loc4_:int;
         var _loc5_:int = (_loc4_ = _loc3_.§-B§()) - 1;
         while(_loc5_ >= 0)
         {
            _loc6_ = §>"G§(_loc3_.getObject(_loc5_));
            if(_loc7_ = this.§"b§(_loc6_,_loc2_,this.§<0§))
            {
               if((_loc8_ = §@&§(this.§9!E§.levelItemManager.§;#$§(_loc7_.name))) != null)
               {
                  this.§9s§.push(new PendingTransformData(_loc6_,_loc8_));
               }
            }
            _loc5_--;
         }
      }
      
      public function clear() : void
      {
         this.§9s§ = new Vector.<PendingTransformData>();
      }
   }
}

import §1#=§.§@&§;
import §;!=§.§>"G§;

class PendingTransformData
{
    
   
   public var delay:int;
   
   public var eventName:String;
   
   public var data:Object;
   
   public var timer:int = 0;
   
   public var timeInMillis:int = 0;
   
   public var object:§>"G§;
   
   public var maxDelayInMillis:int = 0;
   
   public var readyToTransform:Boolean = false;
   
   public var transformationData:§@&§;
   
   function PendingTransformData(param1:§>"G§, param2:§@&§)
   {
      super();
      this.object = param1;
      this.maxDelayInMillis = this.randRange(param2.§31§ * 1000,param2.§<#t§ * 1000);
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
