package § L§
{
   import §4!s§.§%I§;
   import §;8§.GhostObject;
   import §="$§.§"!#§;
   import §="§.§`T§;
   import §?^§.§0Q§;
   import §?^§.§;"6§;
   import §`"3§.§[!-§;
   import §`J§.§[!6§;
   import flash.display.DisplayObject;
   
   public class §,!"§ extends §4"8§
   {
       
      
      private var §?!?§:Vector.<GhostObject>;
      
      private var §5k§:Vector.<§0Q§>;
      
      private var §2c§:Vector.<§0Q§>;
      
      private var §2]§:§[!-§;
      
      public function §,!"§(param1:§%I§, param2:XML)
      {
         var _loc3_:XML = null;
         var _loc4_:§0Q§ = null;
         var _loc5_:GhostObject = null;
         this.§?!?§ = new Vector.<GhostObject>();
         this.§5k§ = new Vector.<§0Q§>();
         this.§2c§ = new Vector.<§0Q§>();
         super(param1,param2);
         for each(_loc3_ in param2["object"])
         {
            _loc4_ = §"!#§.§ !&§(_loc3_.toString(),param1.objects);
            this.§5k§.push(_loc4_);
            _loc5_ = new GhostObject(_loc4_);
            this.§?!?§.push(_loc5_);
            if(_loc3_.@instruction == "true")
            {
               §6!A§.push(new §[!6§(new §;"6§(_loc4_),new §;"6§(_loc5_)));
            }
         }
         this.§2]§ = new §[!-§();
         this.§2]§.init(this.§?!?§);
         this.refresh(param1);
      }
      
      override public function refresh(param1:§%I§) : void
      {
         var _loc2_:GhostObject = null;
         for each(_loc2_ in this.§?!?§)
         {
            _loc2_.refresh(param1.objects,this.§2c§);
         }
         this.§2]§.§29§();
      }
      
      override public function update(param1:§%I§) : Boolean
      {
         this.§0!I§();
         return this.§?!?§.length - this.§2c§.length == 0;
      }
      
      public function §0!I§() : void
      {
         var _loc1_:GhostObject = null;
         for each(_loc1_ in this.§?!?§)
         {
            _loc1_.§=O§(this.§5k§,this.§2c§);
         }
      }
      
      private function §#!D§() : Boolean
      {
         return this.§?!?§.length - this.§2c§.length == 0;
      }
      
      override public function isObjectNeeded(param1:§0Q§) : Boolean
      {
         return this.§5k§.indexOf(param1) != -1;
      }
      
      public function §@4§(param1:§0Q§ = null) : Boolean
      {
         return this.§2c§.indexOf(param1) == -1;
      }
      
      public function §]A§(param1:String = null) : Boolean
      {
         return this.§2c§.length >= this.§?!?§.length;
      }
      
      public function §76§(param1:§0Q§ = null) : Boolean
      {
         return !this.isObjectNeeded(param1);
      }
      
      public function §1!s§() : Boolean
      {
         return isCompleted;
      }
      
      override public function dispose() : void
      {
         this.§2]§.clear();
      }
      
      override public function onPhysicsEnabled() : void
      {
         this.§2]§.clear();
      }
      
      override public function getNextInstruction() : DisplayObject
      {
         var _loc1_:GhostObject = null;
         var _loc2_:§[!6§ = null;
         for each(_loc1_ in this.§?!?§)
         {
            if(!_loc1_.§implements§)
            {
               for each(_loc2_ in §6!A§)
               {
                  if(_loc2_.end.object == _loc1_)
                  {
                     return _loc2_;
                  }
               }
            }
         }
         return null;
      }
      
      public function §8!#§(param1:Boolean = true) : void
      {
         var _loc2_:Vector.<§0Q§> = null;
         var _loc3_:GhostObject = null;
         var _loc4_:§0Q§ = null;
         if(param1)
         {
            _loc2_ = this.§2c§.concat();
            for each(_loc3_ in this.§?!?§)
            {
               for each(_loc4_ in this.§5k§)
               {
                  if(!(_loc2_.indexOf(_loc4_) >= 0 || _loc4_.getName() != _loc3_.name || _loc3_.§implements§))
                  {
                     _loc2_.push(_loc4_);
                     _loc4_.§&"2§(_loc3_.transform);
                     if(!(_loc4_.getObject() as §`T§).§[!Z§())
                     {
                     }
                  }
               }
            }
         }
         else
         {
            this.§0!I§();
         }
      }
      
      public function §?!]§() : int
      {
         var _loc2_:GhostObject = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§?!?§)
         {
            if(_loc2_.name.indexOf("PIG_") == -1)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §4B§() : Vector.<§0Q§>
      {
         return this.§5k§;
      }
   }
}
