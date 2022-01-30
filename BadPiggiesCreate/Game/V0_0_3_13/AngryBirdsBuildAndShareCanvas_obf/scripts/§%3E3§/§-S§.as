package §>3§
{
   import §1!z§.b2Vec2;
   import §1"?§.§>"=§;
   import §4!S§.§="%§;
   import §8!E§.§?!X§;
   import §8E§.§'!a§;
   import §;W§.§%!§;
   import §=%§.§<A§;
   import flash.display.DisplayObject;
   
   public class §-S§ extends §4%§
   {
       
      
      private const §^!J§:Number = 8.0;
      
      protected var §,4§:§<A§;
      
      protected var §%6§:§>"=§;
      
      private var §1!7§:Vector.<String>;
      
      private var §3!v§:Vector.<String>;
      
      private var §#!A§:int = 0;
      
      public function §-S§(param1:§?!X§, param2:XML)
      {
         var _loc3_:XML = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         super(param1,param2);
         if(§?!Y§.length == 0)
         {
            §?!Y§ = "Please the pigs";
         }
         this.§1!7§ = new Vector.<String>();
         this.§3!v§ = new Vector.<String>();
         this.§,4§ = §="%§.§&!c§(param2["object"][0].toString(),param1.objects);
         this.§%6§ = new §>"=§(this.§,4§);
         for each(_loc3_ in param2["request"])
         {
            if((_loc4_ = !!_loc3_.hasOwnProperty("@amount") ? int(_loc3_["@amount"]) : 1) == 0)
            {
               this.§3!v§.push(_loc3_.toString());
               this.§%6§.§92§(_loc3_.toString(),false);
            }
            else
            {
               _loc5_ = 0;
               while(_loc5_ < _loc4_)
               {
                  this.§1!7§.push(_loc3_.toString());
                  this.§%6§.§92§(_loc3_.toString(),true);
                  _loc5_++;
               }
            }
         }
      }
      
      override public function update(param1:§?!X§) : Boolean
      {
         var _loc7_:§<A§ = null;
         var _loc2_:int = 0;
         var _loc3_:Vector.<String> = this.§1!7§.concat();
         var _loc4_:Vector.<§<A§> = new Vector.<§<A§>();
         var _loc5_:int = 0;
         while(_loc5_ < param1.objects.getObjectCount())
         {
            if((_loc7_ = §<A§.§5y§(param1.objects.getObject(_loc5_))) != this.§,4§)
            {
               if(_loc3_.indexOf(_loc7_.getName()) > -1 && this.§+!_§(_loc7_))
               {
                  _loc2_++;
                  _loc4_.push(_loc7_);
               }
               if(this.§3!v§.indexOf(_loc7_.getName()) > -1 && this.§+!_§(_loc7_))
               {
                  _loc2_--;
                  _loc4_.push(_loc7_);
               }
            }
            _loc5_++;
         }
         this.§%6§.update(_loc4_);
         var _loc6_:* = _loc2_ == this.§1!7§.length;
         if(this.§#!A§ != _loc2_)
         {
            this.§#!A§ = _loc2_;
            if(_loc6_)
            {
            }
         }
         return _loc6_;
      }
      
      private function §+!_§(param1:§<A§) : Boolean
      {
         if(param1.§7" §() || this.§,4§.§7" §())
         {
            return false;
         }
         var _loc2_:b2Vec2 = this.§,4§.getCenter();
         var _loc3_:b2Vec2 = _loc2_.Copy();
         _loc3_.§#!3§(param1.getCenter());
         return _loc3_.§<_§() < this.§^!J§;
      }
      
      override public function getNextInstruction() : DisplayObject
      {
         var _loc1_:§'!a§ = null;
         if(isCompleted)
         {
            return null;
         }
         for each(_loc1_ in §?!Q§)
         {
            if(_loc1_.start.object is §<A§)
            {
               if(!this.§+!_§(_loc1_.start.object))
               {
                  return _loc1_;
               }
            }
            if(_loc1_.start.object is §%!§)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      override public function isObjectNeeded(param1:§<A§) : Boolean
      {
         return false;
      }
      
      override public function getHUDs() : Vector.<DisplayObject>
      {
         var _loc1_:Vector.<DisplayObject> = new Vector.<DisplayObject>();
         _loc1_.push(this.§%6§);
         return _loc1_;
      }
   }
}
