package §&!k§
{
   public class §0!+§
   {
       
      
      private var §;!b§:Boolean;
      
      private var value;
      
      private var §<!5§:§^4§;
      
      private var §;[§:§^!I§;
      
      public function §0!+§(param1:String, param2:Boolean)
      {
         super();
         this.§;!b§ = param2;
         this.§<!5§ = new §^4§(param1,param2);
         this.§4H§();
         this.value = this.§"K§();
         if(param2 && this.§4H§() != null)
         {
            this.§<!5§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §4H§() : §^!I§
      {
         return this.§;[§ = this.§<!5§.§%"+§();
      }
      
      private function §?!p§() : Array
      {
         var _loc1_:Array = new Array();
         this.§4H§();
         if(this.§;[§.type == §;!4§.§=!-§)
         {
            return _loc1_;
         }
         if(!this.§;!b§ && this.§;[§.type == §;!4§.§8s§)
         {
            this.§4H§();
            if(this.§;[§.type == §;!4§.§=!-§)
            {
               return _loc1_;
            }
            this.§<!5§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§;[§.value);
         }
         while(true)
         {
            _loc1_.push(this.§"K§());
            this.§4H§();
            if(this.§;[§.type == §;!4§.§=!-§)
            {
               break;
            }
            if(this.§;[§.type == §;!4§.§8s§)
            {
               this.§4H§();
               if(!this.§;!b§)
               {
                  if(this.§;[§.type == §;!4§.§=!-§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§<!5§.parseError("Expecting ] or , but found " + this.§;[§.value);
            }
         }
         return _loc1_;
      }
      
      private function parseObject() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§4H§();
         if(this.§;[§.type == §;!4§.§#E§)
         {
            return _loc1_;
         }
         if(!this.§;!b§ && this.§;[§.type == §;!4§.§8s§)
         {
            this.§4H§();
            if(this.§;[§.type == §;!4§.§#E§)
            {
               return _loc1_;
            }
            this.§<!5§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§;[§.value);
         }
         while(true)
         {
            if(this.§;[§.type == §;!4§.§ !l§)
            {
               _loc2_ = String(this.§;[§.value);
               this.§4H§();
               if(this.§;[§.type == §;!4§.§&!x§)
               {
                  this.§4H§();
                  _loc1_[_loc2_] = this.§"K§();
                  this.§4H§();
                  if(this.§;[§.type == §;!4§.§#E§)
                  {
                     break;
                  }
                  if(this.§;[§.type == §;!4§.§8s§)
                  {
                     this.§4H§();
                     if(!this.§;!b§)
                     {
                        if(this.§;[§.type == §;!4§.§#E§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§<!5§.parseError("Expecting } or , but found " + this.§;[§.value);
                  }
               }
               else
               {
                  this.§<!5§.parseError("Expecting : but found " + this.§;[§.value);
               }
            }
            else
            {
               this.§<!5§.parseError("Expecting string but found " + this.§;[§.value);
            }
         }
         return _loc1_;
      }
      
      private function §"K§() : Object
      {
         if(this.§;[§ == null)
         {
            this.§<!5§.parseError("Unexpected end of input");
         }
         switch(this.§;[§.type)
         {
            case §;!4§.§ !x§:
               return this.parseObject();
            case §;!4§.§%!l§:
               return this.§?!p§();
            case §;!4§.§ !l§:
            case §;!4§.§<r§:
            case §;!4§.TRUE:
            case §;!4§.FALSE:
            case §;!4§.NULL:
               return this.§;[§.value;
            case §;!4§.§7B§:
               if(!this.§;!b§)
               {
                  return this.§;[§.value;
               }
               this.§<!5§.parseError("Unexpected " + this.§;[§.value);
               break;
         }
         this.§<!5§.parseError("Unexpected " + this.§;[§.value);
         return null;
      }
   }
}
