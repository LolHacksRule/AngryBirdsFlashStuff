package §`q§
{
   import §%!n§.§7P§;
   import §%%§.§7!O§;
   import §%%§.§<!z§;
   import §&"8§.§]!0§;
   import §<!p§.§@>§;
   import §=" §.GhostObject;
   import §=b§.§-!K§;
   import §]!]§.§4!Z§;
   import §]r§.§9!R§;
   import flash.display.DisplayObject;
   
   public class §#!t§ extends §;d§
   {
       
      
      private var §<9§:Vector.<GhostObject>;
      
      private var §-[§:Vector.<§7!O§>;
      
      private var §+"%§:Vector.<§7!O§>;
      
      private var §=c§:§@>§;
      
      public function §#!t§(param1:§-!K§, param2:XML)
      {
         var _loc3_:XML = null;
         var _loc4_:§7!O§ = null;
         var _loc5_:GhostObject = null;
         this.§<9§ = new Vector.<GhostObject>();
         this.§-[§ = new Vector.<§7!O§>();
         this.§+"%§ = new Vector.<§7!O§>();
         super(param1,param2);
         for each(_loc3_ in param2["object"])
         {
            _loc4_ = §]!0§.§,!L§(_loc3_.toString(),param1.objects);
            this.§-[§.push(_loc4_);
            _loc5_ = new GhostObject(_loc4_);
            this.§<9§.push(_loc5_);
            if(_loc3_.@instruction == "true")
            {
               §3!8§.push(new §4!Z§(new §<!z§(_loc4_),new §<!z§(_loc5_)));
            }
         }
         this.§=c§ = new §@>§();
         this.§=c§.init(this.§<9§);
         this.refresh(param1);
         §7P§.§'!o§.§7b§(this);
      }
      
      override public function refresh(param1:§-!K§) : void
      {
         var _loc2_:GhostObject = null;
         for each(_loc2_ in this.§<9§)
         {
            _loc2_.refresh(param1.objects,this.§+"%§);
         }
         this.§=c§.§'$§();
      }
      
      override public function update(param1:§-!K§) : Boolean
      {
         this.§2"3§();
         return this.§<9§.length - this.§+"%§.length == 0;
      }
      
      public function §2"3§() : void
      {
         var _loc1_:GhostObject = null;
         for each(_loc1_ in this.§<9§)
         {
            _loc1_.§9"'§(this.§-[§,this.§+"%§);
         }
      }
      
      private function §9U§() : Boolean
      {
         return this.§<9§.length - this.§+"%§.length == 0;
      }
      
      override public function isObjectNeeded(param1:§7!O§) : Boolean
      {
         return this.§-[§.indexOf(param1) != -1;
      }
      
      public function canObjectBeModified(param1:§7!O§ = null) : Boolean
      {
         return this.§+"%§.indexOf(param1) == -1;
      }
      
      public function canObjectBeAdded(param1:String = null) : Boolean
      {
         return this.§+"%§.length >= this.§<9§.length;
      }
      
      public function canObjectBeDeleted(param1:§7!O§ = null) : Boolean
      {
         return !this.isObjectNeeded(param1);
      }
      
      public function isGravityAvailable() : Boolean
      {
         return isCompleted;
      }
      
      override public function dispose() : void
      {
         this.§=c§.clear();
      }
      
      override public function onPhysicsEnabled() : void
      {
         this.§=c§.clear();
      }
      
      override public function getNextInstruction() : DisplayObject
      {
         var _loc1_:GhostObject = null;
         var _loc2_:§4!Z§ = null;
         for each(_loc1_ in this.§<9§)
         {
            if(!_loc1_.§=r§)
            {
               for each(_loc2_ in §3!8§)
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
      
      public function §1X§(param1:Boolean = true) : void
      {
         var _loc2_:Vector.<§7!O§> = null;
         var _loc3_:GhostObject = null;
         var _loc4_:§7!O§ = null;
         if(param1)
         {
            _loc2_ = this.§+"%§.concat();
            for each(_loc3_ in this.§<9§)
            {
               for each(_loc4_ in this.§-[§)
               {
                  if(!(_loc2_.indexOf(_loc4_) >= 0 || _loc4_.getName() != _loc3_.name || _loc3_.§=r§))
                  {
                     _loc2_.push(_loc4_);
                     _loc4_.§!!l§(_loc3_.transform);
                     if(!(_loc4_.getObject() as §9!R§).§#!y§())
                     {
                     }
                  }
               }
            }
         }
         else
         {
            this.§2"3§();
         }
      }
      
      public function §]z§() : int
      {
         var _loc2_:GhostObject = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§<9§)
         {
            if(_loc2_.name.indexOf("PIG_") == -1)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §>!q§() : Vector.<§7!O§>
      {
         return this.§-[§;
      }
   }
}
