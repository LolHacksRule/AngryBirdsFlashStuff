package §`$"§
{
   import § !D§.§'"u§;
   import §!L§.§<"s§;
   import §-!!§.§1#B§;
   import §-!!§.§7S§;
   import §-!!§.§8"J§;
   import §-"i§.§+!7§;
   import §-"i§.§@M§;
   import §1C§.§4"f§;
   import §1C§.§7o§;
   import §8#t§.b2Body;
   import §9$+§.§9"4§;
   import §9$+§.§<$<§;
   import §=!2§.§%"T§;
   import §>"9§.§[#%§;
   import §?§.§+#c§;
   import §?§.§,Y§;
   import §`# §.b2Vec2;
   
   public class TransformationBehavior implements §7o§, §4"f§, §@M§
   {
      
      private static const TYPE:String = "transformation";
       
      
      private var §&!g§:§'"u§;
      
      private var §%#Y§:Vector.<PendingTransformData>;
      
      public function TransformationBehavior()
      {
         this.§%#Y§ = new Vector.<PendingTransformData>();
         super();
      }
      
      public function initialize(param1:§'"u§) : void
      {
         this.§&!g§ = param1;
      }
      
      public function §@c§(param1:String) : Boolean
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
         if(this.§%#Y§.length > 0)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§%#Y§.length)
            {
               _loc4_ = false;
               if((_loc5_ = this.§%#Y§[_loc3_]).object && this.§&!g§.objects.§'!'§(_loc5_.object))
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
                  this.§%#Y§.splice(this.§%#Y§.indexOf(_loc7_),1);
                  _loc6_++;
               }
            }
         }
      }
      
      private function transform(param1:PendingTransformData) : void
      {
         var _loc7_:b2Vec2 = null;
         var _loc2_:§8"J§ = param1.object;
         var _loc3_:§@!U§ = param1.transformationData;
         var _loc4_:§7S§ = this.§&!g§.objects;
         var _loc5_:String = _loc3_.§[A§;
         if(_loc3_.soundName != null)
         {
            §[#%§.§!"0§(_loc3_.soundName,"ChannelExplosions");
         }
         var _loc6_:§1#B§ = _loc4_.§-$D§(_loc2_,_loc5_);
         if(_loc3_.§8"Z§)
         {
            _loc7_ = _loc6_.getBody().GetPosition();
            _loc4_.§2,§(_loc7_.x,_loc7_.y,_loc3_.§^#=§,_loc3_.§1"z§,_loc3_.explosionDamageRadius,_loc3_.explosionDamage,(_loc6_ as §8"J§).id,false,false);
         }
         this.§`"a§(_loc6_,_loc3_,_loc4_);
         if(_loc6_.§;#"§)
         {
            if(§%"T§.§+"M§ is §<"s§)
            {
               (§%"T§.§+"M§ as §<"s§).§+"_§();
            }
         }
      }
      
      public function §`!A§(param1:String, param2:String) : void
      {
      }
      
      private function §`"a§(param1:§1#B§, param2:§@!U§, param3:§7S§) : void
      {
         var _loc15_:String = null;
         var _loc4_:b2Body;
         var _loc5_:Number = (_loc4_ = param1.getBody()).GetPosition().x;
         var _loc6_:Number = _loc4_.GetPosition().y;
         var _loc7_:Number = _loc4_.GetAngle();
         var _loc10_:§+#c§;
         var _loc11_:Number = (_loc10_ = param1.levelItem.shape).getWidth() * 1;
         var _loc12_:Number = _loc10_.getHeight() * 1;
         var _loc13_:int = param2.§2"=§;
         var _loc14_:int = 0;
         while(_loc14_ < _loc13_)
         {
            if(_loc15_ = param2.§0k§(_loc14_))
            {
               param3.§?#q§(_loc15_,_loc5_,_loc6_,_loc7_,§7S§.ID_NEXT_FREE,_loc11_,_loc12_,1);
            }
            _loc14_++;
         }
      }
      
      private function §@"r§(param1:§8"J§, param2:String, param3:String) : §<$<§
      {
         var _loc6_:Vector.<§<$<§> = null;
         var _loc7_:int = 0;
         var _loc8_:§<$<§ = null;
         var _loc9_:String = null;
         var _loc4_:§<$<§ = null;
         if(param1 && param1.hasSpecialBehavior && param1.health > 0)
         {
            _loc6_ = param1.§?#=§.getBehaviorsData();
            _loc7_ = 0;
            while(_loc7_ < _loc6_.length)
            {
               _loc9_ = (_loc8_ = _loc6_[_loc7_]).type;
               if(_loc8_.event == param2 && _loc9_ == param3)
               {
                  _loc4_ = _loc8_;
                  break;
               }
               _loc7_++;
            }
         }
         return _loc4_;
      }
      
      public function get §!$=§() : String
      {
         return TYPE;
      }
      
      public function §`#!§(param1:§+!7§) : void
      {
         var _loc6_:§8"J§ = null;
         var _loc7_:§<$<§ = null;
         var _loc8_:§@!U§ = null;
         var _loc2_:String = param1.eventName;
         var _loc3_:§7S§ = this.§&!g§.objects;
         var _loc5_:int = int(_loc3_.§ "Z§()) - 1;
         while(_loc5_ >= 0)
         {
            _loc6_ = §8"J§(_loc3_.getObject(_loc5_));
            if(_loc7_ = this.§@"r§(_loc6_,_loc2_,this.§!$=§))
            {
               if((_loc8_ = §@!U§(this.§&!g§.levelItemManager.§`$,§(_loc7_.name))) != null)
               {
                  this.§%#Y§.push(new PendingTransformData(_loc6_,_loc8_));
               }
            }
            _loc5_--;
         }
      }
      
      public function clear() : void
      {
         this.§%#Y§ = new Vector.<PendingTransformData>();
      }
   }
}

import §-!!§.§8"J§;
import §`$"§.§@!U§;

class PendingTransformData
{
    
   
   public var delay:int;
   
   public var eventName:String;
   
   public var data:Object;
   
   public var timer:int = 0;
   
   public var timeInMillis:int = 0;
   
   public var object:§8"J§;
   
   public var maxDelayInMillis:int = 0;
   
   public var readyToTransform:Boolean = false;
   
   public var transformationData:§@!U§;
   
   function PendingTransformData(param1:§8"J§, param2:§@!U§)
   {
      super();
      this.object = param1;
      this.maxDelayInMillis = this.randRange(param2.§3!c§ * 1000,param2.§?#u§ * 1000);
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
