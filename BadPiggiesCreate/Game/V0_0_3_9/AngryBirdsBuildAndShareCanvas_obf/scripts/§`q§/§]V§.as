package §`q§
{
   import §%%§.§7!O§;
   import §&"8§.§]!0§;
   import §-!G§.b2Vec2;
   import §8!7§.§'9§;
   import §<!p§.§%!@§;
   import §=b§.§-!K§;
   import §]!]§.§4!Z§;
   import flash.display.DisplayObject;
   
   public class §]V§ extends §;d§
   {
       
      
      private const §<G§:Number = 8.0;
      
      protected var §75§:§7!O§;
      
      protected var §3!B§:§%!@§;
      
      private var §#_§:Vector.<String>;
      
      private var §=!a§:Vector.<String>;
      
      private var §-!>§:int = 0;
      
      public function §]V§(param1:§-!K§, param2:XML)
      {
         var _loc3_:XML = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         super(param1,param2);
         if(§5!-§.length == 0)
         {
            §5!-§ = "Please the pigs";
         }
         this.§#_§ = new Vector.<String>();
         this.§=!a§ = new Vector.<String>();
         this.§75§ = §]!0§.§,!L§(param2["object"][0].toString(),param1.objects);
         this.§3!B§ = new §%!@§(this.§75§);
         for each(_loc3_ in param2["request"])
         {
            if((_loc4_ = !!_loc3_.hasOwnProperty("@amount") ? int(_loc3_["@amount"]) : 1) == 0)
            {
               this.§=!a§.push(_loc3_.toString());
               this.§3!B§.§;!7§(_loc3_.toString(),false);
            }
            else
            {
               _loc5_ = 0;
               while(_loc5_ < _loc4_)
               {
                  this.§#_§.push(_loc3_.toString());
                  this.§3!B§.§;!7§(_loc3_.toString(),true);
                  _loc5_++;
               }
            }
         }
      }
      
      override public function update(param1:§-!K§) : Boolean
      {
         var _loc7_:§7!O§ = null;
         var _loc2_:int = 0;
         var _loc3_:Vector.<String> = this.§#_§.concat();
         var _loc4_:Vector.<§7!O§> = new Vector.<§7!O§>();
         var _loc5_:int = 0;
         while(_loc5_ < param1.objects.getObjectCount())
         {
            if((_loc7_ = §7!O§.§-n§(param1.objects.getObject(_loc5_))) != this.§75§)
            {
               if(_loc3_.indexOf(_loc7_.getName()) > -1 && this.§3!a§(_loc7_))
               {
                  _loc2_++;
                  _loc4_.push(_loc7_);
               }
               if(this.§=!a§.indexOf(_loc7_.getName()) > -1 && this.§3!a§(_loc7_))
               {
                  _loc2_--;
                  _loc4_.push(_loc7_);
               }
            }
            _loc5_++;
         }
         this.§3!B§.update(_loc4_);
         var _loc6_:* = _loc2_ == this.§#_§.length;
         if(this.§-!>§ != _loc2_)
         {
            this.§-!>§ = _loc2_;
            if(_loc6_)
            {
            }
         }
         return _loc6_;
      }
      
      private function §3!a§(param1:§7!O§) : Boolean
      {
         if(param1.§5"§())
         {
            return false;
         }
         var _loc2_:b2Vec2 = this.§75§.getCenter();
         var _loc3_:b2Vec2 = _loc2_.Copy();
         _loc3_.§^!d§(param1.getCenter());
         return _loc3_.§%!G§() < this.§<G§;
      }
      
      override public function getNextInstruction() : DisplayObject
      {
         var _loc1_:§4!Z§ = null;
         if(isCompleted)
         {
            return null;
         }
         for each(_loc1_ in §3!8§)
         {
            if(_loc1_.start.object is §7!O§)
            {
               if(!this.§3!a§(_loc1_.start.object))
               {
                  return _loc1_;
               }
            }
            if(_loc1_.start.object is §'9§)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      override public function isObjectNeeded(param1:§7!O§) : Boolean
      {
         return false;
      }
      
      override public function getHUDs() : Vector.<DisplayObject>
      {
         var _loc1_:Vector.<DisplayObject> = new Vector.<DisplayObject>();
         _loc1_.push(this.§3!B§);
         return _loc1_;
      }
   }
}
