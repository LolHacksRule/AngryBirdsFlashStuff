package §>o§
{
   public class JSONDecoder
   {
       
      
      private var §<g§:Boolean;
      
      private var value;
      
      private var §8!b§:§;!3§;
      
      private var §>d§:§8!8§;
      
      public function JSONDecoder(param1:String, param2:Boolean)
      {
         super();
         this.§<g§ = param2;
         this.§8!b§ = new §;!3§(param1,param2);
         this.§9t§();
         this.value = this.§ get§();
         if(param2 && this.§9t§() != null)
         {
            this.§8!b§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §9t§() : §8!8§
      {
         return this.§>d§ = this.§8!b§.§;!e§();
      }
      
      private function §;!V§() : Array
      {
         var _loc1_:Array = new Array();
         this.§9t§();
         if(this.§>d§.type == §4!D§.§8!Z§)
         {
            return _loc1_;
         }
         if(!this.§<g§ && this.§>d§.type == §4!D§.§[!P§)
         {
            this.§9t§();
            if(this.§>d§.type == §4!D§.§8!Z§)
            {
               return _loc1_;
            }
            this.§8!b§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§>d§.value);
         }
         while(true)
         {
            _loc1_.push(this.§ get§());
            this.§9t§();
            if(this.§>d§.type == §4!D§.§8!Z§)
            {
               break;
            }
            if(this.§>d§.type == §4!D§.§[!P§)
            {
               this.§9t§();
               if(!this.§<g§)
               {
                  if(this.§>d§.type == §4!D§.§8!Z§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§8!b§.parseError("Expecting ] or , but found " + this.§>d§.value);
            }
         }
         return _loc1_;
      }
      
      private function parseObject() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§9t§();
         if(this.§>d§.type == §4!D§.§8c§)
         {
            return _loc1_;
         }
         if(!this.§<g§ && this.§>d§.type == §4!D§.§[!P§)
         {
            this.§9t§();
            if(this.§>d§.type == §4!D§.§8c§)
            {
               return _loc1_;
            }
            this.§8!b§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§>d§.value);
         }
         while(true)
         {
            if(this.§>d§.type == §4!D§.§+L§)
            {
               _loc2_ = String(this.§>d§.value);
               this.§9t§();
               if(this.§>d§.type == §4!D§.§+<§)
               {
                  this.§9t§();
                  _loc1_[_loc2_] = this.§ get§();
                  this.§9t§();
                  if(this.§>d§.type == §4!D§.§8c§)
                  {
                     break;
                  }
                  if(this.§>d§.type == §4!D§.§[!P§)
                  {
                     this.§9t§();
                     if(!this.§<g§)
                     {
                        if(this.§>d§.type == §4!D§.§8c§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§8!b§.parseError("Expecting } or , but found " + this.§>d§.value);
                  }
               }
               else
               {
                  this.§8!b§.parseError("Expecting : but found " + this.§>d§.value);
               }
            }
            else
            {
               this.§8!b§.parseError("Expecting string but found " + this.§>d§.value);
            }
         }
         return _loc1_;
      }
      
      private function § get§() : Object
      {
         if(this.§>d§ == null)
         {
            this.§8!b§.parseError("Unexpected end of input");
         }
         switch(this.§>d§.type)
         {
            case §4!D§.§0j§:
               return this.parseObject();
            case §4!D§.§]!j§:
               return this.§;!V§();
            case §4!D§.§+L§:
            case §4!D§.§93§:
            case §4!D§.TRUE:
            case §4!D§.FALSE:
            case §4!D§.NULL:
               return this.§>d§.value;
            case §4!D§.§,o§:
               if(!this.§<g§)
               {
                  return this.§>d§.value;
               }
               this.§8!b§.parseError("Unexpected " + this.§>d§.value);
               break;
         }
         this.§8!b§.parseError("Unexpected " + this.§>d§.value);
         return null;
      }
   }
}
