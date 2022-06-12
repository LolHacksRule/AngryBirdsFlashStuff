package § L§
{
   import §4!s§.§%I§;
   import §9!z§.§5"!§;
   import §="$§.§"!#§;
   import §?!h§.b2Vec2;
   import §?^§.§0Q§;
   import §`"3§.§2!?§;
   import §`J§.§[!6§;
   import flash.display.DisplayObject;
   
   public class §;!%§ extends §4"8§
   {
       
      
      private const §^k§:Number = 8.0;
      
      protected var §6"3§:§0Q§;
      
      protected var §]f§:§2!?§;
      
      private var §?K§:Vector.<String>;
      
      private var §2!<§:Vector.<String>;
      
      private var § !E§:int = 0;
      
      public function §;!%§(param1:§%I§, param2:XML)
      {
         var _loc3_:XML = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         super(param1,param2);
         if(§4""§.length == 0)
         {
            §4""§ = "Please the pigs";
         }
         this.§?K§ = new Vector.<String>();
         this.§2!<§ = new Vector.<String>();
         this.§6"3§ = §"!#§.§ !&§(param2["object"][0].toString(),param1.objects);
         this.§]f§ = new §2!?§(this.§6"3§);
         for each(_loc3_ in param2["request"])
         {
            if((_loc4_ = !!_loc3_.hasOwnProperty("@amount") ? int(_loc3_["@amount"]) : 1) == 0)
            {
               this.§2!<§.push(_loc3_.toString());
               this.§]f§.§!!S§(_loc3_.toString(),false);
            }
            else
            {
               _loc5_ = 0;
               while(_loc5_ < _loc4_)
               {
                  this.§?K§.push(_loc3_.toString());
                  this.§]f§.§!!S§(_loc3_.toString(),true);
                  _loc5_++;
               }
            }
         }
      }
      
      override public function update(param1:§%I§) : Boolean
      {
         var _loc7_:§0Q§ = null;
         var _loc2_:int = 0;
         var _loc3_:Vector.<String> = this.§?K§.concat();
         var _loc4_:Vector.<§0Q§> = new Vector.<§0Q§>();
         var _loc5_:int = 0;
         while(_loc5_ < param1.objects.getObjectCount())
         {
            if((_loc7_ = §0Q§.§super§(param1.objects.getObject(_loc5_))) != this.§6"3§)
            {
               if(_loc3_.indexOf(_loc7_.getName()) > -1 && this.§0!k§(_loc7_))
               {
                  _loc2_++;
                  _loc4_.push(_loc7_);
               }
               if(this.§2!<§.indexOf(_loc7_.getName()) > -1 && this.§0!k§(_loc7_))
               {
                  _loc2_--;
                  _loc4_.push(_loc7_);
               }
            }
            _loc5_++;
         }
         this.§]f§.update(_loc4_);
         var _loc6_:* = _loc2_ == this.§?K§.length;
         if(this.§ !E§ != _loc2_)
         {
            this.§ !E§ = _loc2_;
            if(_loc6_)
            {
            }
         }
         return _loc6_;
      }
      
      private function §0!k§(param1:§0Q§) : Boolean
      {
         if(param1.§'",§())
         {
            return false;
         }
         var _loc2_:b2Vec2 = this.§6"3§.getCenter();
         var _loc3_:b2Vec2 = _loc2_.Copy();
         _loc3_.§2!P§(param1.getCenter());
         return _loc3_.§7!6§() < this.§^k§;
      }
      
      override public function getNextInstruction() : DisplayObject
      {
         var _loc1_:§[!6§ = null;
         if(isCompleted)
         {
            return null;
         }
         for each(_loc1_ in §6!A§)
         {
            if(_loc1_.start.object is §0Q§)
            {
               if(!this.§0!k§(_loc1_.start.object))
               {
                  return _loc1_;
               }
            }
            if(_loc1_.start.object is §5"!§)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      override public function isObjectNeeded(param1:§0Q§) : Boolean
      {
         return false;
      }
      
      override public function getHUDs() : Vector.<DisplayObject>
      {
         var _loc1_:Vector.<DisplayObject> = new Vector.<DisplayObject>();
         _loc1_.push(this.§]f§);
         return _loc1_;
      }
   }
}
