package §2J§
{
   public class §=!m§
   {
       
      
      private var §,!d§:Boolean;
      
      private var value;
      
      private var §>"2§:§>!8§;
      
      private var §]!I§:§0!j§;
      
      public function §=!m§(param1:String, param2:Boolean)
      {
         super();
         this.§,!d§ = param2;
         this.§>"2§ = new §>!8§(param1,param2);
         this.§%"-§();
         this.value = this.§`!-§();
         if(param2 && this.§%"-§() != null)
         {
            this.§>"2§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §%"-§() : §0!j§
      {
         return this.§]!I§ = this.§>"2§.§+]§();
      }
      
      private function §96§() : Array
      {
         var _loc1_:Array = new Array();
         this.§%"-§();
         if(this.§]!I§.type == §^!M§.§6!v§)
         {
            return _loc1_;
         }
         if(!this.§,!d§ && this.§]!I§.type == §^!M§.§-"3§)
         {
            this.§%"-§();
            if(this.§]!I§.type == §^!M§.§6!v§)
            {
               return _loc1_;
            }
            this.§>"2§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§]!I§.value);
         }
         while(true)
         {
            _loc1_.push(this.§`!-§());
            this.§%"-§();
            if(this.§]!I§.type == §^!M§.§6!v§)
            {
               break;
            }
            if(this.§]!I§.type == §^!M§.§-"3§)
            {
               this.§%"-§();
               if(!this.§,!d§)
               {
                  if(this.§]!I§.type == §^!M§.§6!v§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§>"2§.parseError("Expecting ] or , but found " + this.§]!I§.value);
            }
         }
         return _loc1_;
      }
      
      private function parseObject() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§%"-§();
         if(this.§]!I§.type == §^!M§.§'W§)
         {
            return _loc1_;
         }
         if(!this.§,!d§ && this.§]!I§.type == §^!M§.§-"3§)
         {
            this.§%"-§();
            if(this.§]!I§.type == §^!M§.§'W§)
            {
               return _loc1_;
            }
            this.§>"2§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§]!I§.value);
         }
         while(true)
         {
            if(this.§]!I§.type == §^!M§.§%!D§)
            {
               _loc2_ = String(this.§]!I§.value);
               this.§%"-§();
               if(this.§]!I§.type == §^!M§.§>"&§)
               {
                  this.§%"-§();
                  _loc1_[_loc2_] = this.§`!-§();
                  this.§%"-§();
                  if(this.§]!I§.type == §^!M§.§'W§)
                  {
                     break;
                  }
                  if(this.§]!I§.type == §^!M§.§-"3§)
                  {
                     this.§%"-§();
                     if(!this.§,!d§)
                     {
                        if(this.§]!I§.type == §^!M§.§'W§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§>"2§.parseError("Expecting } or , but found " + this.§]!I§.value);
                  }
               }
               else
               {
                  this.§>"2§.parseError("Expecting : but found " + this.§]!I§.value);
               }
            }
            else
            {
               this.§>"2§.parseError("Expecting string but found " + this.§]!I§.value);
            }
         }
         return _loc1_;
      }
      
      private function §`!-§() : Object
      {
         if(this.§]!I§ == null)
         {
            this.§>"2§.parseError("Unexpected end of input");
         }
         switch(this.§]!I§.type)
         {
            case §^!M§.§2!t§:
               return this.parseObject();
            case §^!M§.§4X§:
               return this.§96§();
            case §^!M§.§%!D§:
            case §^!M§.§ 3§:
            case §^!M§.TRUE:
            case §^!M§.FALSE:
            case §^!M§.NULL:
               return this.§]!I§.value;
            case §^!M§.§5!V§:
               if(!this.§,!d§)
               {
                  return this.§]!I§.value;
               }
               this.§>"2§.parseError("Unexpected " + this.§]!I§.value);
               break;
         }
         this.§>"2§.parseError("Unexpected " + this.§]!I§.value);
         return null;
      }
   }
}
