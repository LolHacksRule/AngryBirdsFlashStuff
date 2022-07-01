package §4!6§
{
   import §!o§.§[G§;
   import §1!N§.§"!k§;
   import §2!w§.§7!s§;
   import §3!t§.b2Vec2;
   import §5h§.§^"5§;
   import §[B§.§"d§;
   import §^H§.§"!i§;
   import flash.display.DisplayObject;
   
   public class §2%§ extends §@p§
   {
       
      
      private const §?6§:Number = 8.0;
      
      protected var §[!V§:§"!k§;
      
      protected var §8%§:§^"5§;
      
      private var §9L§:Vector.<String>;
      
      private var §<!G§:Vector.<String>;
      
      private var §%!E§:int = 0;
      
      public function §2%§(param1:§"d§, param2:XML)
      {
         var _loc3_:XML = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         super(param1,param2);
         if(§1!3§.length == 0)
         {
            §1!3§ = "Please the pigs";
         }
         this.§9L§ = new Vector.<String>();
         this.§<!G§ = new Vector.<String>();
         this.§[!V§ = §7!s§.§5I§(param2["object"][0].toString(),param1.objects);
         this.§8%§ = new §^"5§(this.§[!V§);
         for each(_loc3_ in param2["request"])
         {
            if((_loc4_ = !!_loc3_.hasOwnProperty("@amount") ? int(_loc3_["@amount"]) : 1) == 0)
            {
               this.§<!G§.push(_loc3_.toString());
               this.§8%§.§@"§(_loc3_.toString(),false);
            }
            else
            {
               _loc5_ = 0;
               while(_loc5_ < _loc4_)
               {
                  this.§9L§.push(_loc3_.toString());
                  this.§8%§.§@"§(_loc3_.toString(),true);
                  _loc5_++;
               }
            }
         }
      }
      
      override public function update(param1:§"d§) : Boolean
      {
         var _loc7_:§"!k§ = null;
         var _loc2_:int = 0;
         var _loc3_:Vector.<String> = this.§9L§.concat();
         var _loc4_:Vector.<§"!k§> = new Vector.<§"!k§>();
         var _loc5_:int = 0;
         while(_loc5_ < param1.objects.getObjectCount())
         {
            if((_loc7_ = §"!k§.§2"5§(param1.objects.getObject(_loc5_))) != this.§[!V§)
            {
               if(_loc3_.indexOf(_loc7_.getName()) > -1 && this.§#-§(_loc7_))
               {
                  _loc2_++;
                  _loc4_.push(_loc7_);
               }
               if(this.§<!G§.indexOf(_loc7_.getName()) > -1 && this.§#-§(_loc7_))
               {
                  _loc2_--;
                  _loc4_.push(_loc7_);
               }
            }
            _loc5_++;
         }
         this.§8%§.update(_loc4_);
         var _loc6_:* = _loc2_ == this.§9L§.length;
         if(this.§%!E§ != _loc2_)
         {
            this.§%!E§ = _loc2_;
            if(_loc6_)
            {
            }
         }
         return _loc6_;
      }
      
      private function §#-§(param1:§"!k§) : Boolean
      {
         if(param1.§4!X§() || this.§[!V§.§4!X§())
         {
            return false;
         }
         var _loc2_:b2Vec2 = this.§[!V§.getCenter();
         var _loc3_:b2Vec2 = _loc2_.Copy();
         _loc3_.§;!Y§(param1.getCenter());
         return _loc3_.§=U§() < this.§?6§;
      }
      
      override public function getNextInstruction() : DisplayObject
      {
         var _loc1_:§[G§ = null;
         if(isCompleted)
         {
            return null;
         }
         for each(_loc1_ in §#"&§)
         {
            if(_loc1_.start.object is §"!k§)
            {
               if(!this.§#-§(_loc1_.start.object))
               {
                  return _loc1_;
               }
            }
            if(_loc1_.start.object is §"!i§)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      override public function isObjectNeeded(param1:§"!k§) : Boolean
      {
         return false;
      }
      
      override public function getHUDs() : Vector.<DisplayObject>
      {
         var _loc1_:Vector.<DisplayObject> = new Vector.<DisplayObject>();
         _loc1_.push(this.§8%§);
         return _loc1_;
      }
   }
}
