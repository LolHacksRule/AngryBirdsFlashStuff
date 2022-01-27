package §,!K§
{
   public class § e§
   {
       
      
      private var §?h§:Boolean;
      
      private var value;
      
      private var §7f§:§4!D§;
      
      private var §=i§:§+I§;
      
      public function § e§(param1:String, param2:Boolean)
      {
         super();
         this.§?h§ = param2;
         this.§7f§ = new §4!D§(param1,param2);
         this.§;,§();
         this.value = this.§1U§();
         if(param2 && this.§;,§() != null)
         {
            this.§7f§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §;,§() : §+I§
      {
         return this.§=i§ = this.§7f§.§^y§();
      }
      
      private function §,§() : Array
      {
         var _loc1_:Array = new Array();
         this.§;,§();
         if(this.§=i§.type == §7!;§.§"G§)
         {
            return _loc1_;
         }
         if(!this.§?h§ && this.§=i§.type == §7!;§.§2>§)
         {
            this.§;,§();
            if(this.§=i§.type == §7!;§.§"G§)
            {
               return _loc1_;
            }
            this.§7f§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§=i§.value);
         }
         while(true)
         {
            _loc1_.push(this.§1U§());
            this.§;,§();
            if(this.§=i§.type == §7!;§.§"G§)
            {
               break;
            }
            if(this.§=i§.type == §7!;§.§2>§)
            {
               this.§;,§();
               if(!this.§?h§)
               {
                  if(this.§=i§.type == §7!;§.§"G§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§7f§.parseError("Expecting ] or , but found " + this.§=i§.value);
            }
         }
         return _loc1_;
      }
      
      private function §6i§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§;,§();
         if(this.§=i§.type == §7!;§.§ A§)
         {
            return _loc1_;
         }
         if(!this.§?h§ && this.§=i§.type == §7!;§.§2>§)
         {
            this.§;,§();
            if(this.§=i§.type == §7!;§.§ A§)
            {
               return _loc1_;
            }
            this.§7f§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§=i§.value);
         }
         while(true)
         {
            if(this.§=i§.type == §7!;§.§+!9§)
            {
               _loc2_ = String(this.§=i§.value);
               this.§;,§();
               if(this.§=i§.type == §7!;§.§7!5§)
               {
                  this.§;,§();
                  _loc1_[_loc2_] = this.§1U§();
                  this.§;,§();
                  if(this.§=i§.type == §7!;§.§ A§)
                  {
                     break;
                  }
                  if(this.§=i§.type == §7!;§.§2>§)
                  {
                     this.§;,§();
                     if(!this.§?h§)
                     {
                        if(this.§=i§.type == §7!;§.§ A§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§7f§.parseError("Expecting } or , but found " + this.§=i§.value);
                  }
               }
               else
               {
                  this.§7f§.parseError("Expecting : but found " + this.§=i§.value);
               }
            }
            else
            {
               this.§7f§.parseError("Expecting string but found " + this.§=i§.value);
            }
         }
         return _loc1_;
      }
      
      private function §1U§() : Object
      {
         if(this.§=i§ == null)
         {
            this.§7f§.parseError("Unexpected end of input");
         }
         switch(this.§=i§.type)
         {
            case §7!;§.§0R§:
               return this.§6i§();
            case §7!;§.§!H§:
               return this.§,§();
            case §7!;§.§+!9§:
            case §7!;§.§2`§:
            case §7!;§.TRUE:
            case §7!;§.FALSE:
            case §7!;§.NULL:
               return this.§=i§.value;
            case §7!;§.§]!N§:
               if(!this.§?h§)
               {
                  return this.§=i§.value;
               }
               this.§7f§.parseError("Unexpected " + this.§=i§.value);
               break;
         }
         this.§7f§.parseError("Unexpected " + this.§=i§.value);
         return null;
      }
   }
}
