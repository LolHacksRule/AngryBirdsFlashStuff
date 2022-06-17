package §]h§
{
   import § "v§.§4$4§;
   import §+!n§.§+!p§;
   import §-!j§.§%!a§;
   import §-!j§.§-"8§;
   import §0!>§.§;#$§;
   import §0#I§.§+#P§;
   import §0#I§.§3s§;
   import §3#h§.b2Body;
   import §6!R§.b2Vec2;
   import §?$#§.§<d§;
   import §@"J§.§'$&§;
   import §@"J§.§7!+§;
   import §@"v§.§@$<§;
   import §@"v§.§^"B§;
   import §^0§.§%"^§;
   import §^0§.§4!t§;
   import §^0§.§=Q§;
   
   public class TransformationBehavior implements §7!+§, §'$&§, §+#P§
   {
      
      private static const TYPE:String = "transformation";
       
      
      private var § 6§:§<d§;
      
      private var §"o§:Vector.<PendingTransformData>;
      
      public function TransformationBehavior()
      {
         this.§"o§ = new Vector.<PendingTransformData>();
         super();
      }
      
      public function initialize(param1:§<d§) : void
      {
         this.§ 6§ = param1;
      }
      
      public function §="a§(param1:String) : Boolean
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
         if(this.§"o§.length > 0)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§"o§.length)
            {
               _loc4_ = false;
               if((_loc5_ = this.§"o§[_loc3_]).object && this.§ 6§.objects.§'"d§(_loc5_.object))
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
                  this.§"o§.splice(this.§"o§.indexOf(_loc7_),1);
                  _loc6_++;
               }
            }
         }
      }
      
      private function transform(param1:PendingTransformData) : void
      {
         var _loc7_:b2Vec2 = null;
         var _loc2_:§=Q§ = param1.object;
         var _loc3_:§^;§ = param1.transformationData;
         var _loc4_:§%"^§ = this.§ 6§.objects;
         var _loc5_:String = _loc3_.§%$1§;
         if(_loc3_.soundName != null)
         {
            §4$4§.§'"j§(_loc3_.soundName,"ChannelExplosions");
         }
         var _loc6_:§4!t§ = _loc4_.§'D§(_loc2_,_loc5_);
         if(_loc3_.§+j§)
         {
            _loc7_ = _loc6_.getBody().GetPosition();
            _loc4_.§]#i§(_loc7_.x,_loc7_.y,_loc3_.§?!]§,_loc3_.§-b§,_loc3_.explosionDamageRadius,_loc3_.explosionDamage,(_loc6_ as §=Q§).id,false,false);
         }
         this.§!#Z§(_loc6_,_loc3_,_loc4_);
         if(_loc6_.§+"h§)
         {
            if(§+!p§.§-#W§ is §;#$§)
            {
               (§+!p§.§-#W§ as §;#$§).§>J§();
            }
         }
      }
      
      public function §!"]§(param1:String, param2:String) : void
      {
      }
      
      private function §!#Z§(param1:§4!t§, param2:§^;§, param3:§%"^§) : void
      {
         var _loc15_:String = null;
         var _loc4_:b2Body;
         var _loc5_:Number = (_loc4_ = param1.getBody()).GetPosition().x;
         var _loc6_:Number = _loc4_.GetPosition().y;
         var _loc7_:Number = _loc4_.GetAngle();
         var _loc10_:§%!a§;
         var _loc11_:Number = (_loc10_ = param1.levelItem.shape).getWidth() * 1;
         var _loc12_:Number = _loc10_.getHeight() * 1;
         var _loc13_:int = param2.§^!y§;
         var _loc14_:int = 0;
         while(_loc14_ < _loc13_)
         {
            if(_loc15_ = param2.§,#o§(_loc14_))
            {
               param3.§;$>§(_loc15_,_loc5_,_loc6_,_loc7_,§%"^§.ID_NEXT_FREE,_loc11_,_loc12_,1);
            }
            _loc14_++;
         }
      }
      
      private function § n§(param1:§=Q§, param2:String, param3:String) : §^"B§
      {
         var _loc6_:Vector.<§^"B§> = null;
         var _loc7_:int = 0;
         var _loc8_:§^"B§ = null;
         var _loc9_:String = null;
         var _loc4_:§^"B§ = null;
         if(param1 && param1.hasSpecialBehavior && param1.health > 0)
         {
            _loc6_ = param1.§0"^§.getBehaviorsData();
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
      
      public function get §%"6§() : String
      {
         return TYPE;
      }
      
      public function §=$7§(param1:§3s§) : void
      {
         var _loc6_:§=Q§ = null;
         var _loc7_:§^"B§ = null;
         var _loc8_:§^;§ = null;
         var _loc2_:String = param1.eventName;
         var _loc3_:§%"^§ = this.§ 6§.objects;
         var _loc5_:int = int(_loc3_.§,=§()) - 1;
         while(_loc5_ >= 0)
         {
            _loc6_ = §=Q§(_loc3_.getObject(_loc5_));
            if(_loc7_ = this.§ n§(_loc6_,_loc2_,this.§%"6§))
            {
               if((_loc8_ = §^;§(this.§ 6§.levelItemManager.§@#7§(_loc7_.name))) != null)
               {
                  this.§"o§.push(new PendingTransformData(_loc6_,_loc8_));
               }
            }
            _loc5_--;
         }
      }
      
      public function clear() : void
      {
         this.§"o§ = new Vector.<PendingTransformData>();
      }
   }
}

import §]h§.§^;§;
import §^0§.§=Q§;

class PendingTransformData
{
    
   
   public var delay:int;
   
   public var eventName:String;
   
   public var data:Object;
   
   public var timer:int = 0;
   
   public var timeInMillis:int = 0;
   
   public var object:§=Q§;
   
   public var maxDelayInMillis:int = 0;
   
   public var readyToTransform:Boolean = false;
   
   public var transformationData:§^;§;
   
   function PendingTransformData(param1:§=Q§, param2:§^;§)
   {
      super();
      this.object = param1;
      this.maxDelayInMillis = this.randRange(param2.§2!B§ * 1000,param2.§[$§ * 1000);
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
