package §;!2§
{
   public class include
   {
       
      
      private var §@!>§:Boolean;
      
      private var value;
      
      private var §7!8§:§>1§;
      
      private var §`@§:§%>§;
      
      public function include(param1:String, param2:Boolean)
      {
         super();
         this.§@!>§ = param2;
         this.§7!8§ = new §>1§(param1,param2);
         this.§&x§();
         this.value = this.§5X§();
         if(param2 && this.§&x§() != null)
         {
            this.§7!8§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §&x§() : §%>§
      {
         return this.§`@§ = this.§7!8§.§-!1§();
      }
      
      private function §5!§() : Array
      {
         var _loc1_:Array = new Array();
         this.§&x§();
         if(this.§`@§.type == § case§.§]8§)
         {
            return _loc1_;
         }
         if(!this.§@!>§ && this.§`@§.type == § case§.§7!B§)
         {
            this.§&x§();
            if(this.§`@§.type == § case§.§]8§)
            {
               return _loc1_;
            }
            this.§7!8§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§`@§.value);
         }
         while(true)
         {
            _loc1_.push(this.§5X§());
            this.§&x§();
            if(this.§`@§.type == § case§.§]8§)
            {
               break;
            }
            if(this.§`@§.type == § case§.§7!B§)
            {
               this.§&x§();
               if(!this.§@!>§)
               {
                  if(this.§`@§.type == § case§.§]8§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§7!8§.parseError("Expecting ] or , but found " + this.§`@§.value);
            }
         }
         return _loc1_;
      }
      
      private function §[j§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§&x§();
         if(this.§`@§.type == § case§.§0U§)
         {
            return _loc1_;
         }
         if(!this.§@!>§ && this.§`@§.type == § case§.§7!B§)
         {
            this.§&x§();
            if(this.§`@§.type == § case§.§0U§)
            {
               return _loc1_;
            }
            this.§7!8§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§`@§.value);
         }
         while(true)
         {
            if(this.§`@§.type == § case§.§=!D§)
            {
               _loc2_ = String(this.§`@§.value);
               this.§&x§();
               if(this.§`@§.type == § case§.§7!?§)
               {
                  this.§&x§();
                  _loc1_[_loc2_] = this.§5X§();
                  this.§&x§();
                  if(this.§`@§.type == § case§.§0U§)
                  {
                     break;
                  }
                  if(this.§`@§.type == § case§.§7!B§)
                  {
                     this.§&x§();
                     if(!this.§@!>§)
                     {
                        if(this.§`@§.type == § case§.§0U§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§7!8§.parseError("Expecting } or , but found " + this.§`@§.value);
                  }
               }
               else
               {
                  this.§7!8§.parseError("Expecting : but found " + this.§`@§.value);
               }
            }
            else
            {
               this.§7!8§.parseError("Expecting string but found " + this.§`@§.value);
            }
         }
         return _loc1_;
      }
      
      private function §5X§() : Object
      {
         if(this.§`@§ == null)
         {
            this.§7!8§.parseError("Unexpected end of input");
         }
         switch(this.§`@§.type)
         {
            case § case§.§-%§:
               return this.§[j§();
            case § case§.§<e§:
               return this.§5!§();
            case § case§.§=!D§:
            case § case§.§'!$§:
            case § case§.TRUE:
            case § case§.FALSE:
            case § case§.NULL:
               return this.§`@§.value;
            case § case§.§1!F§:
               if(!this.§@!>§)
               {
                  return this.§`@§.value;
               }
               this.§7!8§.parseError("Unexpected " + this.§`@§.value);
               break;
         }
         this.§7!8§.parseError("Unexpected " + this.§`@§.value);
         return null;
      }
   }
}
