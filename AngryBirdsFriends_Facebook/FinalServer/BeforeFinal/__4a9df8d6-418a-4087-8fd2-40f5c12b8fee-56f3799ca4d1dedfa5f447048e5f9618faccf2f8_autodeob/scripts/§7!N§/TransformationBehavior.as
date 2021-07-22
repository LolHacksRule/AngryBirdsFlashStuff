package §7!N§
{
   import §-#X§.§,!B§;
   import §-#X§.§2"7§;
   import §2!l§.§&y§;
   import §2!l§.§4"3§;
   import §4§.§9#i§;
   import §6!3§.§!y§;
   import §6!3§.§'!§;
   import §6!3§.§;!U§;
   import §8#K§.§3Z§;
   import §>2§.§!6§;
   import §?!C§.b2Vec2;
   import §?$<§.§4"F§;
   import §?$<§.§?$>§;
   import §@!S§.b2Body;
   import §^"Z§.§%w§;
   import §^"Z§.§]#F§;
   import §`#@§.§7n§;
   
   public class TransformationBehavior implements §%w§, §]#F§, §&y§
   {
      
      private static const TYPE:String = "transformation";
       
      
      private var §5#0§:§!6§;
      
      private var §6"9§:Vector.<PendingTransformData>;
      
      public function TransformationBehavior()
      {
         this.§6"9§ = new Vector.<PendingTransformData>();
         super();
      }
      
      public function initialize(param1:§!6§) : void
      {
         this.§5#0§ = param1;
      }
      
      public function §2#C§(param1:String) : Boolean
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
         if(this.§6"9§.length > 0)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§6"9§.length)
            {
               _loc4_ = false;
               if((_loc5_ = this.§6"9§[_loc3_]).object && this.§5#0§.objects.§[=§(_loc5_.object))
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
                  this.§6"9§.splice(this.§6"9§.indexOf(_loc7_),1);
                  _loc6_++;
               }
            }
         }
      }
      
      private function transform(param1:PendingTransformData) : void
      {
         var _loc7_:b2Vec2 = null;
         var _loc2_:§;!U§ = param1.object;
         var _loc3_:§+c§ = param1.transformationData;
         var _loc4_:§'!§ = this.§5#0§.objects;
         var _loc5_:String = _loc3_.§]J§;
         if(_loc3_.soundName != null)
         {
            §3Z§.§8!K§(_loc3_.soundName,"ChannelExplosions");
         }
         var _loc6_:§!y§ = _loc4_.§7"M§(_loc2_,_loc5_);
         if(_loc3_.§;!x§)
         {
            _loc7_ = _loc6_.getBody().GetPosition();
            _loc4_.§;"8§(_loc7_.x,_loc7_.y,_loc3_.§#d§,_loc3_.§6#R§,_loc3_.explosionDamageRadius,_loc3_.explosionDamage,(_loc6_ as §;!U§).id,false,false);
         }
         this.§@A§(_loc6_,_loc3_,_loc4_);
         if(_loc6_.§9v§)
         {
            if(§7n§.§ "'§ is §9#i§)
            {
               (§7n§.§ "'§ as §9#i§).§'A§();
            }
         }
      }
      
      public function §5#2§(param1:String, param2:String) : void
      {
      }
      
      private function §@A§(param1:§!y§, param2:§+c§, param3:§'!§) : void
      {
         var _loc15_:String = null;
         var _loc4_:b2Body;
         var _loc5_:Number = (_loc4_ = param1.getBody()).GetPosition().x;
         var _loc6_:Number = _loc4_.GetPosition().y;
         var _loc7_:Number = _loc4_.GetAngle();
         var _loc10_:§4"F§;
         var _loc9_:§?$>§;
         var _loc11_:Number = (_loc10_ = (_loc9_ = param1.levelItem).shape).getWidth() * 1;
         var _loc12_:Number = _loc10_.getHeight() * 1;
         var _loc13_:int = param2.§=#6§;
         var _loc14_:int = 0;
         while(_loc14_ < _loc13_)
         {
            if(_loc15_ = param2.§=#e§(_loc14_))
            {
               param3.§3P§(_loc15_,_loc5_,_loc6_,_loc7_,§'!§.ID_NEXT_FREE,_loc11_,_loc12_,1);
            }
            _loc14_++;
         }
      }
      
      private function § s§(param1:§;!U§, param2:String, param3:String) : §2"7§
      {
         var _loc5_:§,!B§ = null;
         var _loc6_:Vector.<§2"7§> = null;
         var _loc7_:int = 0;
         var _loc8_:§2"7§ = null;
         var _loc9_:String = null;
         var _loc10_:String = null;
         var _loc4_:§2"7§ = null;
         if(param1 && param1.hasSpecialBehavior && param1.health > 0)
         {
            _loc6_ = (_loc5_ = param1.§&#r§).getBehaviorsData();
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
      
      public function get §9]§() : String
      {
         return TYPE;
      }
      
      public function §+P§(param1:§4"3§) : void
      {
         var _loc6_:§;!U§ = null;
         var _loc7_:§2"7§ = null;
         var _loc8_:§+c§ = null;
         var _loc2_:String = param1.eventName;
         var _loc3_:§'!§ = this.§5#0§.objects;
         var _loc4_:int;
         var _loc5_:int = (_loc4_ = _loc3_.§&P§()) - 1;
         while(_loc5_ >= 0)
         {
            _loc6_ = §;!U§(_loc3_.getObject(_loc5_));
            if(_loc7_ = this.§ s§(_loc6_,_loc2_,this.§9]§))
            {
               if((_loc8_ = §+c§(this.§5#0§.levelItemManager.§<$=§(_loc7_.name))) != null)
               {
                  this.§6"9§.push(new PendingTransformData(_loc6_,_loc8_));
               }
            }
            _loc5_--;
         }
      }
      
      public function clear() : void
      {
         this.§6"9§ = new Vector.<PendingTransformData>();
      }
   }
}

import §6!3§.§;!U§;
import §7!N§.§+c§;

class PendingTransformData
{
    
   
   public var delay:int;
   
   public var eventName:String;
   
   public var data:Object;
   
   public var timer:int = 0;
   
   public var timeInMillis:int = 0;
   
   public var object:§;!U§;
   
   public var maxDelayInMillis:int = 0;
   
   public var readyToTransform:Boolean = false;
   
   public var transformationData:§+c§;
   
   function PendingTransformData(param1:§;!U§, param2:§+c§)
   {
      super();
      this.object = param1;
      this.maxDelayInMillis = this.randRange(param2.§#$'§ * 1000,param2.§>$-§ * 1000);
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
