package §`!Z§
{
   import § ""§.§%,§;
   import §0",§.§^!J§;
   import §1!v§.§@%§;
   import §1z§.§,!b§;
   import §6!D§.GhostObject;
   import §7=§.§2!a§;
   import §@!P§.§,"5§;
   import §@!P§.§?"%§;
   import flash.display.DisplayObject;
   
   public class §9"1§ extends §-"4§
   {
       
      
      private var §#"%§:Vector.<GhostObject>;
      
      private var §<!G§:Vector.<§?"%§>;
      
      private var §>!y§:Vector.<§?"%§>;
      
      private var §`!1§:§2!a§;
      
      public function §9"1§(param1:§@%§, param2:XML)
      {
         var _loc3_:XML = null;
         var _loc4_:§?"%§ = null;
         var _loc5_:GhostObject = null;
         this.§#"%§ = new Vector.<GhostObject>();
         this.§<!G§ = new Vector.<§?"%§>();
         this.§>!y§ = new Vector.<§?"%§>();
         super(param1,param2);
         for each(_loc3_ in param2["object"])
         {
            _loc4_ = §,!b§.§3!-§(_loc3_.toString(),param1.objects);
            this.§<!G§.push(_loc4_);
            _loc5_ = new GhostObject(_loc4_);
            this.§#"%§.push(_loc5_);
            if(_loc3_.@instruction == "true")
            {
               §2h§.push(new §^!J§(new §,"5§(_loc4_),new §,"5§(_loc5_)));
            }
         }
         this.§`!1§ = new §2!a§();
         this.§`!1§.init(this.§#"%§);
         this.refresh(param1);
      }
      
      override public function refresh(param1:§@%§) : void
      {
         var _loc2_:GhostObject = null;
         for each(_loc2_ in this.§#"%§)
         {
            _loc2_.refresh(param1.objects,this.§>!y§);
         }
         this.§`!1§.§"!z§();
      }
      
      override public function update(param1:§@%§) : Boolean
      {
         this.§4!c§();
         return this.§#"%§.length - this.§>!y§.length == 0;
      }
      
      public function §4!c§() : void
      {
         var _loc1_:GhostObject = null;
         for each(_loc1_ in this.§#"%§)
         {
            _loc1_.§ !j§(this.§<!G§,this.§>!y§);
         }
      }
      
      private function §-H§() : Boolean
      {
         return this.§#"%§.length - this.§>!y§.length == 0;
      }
      
      override public function isObjectNeeded(param1:§?"%§) : Boolean
      {
         return this.§<!G§.indexOf(param1) != -1;
      }
      
      public function §#!A§(param1:§?"%§ = null) : Boolean
      {
         return this.§>!y§.indexOf(param1) == -1;
      }
      
      public function § try§(param1:String = null) : Boolean
      {
         return this.§>!y§.length >= this.§#"%§.length;
      }
      
      public function §-!+§(param1:§?"%§ = null) : Boolean
      {
         return !this.isObjectNeeded(param1);
      }
      
      public function §"!-§() : Boolean
      {
         return isCompleted;
      }
      
      override public function dispose() : void
      {
         this.§`!1§.clear();
      }
      
      override public function onPhysicsEnabled() : void
      {
         this.§`!1§.clear();
      }
      
      override public function getNextInstruction() : DisplayObject
      {
         var _loc1_:GhostObject = null;
         var _loc2_:§^!J§ = null;
         for each(_loc1_ in this.§#"%§)
         {
            if(!_loc1_.§]"2§)
            {
               for each(_loc2_ in §2h§)
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
      
      public function §6!r§(param1:Boolean = true) : void
      {
         var _loc2_:Vector.<§?"%§> = null;
         var _loc3_:GhostObject = null;
         var _loc4_:§?"%§ = null;
         if(param1)
         {
            _loc2_ = this.§>!y§.concat();
            for each(_loc3_ in this.§#"%§)
            {
               for each(_loc4_ in this.§<!G§)
               {
                  if(!(_loc2_.indexOf(_loc4_) >= 0 || _loc4_.getName() != _loc3_.name || _loc3_.§]"2§))
                  {
                     _loc2_.push(_loc4_);
                     _loc4_.§[P§(_loc3_.transform);
                     if(!(_loc4_.getObject() as §%,§).§^6§())
                     {
                     }
                  }
               }
            }
         }
         else
         {
            this.§4!c§();
         }
      }
      
      public function §-9§() : int
      {
         var _loc2_:GhostObject = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§#"%§)
         {
            if(_loc2_.name.indexOf("PIG_") == -1)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §,!C§() : Vector.<§?"%§>
      {
         return this.§<!G§;
      }
   }
}
