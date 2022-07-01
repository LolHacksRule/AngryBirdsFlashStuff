package §`!Z§
{
   import §+L§.b2Vec2;
   import §0",§.§^!J§;
   import §1!v§.§@%§;
   import §1z§.§,!b§;
   import §7=§.§%=§;
   import §9!l§.§@O§;
   import §@!P§.§?"%§;
   import flash.display.DisplayObject;
   
   public class §6!v§ extends §-"4§
   {
       
      
      private const §>?§:Number = 8.0;
      
      protected var §>D§:§?"%§;
      
      protected var §5M§:§%=§;
      
      private var §4x§:Vector.<String>;
      
      private var §5E§:Vector.<String>;
      
      private var §32§:int = 0;
      
      public function §6!v§(param1:§@%§, param2:XML)
      {
         var _loc3_:XML = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         super(param1,param2);
         if(§]!=§.length == 0)
         {
            §]!=§ = "Please the pigs";
         }
         this.§4x§ = new Vector.<String>();
         this.§5E§ = new Vector.<String>();
         this.§>D§ = §,!b§.§3!-§(param2["object"][0].toString(),param1.objects);
         this.§5M§ = new §%=§(this.§>D§);
         for each(_loc3_ in param2["request"])
         {
            if((_loc4_ = !!_loc3_.hasOwnProperty("@amount") ? int(_loc3_["@amount"]) : 1) == 0)
            {
               this.§5E§.push(_loc3_.toString());
               this.§5M§.§""9§(_loc3_.toString(),false);
            }
            else
            {
               _loc5_ = 0;
               while(_loc5_ < _loc4_)
               {
                  this.§4x§.push(_loc3_.toString());
                  this.§5M§.§""9§(_loc3_.toString(),true);
                  _loc5_++;
               }
            }
         }
      }
      
      override public function update(param1:§@%§) : Boolean
      {
         var _loc7_:§?"%§ = null;
         var _loc2_:int = 0;
         var _loc3_:Vector.<String> = this.§4x§.concat();
         var _loc4_:Vector.<§?"%§> = new Vector.<§?"%§>();
         var _loc5_:int = 0;
         while(_loc5_ < param1.objects.getObjectCount())
         {
            if((_loc7_ = §?"%§.§3! §(param1.objects.getObject(_loc5_))) != this.§>D§)
            {
               if(_loc3_.indexOf(_loc7_.getName()) > -1 && this.§>!R§(_loc7_))
               {
                  _loc2_++;
                  _loc4_.push(_loc7_);
               }
               if(this.§5E§.indexOf(_loc7_.getName()) > -1 && this.§>!R§(_loc7_))
               {
                  _loc2_--;
                  _loc4_.push(_loc7_);
               }
            }
            _loc5_++;
         }
         this.§5M§.update(_loc4_);
         var _loc6_:* = _loc2_ == this.§4x§.length;
         if(this.§32§ != _loc2_)
         {
            this.§32§ = _loc2_;
            if(_loc6_)
            {
            }
         }
         return _loc6_;
      }
      
      private function §>!R§(param1:§?"%§) : Boolean
      {
         if(param1.§ W§())
         {
            return false;
         }
         var _loc2_:b2Vec2 = this.§>D§.getCenter();
         var _loc3_:b2Vec2 = _loc2_.Copy();
         _loc3_.§'+§(param1.getCenter());
         return _loc3_.§9!5§() < this.§>?§;
      }
      
      override public function getNextInstruction() : DisplayObject
      {
         var _loc1_:§^!J§ = null;
         if(isCompleted)
         {
            return null;
         }
         for each(_loc1_ in §2h§)
         {
            if(_loc1_.start.object is §?"%§)
            {
               if(!this.§>!R§(_loc1_.start.object))
               {
                  return _loc1_;
               }
            }
            if(_loc1_.start.object is §@O§)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      override public function isObjectNeeded(param1:§?"%§) : Boolean
      {
         return false;
      }
      
      override public function getHUDs() : Vector.<DisplayObject>
      {
         var _loc1_:Vector.<DisplayObject> = new Vector.<DisplayObject>();
         _loc1_.push(this.§5M§);
         return _loc1_;
      }
   }
}
