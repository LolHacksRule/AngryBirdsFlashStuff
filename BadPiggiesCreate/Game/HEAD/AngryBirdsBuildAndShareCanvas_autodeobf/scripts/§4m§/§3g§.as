package §4m§
{
   import §%!0§.§,4§;
   import §&!P§.§``§;
   import §+V§.§&!O§;
   import §-&§.GhostObject;
   import §7&§.§6!4§;
   import §7t§.§7a§;
   import §7t§.§<^§;
   import §;" §.§5_§;
   import flash.display.DisplayObject;
   
   public class §3g§ extends §9g§
   {
       
      
      private var §@K§:Vector.<GhostObject>;
      
      private var §9Z§:Vector.<§7a§>;
      
      private var §]$§:Vector.<§7a§>;
      
      private var §+!"§:§6!4§;
      
      public function §3g§(param1:§,4§, param2:XML)
      {
         var _loc3_:XML = null;
         var _loc4_:§7a§ = null;
         var _loc5_:GhostObject = null;
         this.§@K§ = new Vector.<GhostObject>();
         this.§9Z§ = new Vector.<§7a§>();
         this.§]$§ = new Vector.<§7a§>();
         super(param1,param2);
         for each(_loc3_ in param2["object"])
         {
            if(!(_loc4_ = §5_§.§<!v§(_loc3_.toString(),param1.objects)).isTexture())
            {
               this.§9Z§.push(_loc4_);
               _loc5_ = new GhostObject(_loc4_);
               this.§@K§.push(_loc5_);
               if(_loc3_.@instruction == "true")
               {
                  §<!$§.push(new §&!O§(new §<^§(_loc4_),new §<^§(_loc5_)));
               }
            }
         }
         this.§+!"§ = new §6!4§();
         this.§+!"§.init(this.§@K§);
         this.refresh(param1);
      }
      
      override public function refresh(param1:§,4§) : void
      {
         var _loc2_:GhostObject = null;
         for each(_loc2_ in this.§@K§)
         {
            _loc2_.refresh(param1.objects,this.§]$§);
         }
         this.§+!"§.§[&§();
      }
      
      override public function update(param1:§,4§) : Boolean
      {
         this.§@!l§();
         return this.§@K§.length - this.§]$§.length == 0;
      }
      
      public function §@!l§() : void
      {
         var _loc1_:GhostObject = null;
         for each(_loc1_ in this.§@K§)
         {
            _loc1_.§?k§(this.§9Z§,this.§]$§);
         }
      }
      
      private function §,!p§() : Boolean
      {
         return this.§@K§.length - this.§]$§.length == 0;
      }
      
      override public function isObjectNeeded(param1:§7a§) : Boolean
      {
         return this.§9Z§.indexOf(param1) != -1;
      }
      
      public function §[?§(param1:§7a§ = null) : Boolean
      {
         return this.§]$§.indexOf(param1) == -1;
      }
      
      public function §+'§(param1:String = null) : Boolean
      {
         return this.§]$§.length >= this.§@K§.length;
      }
      
      public function §[Q§(param1:§7a§ = null) : Boolean
      {
         return !this.isObjectNeeded(param1);
      }
      
      public function §["&§() : Boolean
      {
         return isCompleted;
      }
      
      override public function dispose() : void
      {
         this.§+!"§.clear();
      }
      
      override public function onPhysicsEnabled() : void
      {
         this.§+!"§.clear();
      }
      
      override public function getNextInstruction() : DisplayObject
      {
         var _loc1_:GhostObject = null;
         var _loc2_:§&!O§ = null;
         for each(_loc1_ in this.§@K§)
         {
            if(!_loc1_.§%i§)
            {
               for each(_loc2_ in §<!$§)
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
      
      public function §+5§(param1:Boolean = true) : void
      {
         var _loc2_:Vector.<§7a§> = null;
         var _loc3_:GhostObject = null;
         var _loc4_:§7a§ = null;
         if(param1)
         {
            _loc2_ = this.§]$§.concat();
            for each(_loc3_ in this.§@K§)
            {
               for each(_loc4_ in this.§9Z§)
               {
                  if(!(_loc2_.indexOf(_loc4_) >= 0 || _loc4_.getName() != _loc3_.name || _loc3_.§%i§))
                  {
                     _loc2_.push(_loc4_);
                     _loc4_.§9!c§(_loc3_.transform);
                     if(!(_loc4_.getObject() as §``§).§^_§())
                     {
                     }
                  }
               }
            }
         }
         else
         {
            this.§@!l§();
         }
      }
      
      public function §2l§() : int
      {
         var _loc2_:GhostObject = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§@K§)
         {
            if(_loc2_.name.indexOf("PIG_") == -1)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §'!"§() : Vector.<§7a§>
      {
         return this.§9Z§;
      }
   }
}
