package § in§
{
   import §%h§.§5X§;
   import §+`§.§^!p§;
   import §-" §.§@!R§;
   import §9v§.b2Vec2;
   import §@!H§.§;!L§;
   import flash.display.DisplayObject;
   import §true§.§>"-§;
   import §var§.§&!y§;
   
   public class §"!o§ extends §"J§
   {
       
      
      private const § "!§:Number = 8.0;
      
      protected var §0h§:§>"-§;
      
      protected var § !%§:§@!R§;
      
      private var §8!X§:Vector.<String>;
      
      private var §83§:Vector.<String>;
      
      private var §=!2§:int = 0;
      
      public function §"!o§(param1:§5X§, param2:XML)
      {
         var _loc3_:XML = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         super(param1,param2);
         if(§53§.length == 0)
         {
            §53§ = "Please the pigs";
         }
         this.§8!X§ = new Vector.<String>();
         this.§83§ = new Vector.<String>();
         this.§0h§ = §&!y§.§3!m§(param2["object"][0].toString(),param1.objects);
         this.§ !%§ = new §@!R§(this.§0h§);
         for each(_loc3_ in param2["request"])
         {
            if((_loc4_ = !!_loc3_.hasOwnProperty("@amount") ? int(_loc3_["@amount"]) : 1) == 0)
            {
               this.§83§.push(_loc3_.toString());
               this.§ !%§.§?"-§(_loc3_.toString(),false);
            }
            else
            {
               _loc5_ = 0;
               while(_loc5_ < _loc4_)
               {
                  this.§8!X§.push(_loc3_.toString());
                  this.§ !%§.§?"-§(_loc3_.toString(),true);
                  _loc5_++;
               }
            }
         }
      }
      
      override public function update(param1:§5X§) : Boolean
      {
         var _loc7_:§>"-§ = null;
         var _loc2_:int = 0;
         var _loc3_:Vector.<String> = this.§8!X§.concat();
         var _loc4_:Vector.<§>"-§> = new Vector.<§>"-§>();
         var _loc5_:int = 0;
         while(_loc5_ < param1.objects.getObjectCount())
         {
            if((_loc7_ = §>"-§.§0V§(param1.objects.getObject(_loc5_))) != this.§0h§)
            {
               if(_loc3_.indexOf(_loc7_.getName()) > -1 && this.§+!_§(_loc7_))
               {
                  _loc2_++;
                  _loc4_.push(_loc7_);
               }
               if(this.§83§.indexOf(_loc7_.getName()) > -1 && this.§+!_§(_loc7_))
               {
                  _loc2_--;
                  _loc4_.push(_loc7_);
               }
            }
            _loc5_++;
         }
         this.§ !%§.update(_loc4_);
         var _loc6_:* = _loc2_ == this.§8!X§.length;
         if(this.§=!2§ != _loc2_)
         {
            this.§=!2§ = _loc2_;
            if(_loc6_)
            {
            }
         }
         return _loc6_;
      }
      
      private function §+!_§(param1:§>"-§) : Boolean
      {
         var _loc2_:b2Vec2 = this.§0h§.getCenter();
         var _loc3_:b2Vec2 = _loc2_.Copy();
         _loc3_.§7E§(param1.getCenter());
         return _loc3_.§8!p§() < this.§ "!§;
      }
      
      override public function getNextInstruction() : DisplayObject
      {
         var _loc1_:§^!p§ = null;
         if(isCompleted)
         {
            return null;
         }
         for each(_loc1_ in §#E§)
         {
            if(_loc1_.start.object is §>"-§)
            {
               if(!this.§+!_§(_loc1_.start.object))
               {
                  return _loc1_;
               }
            }
            if(_loc1_.start.object is §;!L§)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      override public function isObjectNeeded(param1:§>"-§) : Boolean
      {
         return false;
      }
      
      override public function getHUDs() : Vector.<DisplayObject>
      {
         var _loc1_:Vector.<DisplayObject> = new Vector.<DisplayObject>();
         _loc1_.push(this.§ !%§);
         return _loc1_;
      }
   }
}
