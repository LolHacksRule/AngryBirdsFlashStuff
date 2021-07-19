package §;K§
{
   public class §'!v§
   {
       
      
      private var §#o§:Boolean;
      
      private var value;
      
      private var §;!V§:§^b§;
      
      private var §9!]§:§9!L§;
      
      public function §'!v§(param1:String, param2:Boolean)
      {
         super();
         this.§#o§ = param2;
         this.§;!V§ = new §^b§(param1,param2);
         this.§-!f§();
         this.value = this.§@!p§();
         if(param2 && this.§-!f§() != null)
         {
            this.§;!V§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §-!f§() : §9!L§
      {
         return this.§9!]§ = this.§;!V§.§3!d§();
      }
      
      private function §2!'§() : Array
      {
         var _loc1_:Array = new Array();
         this.§-!f§();
         if(this.§9!]§.type == §1"#§.§"!I§)
         {
            return _loc1_;
         }
         if(!this.§#o§ && this.§9!]§.type == §1"#§.§=Q§)
         {
            this.§-!f§();
            if(this.§9!]§.type == §1"#§.§"!I§)
            {
               return _loc1_;
            }
            this.§;!V§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§9!]§.value);
         }
         while(true)
         {
            _loc1_.push(this.§@!p§());
            this.§-!f§();
            if(this.§9!]§.type == §1"#§.§"!I§)
            {
               break;
            }
            if(this.§9!]§.type == §1"#§.§=Q§)
            {
               this.§-!f§();
               if(!this.§#o§)
               {
                  if(this.§9!]§.type == §1"#§.§"!I§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§;!V§.parseError("Expecting ] or , but found " + this.§9!]§.value);
            }
         }
         return _loc1_;
      }
      
      private function parseObject() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§-!f§();
         if(this.§9!]§.type == §1"#§.§#r§)
         {
            return _loc1_;
         }
         if(!this.§#o§ && this.§9!]§.type == §1"#§.§=Q§)
         {
            this.§-!f§();
            if(this.§9!]§.type == §1"#§.§#r§)
            {
               return _loc1_;
            }
            this.§;!V§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§9!]§.value);
         }
         while(true)
         {
            if(this.§9!]§.type == §1"#§.§!!m§)
            {
               _loc2_ = String(this.§9!]§.value);
               this.§-!f§();
               if(this.§9!]§.type == §1"#§.§9!I§)
               {
                  this.§-!f§();
                  _loc1_[_loc2_] = this.§@!p§();
                  this.§-!f§();
                  if(this.§9!]§.type == §1"#§.§#r§)
                  {
                     break;
                  }
                  if(this.§9!]§.type == §1"#§.§=Q§)
                  {
                     this.§-!f§();
                     if(!this.§#o§)
                     {
                        if(this.§9!]§.type == §1"#§.§#r§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§;!V§.parseError("Expecting } or , but found " + this.§9!]§.value);
                  }
               }
               else
               {
                  this.§;!V§.parseError("Expecting : but found " + this.§9!]§.value);
               }
            }
            else
            {
               this.§;!V§.parseError("Expecting string but found " + this.§9!]§.value);
            }
         }
         return _loc1_;
      }
      
      private function §@!p§() : Object
      {
         if(this.§9!]§ == null)
         {
            this.§;!V§.parseError("Unexpected end of input");
         }
         switch(this.§9!]§.type)
         {
            case §1"#§.§>!F§:
               return this.parseObject();
            case §1"#§.§2i§:
               return this.§2!'§();
            case §1"#§.§!!m§:
            case §1"#§.§@!z§:
            case §1"#§.TRUE:
            case §1"#§.FALSE:
            case §1"#§.NULL:
               return this.§9!]§.value;
            case §1"#§.§8!r§:
               if(!this.§#o§)
               {
                  return this.§9!]§.value;
               }
               this.§;!V§.parseError("Unexpected " + this.§9!]§.value);
               break;
         }
         this.§;!V§.parseError("Unexpected " + this.§9!]§.value);
         return null;
      }
   }
}
