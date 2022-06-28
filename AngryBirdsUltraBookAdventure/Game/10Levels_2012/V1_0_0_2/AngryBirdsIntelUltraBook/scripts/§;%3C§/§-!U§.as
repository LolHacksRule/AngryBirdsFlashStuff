package §;<§
{
   public class §-!U§
   {
       
      
      private var §,_§:Boolean;
      
      private var value;
      
      private var §4!i§:§0C§;
      
      private var §]!<§:§7!c§;
      
      public function §-!U§(param1:String, param2:Boolean)
      {
         super();
         this.§,_§ = param2;
         this.§4!i§ = new §0C§(param1,param2);
         this.§!!$§();
         this.value = this.§'! §();
         if(param2 && this.§!!$§() != null)
         {
            this.§4!i§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §!!$§() : §7!c§
      {
         return this.§]!<§ = this.§4!i§.§2L§();
      }
      
      private function §=!Q§() : Array
      {
         var _loc1_:Array = new Array();
         this.§!!$§();
         if(this.§]!<§.type == §6!h§.§7!1§)
         {
            return _loc1_;
         }
         if(!this.§,_§ && this.§]!<§.type == §6!h§.§2§)
         {
            this.§!!$§();
            if(this.§]!<§.type == §6!h§.§7!1§)
            {
               return _loc1_;
            }
            this.§4!i§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§]!<§.value);
         }
         while(true)
         {
            _loc1_.push(this.§'! §());
            this.§!!$§();
            if(this.§]!<§.type == §6!h§.§7!1§)
            {
               break;
            }
            if(this.§]!<§.type == §6!h§.§2§)
            {
               this.§!!$§();
               if(!this.§,_§)
               {
                  if(this.§]!<§.type == §6!h§.§7!1§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§4!i§.parseError("Expecting ] or , but found " + this.§]!<§.value);
            }
         }
         return _loc1_;
      }
      
      private function §'n§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§!!$§();
         if(this.§]!<§.type == §6!h§.§"!1§)
         {
            return _loc1_;
         }
         if(!this.§,_§ && this.§]!<§.type == §6!h§.§2§)
         {
            this.§!!$§();
            if(this.§]!<§.type == §6!h§.§"!1§)
            {
               return _loc1_;
            }
            this.§4!i§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§]!<§.value);
         }
         while(true)
         {
            if(this.§]!<§.type == §6!h§.§[!8§)
            {
               _loc2_ = String(this.§]!<§.value);
               this.§!!$§();
               if(this.§]!<§.type == §6!h§.§@!l§)
               {
                  this.§!!$§();
                  _loc1_[_loc2_] = this.§'! §();
                  this.§!!$§();
                  if(this.§]!<§.type == §6!h§.§"!1§)
                  {
                     break;
                  }
                  if(this.§]!<§.type == §6!h§.§2§)
                  {
                     this.§!!$§();
                     if(!this.§,_§)
                     {
                        if(this.§]!<§.type == §6!h§.§"!1§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§4!i§.parseError("Expecting } or , but found " + this.§]!<§.value);
                  }
               }
               else
               {
                  this.§4!i§.parseError("Expecting : but found " + this.§]!<§.value);
               }
            }
            else
            {
               this.§4!i§.parseError("Expecting string but found " + this.§]!<§.value);
            }
         }
         return _loc1_;
      }
      
      private function §'! §() : Object
      {
         if(this.§]!<§ == null)
         {
            this.§4!i§.parseError("Unexpected end of input");
         }
         switch(this.§]!<§.type)
         {
            case §6!h§.§;!Q§:
               return this.§'n§();
            case §6!h§.§,J§:
               return this.§=!Q§();
            case §6!h§.§[!8§:
            case §6!h§.§7!E§:
            case §6!h§.TRUE:
            case §6!h§.FALSE:
            case §6!h§.NULL:
               return this.§]!<§.value;
            case §6!h§.§8!#§:
               if(!this.§,_§)
               {
                  return this.§]!<§.value;
               }
               this.§4!i§.parseError("Unexpected " + this.§]!<§.value);
               break;
         }
         this.§4!i§.parseError("Unexpected " + this.§]!<§.value);
         return null;
      }
   }
}
