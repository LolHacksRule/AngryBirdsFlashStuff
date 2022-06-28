package §!e§
{
   public class §"!l§
   {
       
      
      private var §1!;§:Boolean;
      
      private var value;
      
      private var §]I§:§1a§;
      
      private var §%!O§:§]!W§;
      
      public function §"!l§(param1:String, param2:Boolean)
      {
         super();
         this.§1!;§ = param2;
         this.§]I§ = new §1a§(param1,param2);
         this.§6]§();
         this.value = this.§;6§();
         if(param2 && this.§6]§() != null)
         {
            this.§]I§.parseError("Unexpected characters left in input stream");
         }
      }
      
      public function getValue() : *
      {
         return this.value;
      }
      
      private function §6]§() : §]!W§
      {
         return this.§%!O§ = this.§]I§.§6!2§();
      }
      
      private function §'!Y§() : Array
      {
         var _loc1_:Array = new Array();
         this.§6]§();
         if(this.§%!O§.type == §]!E§.§-!z§)
         {
            return _loc1_;
         }
         if(!this.§1!;§ && this.§%!O§.type == §]!E§.§#!E§)
         {
            this.§6]§();
            if(this.§%!O§.type == §]!E§.§-!z§)
            {
               return _loc1_;
            }
            this.§]I§.parseError("Leading commas are not supported.  Expecting \']\' but found " + this.§%!O§.value);
         }
         while(true)
         {
            _loc1_.push(this.§;6§());
            this.§6]§();
            if(this.§%!O§.type == §]!E§.§-!z§)
            {
               break;
            }
            if(this.§%!O§.type == §]!E§.§#!E§)
            {
               this.§6]§();
               if(!this.§1!;§)
               {
                  if(this.§%!O§.type == §]!E§.§-!z§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§]I§.parseError("Expecting ] or , but found " + this.§%!O§.value);
            }
         }
         return _loc1_;
      }
      
      private function §=!A§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§6]§();
         if(this.§%!O§.type == §]!E§.§]!n§)
         {
            return _loc1_;
         }
         if(!this.§1!;§ && this.§%!O§.type == §]!E§.§#!E§)
         {
            this.§6]§();
            if(this.§%!O§.type == §]!E§.§]!n§)
            {
               return _loc1_;
            }
            this.§]I§.parseError("Leading commas are not supported.  Expecting \'}\' but found " + this.§%!O§.value);
         }
         while(true)
         {
            if(this.§%!O§.type == §]!E§.§+`§)
            {
               _loc2_ = String(this.§%!O§.value);
               this.§6]§();
               if(this.§%!O§.type == §]!E§.§?!D§)
               {
                  this.§6]§();
                  _loc1_[_loc2_] = this.§;6§();
                  this.§6]§();
                  if(this.§%!O§.type == §]!E§.§]!n§)
                  {
                     break;
                  }
                  if(this.§%!O§.type == §]!E§.§#!E§)
                  {
                     this.§6]§();
                     if(!this.§1!;§)
                     {
                        if(this.§%!O§.type == §]!E§.§]!n§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§]I§.parseError("Expecting } or , but found " + this.§%!O§.value);
                  }
               }
               else
               {
                  this.§]I§.parseError("Expecting : but found " + this.§%!O§.value);
               }
            }
            else
            {
               this.§]I§.parseError("Expecting string but found " + this.§%!O§.value);
            }
         }
         return _loc1_;
      }
      
      private function §;6§() : Object
      {
         if(this.§%!O§ == null)
         {
            this.§]I§.parseError("Unexpected end of input");
         }
         switch(this.§%!O§.type)
         {
            case §]!E§.§#x§:
               return this.§=!A§();
            case §]!E§.§7P§:
               return this.§'!Y§();
            case §]!E§.§+`§:
            case §]!E§.§%!x§:
            case §]!E§.TRUE:
            case §]!E§.FALSE:
            case §]!E§.NULL:
               return this.§%!O§.value;
            case §]!E§.§2l§:
               if(!this.§1!;§)
               {
                  return this.§%!O§.value;
               }
               this.§]I§.parseError("Unexpected " + this.§%!O§.value);
               break;
         }
         this.§]I§.parseError("Unexpected " + this.§%!O§.value);
         return null;
      }
   }
}
