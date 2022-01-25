package §4^§
{
   public class §54§
   {
       
      
      private var §[!A§:Boolean;
      
      private var value;
      
      private var §=!e§:§=!C§;
      
      private var §#b§:§3!G§;
      
      public function §54§(param1:String, param2:Boolean)
      {
         super();
         this.§[!A§ = param2;
         this.§=!e§ = new §=!C§(param1,param2);
         this.§&0§();
         this.value = this.include();
         if(param2 && this.§&0§() != null)
         {
            this.§=!e§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §&0§() : §3!G§
      {
         return this.§#b§ = this.§=!e§.§4R§();
      }
      
      private function §4_§() : Array
      {
         var _loc1_:Array = new Array();
         this.§&0§();
         if(this.§#b§.type == § b§.§3!K§)
         {
            return _loc1_;
         }
         if(!this.§[!A§ && this.§#b§.type == § b§.§@!D§)
         {
            this.§&0§();
            if(this.§#b§.type == § b§.§3!K§)
            {
               return _loc1_;
            }
            this.§=!e§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§#b§.value);
         }
         while(true)
         {
            _loc1_.push(this.include());
            this.§&0§();
            if(this.§#b§.type == § b§.§3!K§)
            {
               break;
            }
            if(this.§#b§.type == § b§.§@!D§)
            {
               this.§&0§();
               if(!this.§[!A§)
               {
                  if(this.§#b§.type == § b§.§3!K§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§=!e§.parseError("Expecting ] or , but found " + this.§#b§.value);
            }
         }
         return _loc1_;
      }
      
      private function §6!H§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§&0§();
         if(this.§#b§.type == § b§.§-!M§)
         {
            return _loc1_;
         }
         if(!this.§[!A§ && this.§#b§.type == § b§.§@!D§)
         {
            this.§&0§();
            if(this.§#b§.type == § b§.§-!M§)
            {
               return _loc1_;
            }
            this.§=!e§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§#b§.value);
         }
         while(true)
         {
            if(this.§#b§.type == § b§.§"!E§)
            {
               _loc2_ = String(this.§#b§.value);
               this.§&0§();
               if(this.§#b§.type == § b§.§32§)
               {
                  this.§&0§();
                  _loc1_[_loc2_] = this.include();
                  this.§&0§();
                  if(this.§#b§.type == § b§.§-!M§)
                  {
                     break;
                  }
                  if(this.§#b§.type == § b§.§@!D§)
                  {
                     this.§&0§();
                     if(!this.§[!A§)
                     {
                        if(this.§#b§.type == § b§.§-!M§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§=!e§.parseError("Expecting } or , but found " + this.§#b§.value);
                  }
               }
               else
               {
                  this.§=!e§.parseError("Expecting : but found " + this.§#b§.value);
               }
            }
            else
            {
               this.§=!e§.parseError("Expecting string but found " + this.§#b§.value);
            }
         }
         return _loc1_;
      }
      
      private function include() : Object
      {
         if(this.§#b§ == null)
         {
            this.§=!e§.parseError("Unexpected end of input");
         }
         switch(this.§#b§.type)
         {
            case § b§.§ -§:
               return this.§6!H§();
            case § b§.§1!$§:
               return this.§4_§();
            case § b§.§"!E§:
            case § b§.§'v§:
            case § b§.TRUE:
            case § b§.FALSE:
            case § b§.§;E§:
               return this.§#b§.value;
            case § b§.§3l§:
               if(!this.§[!A§)
               {
                  return this.§#b§.value;
               }
               this.§=!e§.parseError("Unexpected " + this.§#b§.value);
               break;
         }
         this.§=!e§.parseError("Unexpected " + this.§#b§.value);
         return null;
      }
   }
}
