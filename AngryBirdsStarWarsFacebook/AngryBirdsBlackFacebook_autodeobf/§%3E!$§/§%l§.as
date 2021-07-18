package §>!$§
{
   import §!!c§.§95§;
   
   public final class §%l§ implements §95§
   {
       
      
      public var data = null;
      
      public var §]!D§:§%l§ = null;
      
      public var §-B§:§%l§ = null;
      
      public function §%l§(param1:*)
      {
         super();
         this.data = param1;
      }
      
      public function append(param1:*) : §%l§
      {
         if(this.data == null)
         {
            this.data = param1;
            return this;
         }
         var _loc2_:§%l§ = new §%l§(param1);
         _loc2_.§-B§ = this;
         if(this.§,d§)
         {
            this.§]!D§.§-B§ = _loc2_;
            _loc2_.§]!D§ = this.§]!D§;
         }
         this.§]!D§ = _loc2_;
         return _loc2_;
      }
      
      public function §@!7§(param1:*) : §%l§
      {
         if(this.data == null)
         {
            this.data = param1;
            return this;
         }
         var _loc2_:§%l§ = new §%l§(param1);
         _loc2_.§]!D§ = this;
         if(this.§]=§)
         {
            this.§-B§.§]!D§ = _loc2_;
            _loc2_.§-B§ = this.§-B§;
         }
         this.§-B§ = _loc2_;
         return _loc2_;
      }
      
      public function get §,d§() : Boolean
      {
         return this.§]!D§ != null;
      }
      
      public function get §]=§() : Boolean
      {
         return this.§-B§ != null;
      }
      
      public function §]!!§() : §%l§
      {
         if(this.§,d§)
         {
            return this.§]!D§.§]!!§();
         }
         return this;
      }
      
      public function §["4§() : §%l§
      {
         if(this.§]=§)
         {
            return this.§-B§.§["4§();
         }
         return this;
      }
      
      public function §>"k§() : *
      {
         var _loc1_:* = undefined;
         if(!this.§,d§ && !this.§]=§)
         {
            _loc1_ = this.data;
            this.dispose();
            return _loc1_;
         }
         if(this.§,d§)
         {
            this.§]!D§.§-B§ = this.§-B§;
            if(this.§]=§)
            {
               this.§-B§.§]!D§ = this.§]!D§;
               return this.data;
            }
            _loc1_ = this.data;
            this.§7S§(this.§]!D§);
            return _loc1_;
         }
         this.§-B§.§]!D§ = null;
         _loc1_ = this.data;
         this.dispose();
         return _loc1_;
      }
      
      private function §7S§(param1:§%l§) : void
      {
         this.data = param1.data;
         this.§]!D§ = param1.§]!D§;
         this.§-B§ = param1.§-B§;
         if(this.§,d§)
         {
            this.§]!D§.§-B§ = this;
         }
         if(this.§]=§)
         {
            this.§-B§.§]!D§ = this;
         }
         param1.dispose();
      }
      
      public function dispose() : void
      {
         this.data = null;
         this.§-B§ = null;
         this.§]!D§ = null;
      }
      
      public function §;#_§(param1:Boolean = false) : int
      {
         var _loc3_:int = 0;
         var _loc4_:* = undefined;
         var _loc2_:§%l§ = this.§["4§();
         if(_loc2_ == this)
         {
            _loc3_ = 0;
            while(this.size > 0)
            {
               _loc3_++;
               _loc4_ = this.§]!!§().§>"k§();
               if(param1)
               {
                  if(_loc4_ is §95§)
                  {
                     §95§(_loc4_).dispose();
                  }
               }
            }
            return _loc3_;
         }
         return _loc2_.§;#_§();
      }
      
      public function §<#Y§(param1:Function) : void
      {
         if(param1.length != 1)
         {
            throw new ArgumentError("Function must have exactly one argument");
         }
         var _loc2_:§%l§ = this;
         param1(_loc2_.data);
         while(_loc2_.§,d§)
         {
            _loc2_ = _loc2_.§]!D§;
            param1(_loc2_.data);
         }
      }
      
      public function toString() : String
      {
         return "[LLNode data=" + this.data + " hasNext=" + this.§,d§ + " hasPrev=" + this.§]=§ + "]";
      }
      
      public function §;!K§(param1:int) : §%l§
      {
         var _loc2_:§%l§ = this.§["4§();
         var _loc3_:int = 0;
         while(_loc2_.§,d§)
         {
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
            _loc3_++;
            _loc2_ = _loc2_.§]!D§;
         }
         return null;
      }
      
      public function §^I§(param1:*) : §%l§
      {
         var _loc2_:§%l§ = this.§["4§();
         while(_loc2_.§,d§)
         {
            if(_loc2_.data == param1)
            {
               return _loc2_;
            }
            _loc2_ = _loc2_.§]!D§;
         }
         return null;
      }
      
      public function filter(param1:Function, ... rest) : §%l§
      {
         var _loc3_:§%l§ = new §%l§(null);
         var _loc4_:§%l§ = this.§["4§();
         while(_loc4_.§,d§)
         {
            if(param1(_loc4_.data))
            {
               _loc3_.append(_loc4_.data);
            }
            _loc4_ = _loc4_.§]!D§;
         }
         return _loc3_;
      }
      
      public function §9h§(param1:Function, ... rest) : Array
      {
         var _loc3_:Array = [];
         var _loc4_:§%l§ = this.§["4§();
         while(_loc4_.§,d§)
         {
            if(param1(_loc4_.data))
            {
               _loc3_.push(_loc4_.data);
            }
            _loc4_ = _loc4_.§]!D§;
         }
         return _loc3_;
      }
      
      public function contains(param1:*) : Boolean
      {
         return this.§^I§(param1) != null;
      }
      
      public function §&"$§() : int
      {
         var _loc2_:Vector.<§%l§> = null;
         var _loc3_:§%l§ = null;
         var _loc1_:§%l§ = this.§["4§();
         if(_loc1_ == this)
         {
            _loc2_ = new Vector.<§%l§>();
            _loc3_ = _loc1_;
            while(_loc3_.§,d§)
            {
               _loc3_ = _loc3_.§]!D§;
               if(_loc3_.data == null)
               {
                  _loc2_.push(_loc3_);
               }
            }
            for each(_loc3_ in _loc2_)
            {
               _loc3_.§>"k§();
            }
            return _loc2_.length;
         }
         return _loc1_.§&"$§();
      }
      
      public function get size() : int
      {
         var _loc1_:§%l§ = this.§["4§();
         var _loc2_:int = _loc1_.data == null ? 0 : 1;
         while(_loc1_.§,d§)
         {
            _loc1_ = _loc1_.§]!D§;
            _loc2_++;
         }
         return _loc2_;
      }
      
      public function §"S§() : §<"u§
      {
         return new §<"u§(this);
      }
   }
}
