package §>3§
{
   import § !R§.GhostObject;
   import §1"?§.§?"1§;
   import §4!S§.§="%§;
   import §8!E§.§?!X§;
   import §8E§.§'!a§;
   import §=%§.§0L§;
   import §=%§.§<A§;
   import §?"&§.§"!q§;
   import flash.display.DisplayObject;
   
   public class §2R§ extends §4%§
   {
       
      
      private var §8!^§:Vector.<GhostObject>;
      
      private var §!"+§:Vector.<§<A§>;
      
      private var §!K§:Vector.<§<A§>;
      
      private var §6p§:§?"1§;
      
      public function §2R§(param1:§?!X§, param2:XML)
      {
         var _loc3_:XML = null;
         var _loc4_:§<A§ = null;
         var _loc5_:GhostObject = null;
         this.§8!^§ = new Vector.<GhostObject>();
         this.§!"+§ = new Vector.<§<A§>();
         this.§!K§ = new Vector.<§<A§>();
         super(param1,param2);
         for each(_loc3_ in param2["object"])
         {
            _loc4_ = §="%§.§&!c§(_loc3_.toString(),param1.objects);
            this.§!"+§.push(_loc4_);
            _loc5_ = new GhostObject(_loc4_);
            this.§8!^§.push(_loc5_);
            if(_loc3_.@instruction == "true")
            {
               §?!Q§.push(new §'!a§(new §0L§(_loc4_),new §0L§(_loc5_)));
            }
         }
         this.§6p§ = new §?"1§();
         this.§6p§.init(this.§8!^§);
         this.refresh(param1);
      }
      
      override public function refresh(param1:§?!X§) : void
      {
         var _loc2_:GhostObject = null;
         for each(_loc2_ in this.§8!^§)
         {
            _loc2_.refresh(param1.objects,this.§!K§);
         }
         this.§6p§.§="$§();
      }
      
      override public function update(param1:§?!X§) : Boolean
      {
         this.§3n§();
         return this.§8!^§.length - this.§!K§.length == 0;
      }
      
      public function §3n§() : void
      {
         var _loc1_:GhostObject = null;
         for each(_loc1_ in this.§8!^§)
         {
            _loc1_.§-!$§(this.§!"+§,this.§!K§);
         }
      }
      
      private function §25§() : Boolean
      {
         return this.§8!^§.length - this.§!K§.length == 0;
      }
      
      override public function isObjectNeeded(param1:§<A§) : Boolean
      {
         return this.§!"+§.indexOf(param1) != -1;
      }
      
      public function §>!<§(param1:§<A§ = null) : Boolean
      {
         return this.§!K§.indexOf(param1) == -1;
      }
      
      public function §"!F§(param1:String = null) : Boolean
      {
         return this.§!K§.length >= this.§8!^§.length;
      }
      
      public function §5!,§(param1:§<A§ = null) : Boolean
      {
         return !this.isObjectNeeded(param1);
      }
      
      public function §6,§() : Boolean
      {
         return isCompleted;
      }
      
      override public function dispose() : void
      {
         this.§6p§.clear();
      }
      
      override public function onPhysicsEnabled() : void
      {
         this.§6p§.clear();
      }
      
      override public function getNextInstruction() : DisplayObject
      {
         var _loc1_:GhostObject = null;
         var _loc2_:§'!a§ = null;
         for each(_loc1_ in this.§8!^§)
         {
            if(!_loc1_.§="0§)
            {
               for each(_loc2_ in §?!Q§)
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
      
      public function §8!D§(param1:Boolean = true) : void
      {
         var _loc2_:Vector.<§<A§> = null;
         var _loc3_:GhostObject = null;
         var _loc4_:§<A§ = null;
         if(param1)
         {
            _loc2_ = this.§!K§.concat();
            for each(_loc3_ in this.§8!^§)
            {
               for each(_loc4_ in this.§!"+§)
               {
                  if(!(_loc2_.indexOf(_loc4_) >= 0 || _loc4_.getName() != _loc3_.name || _loc3_.§="0§))
                  {
                     _loc2_.push(_loc4_);
                     _loc4_.§;!b§(_loc3_.transform);
                     if(!(_loc4_.getObject() as §"!q§).§-E§())
                     {
                     }
                  }
               }
            }
         }
         else
         {
            this.§3n§();
         }
      }
      
      public function §6X§() : int
      {
         var _loc2_:GhostObject = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§8!^§)
         {
            if(_loc2_.name.indexOf("PIG_") == -1)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §#!r§() : Vector.<§<A§>
      {
         return this.§!"+§;
      }
   }
}
