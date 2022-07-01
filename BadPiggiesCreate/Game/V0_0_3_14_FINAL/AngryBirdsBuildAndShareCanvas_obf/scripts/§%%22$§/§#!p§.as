package §%"$§
{
   import §#R§.§79§;
   import §+!o§.§]"5§;
   import §3§.§^!E§;
   import §5!V§.§!w§;
   import §7r§.§,!<§;
   import §7r§.§=q§;
   import §8" §.§`8§;
   import §[!_§.GhostObject;
   import flash.display.DisplayObject;
   
   public class §#!p§ extends §[!0§
   {
       
      
      private var §3!^§:Vector.<GhostObject>;
      
      private var §73§:Vector.<§=q§>;
      
      private var §[!-§:Vector.<§=q§>;
      
      private var § A§:§^!E§;
      
      public function §#!p§(param1:§!w§, param2:XML)
      {
         var _loc3_:XML = null;
         var _loc4_:§=q§ = null;
         var _loc5_:GhostObject = null;
         this.§3!^§ = new Vector.<GhostObject>();
         this.§73§ = new Vector.<§=q§>();
         this.§[!-§ = new Vector.<§=q§>();
         super(param1,param2);
         for each(_loc3_ in param2["object"])
         {
            _loc4_ = §`8§.§"!h§(_loc3_.toString(),param1.objects);
            this.§73§.push(_loc4_);
            _loc5_ = new GhostObject(_loc4_);
            this.§3!^§.push(_loc5_);
            if(_loc3_.@instruction == "true")
            {
               §`!"§.push(new §79§(new §,!<§(_loc4_),new §,!<§(_loc5_)));
            }
         }
         this.§ A§ = new §^!E§();
         this.§ A§.init(this.§3!^§);
         this.refresh(param1);
      }
      
      override public function refresh(param1:§!w§) : void
      {
         var _loc2_:GhostObject = null;
         for each(_loc2_ in this.§3!^§)
         {
            _loc2_.refresh(param1.objects,this.§[!-§);
         }
         this.§ A§.§;!K§();
      }
      
      override public function update(param1:§!w§) : Boolean
      {
         this.§&!2§();
         return this.§3!^§.length - this.§[!-§.length == 0;
      }
      
      public function §&!2§() : void
      {
         var _loc1_:GhostObject = null;
         for each(_loc1_ in this.§3!^§)
         {
            _loc1_.§1!,§(this.§73§,this.§[!-§);
         }
      }
      
      private function §#"6§() : Boolean
      {
         return this.§3!^§.length - this.§[!-§.length == 0;
      }
      
      override public function isObjectNeeded(param1:§=q§) : Boolean
      {
         return this.§73§.indexOf(param1) != -1;
      }
      
      public function §?K§(param1:§=q§ = null) : Boolean
      {
         return this.§[!-§.indexOf(param1) == -1;
      }
      
      public function §^U§(param1:String = null) : Boolean
      {
         return this.§[!-§.length >= this.§3!^§.length;
      }
      
      public function §5;§(param1:§=q§ = null) : Boolean
      {
         return !this.isObjectNeeded(param1);
      }
      
      public function §"";§() : Boolean
      {
         return isCompleted;
      }
      
      override public function dispose() : void
      {
         this.§ A§.clear();
      }
      
      override public function onPhysicsEnabled() : void
      {
         this.§ A§.clear();
      }
      
      override public function getNextInstruction() : DisplayObject
      {
         var _loc1_:GhostObject = null;
         var _loc2_:§79§ = null;
         for each(_loc1_ in this.§3!^§)
         {
            if(!_loc1_.§!6§)
            {
               for each(_loc2_ in §`!"§)
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
      
      public function §64§(param1:Boolean = true) : void
      {
         var _loc2_:Vector.<§=q§> = null;
         var _loc3_:GhostObject = null;
         var _loc4_:§=q§ = null;
         if(param1)
         {
            _loc2_ = this.§[!-§.concat();
            for each(_loc3_ in this.§3!^§)
            {
               for each(_loc4_ in this.§73§)
               {
                  if(!(_loc2_.indexOf(_loc4_) >= 0 || _loc4_.getName() != _loc3_.name || _loc3_.§!6§))
                  {
                     _loc2_.push(_loc4_);
                     _loc4_.§=!J§(_loc3_.transform);
                     if(!(_loc4_.getObject() as §]"5§).§@!i§())
                     {
                     }
                  }
               }
            }
         }
         else
         {
            this.§&!2§();
         }
      }
      
      public function §=<§() : int
      {
         var _loc2_:GhostObject = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§3!^§)
         {
            if(_loc2_.name.indexOf("PIG_") == -1)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function § !t§() : Vector.<§=q§>
      {
         return this.§73§;
      }
   }
}
