package §-"Y§
{
   import §%!9§.b2Vec2;
   import §%"v§.§0!X§;
   import §%"v§.§@&§;
   import §+!C§.§!!S§;
   import §1!+§.b2Body;
   import §1#W§.§!#&§;
   import §4o§.§3H§;
   import §4o§.§8"1§;
   import §6"r§.§!#A§;
   import §6$"§.§#B§;
   import §6$"§.§]"o§;
   import §7"&§.§!"v§;
   import §7"&§.§]"k§;
   import §>!5§.§#-§;
   import §>!5§.§6#-§;
   import §>!5§.§^"9§;
   import §["-§.§;#>§;
   
   public class TransformationBehavior implements §@&§, §0!X§, §8"1§
   {
      
      private static const TYPE:String = "transformation";
       
      
      private var §`=§:§!!S§;
      
      private var §@#g§:Vector.<PendingTransformData>;
      
      public function TransformationBehavior()
      {
         this.§@#g§ = new Vector.<PendingTransformData>();
         super();
      }
      
      public function initialize(param1:§!!S§) : void
      {
         this.§`=§ = param1;
      }
      
      public function §]#x§(param1:String) : Boolean
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
         if(this.§@#g§.length > 0)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§@#g§.length)
            {
               _loc4_ = false;
               if((_loc5_ = this.§@#g§[_loc3_]).object && this.§`=§.objects.§7!0§(_loc5_.object))
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
                  this.§@#g§.splice(this.§@#g§.indexOf(_loc7_),1);
                  _loc6_++;
               }
            }
         }
      }
      
      private function transform(param1:PendingTransformData) : void
      {
         var _loc7_:b2Vec2 = null;
         var _loc2_:§^"9§ = param1.object;
         var _loc3_:§+t§ = param1.transformationData;
         var _loc4_:§6#-§ = this.§`=§.objects;
         var _loc5_:String = _loc3_.§+"1§;
         if(_loc3_.soundName != null)
         {
            §!#&§.§2!A§(_loc3_.soundName,"ChannelExplosions");
         }
         var _loc6_:§#-§ = _loc4_.§'!?§(_loc2_,_loc5_);
         if(_loc3_.§+§)
         {
            _loc7_ = _loc6_.getBody().GetPosition();
            _loc4_.§%$'§(_loc7_.x,_loc7_.y,_loc3_.§]$%§,_loc3_.§[#q§,_loc3_.explosionDamageRadius,_loc3_.explosionDamage,(_loc6_ as §^"9§).id,false,false);
         }
         this.§`#i§(_loc6_,_loc3_,_loc4_);
         if(_loc6_.§=M§)
         {
            (§!#A§.§=![§ as §;#>§).§="j§();
         }
      }
      
      public function §3"a§(param1:String, param2:String) : void
      {
      }
      
      private function §`#i§(param1:§#-§, param2:§+t§, param3:§6#-§) : void
      {
         var _loc15_:String = null;
         var _loc4_:b2Body;
         var _loc5_:Number = (_loc4_ = param1.getBody()).GetPosition().x;
         var _loc6_:Number = _loc4_.GetPosition().y;
         var _loc7_:Number = _loc4_.GetAngle();
         var _loc10_:§]"k§;
         var _loc9_:§!"v§;
         var _loc11_:Number = (_loc10_ = (_loc9_ = param1.levelItem).shape).getWidth() * 1;
         var _loc12_:Number = _loc10_.getHeight() * 1;
         var _loc13_:int = param2.§2&§;
         var _loc14_:int = 0;
         while(_loc14_ < _loc13_)
         {
            if(_loc15_ = param2.§%X§(_loc14_))
            {
               param3.§5#r§(_loc15_,_loc5_,_loc6_,_loc7_,§6#-§.ID_NEXT_FREE,_loc11_,_loc12_,1);
            }
            _loc14_++;
         }
      }
      
      private function §#6§(param1:§^"9§, param2:String, param3:String) : §#B§
      {
         var _loc5_:§]"o§ = null;
         var _loc6_:Vector.<§#B§> = null;
         var _loc7_:int = 0;
         var _loc8_:§#B§ = null;
         var _loc9_:String = null;
         var _loc10_:String = null;
         var _loc4_:§#B§ = null;
         if(param1 && param1.hasSpecialBehavior && param1.health > 0)
         {
            _loc6_ = (_loc5_ = param1.§]#<§).getBehaviorsData();
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
      
      public function get §%@§() : String
      {
         return TYPE;
      }
      
      public function § N§(param1:§3H§) : void
      {
         var _loc6_:§^"9§ = null;
         var _loc7_:§#B§ = null;
         var _loc8_:§+t§ = null;
         var _loc2_:String = param1.eventName;
         var _loc3_:§6#-§ = this.§`=§.objects;
         var _loc4_:int;
         var _loc5_:int = (_loc4_ = _loc3_.§7D§()) - 1;
         while(_loc5_ >= 0)
         {
            _loc6_ = §^"9§(_loc3_.getObject(_loc5_));
            if(_loc7_ = this.§#6§(_loc6_,_loc2_,this.§%@§))
            {
               _loc8_ = §+t§(this.§`=§.levelItemManager.§`[§(_loc7_.name));
               this.§@#g§.push(new PendingTransformData(_loc6_,_loc8_));
            }
            _loc5_--;
         }
      }
      
      public function clear() : void
      {
         this.§@#g§ = new Vector.<PendingTransformData>();
      }
   }
}

import §-"Y§.§+t§;
import §>!5§.§^"9§;

class PendingTransformData
{
    
   
   public var delay:int;
   
   public var eventName:String;
   
   public var data:Object;
   
   public var timer:int = 0;
   
   public var timeInMillis:int = 0;
   
   public var object:§^"9§;
   
   public var maxDelayInMillis:int = 0;
   
   public var readyToTransform:Boolean = false;
   
   public var transformationData:§+t§;
   
   function PendingTransformData(param1:§^"9§, param2:§+t§)
   {
      super();
      this.object = param1;
      this.maxDelayInMillis = this.randRange(param2.§?#j§ * 1000,param2.§;$1§ * 1000);
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
