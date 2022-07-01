package §%"$§
{
   import §#R§.§79§;
   import §2"=§.b2Vec2;
   import §3§.§[d§;
   import §5!V§.§!w§;
   import §7r§.§=q§;
   import §8" §.§`8§;
   import §^[§.§!$§;
   import flash.display.DisplayObject;
   
   public class §+!+§ extends §[!0§
   {
       
      
      private const §%p§:Number = 8.0;
      
      protected var §?N§:§=q§;
      
      protected var §^%§:§[d§;
      
      private var §""?§:Vector.<String>;
      
      private var §^m§:Vector.<String>;
      
      private var §7!h§:int = 0;
      
      public function §+!+§(param1:§!w§, param2:XML)
      {
         var _loc3_:XML = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         super(param1,param2);
         if(§9!7§.length == 0)
         {
            §9!7§ = "Please the pigs";
         }
         this.§""?§ = new Vector.<String>();
         this.§^m§ = new Vector.<String>();
         this.§?N§ = §`8§.§"!h§(param2["object"][0].toString(),param1.objects);
         this.§^%§ = new §[d§(this.§?N§);
         for each(_loc3_ in param2["request"])
         {
            if((_loc4_ = !!_loc3_.hasOwnProperty("@amount") ? int(_loc3_["@amount"]) : 1) == 0)
            {
               this.§^m§.push(_loc3_.toString());
               this.§^%§.§9%§(_loc3_.toString(),false);
            }
            else
            {
               _loc5_ = 0;
               while(_loc5_ < _loc4_)
               {
                  this.§""?§.push(_loc3_.toString());
                  this.§^%§.§9%§(_loc3_.toString(),true);
                  _loc5_++;
               }
            }
         }
      }
      
      override public function update(param1:§!w§) : Boolean
      {
         var _loc7_:§=q§ = null;
         var _loc2_:int = 0;
         var _loc3_:Vector.<String> = this.§""?§.concat();
         var _loc4_:Vector.<§=q§> = new Vector.<§=q§>();
         var _loc5_:int = 0;
         while(_loc5_ < param1.objects.getObjectCount())
         {
            if((_loc7_ = §=q§.§0"§(param1.objects.getObject(_loc5_))) != this.§?N§)
            {
               if(_loc3_.indexOf(_loc7_.getName()) > -1 && this.§;"1§(_loc7_))
               {
                  _loc2_++;
                  _loc4_.push(_loc7_);
               }
               if(this.§^m§.indexOf(_loc7_.getName()) > -1 && this.§;"1§(_loc7_))
               {
                  _loc2_--;
                  _loc4_.push(_loc7_);
               }
            }
            _loc5_++;
         }
         this.§^%§.update(_loc4_);
         var _loc6_:* = _loc2_ == this.§""?§.length;
         if(this.§7!h§ != _loc2_)
         {
            this.§7!h§ = _loc2_;
            if(_loc6_)
            {
            }
         }
         return _loc6_;
      }
      
      private function §;"1§(param1:§=q§) : Boolean
      {
         if(param1.§&!5§() || this.§?N§.§&!5§())
         {
            return false;
         }
         var _loc2_:b2Vec2 = this.§?N§.getCenter();
         var _loc3_:b2Vec2 = _loc2_.Copy();
         _loc3_.§5!]§(param1.getCenter());
         return _loc3_.§`g§() < this.§%p§;
      }
      
      override public function getNextInstruction() : DisplayObject
      {
         var _loc1_:§79§ = null;
         if(isCompleted)
         {
            return null;
         }
         for each(_loc1_ in §`!"§)
         {
            if(_loc1_.start.object is §=q§)
            {
               if(!this.§;"1§(_loc1_.start.object))
               {
                  return _loc1_;
               }
            }
            if(_loc1_.start.object is §!$§)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      override public function isObjectNeeded(param1:§=q§) : Boolean
      {
         return false;
      }
      
      override public function getHUDs() : Vector.<DisplayObject>
      {
         var _loc1_:Vector.<DisplayObject> = new Vector.<DisplayObject>();
         _loc1_.push(this.§^%§);
         return _loc1_;
      }
   }
}
