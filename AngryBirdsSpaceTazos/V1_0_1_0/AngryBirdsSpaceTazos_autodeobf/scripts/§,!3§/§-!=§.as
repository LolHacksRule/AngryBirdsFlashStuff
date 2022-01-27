package §,!3§
{
   public class §-!=§
   {
       
      
      private var §5!;§:Boolean;
      
      private var value;
      
      private var §%n§:§[p§;
      
      private var §<"2§:§2!§;
      
      public function §-!=§(param1:String, param2:Boolean)
      {
         super();
         this.§5!;§ = param2;
         this.§%n§ = new §[p§(param1,param2);
         this.§"!J§();
         this.value = this.§;!P§();
         if(param2 && this.§"!J§() != null)
         {
            this.§%n§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §"!J§() : §2!§
      {
         return this.§<"2§ = this.§%n§.§&!@§();
      }
      
      private function §2!T§() : Array
      {
         var _loc1_:Array = new Array();
         this.§"!J§();
         if(this.§<"2§.type == §[H§.§&"A§)
         {
            return _loc1_;
         }
         if(!this.§5!;§ && this.§<"2§.type == §[H§.§>!k§)
         {
            this.§"!J§();
            if(this.§<"2§.type == §[H§.§&"A§)
            {
               return _loc1_;
            }
            this.§%n§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§<"2§.value);
         }
         while(true)
         {
            _loc1_.push(this.§;!P§());
            this.§"!J§();
            if(this.§<"2§.type == §[H§.§&"A§)
            {
               break;
            }
            if(this.§<"2§.type == §[H§.§>!k§)
            {
               this.§"!J§();
               if(!this.§5!;§)
               {
                  if(this.§<"2§.type == §[H§.§&"A§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§%n§.parseError("Expecting ] or , but found " + this.§<"2§.value);
            }
         }
         return _loc1_;
      }
      
      private function §?!h§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§"!J§();
         if(this.§<"2§.type == §[H§.§!!o§)
         {
            return _loc1_;
         }
         if(!this.§5!;§ && this.§<"2§.type == §[H§.§>!k§)
         {
            this.§"!J§();
            if(this.§<"2§.type == §[H§.§!!o§)
            {
               return _loc1_;
            }
            this.§%n§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§<"2§.value);
         }
         while(true)
         {
            if(this.§<"2§.type == §[H§.§?#§)
            {
               _loc2_ = String(this.§<"2§.value);
               this.§"!J§();
               if(this.§<"2§.type == §[H§.§=!m§)
               {
                  this.§"!J§();
                  _loc1_[_loc2_] = this.§;!P§();
                  this.§"!J§();
                  if(this.§<"2§.type == §[H§.§!!o§)
                  {
                     break;
                  }
                  if(this.§<"2§.type == §[H§.§>!k§)
                  {
                     this.§"!J§();
                     if(!this.§5!;§)
                     {
                        if(this.§<"2§.type == §[H§.§!!o§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§%n§.parseError("Expecting } or , but found " + this.§<"2§.value);
                  }
               }
               else
               {
                  this.§%n§.parseError("Expecting : but found " + this.§<"2§.value);
               }
            }
            else
            {
               this.§%n§.parseError("Expecting string but found " + this.§<"2§.value);
            }
         }
         return _loc1_;
      }
      
      private function §;!P§() : Object
      {
         if(this.§<"2§ == null)
         {
            this.§%n§.parseError("Unexpected end of input");
         }
         switch(this.§<"2§.type)
         {
            case §[H§.§?"6§:
               return this.§?!h§();
            case §[H§.§&!S§:
               return this.§2!T§();
            case §[H§.§?#§:
            case §[H§.§1[§:
            case §[H§.TRUE:
            case §[H§.FALSE:
            case §[H§.NULL:
               return this.§<"2§.value;
            case §[H§.§=!0§:
               if(!this.§5!;§)
               {
                  return this.§<"2§.value;
               }
               this.§%n§.parseError("Unexpected " + this.§<"2§.value);
               break;
         }
         this.§%n§.parseError("Unexpected " + this.§<"2§.value);
         return null;
      }
   }
}
