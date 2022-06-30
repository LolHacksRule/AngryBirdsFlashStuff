package §9!&§
{
   public class §?C§
   {
       
      
      private var §0#§:Boolean;
      
      private var value;
      
      private var §]!K§:§>@§;
      
      private var §58§:§6!'§;
      
      public function §?C§(param1:String, param2:Boolean)
      {
         super();
         this.§0#§ = param2;
         this.§]!K§ = new §>@§(param1,param2);
         this.§8!9§();
         this.value = this.§1!3§();
         if(param2 && this.§8!9§() != null)
         {
            this.§]!K§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §8!9§() : §6!'§
      {
         return this.§58§ = this.§]!K§.§>j§();
      }
      
      private function §18§() : Array
      {
         var _loc1_:Array = new Array();
         this.§8!9§();
         if(this.§58§.type == §"!8§.§0!W§)
         {
            return _loc1_;
         }
         if(!this.§0#§ && this.§58§.type == §"!8§.§&!1§)
         {
            this.§8!9§();
            if(this.§58§.type == §"!8§.§0!W§)
            {
               return _loc1_;
            }
            this.§]!K§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§58§.value);
         }
         while(true)
         {
            _loc1_.push(this.§1!3§());
            this.§8!9§();
            if(this.§58§.type == §"!8§.§0!W§)
            {
               break;
            }
            if(this.§58§.type == §"!8§.§&!1§)
            {
               this.§8!9§();
               if(!this.§0#§)
               {
                  if(this.§58§.type == §"!8§.§0!W§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§]!K§.parseError("Expecting ] or , but found " + this.§58§.value);
            }
         }
         return _loc1_;
      }
      
      private function §3X§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§8!9§();
         if(this.§58§.type == §"!8§.§8!8§)
         {
            return _loc1_;
         }
         if(!this.§0#§ && this.§58§.type == §"!8§.§&!1§)
         {
            this.§8!9§();
            if(this.§58§.type == §"!8§.§8!8§)
            {
               return _loc1_;
            }
            this.§]!K§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§58§.value);
         }
         while(true)
         {
            if(this.§58§.type == §"!8§.§?!C§)
            {
               _loc2_ = String(this.§58§.value);
               this.§8!9§();
               if(this.§58§.type == §"!8§.§switch§)
               {
                  this.§8!9§();
                  _loc1_[_loc2_] = this.§1!3§();
                  this.§8!9§();
                  if(this.§58§.type == §"!8§.§8!8§)
                  {
                     break;
                  }
                  if(this.§58§.type == §"!8§.§&!1§)
                  {
                     this.§8!9§();
                     if(!this.§0#§)
                     {
                        if(this.§58§.type == §"!8§.§8!8§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§]!K§.parseError("Expecting } or , but found " + this.§58§.value);
                  }
               }
               else
               {
                  this.§]!K§.parseError("Expecting : but found " + this.§58§.value);
               }
            }
            else
            {
               this.§]!K§.parseError("Expecting string but found " + this.§58§.value);
            }
         }
         return _loc1_;
      }
      
      private function §1!3§() : Object
      {
         if(this.§58§ == null)
         {
            this.§]!K§.parseError("Unexpected end of input");
         }
         switch(this.§58§.type)
         {
            case §"!8§.§@N§:
               return this.§3X§();
            case §"!8§.§8z§:
               return this.§18§();
            case §"!8§.§?!C§:
            case §"!8§.§1+§:
            case §"!8§.TRUE:
            case §"!8§.FALSE:
            case §"!8§.§?!Q§:
               return this.§58§.value;
            case §"!8§.§@!+§:
               if(!this.§0#§)
               {
                  return this.§58§.value;
               }
               this.§]!K§.parseError("Unexpected " + this.§58§.value);
               break;
         }
         this.§]!K§.parseError("Unexpected " + this.§58§.value);
         return null;
      }
   }
}
