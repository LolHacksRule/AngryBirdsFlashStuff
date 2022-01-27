package §3!-§
{
   public class §>!O§
   {
       
      
      private var §^"4§:Boolean;
      
      private var value;
      
      private var §]^§:§@!O§;
      
      private var §5z§:§<!+§;
      
      public function §>!O§(param1:String, param2:Boolean)
      {
         super();
         this.§^"4§ = param2;
         this.§]^§ = new §@!O§(param1,param2);
         this.§1!6§();
         this.value = this.§'<§();
         if(param2 && this.§1!6§() != null)
         {
            this.§]^§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §1!6§() : §<!+§
      {
         return this.§5z§ = this.§]^§.§[!C§();
      }
      
      private function §8!m§() : Array
      {
         var _loc1_:Array = new Array();
         this.§1!6§();
         if(this.§5z§.type == §+!U§.§6!j§)
         {
            return _loc1_;
         }
         if(!this.§^"4§ && this.§5z§.type == §+!U§.§?"C§)
         {
            this.§1!6§();
            if(this.§5z§.type == §+!U§.§6!j§)
            {
               return _loc1_;
            }
            this.§]^§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§5z§.value);
         }
         while(true)
         {
            _loc1_.push(this.§'<§());
            this.§1!6§();
            if(this.§5z§.type == §+!U§.§6!j§)
            {
               break;
            }
            if(this.§5z§.type == §+!U§.§?"C§)
            {
               this.§1!6§();
               if(!this.§^"4§)
               {
                  if(this.§5z§.type == §+!U§.§6!j§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§]^§.parseError("Expecting ] or , but found " + this.§5z§.value);
            }
         }
         return _loc1_;
      }
      
      private function §[!p§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§1!6§();
         if(this.§5z§.type == §+!U§.§@J§)
         {
            return _loc1_;
         }
         if(!this.§^"4§ && this.§5z§.type == §+!U§.§?"C§)
         {
            this.§1!6§();
            if(this.§5z§.type == §+!U§.§@J§)
            {
               return _loc1_;
            }
            this.§]^§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§5z§.value);
         }
         while(true)
         {
            if(this.§5z§.type == §+!U§.§1"!§)
            {
               _loc2_ = String(this.§5z§.value);
               this.§1!6§();
               if(this.§5z§.type == §+!U§.§7"1§)
               {
                  this.§1!6§();
                  _loc1_[_loc2_] = this.§'<§();
                  this.§1!6§();
                  if(this.§5z§.type == §+!U§.§@J§)
                  {
                     break;
                  }
                  if(this.§5z§.type == §+!U§.§?"C§)
                  {
                     this.§1!6§();
                     if(!this.§^"4§)
                     {
                        if(this.§5z§.type == §+!U§.§@J§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§]^§.parseError("Expecting } or , but found " + this.§5z§.value);
                  }
               }
               else
               {
                  this.§]^§.parseError("Expecting : but found " + this.§5z§.value);
               }
            }
            else
            {
               this.§]^§.parseError("Expecting string but found " + this.§5z§.value);
            }
         }
         return _loc1_;
      }
      
      private function §'<§() : Object
      {
         if(this.§5z§ == null)
         {
            this.§]^§.parseError("Unexpected end of input");
         }
         switch(this.§5z§.type)
         {
            case §+!U§.§false§:
               return this.§[!p§();
            case §+!U§.§<"2§:
               return this.§8!m§();
            case §+!U§.§1"!§:
            case §+!U§.§7R§:
            case §+!U§.TRUE:
            case §+!U§.FALSE:
            case §+!U§.NULL:
               return this.§5z§.value;
            case §+!U§.§!!k§:
               if(!this.§^"4§)
               {
                  return this.§5z§.value;
               }
               this.§]^§.parseError("Unexpected " + this.§5z§.value);
               break;
         }
         this.§]^§.parseError("Unexpected " + this.§5z§.value);
         return null;
      }
   }
}
