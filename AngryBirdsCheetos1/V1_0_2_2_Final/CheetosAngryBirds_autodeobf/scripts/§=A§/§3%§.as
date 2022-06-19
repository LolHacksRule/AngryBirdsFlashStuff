package §=A§
{
   public class §3%§
   {
       
      
      private var §4m§:Boolean;
      
      private var value;
      
      private var §,F§:§!a§;
      
      private var § ?§:§^M§;
      
      public function §3%§(param1:String, param2:Boolean)
      {
         super();
         this.§4m§ = param2;
         this.§,F§ = new §!a§(param1,param2);
         this.§4!4§();
         this.value = this.§>t§();
         if(param2 && this.§4!4§() != null)
         {
            this.§,F§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §4!4§() : §^M§
      {
         return this.§ ?§ = this.§,F§.§!%§();
      }
      
      private function §-Y§() : Array
      {
         var _loc1_:Array = new Array();
         this.§4!4§();
         if(this.§ ?§.type == §+!-§.§-B§)
         {
            return _loc1_;
         }
         if(!this.§4m§ && this.§ ?§.type == §+!-§.§+[§)
         {
            this.§4!4§();
            if(this.§ ?§.type == §+!-§.§-B§)
            {
               return _loc1_;
            }
            this.§,F§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§ ?§.value);
         }
         while(true)
         {
            _loc1_.push(this.§>t§());
            this.§4!4§();
            if(this.§ ?§.type == §+!-§.§-B§)
            {
               break;
            }
            if(this.§ ?§.type == §+!-§.§+[§)
            {
               this.§4!4§();
               if(!this.§4m§)
               {
                  if(this.§ ?§.type == §+!-§.§-B§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§,F§.parseError("Expecting ] or , but found " + this.§ ?§.value);
            }
         }
         return _loc1_;
      }
      
      private function §9!T§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§4!4§();
         if(this.§ ?§.type == §+!-§.§!^§)
         {
            return _loc1_;
         }
         if(!this.§4m§ && this.§ ?§.type == §+!-§.§+[§)
         {
            this.§4!4§();
            if(this.§ ?§.type == §+!-§.§!^§)
            {
               return _loc1_;
            }
            this.§,F§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§ ?§.value);
         }
         while(true)
         {
            if(this.§ ?§.type == §+!-§.§5!&§)
            {
               _loc2_ = String(this.§ ?§.value);
               this.§4!4§();
               if(this.§ ?§.type == §+!-§.§5[§)
               {
                  this.§4!4§();
                  _loc1_[_loc2_] = this.§>t§();
                  this.§4!4§();
                  if(this.§ ?§.type == §+!-§.§!^§)
                  {
                     break;
                  }
                  if(this.§ ?§.type == §+!-§.§+[§)
                  {
                     this.§4!4§();
                     if(!this.§4m§)
                     {
                        if(this.§ ?§.type == §+!-§.§!^§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§,F§.parseError("Expecting } or , but found " + this.§ ?§.value);
                  }
               }
               else
               {
                  this.§,F§.parseError("Expecting : but found " + this.§ ?§.value);
               }
            }
            else
            {
               this.§,F§.parseError("Expecting string but found " + this.§ ?§.value);
            }
         }
         return _loc1_;
      }
      
      private function §>t§() : Object
      {
         if(this.§ ?§ == null)
         {
            this.§,F§.parseError("Unexpected end of input");
         }
         switch(this.§ ?§.type)
         {
            case §+!-§.§-R§:
               return this.§9!T§();
            case §+!-§.§5!E§:
               return this.§-Y§();
            case §+!-§.§5!&§:
            case §+!-§.§2!M§:
            case §+!-§.TRUE:
            case §+!-§.FALSE:
            case §+!-§.§7!-§:
               return this.§ ?§.value;
            case §+!-§.§3X§:
               if(!this.§4m§)
               {
                  return this.§ ?§.value;
               }
               this.§,F§.parseError("Unexpected " + this.§ ?§.value);
               break;
         }
         this.§,F§.parseError("Unexpected " + this.§ ?§.value);
         return null;
      }
   }
}
