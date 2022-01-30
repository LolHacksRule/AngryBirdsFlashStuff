package §4!6§
{
   import §!o§.§[G§;
   import §-!5§.GhostObject;
   import §1!N§.§!!`§;
   import §1!N§.§"!k§;
   import §2!w§.§7!s§;
   import §4!#§.§60§;
   import §5h§.§,! §;
   import §[B§.§"d§;
   import flash.display.DisplayObject;
   
   public class §8!$§ extends §@p§
   {
       
      
      private var §-!§:Vector.<GhostObject>;
      
      private var §?a§:Vector.<§"!k§>;
      
      private var §,L§:Vector.<§"!k§>;
      
      private var §&!4§:§,! §;
      
      public function §8!$§(param1:§"d§, param2:XML)
      {
         var _loc3_:XML = null;
         var _loc4_:§"!k§ = null;
         var _loc5_:GhostObject = null;
         this.§-!§ = new Vector.<GhostObject>();
         this.§?a§ = new Vector.<§"!k§>();
         this.§,L§ = new Vector.<§"!k§>();
         super(param1,param2);
         for each(_loc3_ in param2["object"])
         {
            _loc4_ = §7!s§.§5I§(_loc3_.toString(),param1.objects);
            this.§?a§.push(_loc4_);
            _loc5_ = new GhostObject(_loc4_);
            this.§-!§.push(_loc5_);
            if(_loc3_.@instruction == "true")
            {
               §#"&§.push(new §[G§(new §!!`§(_loc4_),new §!!`§(_loc5_)));
            }
         }
         this.§&!4§ = new §,! §();
         this.§&!4§.init(this.§-!§);
         this.refresh(param1);
      }
      
      override public function refresh(param1:§"d§) : void
      {
         var _loc2_:GhostObject = null;
         for each(_loc2_ in this.§-!§)
         {
            _loc2_.refresh(param1.objects,this.§,L§);
         }
         this.§&!4§.§44§();
      }
      
      override public function update(param1:§"d§) : Boolean
      {
         this.§-m§();
         return this.§-!§.length - this.§,L§.length == 0;
      }
      
      public function §-m§() : void
      {
         var _loc1_:GhostObject = null;
         for each(_loc1_ in this.§-!§)
         {
            _loc1_.§"v§(this.§?a§,this.§,L§);
         }
      }
      
      private function §%!A§() : Boolean
      {
         return this.§-!§.length - this.§,L§.length == 0;
      }
      
      override public function isObjectNeeded(param1:§"!k§) : Boolean
      {
         return this.§?a§.indexOf(param1) != -1;
      }
      
      public function §%§(param1:§"!k§ = null) : Boolean
      {
         return this.§,L§.indexOf(param1) == -1;
      }
      
      public function §^I§(param1:String = null) : Boolean
      {
         return this.§,L§.length >= this.§-!§.length;
      }
      
      public function §&!t§(param1:§"!k§ = null) : Boolean
      {
         return !this.isObjectNeeded(param1);
      }
      
      public function §>!z§() : Boolean
      {
         return isCompleted;
      }
      
      override public function dispose() : void
      {
         this.§&!4§.clear();
      }
      
      override public function onPhysicsEnabled() : void
      {
         this.§&!4§.clear();
      }
      
      override public function getNextInstruction() : DisplayObject
      {
         var _loc1_:GhostObject = null;
         var _loc2_:§[G§ = null;
         for each(_loc1_ in this.§-!§)
         {
            if(!_loc1_.§7h§)
            {
               for each(_loc2_ in §#"&§)
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
      
      public function §7!2§(param1:Boolean = true) : void
      {
         var _loc2_:Vector.<§"!k§> = null;
         var _loc3_:GhostObject = null;
         var _loc4_:§"!k§ = null;
         if(param1)
         {
            _loc2_ = this.§,L§.concat();
            for each(_loc3_ in this.§-!§)
            {
               for each(_loc4_ in this.§?a§)
               {
                  if(!(_loc2_.indexOf(_loc4_) >= 0 || _loc4_.getName() != _loc3_.name || _loc3_.§7h§))
                  {
                     _loc2_.push(_loc4_);
                     _loc4_.§%!x§(_loc3_.transform);
                     if(!(_loc4_.getObject() as §60§).§2!A§())
                     {
                     }
                  }
               }
            }
         }
         else
         {
            this.§-m§();
         }
      }
      
      public function §<! §() : int
      {
         var _loc2_:GhostObject = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§-!§)
         {
            if(_loc2_.name.indexOf("PIG_") == -1)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §8&§() : Vector.<§"!k§>
      {
         return this.§?a§;
      }
   }
}
