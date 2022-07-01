package §4!V§
{
   public class §9!B§
   {
       
      
      private var §6!H§:Boolean;
      
      private var value;
      
      private var §=i§:§]!b§;
      
      private var §[!8§:§7!&§;
      
      public function §9!B§(param1:String, param2:Boolean)
      {
         super();
         this.§6!H§ = param2;
         this.§=i§ = new §]!b§(param1,param2);
         this.§97§();
         this.value = this.§,!S§();
         if(param2 && this.§97§() != null)
         {
            this.§=i§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §97§() : §7!&§
      {
         return this.§[!8§ = this.§=i§.§&m§();
      }
      
      private function §="&§() : Array
      {
         var _loc1_:Array = new Array();
         this.§97§();
         if(this.§[!8§.type == §!!9§.§>!2§)
         {
            return _loc1_;
         }
         if(!this.§6!H§ && this.§[!8§.type == §!!9§.§=N§)
         {
            this.§97§();
            if(this.§[!8§.type == §!!9§.§>!2§)
            {
               return _loc1_;
            }
            this.§=i§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§[!8§.value);
         }
         while(true)
         {
            _loc1_.push(this.§,!S§());
            this.§97§();
            if(this.§[!8§.type == §!!9§.§>!2§)
            {
               break;
            }
            if(this.§[!8§.type == §!!9§.§=N§)
            {
               this.§97§();
               if(!this.§6!H§)
               {
                  if(this.§[!8§.type == §!!9§.§>!2§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§=i§.parseError("Expecting ] or , but found " + this.§[!8§.value);
            }
         }
         return _loc1_;
      }
      
      private function parseObject() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§97§();
         if(this.§[!8§.type == §!!9§.§3!B§)
         {
            return _loc1_;
         }
         if(!this.§6!H§ && this.§[!8§.type == §!!9§.§=N§)
         {
            this.§97§();
            if(this.§[!8§.type == §!!9§.§3!B§)
            {
               return _loc1_;
            }
            this.§=i§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§[!8§.value);
         }
         while(true)
         {
            if(this.§[!8§.type == §!!9§.§0!A§)
            {
               _loc2_ = String(this.§[!8§.value);
               this.§97§();
               if(this.§[!8§.type == §!!9§.§`!?§)
               {
                  this.§97§();
                  _loc1_[_loc2_] = this.§,!S§();
                  this.§97§();
                  if(this.§[!8§.type == §!!9§.§3!B§)
                  {
                     break;
                  }
                  if(this.§[!8§.type == §!!9§.§=N§)
                  {
                     this.§97§();
                     if(!this.§6!H§)
                     {
                        if(this.§[!8§.type == §!!9§.§3!B§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§=i§.parseError("Expecting } or , but found " + this.§[!8§.value);
                  }
               }
               else
               {
                  this.§=i§.parseError("Expecting : but found " + this.§[!8§.value);
               }
            }
            else
            {
               this.§=i§.parseError("Expecting string but found " + this.§[!8§.value);
            }
         }
         return _loc1_;
      }
      
      private function §,!S§() : Object
      {
         if(this.§[!8§ == null)
         {
            this.§=i§.parseError("Unexpected end of input");
         }
         switch(this.§[!8§.type)
         {
            case §!!9§.§5!y§:
               return this.parseObject();
            case §!!9§.§+!k§:
               return this.§="&§();
            case §!!9§.§0!A§:
            case §!!9§.§5!%§:
            case §!!9§.TRUE:
            case §!!9§.FALSE:
            case §!!9§.NULL:
               return this.§[!8§.value;
            case §!!9§.§4j§:
               if(!this.§6!H§)
               {
                  return this.§[!8§.value;
               }
               this.§=i§.parseError("Unexpected " + this.§[!8§.value);
               break;
         }
         this.§=i§.parseError("Unexpected " + this.§[!8§.value);
         return null;
      }
   }
}
