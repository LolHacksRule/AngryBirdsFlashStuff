package §=# §
{
   import §,#L§.§!#%§;
   import §,#L§.§?W§;
   import §0m§.b2Vec2;
   import §2]§.*;
   import §52§.§#!,§;
   import §6§.§,"s§;
   import §6§.include;
   import §8§.§#$+§;
   import §=#n§.b2Body;
   import §[#a§.§6"[§;
   import §[#a§.§<"H§;
   import §[#a§.§="@§;
   import §`#C§.§-"L§;
   import §`#C§.§8K§;
   
   public class TransformationBehavior implements §]"Q§, §0#H§, include
   {
      
      private static const TYPE:String = "transformation";
       
      
      private var §,#2§:§#!,§;
      
      private var §0"+§:Vector.<PendingTransformData>;
      
      public function TransformationBehavior()
      {
         this.§0"+§ = new Vector.<PendingTransformData>();
         super();
      }
      
      public function initialize(param1:§#!,§) : void
      {
         this.§,#2§ = param1;
      }
      
      public function §@$"§(param1:String) : Boolean
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
         if(this.§0"+§.length > 0)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§0"+§.length)
            {
               _loc4_ = false;
               if((_loc5_ = this.§0"+§[_loc3_]).object && this.§,#2§.objects.§?$ §(_loc5_.object))
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
                  this.§0"+§.splice(this.§0"+§.indexOf(_loc7_),1);
                  _loc6_++;
               }
            }
         }
      }
      
      private function transform(param1:PendingTransformData) : void
      {
         var _loc7_:b2Vec2 = null;
         var _loc2_:§="@§ = param1.object;
         var _loc3_:§6!@§ = param1.transformationData;
         var _loc4_:§6"[§ = this.§,#2§.objects;
         var _loc5_:String = _loc3_.§7U§;
         if(_loc3_.soundName != null)
         {
            §#$+§.§=#P§(_loc3_.soundName,"ChannelExplosions");
         }
         var _loc6_:§<"H§ = _loc4_.§<!H§(_loc2_,_loc5_);
         if(_loc3_.§3"2§)
         {
            _loc7_ = _loc6_.getBody().GetPosition();
            _loc4_.§!!c§(_loc7_.x,_loc7_.y,_loc3_.§+q§,_loc3_.§6"G§,_loc3_.explosionDamageRadius,_loc3_.explosionDamage,(_loc6_ as §="@§).id,false,false);
         }
         this.§]§(_loc6_,_loc3_,_loc4_);
      }
      
      public function §2T§(param1:String, param2:String) : void
      {
      }
      
      private function §]§(param1:§<"H§, param2:§6!@§, param3:§6"[§) : void
      {
         var _loc15_:String = null;
         var _loc4_:b2Body;
         var _loc5_:Number = (_loc4_ = param1.getBody()).GetPosition().x;
         var _loc6_:Number = _loc4_.GetPosition().y;
         var _loc7_:Number = _loc4_.GetAngle();
         var _loc8_:Number = 1;
         var _loc10_:§-"L§;
         var _loc11_:Number = (_loc10_ = param1.levelItem.shape).getWidth() * _loc8_;
         var _loc12_:Number = _loc10_.getHeight() * _loc8_;
         var _loc13_:int = param2.§4N§;
         var _loc14_:int = 0;
         while(_loc14_ < _loc13_)
         {
            if(_loc15_ = param2.§#z§(_loc14_))
            {
               param3.§%!0§(_loc15_,_loc5_,_loc6_,_loc7_,§6"[§.ID_NEXT_FREE,_loc11_,_loc12_,1);
            }
            _loc14_++;
         }
      }
      
      private function §'#9§(param1:§="@§, param2:String, param3:String) : §?W§
      {
         null;
         var _loc6_:Vector.<§?W§> = null;
         var _loc7_:int = 0;
         var _loc8_:§?W§ = null;
         var _loc9_:String = null;
         null;
         var _loc4_:§?W§ = null;
         if(param1 && param1.hasSpecialBehavior && param1.health > 0)
         {
            _loc6_ = param1.§&,§.getBehaviorsData();
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
      
      public function get §5#x§() : String
      {
         return TYPE;
      }
      
      public function §%N§(param1:§,"s§) : void
      {
         var _loc6_:§="@§ = null;
         var _loc7_:§?W§ = null;
         var _loc8_:§6!@§ = null;
         var _loc2_:String = param1.eventName;
         var _loc3_:§6"[§ = this.§,#2§.objects;
         var _loc5_:int = int(_loc3_.§0y§()) - 1;
         while(_loc5_ >= 0)
         {
            _loc6_ = §="@§(_loc3_.getObject(_loc5_));
            if(_loc7_ = this.§'#9§(_loc6_,_loc2_,this.§5#x§))
            {
               _loc8_ = §6!@§(this.§,#2§.levelItemManager.§,!^§(_loc7_.name));
               this.§0"+§.push(new PendingTransformData(_loc6_,_loc8_));
            }
            _loc5_--;
         }
      }
      
      public function clear() : void
      {
         this.§0"+§ = new Vector.<PendingTransformData>();
      }
   }
}

import §=# §.§6!@§;
import §[#a§.§="@§;

class PendingTransformData
{
    
   
   public var delay:int;
   
   public var eventName:String;
   
   public var data:Object;
   
   public var timer:int = 0;
   
   public var timeInMillis:int = 0;
   
   public var object:§="@§;
   
   public var maxDelayInMillis:int = 0;
   
   public var readyToTransform:Boolean = false;
   
   public var transformationData:§6!@§;
   
   function PendingTransformData(param1:§="@§, param2:§6!@§)
   {
      super();
      this.object = param1;
      this.maxDelayInMillis = this.randRange(param2.§^&§ * 1000,param2.§@"q§ * 1000);
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
