package § in§
{
   import §%!&§.§;!x§;
   import §%h§.§5X§;
   import §+`§.§#'§;
   import §+`§.§^!p§;
   import §-" §.§ 0§;
   import §4!7§.§]!1§;
   import §4L§.GhostObject;
   import flash.display.DisplayObject;
   import §true§.§>"-§;
   import §var§.§&!y§;
   
   public class §"!b§ extends §"J§
   {
       
      
      private var §-v§:Vector.<GhostObject>;
      
      private var §<!E§:Vector.<§>"-§>;
      
      private var §4!R§:Vector.<§>"-§>;
      
      private var §7L§:§ 0§;
      
      public function §"!b§(param1:§5X§, param2:XML)
      {
         var _loc3_:XML = null;
         var _loc4_:§>"-§ = null;
         var _loc5_:GhostObject = null;
         this.§-v§ = new Vector.<GhostObject>();
         this.§<!E§ = new Vector.<§>"-§>();
         this.§4!R§ = new Vector.<§>"-§>();
         super(param1,param2);
         for each(_loc3_ in param2["object"])
         {
            _loc4_ = §&!y§.§3!m§(_loc3_.toString(),param1.objects);
            this.§<!E§.push(_loc4_);
            _loc5_ = new GhostObject(_loc4_);
            this.§-v§.push(_loc5_);
            if(_loc3_.@instruction == "true")
            {
               §#E§.push(new §^!p§(new §#'§(_loc4_),new §#'§(_loc5_)));
            }
         }
         this.§7L§ = new § 0§();
         this.§7L§.init(this.§-v§);
         this.refresh(param1);
         §]!1§.§9j§.§+!n§(this);
      }
      
      override public function refresh(param1:§5X§) : void
      {
         var _loc2_:GhostObject = null;
         for each(_loc2_ in this.§-v§)
         {
            _loc2_.refresh(param1.objects,this.§4!R§);
         }
         if(!this.§`u§())
         {
            this.§7L§.§&!=§();
         }
      }
      
      override public function update(param1:§5X§) : Boolean
      {
         var _loc2_:GhostObject = null;
         for each(_loc2_ in this.§-v§)
         {
            _loc2_.§^"#§(this.§<!E§,this.§4!R§);
         }
         if(this.§`u§() && !isCompleted)
         {
            this.§7L§.§#!O§();
         }
         return this.§-v§.length - this.§4!R§.length == 0;
      }
      
      private function §`u§() : Boolean
      {
         return this.§-v§.length - this.§4!R§.length == 0;
      }
      
      override public function isObjectNeeded(param1:§>"-§) : Boolean
      {
         return this.§<!E§.indexOf(param1) != -1;
      }
      
      public function canObjectBeModified(param1:§>"-§ = null) : Boolean
      {
         return this.§4!R§.indexOf(param1) == -1;
      }
      
      public function canObjectBeAdded(param1:String = null) : Boolean
      {
         return this.§4!R§.length >= this.§-v§.length;
      }
      
      public function canObjectBeDeleted(param1:§>"-§ = null) : Boolean
      {
         return !this.isObjectNeeded(param1);
      }
      
      public function isGravityAvailable() : Boolean
      {
         return isCompleted;
      }
      
      override public function dispose() : void
      {
         this.§7L§.clear();
      }
      
      override public function onPhysicsEnabled() : void
      {
         this.§7L§.clear();
      }
      
      override public function getNextInstruction() : DisplayObject
      {
         var _loc1_:GhostObject = null;
         var _loc2_:§^!p§ = null;
         for each(_loc1_ in this.§-v§)
         {
            if(!_loc1_.§>U§)
            {
               for each(_loc2_ in §#E§)
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
      
      public function §9!D§() : void
      {
         var _loc2_:GhostObject = null;
         var _loc3_:§>"-§ = null;
         var _loc1_:Vector.<§>"-§> = this.§4!R§.concat();
         for each(_loc2_ in this.§-v§)
         {
            for each(_loc3_ in this.§<!E§)
            {
               if(!(_loc1_.indexOf(_loc3_) >= 0 || _loc3_.getName() != _loc2_.name || _loc2_.§>U§))
               {
                  _loc1_.push(_loc3_);
                  _loc3_.§4U§(_loc2_.transform);
                  if(!(_loc3_.getObject() as §;!x§).§;!M§())
                  {
                  }
               }
            }
         }
      }
      
      public function §>p§() : int
      {
         var _loc2_:GhostObject = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§-v§)
         {
            if(_loc2_.name.indexOf("PIG_") == -1)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
   }
}
