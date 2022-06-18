package §?H§
{
   public class §;a§
   {
       
      
      private var §^!!§:Boolean;
      
      private var value;
      
      private var §,e§:§4!5§;
      
      private var token:§+Y§;
      
      public function §;a§(param1:String, param2:Boolean)
      {
         super();
         this.§^!!§ = param2;
         this.§,e§ = new §4!5§(param1,param2);
         this.§,W§();
         this.value = this.§6O§();
         if(param2 && this.§,W§() != null)
         {
            this.§,e§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §,W§() : §+Y§
      {
         return this.token = this.§,e§.§!U§();
      }
      
      private function §0!D§() : Array
      {
         var _loc1_:Array = new Array();
         this.§,W§();
         if(this.token.type == §@!M§.§][§)
         {
            return _loc1_;
         }
         if(!this.§^!!§ && this.token.type == §@!M§.§?l§)
         {
            this.§,W§();
            if(this.token.type == §@!M§.§][§)
            {
               return _loc1_;
            }
            this.§,e§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.token.value);
         }
         while(true)
         {
            _loc1_.push(this.§6O§());
            this.§,W§();
            if(this.token.type == §@!M§.§][§)
            {
               break;
            }
            if(this.token.type == §@!M§.§?l§)
            {
               this.§,W§();
               if(!this.§^!!§)
               {
                  if(this.token.type == §@!M§.§][§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§,e§.parseError("Expecting ] or , but found " + this.token.value);
            }
         }
         return _loc1_;
      }
      
      private function §4h§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§,W§();
         if(this.token.type == §@!M§.§&!8§)
         {
            return _loc1_;
         }
         if(!this.§^!!§ && this.token.type == §@!M§.§?l§)
         {
            this.§,W§();
            if(this.token.type == §@!M§.§&!8§)
            {
               return _loc1_;
            }
            this.§,e§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.token.value);
         }
         while(true)
         {
            if(this.token.type == §@!M§.§1v§)
            {
               _loc2_ = String(this.token.value);
               this.§,W§();
               if(this.token.type == §@!M§.§9v§)
               {
                  this.§,W§();
                  _loc1_[_loc2_] = this.§6O§();
                  this.§,W§();
                  if(this.token.type == §@!M§.§&!8§)
                  {
                     break;
                  }
                  if(this.token.type == §@!M§.§?l§)
                  {
                     this.§,W§();
                     if(!this.§^!!§)
                     {
                        if(this.token.type == §@!M§.§&!8§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§,e§.parseError("Expecting } or , but found " + this.token.value);
                  }
               }
               else
               {
                  this.§,e§.parseError("Expecting : but found " + this.token.value);
               }
            }
            else
            {
               this.§,e§.parseError("Expecting string but found " + this.token.value);
            }
         }
         return _loc1_;
      }
      
      private function §6O§() : Object
      {
         if(this.token == null)
         {
            this.§,e§.parseError("Unexpected end of input");
         }
         switch(this.token.type)
         {
            case §@!M§.§!!O§:
               return this.§4h§();
            case §@!M§.§&F§:
               return this.§0!D§();
            case §@!M§.§1v§:
            case §@!M§.§6l§:
            case §@!M§.TRUE:
            case §@!M§.FALSE:
            case §@!M§.NULL:
               return this.token.value;
            case §@!M§.§6o§:
               if(!this.§^!!§)
               {
                  return this.token.value;
               }
               this.§,e§.parseError("Unexpected " + this.token.value);
               break;
         }
         this.§,e§.parseError("Unexpected " + this.token.value);
         return null;
      }
   }
}
