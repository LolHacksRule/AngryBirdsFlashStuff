package §4m§
{
   import §%!0§.§,4§;
   import §+V§.§&!O§;
   import §7&§.§%""§;
   import §7t§.§7a§;
   import §;" §.§5_§;
   import §<!a§.b2Vec2;
   import §^!k§.§;!T§;
   import flash.display.DisplayObject;
   
   public class §8c§ extends §9g§
   {
       
      
      private const §9h§:Number = 8.0;
      
      protected var §&!4§:§7a§;
      
      protected var §0p§:§%""§;
      
      private var §',§:Vector.<String>;
      
      private var §if §:Vector.<String>;
      
      private var §<![§:int = 0;
      
      public function §8c§(param1:§,4§, param2:XML)
      {
         var _loc3_:XML = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         super(param1,param2);
         if(§]B§.length == 0)
         {
            §]B§ = "Please the pigs";
         }
         this.§',§ = new Vector.<String>();
         this.§if § = new Vector.<String>();
         this.§&!4§ = §5_§.§<!v§(param2["object"][0].toString(),param1.objects);
         this.§0p§ = new §%""§(this.§&!4§);
         for each(_loc3_ in param2["request"])
         {
            if((_loc4_ = !!_loc3_.hasOwnProperty("@amount") ? int(_loc3_["@amount"]) : 1) == 0)
            {
               this.§if §.push(_loc3_.toString());
               this.§0p§.§,!D§(_loc3_.toString(),false);
            }
            else
            {
               _loc5_ = 0;
               while(_loc5_ < _loc4_)
               {
                  this.§',§.push(_loc3_.toString());
                  this.§0p§.§,!D§(_loc3_.toString(),true);
                  _loc5_++;
               }
            }
         }
      }
      
      override public function update(param1:§,4§) : Boolean
      {
         var _loc7_:§7a§ = null;
         var _loc2_:int = 0;
         var _loc3_:Vector.<String> = this.§',§.concat();
         var _loc4_:Vector.<§7a§> = new Vector.<§7a§>();
         var _loc5_:int = 0;
         while(_loc5_ < param1.objects.getObjectCount())
         {
            if((_loc7_ = §7a§.§^!g§(param1.objects.getObject(_loc5_))) != this.§&!4§)
            {
               if(_loc3_.indexOf(_loc7_.getName()) > -1 && this.§!!h§(_loc7_))
               {
                  _loc2_++;
                  _loc4_.push(_loc7_);
               }
               if(this.§if §.indexOf(_loc7_.getName()) > -1 && this.§!!h§(_loc7_))
               {
                  _loc2_--;
                  _loc4_.push(_loc7_);
               }
            }
            _loc5_++;
         }
         this.§0p§.update(_loc4_);
         var _loc6_:* = _loc2_ == this.§',§.length;
         if(this.§<![§ != _loc2_)
         {
            this.§<![§ = _loc2_;
            if(_loc6_)
            {
            }
         }
         return _loc6_;
      }
      
      private function §!!h§(param1:§7a§) : Boolean
      {
         if(param1.§@Z§() || this.§&!4§.§@Z§())
         {
            return false;
         }
         var _loc2_:b2Vec2 = this.§&!4§.getCenter();
         var _loc3_:b2Vec2 = _loc2_.Copy();
         _loc3_.§&"1§(param1.getCenter());
         return _loc3_.§?!]§() < this.§9h§;
      }
      
      override public function getNextInstruction() : DisplayObject
      {
         var _loc1_:§&!O§ = null;
         if(isCompleted)
         {
            return null;
         }
         for each(_loc1_ in §<!$§)
         {
            if(_loc1_.start.object is §7a§)
            {
               if(!this.§!!h§(_loc1_.start.object))
               {
                  return _loc1_;
               }
            }
            if(_loc1_.start.object is §;!T§)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      override public function isObjectNeeded(param1:§7a§) : Boolean
      {
         return false;
      }
      
      override public function getHUDs() : Vector.<DisplayObject>
      {
         var _loc1_:Vector.<DisplayObject> = new Vector.<DisplayObject>();
         _loc1_.push(this.§0p§);
         return _loc1_;
      }
   }
}
